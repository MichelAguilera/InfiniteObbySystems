print("Hello world, from client!")

local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages").knit)

Knit.AddControllers(script.KnitControllers)
Knit.Start():catch(warn)
