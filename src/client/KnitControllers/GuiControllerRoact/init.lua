--[[

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Knit = require(ReplicatedStorage.Packages.knit)
local Roact = require(ReplicatedStorage.Packages.roact)
local RoactTree = require(script.RoactTree)
local player = game:GetService("Players").LocalPlayer

local GuiControllerRoact = Knit.CreateController({
    Name = "GuiControllerRoact",
    Client = {}
})

function GuiControllerRoact:KnitStart()
    Roact.mount(RoactTree, player.PlayerGui)
end

return GuiControllerRoact

]]

return nil