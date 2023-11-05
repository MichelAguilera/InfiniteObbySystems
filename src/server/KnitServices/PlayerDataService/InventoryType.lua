--[[
    Credit to sleitnick for his "Fixing Lua OOP" video,
    which I used as reference for this Type architecture.
]]

type InventoryItem = { -- TUPLE
    ITEM_ID: string,
    AMOUNT: number,
}

export type Inventory = {InventoryItem}

local Inventory = {}

return Inventory