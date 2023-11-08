local InventoryClass = require(script.Inventory)
local ToolClass = require(script.ToolClass)
local player = game:GetService("Players").LocalPlayer

local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)

Knit.AddControllers(script.KnitControllers)
Knit.Start():catch(warn)

-- I have to use task.wait(), super hacky but it works
task.wait(2)
local PlayerDataController = Knit.GetController("PlayerDataController")
task.wait(1)


local usrdata = PlayerDataController:GetUserData()
-- print("usrdata", usrdata)
local Inventory = InventoryClass.new(player, usrdata)
local ToolHandler = ToolClass.new(player)

-- MOVE INVENTORY INTO THE CONTROLLER FOR EASIER PASSING OF INVENTORY OBJECT REFERENCE TO THE SERVER

-- Inventory:repr()
-- Inventory:UseItem("1")
-- Inventory:repr()
-- Inventory:UseItem("1")
Inventory:EquipItem(player, "1")
-- Inventory:InitiateCooldown("1")
task.wait(5)
Inventory:UnequipItem(player, "1")