local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

function dragGUI(gui)
	task.spawn(function()
		local dragging
		local dragInput
		local dragStart = Vector3.new(0,0,0)
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
		end
		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end)
end

local RobloxGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Image = Instance.new("ImageLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Close = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Execute = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local Erase = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local Editor = Instance.new("Frame")
local MainEditor = Instance.new("TextBox")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Lister = Instance.new("UIListLayout")
local Tab = Instance.new("Frame")
local LuaIcon = Instance.new("ImageLabel")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local TabTitle = Instance.new("TextLabel")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local Minimize = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
local Notif = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
local TextLabel_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_15 = Instance.new("UIAspectRatioConstraint")

RobloxGui.Name = "RobloxGui"
RobloxGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RobloxGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RobloxGui.DisplayOrder = 999999999

Main.Name = "Main"
Main.Parent = RobloxGui
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.499540865, 0, 0.499169439, 0)
Main.Size = UDim2.new(0.616079509, 0, 0.708818614, 0)
Main.ZIndex = 999999999

UICorner.Parent = Main

Image.Name = "Image"
Image.Parent = Main
Image.AnchorPoint = Vector2.new(0.5, 0.5)
Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image.BackgroundTransparency = 1.000
Image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Image.BorderSizePixel = 0
Image.Position = UDim2.new(0.0542521998, 0, 0.0868544579, 0)
Image.Size = UDim2.new(0.0806451589, 0, 0.129107982, 0)
Image.Image = "rbxassetid://76040369179835"

UIAspectRatioConstraint.Parent = Image
UIAspectRatioConstraint.AspectRatio = 1.126

Close.Name = "Close"
Close.Parent = Main
Close.AnchorPoint = Vector2.new(0.5, 0.5)
Close.BackgroundColor3 = Color3.fromRGB(6, 6, 6)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(255, 255, 255)
Close.Position = UDim2.new(0.95161289, 0, 0.0868544579, 0)
Close.Size = UDim2.new(0.0513196476, 0, 0.0821596235, 0)
Close.Image = "rbxassetid://98003519335643"

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Close

UIAspectRatioConstraint_2.Parent = Close

Execute.Name = "Execute"
Execute.Parent = Main
Execute.AnchorPoint = Vector2.new(0.5, 0.5)
Execute.BackgroundColor3 = Color3.fromRGB(6, 6, 6)
Execute.BackgroundTransparency = 1.000
Execute.BorderColor3 = Color3.fromRGB(255, 255, 255)
Execute.Position = UDim2.new(0.0513196476, 0, 0.906103313, 0)
Execute.Size = UDim2.new(0.0513196476, 0, 0.0821596235, 0)
Execute.Image = "rbxassetid://79486136789975"

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Execute

UIAspectRatioConstraint_3.Parent = Execute

Erase.Name = "Erase"
Erase.Parent = Main
Erase.AnchorPoint = Vector2.new(0.5, 0.5)
Erase.BackgroundColor3 = Color3.fromRGB(6, 6, 6)
Erase.BackgroundTransparency = 1.000
Erase.BorderColor3 = Color3.fromRGB(255, 255, 255)
Erase.Position = UDim2.new(0.133431092, 0, 0.906103313, 0)
Erase.Size = UDim2.new(0.0513196476, 0, 0.0821596235, 0)
Erase.Image = "rbxassetid://110471332028057"

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Erase

UIAspectRatioConstraint_4.Parent = Erase

Editor.Name = "Editor"
Editor.Parent = Main
Editor.AnchorPoint = Vector2.new(0.5, 0.5)
Editor.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Editor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Editor.BorderSizePixel = 0
Editor.Position = UDim2.new(0.5, 0, 0.5, 0)
Editor.Size = UDim2.new(0.96187681, 0, 0.647887349, 0)

MainEditor.Name = "MainEditor"
MainEditor.Parent = Editor
MainEditor.AnchorPoint = Vector2.new(0.5, 0.5)
MainEditor.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainEditor.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainEditor.BorderSizePixel = 0
MainEditor.Position = UDim2.new(0.5, 0, 0.563405812, 0)
MainEditor.Size = UDim2.new(1, 0, 0.873188376, 0)
MainEditor.ClearTextOnFocus = false
MainEditor.Font = Enum.Font.SourceSans
MainEditor.MultiLine = true
MainEditor.Text = ""
MainEditor.TextColor3 = Color3.fromRGB(220, 220, 220)
MainEditor.TextScaled = true
MainEditor.TextSize = 14.000
MainEditor.TextWrapped = true
MainEditor.TextXAlignment = Enum.TextXAlignment.Left
MainEditor.TextYAlignment = Enum.TextYAlignment.Top

UIAspectRatioConstraint_5.Parent = MainEditor
UIAspectRatioConstraint_5.AspectRatio = 2.722

