-- Please keep a shared library of utility functions here

local UtilityFunctions = {}

-- Deep Copy a table (Lua passes this shit by reference instead of value)
function UtilityFunctions.DeepCopy(originalTable: table, depth: number?, iter: number?): table
    local newTable = {}

    for k, v in pairs(originalTable) do
        if type(v) == "table" then
            newTable[k] = UtilityFunctions.DeepCopy(v, depth)
        elseif iter >= depth then
            newTable[k] = v
        else
            newTable[k] = v
        end
    end

    return newTable
end

return UtilityFunctions