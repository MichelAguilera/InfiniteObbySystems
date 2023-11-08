local Player = game:GetService("Players").LocalPlayer
local InventoryClass = require(Player.PlayerScripts:WaitForChild("Client").Inventory)

local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)

local PlayerDataController = Knit.CreateController {
    Name = "PlayerDataController",
    PlayerDataService = nil
}

function PlayerDataController:KnitStart()
    self.PlayerDataService = Knit.GetService("PlayerDataService")
end

function PlayerDataController:GetUserData()
    local UserData

    self.PlayerDataService:ReplicateToClient(Player):andThen(function(ServerData)
        UserData = ServerData.USER_DATA
    end)

    task.wait(2)
    return UserData
end

function PlayerDataController:SendUserData()

    local data
    self.PlayerDataService.RetrieveClientSideData:Fire(data)
end

return PlayerDataController