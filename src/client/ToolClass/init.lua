local ToolClass = require(script.Tool)
local ToolStorage = game:GetService("ReplicatedStorage"):WaitForChild("Tools")

local ToolHandler = {}
ToolHandler.__index = ToolHandler

function ToolHandler.new(player: Player)
    local self = setmetatable({}, ToolHandler)

    self.player = player
    self.Backpack = self.player.Backpack
    self.HotbarFolder = player["HotbarFolder"]
    self:AddDescendantsListener()

    self.ToolsInBackpack = {}

    return self
end

function ToolHandler:AddDescendantsListener()
    self.HotbarFolder.ChildAdded:Connect(function(child)
        self.ToolsInBackpack[child.Name] = ToolClass.new(ToolStorage[child.Value])
        self.ToolsInBackpack[child.Name].gameTool.Parent = self.player.Backpack
        self.AddToolActivationListener(self.ToolsInBackpack[child.Name])
        self.Backpack = self.player.Backpack
    end)

    self.HotbarFolder.ChildRemoved:Connect(function(child)
        self.Backpack = self.player.Backpack
        if self.Backpack:FindFirstChild(child.Value) ~= nil then
            self.player.Backpack[child.Value]:Destroy()
        else
            self.player.Character:FindFirstChild(child.Value):Destroy()
        end

        self.ToolsInBackpack[child.Name] = nil
    end)
end

function ToolHandler.AddToolActivationListener(tool)
    tool.gameTool.Activated:Connect(function()
        tool:use()
    end)
end

return ToolHandler