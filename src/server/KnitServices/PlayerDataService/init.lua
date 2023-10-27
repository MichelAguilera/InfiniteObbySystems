local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)
local PlayerType = require(script.PlayerType)
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

-- CLIENT EXPOSED FUNCTIONS -- MAY BE REMOVED
function PlayerDataService.Client:RequestDataStore(Player: Player)
    warn(`{Player.Name} is REQUESTING a DataStore`)
    self.Server:LoadPlayerInfo(Player)
end

return PlayerDataService