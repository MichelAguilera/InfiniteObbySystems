print("Hello world, from server!")

local Players = game:GetService("Players")
local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)

Knit.AddServices(script.KnitServices)
Knit.Start():catch(warn)

local PlayerDataService = Knit.GetService("PlayerDataService")

-- Players.PlayerAdded:Connect(function(Player: Player)
--     -- print("Players.PlayerAdded", Player.Name)
--     -- PlayerDataService:LoadPlayerInfo(Player)
-- end)