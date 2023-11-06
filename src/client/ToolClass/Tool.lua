local Tool = {}
Tool.__index = Tool

function Tool.new(gameTool: Tool)
    local self = setmetatable({}, Tool)

    self.gameTool = gameTool:Clone()

    return self
end

function Tool:use()
    print("Hey I'm being used!!!")
end

return Tool