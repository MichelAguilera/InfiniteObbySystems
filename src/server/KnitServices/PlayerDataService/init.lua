--!strict

-- These variables are going to make me puke
local DataStoreService = game:GetService("DataStoreService")
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
    Client = {
        RetrieveClientSideData = Knit.CreateSignal()
    },
    Players = {},
    DataStore = nil
}

-- Runs before KnitStart(), ensures data is Loaded before running
function PlayerDataService:KnitInit()
    -- Get DataStore reference
    self.DataStore = SuphiDataStore.new(Config.KEY, "PlayerData"..Config.VER)

    -- Create PlayerJoined listener; to add their ID to the cache automatically
    Players.PlayerAdded:Connect(function(player: Player)
        self:OnPlayerJoined(player)
    end)

    -- Create signal to get data from client
    self.Client.RetrieveClientSideData:Connect(function(player: Player, data: PlayerType.PlayerData)
        self:ReplicateToServer(player, data)
    end)
end

function PlayerDataService:KnitStart()
    -- DEBUG
    -- self:QueryDataStore()
end

function PlayerDataService:OnPlayerJoined(player: Player)
    -- Create template for server data in self.Players
    local PlayersDataTemplate: PlayerType.PlayerData = {
        USER_NAME = player.Name,
        USER_ID = tostring(player.UserId),
        USER_DATA = Config.DEBUG_USER_DATA
        -- USER_DATA = Config.DEFAULT_USER_DATA
    }

    self.Players[tostring(player.UserId)] = self:QueryDataStore(player, PlayersDataTemplate)
    -- warn(self.Players)
end

function PlayerDataService:OnPlayerLeaving(player: Player)
    local PlayerDataTemplate: PlayerType.PlayerData = self.Players[player]
    self:SaveToDataStore(player, PlayerDataTemplate)
end

-- Queries the DataStore with the User ID
function PlayerDataService:QueryDataStore(player: Player, PlayerDataTemplate: PlayerType.PlayerData): PlayerType.PlayerData
    -- Template to be used by DataStore
    local DataStoreTemplate: {PlayerType.PlayerData} = {[tostring(player.UserId)] = PlayerDataTemplate}
    self.DataStore:Open(DataStoreTemplate)

    -- Configure the PlayerDataTemplate and return it
    PlayerDataTemplate.USER_DATA = self.DataStore.Value[tostring(player.UserId)].USER_DATA
    return PlayerDataTemplate
end

function PlayerDataService:SaveToDataStore(player: Player, PlayerDataTemplate: PlayerType.PlayerData)
    print(`Saving data: {PlayerDataTemplate}\nTo index: {player}`)
    self.DataStore.Value[player] = PlayerDataTemplate
end

function PlayerDataService:ReplicateToServer(player: Player, data: PlayerType.PlayerData)
    self.Players[player] = data
end

-- Replicates PlayerData to the client
function PlayerDataService.Client:ReplicateToClient(player: Player)
    -- return UtilityFunctions.DeepCopy(self.Server.Players[tostring(player.UserId)])
    return self.Server.Players[tostring(player.UserId)]
end

return PlayerDataService