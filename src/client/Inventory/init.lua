local ItemClass = require(script.Item)

local Inventory = {}
Inventory.__index = Inventory

function Inventory.new(args)
    local self = setmetatable({}, Inventory)

    self.Inventory = self.PopulateInventory(args.INVENTORY)

    return self
end

function Inventory.PopulateInventory(Items: table)
    local PopulatedInventory = {}

    for _, item in pairs(Items) do
        table.insert(PopulatedInventory, ItemClass.new(item))
    end

    return PopulatedInventory
end

function Inventory:EquipItem(ItemId: string, Player: Player)
    if self.Inventory.ItemId.IsEquipped == false then
        self.Inventory.ItemId.IsEquipped = true

        local stringValue = Instance.new("StringValue")
        stringValue.Name = ItemId
        stringValue.Value = self.Inventory.ItemId.Name
        stringValue.Parent = Player.Backpack
    end
end

function Inventory:UnequipItem(ItemId: string, Player: Player)
    if self.Inventory.ItemId.State ~= "COOLDOWN" and self.Inventory.ItemId.IsEquipped then
        self.Inventory.ItemId.IsEquipped = false

        Player.Backpack:FindFirstChild(ItemId):Destroy()
    end
end

return Inventory