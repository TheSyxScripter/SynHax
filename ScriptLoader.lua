-- Gui to Lua
-- Version: 3.2

-- Instances:

local NEWScriptHub = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Exit = Instance.new("TextButton")
local Shadow = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local LoadButton = Instance.new("TextButton")
local Shadow_2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local TopLabel = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local Desc = Instance.new("TextLabel")
local DiscordAvatar2 = Instance.new("ImageLabel")
local UICorner_6 = Instance.new("UICorner")
local Age = Instance.new("TextLabel")
local Age2 = Instance.new("TextLabel")
local Name = Instance.new("TextLabel")
local Version = Instance.new("TextLabel")
local DetectedGameText = Instance.new("TextLabel")
local DetectedGame = Instance.new("TextLabel")

-- Variables:
local Returned = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheSyxScripter/SynHax/main/Game_List.lua"))() -- Grab Game List
local GameScript = ""

local Market = game:GetService("MarketplaceService")

-- Check if game is appart of library
if Returned[game.PlaceId] then
	local Name = Returned[game.PlaceId].Name
	GameScript = Returned[game.PlaceId].Script
	LoadButton.Visible = true
	DetectedGame.Text = "Detected: " .. Name
	print("Detected: " .. Name)
else
	LoadButton.Active = false
	LoadButton.Selectable = false
	LoadButton.Visible = false
	DetectedGame.Text = "No Game Detected"
	print("No Game Detected")	
end

--Properties:

NEWScriptHub.Name = "NEWScriptHub"
NEWScriptHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = NEWScriptHub
Main.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.197320342, 0, 0.062650606, 0)
Main.Size = UDim2.new(0, 499, 0, 326)

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.fromRGB(221, 221, 221)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.572808921, 0, 0.788343549, 0)
Exit.Size = UDim2.new(0, 180, 0, 45)
Exit.ZIndex = 2
Exit.Font = Enum.Font.GothamSemibold
Exit.Text = "Exit SynHax"
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true
Exit.MouseButton1Down:Connect(function()
	delay(0.1, function() Parent.Parent.Frame.Visible = false
end)

Shadow.Name = "Shadow"
Shadow.Parent = Exit
Shadow.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Shadow.BorderSizePixel = 0
Shadow.Size = UDim2.new(1, 0, 1, 4)

UICorner.Parent = Shadow

UICorner_2.Parent = Exit

LoadButton.Name = "LoadButton"
LoadButton.Parent = Main
LoadButton.BackgroundColor3 = Color3.fromRGB(221, 221, 221)
LoadButton.BorderSizePixel = 0
LoadButton.Position = UDim2.new(0.0502078906, 0, 0.788343549, 0)
LoadButton.Size = UDim2.new(0, 180, 0, 45)
LoadButton.ZIndex = 2
LoadButton.Font = Enum.Font.GothamSemibold
LoadButton.Text = "Load SyxHax"
LoadButton.TextColor3 = Color3.fromRGB(0, 0, 0)
LoadButton.TextScaled = true
LoadButton.TextSize = 14.000
LoadButton.TextWrapped = true
LoadButton.MouseButton1Down:Connect(function()
	delay(0.1, function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheSyxScripter/SynHax/main/"..GameScript))() end)
    Parent.Parent.Frame.Visible = false    
end)

Shadow_2.Name = "Shadow"
Shadow_2.Parent = LoadButton
Shadow_2.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Shadow_2.BorderSizePixel = 0
Shadow_2.Size = UDim2.new(1, 0, 1, 4)

UICorner_3.Parent = Shadow_2

UICorner_4.Parent = LoadButton

TopLabel.Name = "TopLabel"
TopLabel.Parent = Main
TopLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopLabel.BackgroundTransparency = 1.000
TopLabel.BorderSizePixel = 0
TopLabel.Position = UDim2.new(0.31556505, 0, 0.0429447889, 0)
TopLabel.Size = UDim2.new(0, 200, 0, 50)
TopLabel.Font = Enum.Font.GothamSemibold
TopLabel.Text = "SyxHax Loader"
TopLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TopLabel.TextScaled = true
TopLabel.TextSize = 14.000
TopLabel.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 20)
UICorner_5.Parent = Main

Desc.Name = "Desc"
Desc.Parent = Main
Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc.BackgroundTransparency = 1.000
Desc.BorderSizePixel = 0
Desc.Position = UDim2.new(0.25373137, 0, 0.263803691, 0)
Desc.Size = UDim2.new(0, 259, 0, 102)
Desc.Font = Enum.Font.GothamSemibold
Desc.Text = "Made By thedogeus#6969 (Still in development!)"
Desc.TextColor3 = Color3.fromRGB(0, 0, 0)
Desc.TextScaled = true
Desc.TextSize = 14.000
Desc.TextWrapped = true

DiscordAvatar2.Name = "DiscordAvatar2"
DiscordAvatar2.Parent = Main
DiscordAvatar2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DiscordAvatar2.BackgroundTransparency = 1.000
DiscordAvatar2.BorderSizePixel = 0
DiscordAvatar2.Position = UDim2.new(-0.000495405868, 0, 0.216843575, 0)
DiscordAvatar2.Size = UDim2.new(0, 47, 0, 47)
DiscordAvatar2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_6.CornerRadius = UDim.new(99, 99999)
UICorner_6.Parent = DiscordAvatar2

Age.Name = "Age"
Age.Parent = Main
Age.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Age.BackgroundTransparency = 1.000
Age.BorderSizePixel = 0
Age.Position = UDim2.new(0.118177131, 0, 0.161185235, 0)
Age.Size = UDim2.new(0, 46, 0, 19)
Age.Font = Enum.Font.GothamSemibold
Age.Text = "Age:"
Age.TextColor3 = Color3.fromRGB(0, 0, 0)
Age.TextSize = 14.000

Age2.Name = "Age2"
Age2.Parent = Main
Age2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Age2.BackgroundTransparency = 1.000
Age2.BorderSizePixel = 0
Age2.Position = UDim2.new(0.217047125, 0, 0.161185235, 0)
Age2.Size = UDim2.new(0, 46, 0, 19)
Age2.Font = Enum.Font.GothamSemibold
Age2.Text = "N/A"
Age2.TextColor3 = Color3.fromRGB(0, 0, 0)
Age2.TextSize = 14.000

Name.Name = "Name"
Name.Parent = Main
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.134447187, 0, 0.244450957, 0)
Name.Size = UDim2.new(0, 65, 0, 28)
Name.Font = Enum.Font.GothamBold
Name.Text = "N/A"
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextScaled = true
Name.TextSize = 34.000
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
Name.TextYAlignment = Enum.TextYAlignment.Top

