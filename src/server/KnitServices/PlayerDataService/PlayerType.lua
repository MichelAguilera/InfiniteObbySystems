--[[
    Credit to sleitnick for his "Fixing Lua OOP" video,
    which I used as reference for this Type architecture.
]]
local InventoryType = require(script.Parent.InventoryType)

type UserData = {
    UNLOCKED_LIST: {number},
    INVENTORY: InventoryType.Inventory
}
export type PlayerData = {
    USER_NAME: string,
    USER_ID: string,
    USER_DATA: UserData
}

local PlayerData = {}

return PlayerData