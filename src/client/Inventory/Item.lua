local ItemLocalization = require(game:GetService("ReplicatedStorage"):WaitForChild("Shared").ItemLocalization)

local Item = {}
Item.__index = Item

function Item.new(args)
    local self = setmetatable({}, Item)
    -- Meta
    self.Id             = args.ID
    --------------------------------------------------------------
    self.Name           = ItemLocalization[self.Id]["NAME"]
    self.Description    = ItemLocalization[self.Id]["DESCRIPTION"]
    self.ImageId        = ItemLocalization[self.Id]["IMAGE_ID"]
    self.Model3d        = ItemLocalization[self.Id]["MODEL_3D"]
    self.Properties     = ItemLocalization[self.Id]["PROPERTIES"]
    self.Cost           = ItemLocalization[self.Id]["COST"]
    --------------------------------------------------------------
    -- Lifecycle
    self.State = nil -- nil is inactive
    self.IsEquipped = false
    self.Amount = if args.AMOUNT then args.AMOUNT else 1

    return self
end

function Item:ChangeState(newState)
    self.State = newState
end

function Item:Cooldown()
    self:ChangeState("COOLDOWN")
    task.wait(self.Properties.COOLDOWN)
    self:ChangeState(nil)
end

return Item