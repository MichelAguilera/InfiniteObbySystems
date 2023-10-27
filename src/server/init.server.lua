print("Hello world, from server!")

local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)

Knit.AddServices(script.KnitServices)
Knit.Start():catch(warn)