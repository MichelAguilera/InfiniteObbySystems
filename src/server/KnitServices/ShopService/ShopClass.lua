-- ITEMS
local ItemClass = require(script.Parent.ItemClass)

-- SHOP
local Shop
Shop.__index = Shop

function Shop.new()
    local self = setmetatable({}, Shop)

    self.Items = {}

    return self
end

function Shop:FeedData(Data)
    for i, item in pairs(Data) do
        self.Items[i] = self.CreateItem(item)
    end
end

function Shop.CreateItem(item)
    ItemClass.new(item)
end

return Shop