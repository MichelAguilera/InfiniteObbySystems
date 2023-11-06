--[[
    Credit to sleitnick for his "Fixing Lua OOP" video,
    which I used as reference for this Type architecture.
]]

export type ShopItem = {
    ID: string,
    NAME: string,
    DESCRIPTION: string,
    IMAGE_ID: string,
    PROPERTIES: table,
    COST: number
}

local Item: table = {}

function Item.GetDescriptor(item: ShopItem): string
    return `{item.ID}, {item.NAME}, {item.DESCRIPTION}`
end

function Item.GetCosts(item: ShopItem): table
    return {item.ID, item.COST_RBX, item.COST_POINT}
end

return Item