Version.Name = "Version"
Version.Parent = Main
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.BorderSizePixel = 0
Version.Position = UDim2.new(0.622324169, 0, 0.195371181, 0)
Version.Size = UDim2.new(0, 88, 0, 32)
Version.Font = Enum.Font.GothamBold
Version.Text = "Version 1.0"
Version.TextColor3 = Color3.fromRGB(0, 0, 0)
Version.TextScaled = true
Version.TextSize = 14.000
Version.TextWrapped = true

DetectedGameText.Name = "DetectedGameText"
DetectedGameText.Parent = Main
DetectedGameText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DetectedGameText.BackgroundTransparency = 1.000
DetectedGameText.BorderColor3 = Color3.fromRGB(27, 42, 53)
DetectedGameText.BorderSizePixel = 0
DetectedGameText.Position = UDim2.new(0.409753382, 0, 0.576687098, 0)
DetectedGameText.Size = UDim2.new(0, 200, 0, 50)
DetectedGameText.Font = Enum.Font.GothamSemibold
DetectedGameText.TextColor3 = Color3.fromRGB(0, 0, 0)
DetectedGameText.TextScaled = true
DetectedGameText.TextSize = 14.000
DetectedGameText.TextWrapped = true

DetectedGame.Name = "DetectedGame"
DetectedGame.Parent = Main
DetectedGame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DetectedGame.BackgroundTransparency = 1.000
DetectedGame.BorderColor3 = Color3.fromRGB(27, 42, 53)
DetectedGame.BorderSizePixel = 0
DetectedGame.Position = UDim2.new(0.117168218, 0, 0.576687098, 0)
DetectedGame.Size = UDim2.new(0, 200, 0, 50)
DetectedGame.Font = Enum.Font.GothamSemibold
DetectedGame.Text = "Game:"
DetectedGame.TextColor3 = Color3.fromRGB(0, 0, 0)
DetectedGame.TextScaled = true
DetectedGame.TextSize = 14.000
DetectedGame.TextWrapped = true

-- Scripts:

local function GYAMUZ_fake_script() -- Main.Drag 
	local script = Instance.new('LocalScript', Main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		local dragSpeed = 0
		dragInput = nil
		dragStart = nil
		local dragPos = nil
		function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(GYAMUZ_fake_script)()
local function JLWNT_fake_script() -- DiscordAvatar2.AvatarScrip 
	local script = Instance.new('LocalScript', DiscordAvatar2)

	local Players = game:GetService("Players")
	
	local player = Players.LocalPlayer
	
	local userId = player.UserId
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	
	local imageLabel = script.Parent
	imageLabel.Image = content
end
coroutine.wrap(JLWNT_fake_script)()
local function ZPXY_fake_script() -- Age2.Age 
	local script = Instance.new('LocalScript', Age2)

	script.Parent.Text = game.Players.LocalPlayer.AccountAge
end
coroutine.wrap(ZPXY_fake_script)()
local function HMJKMY_fake_script() -- Name.NameScrip 
	local script = Instance.new('LocalScript', Name)

	script.Parent.Text = game.Players.LocalPlayer.Name
end
coroutine.wrap(HMJKMY_fake_script)()
