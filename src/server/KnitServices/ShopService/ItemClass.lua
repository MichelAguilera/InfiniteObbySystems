local Item
Item.__index = Item

function Item.new(args: {
    -- TYPE HINTS
    ID: string,
    NAME: string, 
    DESCRIPTION: string, 
    IMAGE_ID: string, 
    PROPERTIES: table, 
    COST_RBX: number, 
    COST_COIN: number
})
    -- SELF
    local self = setmetatable({}, Item)

    -- SET ATTRIBUTES
    self.Id             = args.ID
    self.Name           = args.NAME
    self.Description    = args.DESCRIPTION
    self.Image_Id       = args.IMAGE_ID
    self.Properties     = args.PROPERTIES
    self.Cost_Rbx       = args.COST_RBX
    self.Cost_Coin      = args.COST_COIN

    return self
end

return Item