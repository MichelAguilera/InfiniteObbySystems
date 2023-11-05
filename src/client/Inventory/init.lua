local ItemClass = require(script.Item)

local Inventory = {}
Inventory.__index = Inventory

function Inventory.new(args)
    local self = setmetatable({}, Inventory)

    self.Inventory = self.PopulateInventory(args.INVENTORY)
    print("args.INVENTORY", args.INVENTORY, "self.Inventory", self.Inventory)

    return self
end

function Inventory.PopulateInventory(Items: table)
    local PopulatedInventory = {}

    for _, item in pairs(Items) do
        -- table.insert(PopulatedInventory, ItemClass.new(item))
        PopulatedInventory[item.ID] = ItemClass.new(item)
    end

    print("PopulatedInventory", PopulatedInventory)
    return PopulatedInventory
end

function Inventory:EquipItem(Player: Player, ItemId: string)
    local _item = self.Inventory[ItemId]
    if _item.IsEquipped == false then
        _item.IsEquipped = true

        local stringValue = Instance.new("StringValue")
        stringValue.Name = _item.Name
        stringValue.Value = _item.Id
        stringValue.Parent = Player.Backpack
    end
end

function Inventory:UnequipItem(Player: Player, ItemId: string)
    local _item = self.Inventory[ItemId]
    if _item.State ~= "COOLDOWN" and _item.IsEquipped then
        _item.IsEquipped = false

        Player.Backpack:FindFirstChild(ItemId):Destroy()
    end
end

function Inventory:UseItem(ItemId: string)
    local _item = self.Inventory[ItemId]
    _item.Amount -= 1

    if _item.Amount <= 0 then
        self:RemoveItem(ItemId)
    end
end

function Inventory:RemoveItem(ItemId: string)
    self.Inventory[ItemId] = nil
end

function Inventory:repr()
    print(self)
end

return Inventory