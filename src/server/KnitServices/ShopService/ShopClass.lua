-- ITEMS
local ItemType = require(script.Parent.ItemType)

-- SHOP
local Shop = {}
Shop.__index = Shop

function Shop.new()
    local self = setmetatable({}, Shop)

    self.Items = {}

    return self
end

function Shop:FeedData(Data: table)
    for i, item in pairs(Data) do
        self.Items[i] = self.CreateItem(item)
    end
end

function Shop.CreateItem(itemData: table)
    local item: ItemType.Item = {
        ID = itemData.ID,
        NAME = itemData.NAME, 
        DESCRIPTION = itemData.DESCRIPTION, 
        IMAGE_ID = itemData.IMAGE_ID, 
        MODEL_3D = itemData.MODEL_3D, 
        PROPERTIES = itemData.PROPERTIES, 
        COST_RBX = itemData.COST_RBX, 
        COST_COIN = itemData.COST_COIN
    }
    return item
end

function Shop:DisplayInTerminal()
    print("DISPLAYING ITEMS:", self.Items)
end

return Shop