--!strict

-- These variables are going to make me puke
local Players = game:GetService("Players")
local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)
local PlayerType = require(script.PlayerType)
local ItemType = require(script.Parent.ShopService.ItemType)
-- local DataStoreService = game:GetService("DataStoreService") -- REPLACED WITH SUPHI'S DATASTORE
local SuphiDataStore = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").suphisdatastoremodule)
local Config = require(script.config)
local UtilityFunctions = require(game:GetService("ServerScriptService"):WaitForChild("Server").UtilityFunctions)

local PlayerDataService = Knit.CreateService {
    Name = "PlayerDataService",
    Client = {},
    Players = {},
    DataStore = nil
}

-- Runs before KnitStart(), ensures data is Loaded before running
function PlayerDataService:KnitInit()
    -- Get DataStore reference
    self.DataStore = SuphiDataStore.new(Config.KEY, "PlayerData")

    -- Create PlayerJoined listener; to add their ID to the cache automatically
    Players.PlayerAdded:Connect(function(Player)
        self:OnPlayerJoined(Player)
    end)
end

function PlayerDataService:KnitStart()
    -- DEBUG
    -- self:QueryDataStore()
end

function PlayerDataService:OnPlayerJoined(Player: Player)
    -- Create template for server data in self.Players
    local PlayersDataTemplate: PlayerType.PlayerData = {
        USER_NAME = Player.Name,
        USER_ID = Player.UserId,
        UNLOCKED_LIST = nil
    }

    -- Apperently the ID needs to be a string in order to be insertable
    -- (thanks Lua, I spent far too long trying to figure that out)
    -- local UserIdIndex = 
    
    -- Stores the return of the query in the Template.UNLOCKED_LIST
    PlayerDataService['UNLOCKED_LIST'] = self:QueryDataStore(Player)
end

-- Queries the DataStore with the User ID
function PlayerDataService:QueryDataStore(Player: Player): table
    
    local DataStoreTemplate: {UnlockedItems: {number}} = {
        [tostring(Player.UserId)] = {}
    }
    self.DataStore:Open(DataStoreTemplate)
    print(self.DataStore.Value)
    DataStoreTemplate.UnlockedItems = self.DataStore.Value[tostring(Player.UserId)]

end

-- Creates new entry in the DataStore if player info has not been saved
function PlayerDataService:InitDataStore(Player: Player)

end

-- Add the data from the DataStore into the PlayerDataService cache
function PlayerDataService:LoadPlayerInfo(Player: Player)
    local PlayerData: PlayerType.PlayerData = {
        USER_NAME = Player.Name,
        USER_ID = Player.UserId,
        UNLOCKED_LIST = nil
    }

    --[[
    PlayerData.UNLOCKED_LIST = self:QueryDataStore(Player)

    self.Players[Player.UserId] = PlayerData
    ]]
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