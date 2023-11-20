local player = game:GetService("Players").LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Knit = require(ReplicatedStorage.Packages.knit)

local GuiMVC = Knit.CreateController({
    Name = "GuiMVC",
    Client = {},
    
    root = nil,
    scrollFrames = nil,
})

function GuiMVC:KnitStart()
    self.root = player.PlayerGui.DynamicGamesCartoonUI
    self.scrollFrames = {
        self.root.InventoryContainer.ShopFrame.ScrollingFrame,
        self.root.PointsShopContainer.ShopFrame.ScrollingFrame,
        self.root.StoreContainer.ProductsFrame.PassesScrollFrame,
        self.root.StoreContainer.ProductsFrame.PointsScrollFrame,
    }
end

function GuiMVC.PopulateScrollingFrame()
    
end

return GuiMVC