ScrollingFrame.Parent = Editor
ScrollingFrame.Active = true
ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.5, 0, 0.0615942031, 0)
ScrollingFrame.Size = UDim2.new(1, 0, 0.126811594, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

Lister.Name = "Lister"
Lister.Parent = ScrollingFrame
Lister.FillDirection = Enum.FillDirection.Horizontal
Lister.VerticalAlignment = Enum.VerticalAlignment.Center

Tab.Name = "Tab"
Tab.Parent = ScrollingFrame
Tab.AnchorPoint = Vector2.new(0.5, 0.5)
Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tab.BackgroundTransparency = 1.000
Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab.BorderSizePixel = 0
Tab.Position = UDim2.new(0.113567077, 0, 0.5, 0)
Tab.Size = UDim2.new(0, 149, 0, 35)

LuaIcon.Name = "LuaIcon"
LuaIcon.Parent = Tab
LuaIcon.AnchorPoint = Vector2.new(0.5, 0.5)
LuaIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LuaIcon.BackgroundTransparency = 1.000
LuaIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
LuaIcon.BorderSizePixel = 0
LuaIcon.Position = UDim2.new(0.15384616, 0, 0.485714287, 0)
LuaIcon.Size = UDim2.new(0.167785242, 0, 0.714285731, 0)
LuaIcon.Image = "rbxassetid://72814325984520"

UIAspectRatioConstraint_6.Parent = LuaIcon
UIAspectRatioConstraint_6.AspectRatio = 1.000

TabTitle.Name = "TabTitle"
TabTitle.Parent = Tab
TabTitle.AnchorPoint = Vector2.new(0.5, 0.5)
TabTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabTitle.BackgroundTransparency = 1.000
TabTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabTitle.BorderSizePixel = 0
TabTitle.Position = UDim2.new(0.506127059, 0, 0.471428573, 0)
TabTitle.Size = UDim2.new(0.42281878, 0, 0.54285717, 0)
TabTitle.Font = Enum.Font.SourceSansSemibold
TabTitle.Text = "Only tab:("
TabTitle.TextColor3 = Color3.fromRGB(136, 136, 136)
TabTitle.TextScaled = true
TabTitle.TextSize = 14.000
TabTitle.TextWrapped = true
TabTitle.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_7.Parent = TabTitle
UIAspectRatioConstraint_7.AspectRatio = 3.316

UIAspectRatioConstraint_8.Parent = Tab
UIAspectRatioConstraint_8.AspectRatio = 4.257

UIAspectRatioConstraint_9.Parent = ScrollingFrame
UIAspectRatioConstraint_9.AspectRatio = 18.743

UIAspectRatioConstraint_10.Parent = Editor
UIAspectRatioConstraint_10.AspectRatio = 2.377

Minimize.Name = "Minimize"
Minimize.Parent = Main
Minimize.AnchorPoint = Vector2.new(0.5, 0.5)
Minimize.BackgroundColor3 = Color3.fromRGB(6, 6, 6)
Minimize.BackgroundTransparency = 1.000
Minimize.BorderColor3 = Color3.fromRGB(255, 255, 255)
Minimize.Position = UDim2.new(0.873900294, 0, 0.0868544579, 0)
Minimize.Size = UDim2.new(0.0513196476, 0, 0.0821596235, 0)
Minimize.Image = "rbxassetid://112980416031476"

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = Minimize

UIAspectRatioConstraint_11.Parent = Minimize

UIAspectRatioConstraint_12.Parent = Main
UIAspectRatioConstraint_12.AspectRatio = 1.599

Notif.Name = "Notif"
Notif.Parent = RobloxGui
Notif.AnchorPoint = Vector2.new(0.5, 0.5)
Notif.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
Notif.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notif.BorderSizePixel = 0
Notif.Position = UDim2.new(0.827002466, 0, 0.877705276, 0)
Notif.Size = UDim2.new(0.338858187, 0, 0.158069879, 0)
Notif.Visible = false

UICorner_6.Parent = Notif

TextLabel.Parent = Notif
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.498855084, 0, 0.340123236, 0)
TextLabel.Size = UDim2.new(0.502717376, 0, 0.389473677, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Orbit"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UIAspectRatioConstraint_13.Parent = TextLabel
UIAspectRatioConstraint_13.AspectRatio = 5.000

TextLabel_2.Parent = Notif
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.498923928, 0, 0.735498667, 0)
TextLabel_2.Size = UDim2.new(0.828804374, 0, 0.24210526, 0)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = "Window minimized. Press INS to toggle."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UIAspectRatioConstraint_14.Parent = TextLabel_2
UIAspectRatioConstraint_14.AspectRatio = 13.261

UIAspectRatioConstraint_15.Parent = Notif
UIAspectRatioConstraint_15.AspectRatio = 3.874

if RunService:IsStudio() then
	RobloxGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
elseif RunService:IsClient() then
	RobloxGui.Parent = game:GetService("CoreGui")
end

UserInputService.InputBegan:Connect(function(input,texting)
	if texting then return end
	if input.KeyCode == Enum.KeyCode.Insert then
		if Main.Visible == true then
			Main.Visible = false
		else
			Main.Visible = true
		end
	end
end)

Close.MouseButton1Click:Connect(function()
	RobloxGui:Destroy()
end)

Minimize.MouseButton1Click:Connect(function()
	Main.Visible = false
	
	local db=false
	local function init()
		for i = 1,5 do
			Notif.Visible = true
			task.wait(1)
			
			if i == 5 then
				Notif.Visible = false
			end
		end
	end
	
	init()
end)

Execute.MouseButton1Click:Connect(function()
	loadstring(MainEditor.Text)()
end)

Erase.MouseButton1Click:Connect(function()
	MainEditor.Text = ""
end)

dragGUI(Main)
