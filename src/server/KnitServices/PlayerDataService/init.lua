local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)
local PlayerType = require(script.PlayerType)
local ItemType = require(script.Parent.ShopService.ItemType)
local DataStoreService = game:GetService("DataStoreService")
local KEY = "TEMP_HOOLIGAN_IN_THE_TRUNK"
local Config = require(script.config)

local PlayerDataService = Knit.CreateService {
    Name = "PlayerDataService",
    Client = {},
    Players = {},
    DataStore = nil
}

-- Runs before KnitStart(), ensures data is Loaded before running
function PlayerDataService:KnitInit()
    -- Get DataStore reference
    self.DataStore = DataStoreService:GetDataStore(KEY)
end

-- Queries the DataStore with the User ID
function PlayerDataService:QueryDataStore(Player: Player): table
    local UserId: number = Player.UserId
    local Data: {number} = nil

    local function attempt_query(): {success: boolean, data: table}
        local success: boolean, data: table = pcall(function()
            Data = self.DataStore:GetAsync(UserId)
        end)

        return {success = success, data = data}
    end

    -- If query fails, create new DataStore entry
    local query_result: {success :boolean, data: table} = attempt_query()

    -- Create new DataStore entry if not able to get()
    if not query_result.success then
        warn("(QueryDataStore) Unable to pull data from the DataStore, creating new entry")
        self:InitDataStore(Player)
        Data = Config.DEFAULT
    else
        Data = query_result.data
    end

    return Data
end

-- Creates new entry in the DataStore if player info has not been saved
function PlayerDataService:InitDataStore(Player: Player)
    local function set()
        local success: boolean, errorMessage: string = pcall(function()
            self.DataStore:SetAsync(Player.UserId, Config.DEFAULT)
        end)

        return {success = success, errorMessage = errorMessage}
    end

    -- If set fails, retry after 3 seconds
    local set_tries = 0
    while true do
        local set_result: {success :boolean, errorMessage: string} = set()
        print(set_result)

        if not set_result.success and set_tries < 5 then
            set_tries += 1
            warn(`(InitDataStore) {set_result.errorMessage} :: Unable to set data to the DataStore, retrying...`)
            task.wait(3)
        elseif set_tries >= 5 then
            Player.Kick(Player, "Unable to set data to DataStore, please rejoin.")
            break
        else
            set_tries = 0
            break
        end
    end
end

-- Add the data from the DataStore into the PlayerDataService cache
function PlayerDataService:LoadPlayerInfo(Player: Player)
    local PlayerData: PlayerType.PlayerData = {
        USER_NAME = Player.Name,
        USER_ID = Player.UserId,
        UNLOCKED_LIST = nil
    }

    PlayerData.UNLOCKED_LIST = self:QueryDataStore(Player)

    self.Players[Player.UserId] = PlayerData
end

-- Data movers
-- POST
function PlayerDataService:POST(Player: Player, key: number, value: table): boolean
    local success = pcall(function()
        self.Players[Player.UserId]['UNLOCKED_LIST'][key] = value
    end)
    return success
end

-- UPDATE (Right now it's identical to POST, might delete)
function PlayerDataService:UPDATE(Player: Player, key: number, value: table): boolean
    local success = pcall(function()
        self.Players[Player.UserId]['UNLOCKED_LIST'][key] = value
    end)
    return success
end

-- GET
function PlayerDataService:GET(Player: Player, key: number): ItemType.Item
    local success, data = pcall(function()
        return self.Players[Player.UserId]['UNLOCKED_LIST'][key]
    end)
    if success then return data end
end

-- DELETE
function PlayerDataService:DELETE(Player: Player, key: number): boolean
    self.Players[Player.UserId]['UNLOCKED_LIST'][key] = nil

    local success, number = pcall(function()
        return table.find(self.Players[Player.UserId], self.Players[Player.UserId][key])
    end)

    if success then
        if number ~= nil then
            return false
        else
            return true
        end
    end
end

-- CLIENT EXPOSED
function PlayerDataService.Client:HandleDataRequest(Player: Player, Method: string, Args: table)
    if Player == nil or Method == nil or Args == nil then return {false, "ERROR (SERVER::HandleDataRequest) At least one argument was nil"} end

    local Response = nil

    if Method == "POST" then
        Response = PlayerDataService.Server:POST(Player, Args.key, Args.value)
    end

    if Method == "UPDATE" then
        Response = PlayerDataService.Server:UPDATE(Player, Args.key, Args.value)
    end

    if Method == "GET" then
        Response = PlayerDataService.Server:GET(Player, Args.key)
    end

    if Method == "DELETE" then
        Response = PlayerDataService.Server:DELETE(Player, Args.key)
    end

    return Response
end

return PlayerDataService