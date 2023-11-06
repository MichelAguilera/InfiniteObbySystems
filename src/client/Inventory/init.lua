local ItemClass = require(script.Item)

local Inventory = {}
Inventory.__index = Inventory

function Inventory.new(player: Player, args: table)
    local self = setmetatable({}, Inventory)

    self.Inventory = self.PopulateInventory(player, args.INVENTORY)

    return self
end

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

function Inventory:EquipItem(player: Player, ItemId: string)
    local _item = self.Inventory[ItemId]
    if _item.IsEquipped == false then
        _item.IsEquipped = true

        local stringValue = Instance.new("StringValue")
        stringValue.Name = _item.Name
        stringValue.Value = _item.Model3d
        stringValue.Parent = player["HotbarFolder"]
    end
end

function Inventory:UnequipItem(player: Player, ItemId: string)
    local _item = self.Inventory[ItemId]
    if _item.State ~= "COOLDOWN" and _item.IsEquipped then
        _item.IsEquipped = false

        player["HotbarFolder"]:FindFirstChild(_item.Name):Destroy()
    else
        warn(`Item is in {_item.State} state`)
    end
end

function Inventory:UseItem(ItemId: string)
    local _item = self.Inventory[ItemId]
    _item.Amount -= 1

    if _item.Amount <= 0 then
        self:RemoveItem(ItemId)
    end
end

function Inventory:InitiateCooldown(ItemId: string)
    local _item = self.Inventory[ItemId]
    _item:Cooldown()
end

function Inventory:RemoveItem(ItemId: string)
    self.Inventory[ItemId] = nil
end

function Inventory:repr()
    print(self)
end

return Inventory