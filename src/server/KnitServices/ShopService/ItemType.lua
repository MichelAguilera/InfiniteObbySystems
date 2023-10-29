--[[
    Credit to sleitnick for his "Fixing Lua OOP" video,
    which I used as reference for this Type architecture.
]]

export type Item = {
    ID: string,
    NAME: string, 
    DESCRIPTION: string, 
    IMAGE_ID: string, 
    PROPERTIES: table, 
    COST_RBX: number, 
    COST_POINT: number
}

local Item: table = {}

function Item.GetDescriptor(item: Item): string
    return `{item.ID}, {item.NAME}, {item.DESCRIPTION}`
end

function Item.GetCosts(item: Item): table
    return {item.ID, item.COST_RBX, item.COST_POINT}
end

return Item