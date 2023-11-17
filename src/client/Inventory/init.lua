local ItemClass = require(script.Item)
local player: Player = game:GetService("Players").LocalPlayer

local Inventory = {}
Inventory.__index = Inventory

function Inventory.new(player: Player, args: table)
    local self = setmetatable({}, Inventory)

    self.Inventory = self.PopulateInventory(player, args.INVENTORY)

    return self
end

-- Convert item objects into serialized tuples for the database
function Inventory:ExportInventory()
    local serializedData = {}
    for _, item in pairs(self.Inventory) do
        serializedData[_] = item:serialize()
    end
    return serializedData
end

-- Convert database tuples into item objects
function Inventory.PopulateInventory(player: Player, items: table)
    local PopulatedInventory = {}

    local HotbarFolder = Instance.new("Folder")
    HotbarFolder.Name = "HotbarFolder"
    HotbarFolder.Parent = player
    -- print(HotbarFolder.Parent.Name)

    for _, item in pairs(items) do
        PopulatedInventory[item.ID] = ItemClass.new(item)
    end

    return PopulatedInventory
end

-- Creates flags for items currently in hotbar
function Inventory:EquipItem(ItemId: string)
    local _item = self.Inventory[ItemId]
    if _item.IsEquipped == false then
        _item.IsEquipped = true

        local stringValue = Instance.new("StringValue")
        stringValue.Name = _item.Name
        stringValue.Value = _item.Model3d
        stringValue.Parent = player["HotbarFolder"]
    end
end

-- Removes the flag from the hotbar
function Inventory:UnequipItem(player: Player, ItemId: string)
    local _item = self.Inventory[ItemId]
    if _item.State ~= "COOLDOWN" and _item.IsEquipped then
        _item.IsEquipped = false

        player["HotbarFolder"]:FindFirstChild(_item.Name):Destroy()
    else
        warn(`Item is in {_item.State} state`)
    end
end

-- Item use, reduces amount by 1
function Inventory:UseItem(ItemId: string)
    local _item = self.Inventory[ItemId]
    _item.Amount -= 1

    if _item.Amount <= 0 then
        self:RemoveItem(ItemId)
    end
end

-- Initiates item cooldown (not sure if this method is necessary)
function Inventory:InitiateCooldown(ItemId: string)
    local _item = self.Inventory[ItemId]
    _item:Cooldown()
end

-- Deletes item from memory
function Inventory:RemoveItem(ItemId: string)
    self.Inventory[ItemId] = nil
end

-- Prints the inventory array
function Inventory:repr()
    print(self)
end

return Inventory