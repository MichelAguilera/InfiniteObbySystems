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
        USER_ID = tostring(Player.UserId),
        USER_DATA = Config.DEBUG_USER_DATA
        -- USER_DATA = Config.DEFAULT_USER_DATA
    }

    self.Players[tostring(Player.UserId)] = self:QueryDataStore(Player, PlayersDataTemplate)
    -- warn(self.Players)
end

-- Queries the DataStore with the User ID
function PlayerDataService:QueryDataStore(Player: Player, PlayerDataTemplate: PlayerType.PlayerData): PlayerType.PlayerData
    -- Template to be used by DataStore
    local DataStoreTemplate: {PlayerType.PlayerData} = {[tostring(Player.UserId)] = PlayerDataTemplate}
    self.DataStore:Open(DataStoreTemplate)

    -- Configure the PlayerDataTemplate and return it
    PlayerDataTemplate.USER_DATA = self.DataStore.Value[tostring(Player.UserId)].USER_DATA
    return PlayerDataTemplate
end

-- Replicates PlayerData to the client
function PlayerDataService.Client:ReplicateToClient(Player: Player)
    -- return UtilityFunctions.DeepCopy(self.Server.Players[tostring(Player.UserId)])
    return self.Server.Players[tostring(Player.UserId)]
end

return PlayerDataService