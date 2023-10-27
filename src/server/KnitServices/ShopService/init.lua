local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)
local ShopClass = require(script.ShopClass)
local ShopData = require(script.Parent.Parent.store_items)

local ShopService = Knit.CreateService {
    Name = "ShopService",
    Client = {},

    Object = ShopClass.new()
}

function ShopService:KnitInit()
    -- Pull the data for the items to be displayed in the store

    self.Object:FeedData(ShopData)
end

function ShopService:KnitStart()
    -- Populate the GUI with the items

end