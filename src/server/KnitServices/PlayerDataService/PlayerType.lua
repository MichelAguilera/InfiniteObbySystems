--[[
    Credit to sleitnick for his "Fixing Lua OOP" video,
    which I used as reference for this Type architecture.
]]

export type PlayerData = {
    USER_NAME: string,
    USER_ID: number,
    UNLOCKED_LIST: {number}
}

local PlayerData: table = {}

return PlayerData