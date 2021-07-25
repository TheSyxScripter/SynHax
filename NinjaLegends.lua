local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SynHub", "Ocean")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Auto Farm")
Section:NewToggle("Farm Ninjitsu", "Auto Ninjitsu", function(state)
    if state then
_G.Ninfarm = true
while _G.Ninfarm do
    local args = {
    [1] = "swingKatana"
}

game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
 wait()
 end
    else
       _G.Ninfarm = false
    end
end)
Section:NewToggle("Auto Sell", "AutosellNin่jitsu", function(v)
    getgenv().autosell = v
    while true do
        if getgenv().autoswing == false then return end
        game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(0.1)
        game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
        wait(0.1)
    end
end)

local Section = Tab:NewSection("Auto Buy")
Section:NewToggle("Buy All Swords (auto)", "Uses your coins to buy swords you can afford", function(v)
    getgenv().buyswords = v
    while true do
        if not getgenv().buyswords then return end
        local A_1 = "buyAllSwords"
        local A_2 = "Inner Peace Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(0.5)
    end
end)
Section:NewToggle("Buy all belts (auto)", "Uses your coins to buy belts you can afford", function(v)
    getgenv().buybelts = v
    while true do
        if not getgenv().buybelts then return end
        local A_1 = "buyAllBelts"
        local A_2 = "Inner Peace Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(0.5)
    end
end)

local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("TP To:")
Section:NewButton("Lobby", "Lobby", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.02961730957, 3.2380049228668, 29.587245941162)
end)
Section:NewButton("Astral Island", "Astral Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(238.93620300293, 2017.8973388672, 261.70651245117)
end)
Section:NewButton("Mystical Island", "Mystical Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(158.46900939941, 4050.1169433594, 69.441993713379)
end)
Section:NewButton("Space Island", "Space Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.07666015625, 5659.2934570313, 67.826065063477)
end)
Section:NewButton("Tundra Island", "Tundra Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.78903198242, 9290.001953125, 69.367416381836)
end)
Section:NewButton("Eternal Island", "Eternal Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.37921142578, 13681.055664063, 70.174247741699)
end)
Section:NewButton("Sandstorm", "Sandstorm", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.84313964844, 17692.029296875, 74.219650268555)
end)
Section:NewButton("Thunderstorm", "Thunderstorm", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.28034973145, 24073.689453125, 61.404674530029)
end)
Section:NewButton("Ancient Inferno Island", "Ancient Inferno Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.09628295898, 28259.619140625, 59.083751678467)
end)
Section:NewButton("Midnight Shadow Island", "Midnight Shadow Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.36192321777, 33208.85546875, 63.074146270752)
end)
Section:NewButton("Mythical Souls Island", "Mythical Souls Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.67433166504, 39320.40625, 61.849086761475)
end)
Section:NewButton("Winter Wonder Island", "Winter Wonder Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.21199035645, 46018.03515625, 60.505424499512)
end)
Section:NewButton("Golden Master IsLand", "Golden Master IsLand", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.09254455566, 52613.51171875, 64.917793273926)
end)
Section:NewButton("Dragon Legend Island", "Dragon Legend Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.04364013672, 59603.40234375, 67.054779052734)
end)
Section:NewButton("Cybernetic Legends Island", "Cybernetic Legends Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.0375213623, 66681.1953125, 66.581359863281)
end)
Section:NewButton("Skystorm Ultraus Island", "Skystorm Ultraus Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(134.71530151367, 70279.640625, 65.319343566895)
end)
Section:NewButton("Chaosd Legends Islandd", "Chaosd Legends Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.03797912598, 74448.3984375, 50.659774780273)
end)
Section:NewButton("Soul Fusion Island", "Soul Fusion Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(134.65344238281, 79749.328125, 58.990219116211)
end)
Section:NewButton("Dark Elements Island", "Dark Elements Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.06945800781, 83200.0390625, 70.439010620117)
end)
Section:NewButton("Inner Peace Island", "Inner Peace Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.97177124023, 87058.078125, 61.189998626709)
end)

local Tab = Window:NewTab("Mics")
local Section = Tab:NewSection("Ability")
Section:NewSlider("Speed", "PlusSpeed!!", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jump", "Powerr!!", 1000, 0, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
