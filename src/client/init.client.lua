local InventoryClass = require(script.Inventory)

local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)

Knit.AddControllers(script.KnitControllers)
Knit.Start():catch(warn)

-- I have to use task.wait(), super hacky but it works
task.wait(2)
local PlayerDataController = Knit.GetController("PlayerDataController")
task.wait(1)

local Inventory = InventoryClass.new(PlayerDataController:GetUserData())
Inventory:repr()