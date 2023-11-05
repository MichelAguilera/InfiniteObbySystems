local PlayerType = require(script.Parent.PlayerType)

local config = {
    KEY = "lkasdi",
    DEFAULT_USER_DATA = {
        ["UNLOCKED_LIST"] = {},
        ["INVENTORY"] = {}
    },
    DEBUG_USER_DATA = {
        ["UNLOCKED_LIST"] = {"10", "30", "90"},
        ["INVENTORY"] = {
            {["ID"] = "45", ["AMOUNT"] = 3},
            {["ID"] = "37", ["AMOUNT"] =90}
        }
    }
}

return config