local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("SynHub")

local serv = win:Server("Preview", "")

local tgls = serv:Channel("Auto Farm")

tgls:Toggle("AutoStep",false, function(bool) --1
    _G.farm = bool
    while _G.farm do wait(.2)
    local args = {
    [1] = "collectOrb",
    [2] = "Red Orb",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
   local args = {
    [1] = "collectOrb",
    [2] = "Orange Orb",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
 local args = {
    [1] = "collectOrb",
    [2] = "Blue Orb",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
local args = {
    [1] = "collectOrb",
    [2] = "Yellow Orb",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

end
end)

tgls:Toggle("AutoGem",false, function(bool) --2
    _G.gem = bool
    while _G.gem do wait()
    local args = {
    [1] = "collectOrb",
    [2] = "Gem",
    [3] = "City"
}
game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    end
end)

local btns = serv:Channel("Teleport")

btns:Button("City", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.53656780719757, 4.1268644332886, -143.89517211914)
end)
btns:Button("Frost Course", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2213.1076660156, 305.13342285156, 1105.1552734375)
end)
btns:Button("Mysterious Cave", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9685.82421875, 59.306858062744, 3132.2944335938)
end)
btns:Button("Snow City", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-857.92852783203, 4.1768665313721, 2175.0261230469)
end)
btns:Button("Parkour Challenge", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2483.0275878906, 20.068494796753, -2072.3674316406)
end)
btns:Button("Pirate Course", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1608.0568847656, 101.69864654541, 5662.6943359375)
end)
btns:Button("Inferno Cave", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11041.357421875, 59.306846618652, 4111.8251953125)
end)
btns:Button("Magma City", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1616.8270263672, 4.2268743515015, 4330.65234375)
end)
