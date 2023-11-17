local player = game:GetService("Players").LocalPlayer
local InventoryClass = require(player.PlayerScripts:WaitForChild("Client").Inventory)

local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)

local PlayerDataController = Knit.CreateController {
    Name = "PlayerDataController",
    PlayerDataService = nil,
    Inventory = nil
}

function PlayerDataController:KnitStart()
    self.PlayerDataService = Knit.GetService("PlayerDataService")

    task.wait(2)
    self.Inventory = InventoryClass.new(player, self:GetUserData())
end

function PlayerDataController:GetInventoryObject()
    return self.Inventory
end

function PlayerDataController:GetUserData()
    local UserData: table = nil

    self.PlayerDataService:ReplicateToClient(player):andThen(function(ServerData)
        UserData = ServerData.USER_DATA
    end)

    task.wait(2) -- Question to self, why the fuck is there a wait here??
    return UserData
end

function PlayerDataController:SendUserData()
    local data = self.Inventory
    self.PlayerDataService.RetrieveClientSideData:Fire(data)
end

return PlayerDataController