local InventoryClass = require(script.Inventory)
local Player = game:GetService("Players").LocalPlayer

local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)

Knit.AddControllers(script.KnitControllers)
Knit.Start():catch(warn)

-- I have to use task.wait(), super hacky but it works
task.wait(2)
local PlayerDataController = Knit.GetController("PlayerDataController")
task.wait(1)

local usrdata = PlayerDataController:GetUserData()
print("usrdata", usrdata)
local Inventory = InventoryClass.new(usrdata)

Inventory:repr()
Inventory:UseItem("1")
Inventory:repr()
Inventory:UseItem("1")
Inventory:EquipItem(Player, "1")