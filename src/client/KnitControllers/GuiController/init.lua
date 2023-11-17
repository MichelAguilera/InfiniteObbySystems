local player = game:GetService("Players").LocalPlayer
local config = require(script.Parent.LocalConfig)
local CollectionService = game:GetService("CollectionService")
local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)

local GuiController = Knit.CreateController {
    Name = "GuiController",
    GuiRoot = nil,
    TaggedButtons = {}
}

type Properties = {
    {
        Name: string, -- Name of roblox property
        Value: string -- Value of property (always string)
    }
}

function GuiController:KnitInit()
    -- Creates the needed client-side events
    local function CreateNamedEvents(events: {name: string, parent: Folder})
        for _, event in pairs(events) do
            local Event = Instance.new("BindableEvent")
                  Event.Name = event[1]
                  Event.Parent = event[2]
        end
    end

    local EventFolder = Instance.new("Folder")
          EventFolder.Name = config.GuiControllerEventFolder
          EventFolder.Parent = player
    CreateNamedEvents({
        {"ChildAddedToFrame", EventFolder}
    })
end

-- Initial methods
function GuiController:ConnectGuiRoot()
    -- Attempts to set GuiRoot
    self.GuiRoot = player.PlayerGui:WaitForChild(config.GuiRootName)

    if self.GuiRoot ~= nil then
        return
    else -- Tries again if it fails
        task.wait(3)
        self:ConnectGuiRoot()
    end
end

-- Attach listeners to frames that hold the Item buttons in the Inventory and Store GUI menus
function GuiController:AttachListeners()
    local function AttachListener(host: GuiObject)
        host.ChildAdded:Connect(function(child)
            self:TagButton(child)
        end)
    end

    local hostList: {GuiObject} = {
        self.GuiRoot.ShopContainer.ShopFrame.ScrollingFrame,
        self.GuiRoot.StoreContainer.ProductsFrame.PassesScrollFrame,
        self.GuiRoot.StoreContainer.ProductsFrame.PointsScrollFrame,
    }

    for _, host in pairs(hostList) do
        AttachListener(host)
    end
end

-- Event-called methods
function GuiController:TagButton(button: GuiButton)
    local function TagButton(instance: GuiButton, tag: string)
        if instance.ClassName == "TextButton" or instance.ClassName == "ImageButton" then
            CollectionService.AddTag(instance, tag)
        end
    end

    if button == nil then -- No button instance passed, perform check on entire tree
        local nodes = self.GuiRoot:GetDescendants()
        for _, node in pairs(nodes) do
            TagButton(node, config.ButtonTagName)
        end
    else -- button passed, apply tag to button
        TagButton(button, config.ButtonTagName)
    end
end

function GuiController:RefreshComponent(component: Instance, props: Properties)
    local newComponent = component.Clone()

    -- Modify clone with new values
    for _, property in pairs(props) do
        newComponent[property.Name] = property.Value
    end

    newComponent.Parent = component.Parent
    component:Destroy()
end

return GuiController