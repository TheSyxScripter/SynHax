
-- main
 local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
 local Window = Library.CreateLib("SyxHacks", "Synapse")

local K = Window:NewTab("Kits")
local KSection = K:NewSection("Kit")
 KSection:NewDropdown("Kits", "Choose Any Kit", {"baker", "barbarian", "builder","archer","shielder","melody","davey","farmer_cletus"}, function(v)
    local args = {
    [1] = {
        ["kit"] = v
    }
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.BedwarsActivateKit:InvokeServer(unpack(args))
end)

--wool/currency
local W = Window:NewTab("Wool")
local WSection = W:NewSection("Stuff")
 WSection:NewButton("Buy Wool (Need 8 Iron)", "Gives You Wool", function()

 local A_1 = 
{
	["shopItem"] = 
{
	["price"] = 0, 
	["currency"] = "iron", 
	["itemType"] = "wool_white", 
	["amount"] = 0
}
}
local Event = game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"].net.out["_NetManaged"].BedwarsPurchaseItem
Event:InvokeServer(A_1)

end)

-- player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
 PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
 PlayerSection:NewSlider("JumpPower", "Changes the jump power", 1000, 50, function(v)
game.Players.LocalPlayers.Character.Humanoid.JumpPower = v
    end)
PlayerSection:NewButton("Instant Break", "Breaks blocks instantly", function()
while wait() do
    for i,v in pairs(workspace.Map.Blocks:GetChildren()) do
        v:SetAttribute("Health",0)
    end
end
end)

-- random stuff
