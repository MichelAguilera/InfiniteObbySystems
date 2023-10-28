local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)
-- local Players = game:GetService("Players")


local PlayerDataController = Knit.CreateController {
    Name = "PlayerDataController",

    PlayerDataService = nil
}

function PlayerDataController:KnitStart()
    self.PlayerDataService = Knit.GetService("PlayerDataService")
end

function PlayerDataController:PurchaseItemWithCoin(Player: Player)
    
end

return PlayerDataController