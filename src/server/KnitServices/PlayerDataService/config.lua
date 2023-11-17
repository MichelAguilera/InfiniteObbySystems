local PlayerType = require(script.Parent.PlayerType)

local config = {
    VER = "_".."DEV", -- CHANGE BEFORE DEPLOYMENT TO PROD
    KEY = "jcimn_0000_0000_0000_0011", -- CHANGE BEFORE DEPLOYMENT TO PROD
    DEFAULT_USER_DATA = {
        ["UNLOCKED_LIST"] = {},
        ["INVENTORY"] = {}
    },
    DEBUG_USER_DATA = {
        ["UNLOCKED_LIST"] = {"10", "30", "90"},
        ["INVENTORY"] = {
            {["ID"] = "1", ["AMOUNT"] = 3}
        }
    }
}

return config