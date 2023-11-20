local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Roact = require(ReplicatedStorage.Packages.roact)
local childrenTree = {
	require(script.Parent.HudContainer),
    require(script.Parent.SettingsContainer),
	require(script.Parent.ShopContainer),
}

local RoactTree = Roact.createElement("ScreenGui", {}, {
	childrenTree[1],
	childrenTree[2],
	childrenTree[3],
})

return RoactTree
