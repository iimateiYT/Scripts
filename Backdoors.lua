if _G.Executed then
	warn("Already executed!")
	return
end
_G.Executed = true

if game:GetService("ReplicatedStorage").GameData.Floor.Value ~= "Backdoor" then
	return
end

local screen_gui = Instance.new("ScreenGui")
screen_gui.DisplayOrder = 999999999
screen_gui.IgnoreGuiInset = false
screen_gui.ResetOnSpawn = false
screen_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screen_gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0, 1)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0, 0, 1, 0)
frame.Size = UDim2.new(0.386924595, 0, 0.576817155, 0)
frame.Visible = true
frame.Parent = screen_gui

local uigrid_layout = Instance.new("UIGridLayout")
uigrid_layout.CellPadding = UDim2.new(0, 0, 0.0500000007, 0)
uigrid_layout.CellSize = UDim2.new(0.800000012, 0, 0.200000003, 0)
uigrid_layout.StartCorner = Enum.StartCorner.BottomLeft
uigrid_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uigrid_layout.SortOrder = Enum.SortOrder.LayoutOrder
uigrid_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uigrid_layout.Parent = frame

local uipadding = Instance.new("UIPadding")
uipadding.PaddingBottom = UDim.new(0.02500000037252903, 0)
uipadding.Parent = frame

local template = Instance.new("Frame")
template.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
template.BorderColor3 = Color3.new(0, 0, 0)
template.BorderSizePixel = 0
template.Position = UDim2.new(0, 0, 0.605726838, 0)
template.Size = UDim2.new(0, 231, 0, 286)
template.Visible = false
template.Name = "template"
template.Parent = frame

local uiscale = Instance.new("UIScale")
uiscale.Parent = template

local uicorner = Instance.new("UICorner")
uicorner.Parent = template

local uistroke = Instance.new("UIStroke")
uistroke.Color = Color3.new(0.588235, 0.588235, 0.588235)
uistroke.Thickness = 2.5
uistroke.Parent = template

local uigradient = Instance.new("UIGradient")
uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.996078, 0.0392157, 0)), ColorSequenceKeypoint.new(0.1599999964237213, Color3.new(1, 0.615686, 0)), ColorSequenceKeypoint.new(0.3199999928474426, Color3.new(1, 1, 0)), ColorSequenceKeypoint.new(0.47999998927116394, Color3.new(0, 1, 0)), ColorSequenceKeypoint.new(0.6399999856948853, Color3.new(0, 0.666667, 1)), ColorSequenceKeypoint.new(0.800000011920929, Color3.new(1, 0.333333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.666667, 0, 1))})
uigradient.Parent = uistroke

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.GothamBold
text_label.Text = "Entity spawned"
text_label.TextColor3 = Color3.new(1, 1, 1)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextWrapped = true
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.BorderColor3 = Color3.new(0, 0, 0)
text_label.BorderSizePixel = 0
text_label.Size = UDim2.new(1, 0, 1, 0)
text_label.Visible = true
text_label.ZIndex = 3
text_label.Parent = template

local uistroke_2 = Instance.new("UIStroke")
uistroke_2.Thickness = 2.5
uistroke_2.Parent = text_label

local uipadding_2 = Instance.new("UIPadding")
uipadding_2.PaddingBottom = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingLeft = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingRight = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingTop = UDim.new(0.10000000149011612, 0)
uipadding_2.Parent = text_label

local uigradient_2 = Instance.new("UIGradient")
uigradient_2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.3799654543399811, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.580392, 0.580392, 0.580392)), ColorSequenceKeypoint.new(0.5336787700653076, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))})
uigradient_2.Offset = Vector2.new(-1, 0)
uigradient_2.Rotation = 45
uigradient_2.Parent = template

local shadow = Instance.new("ImageLabel")
shadow.Image = "rbxassetid://14001321443"
shadow.ImageColor3 = Color3.new(0, 0, 0)
shadow.ImageTransparency = 0.75
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(50, 50, 150, 150)
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundColor3 = Color3.new(1, 1, 1)
shadow.BackgroundTransparency = 1
shadow.BorderColor3 = Color3.new(0, 0, 0)
shadow.BorderSizePixel = 0
shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
shadow.Size = UDim2.new(1, 35, 1, 35)
shadow.Visible = true
shadow.ZIndex = -1
shadow.Name = "shadow"
shadow.Parent = template

local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint.AspectRatio = 1.107398509979248
uiaspect_ratio_constraint.Parent = frame

local timer = Instance.new("Frame")
timer.AnchorPoint = Vector2.new(1, 0.9700000286102295)
timer.BackgroundColor3 = Color3.new(1, 1, 1)
timer.BackgroundTransparency = 1
timer.BorderColor3 = Color3.new(0, 0, 0)
timer.BorderSizePixel = 0
timer.Position = UDim2.new(1, 0, 0.982205212, 0)
timer.Size = UDim2.new(1, 0, 0.112479456, 0)
timer.Visible = true
timer.Name = "Timer"
timer.Parent = screen_gui

local image_label = Instance.new("ImageLabel")
image_label.Image = "rbxassetid://16781696827"
image_label.BackgroundColor3 = Color3.new(1, 1, 1)
image_label.BackgroundTransparency = 1
image_label.BorderColor3 = Color3.new(0, 0, 0)
image_label.BorderSizePixel = 0
image_label.Position = UDim2.new(0.829316378, 0, 0, 0)
image_label.Size = UDim2.new(0.170516863, 0, 1, 0)
image_label.Visible = true
image_label.ZIndex = 0
image_label.Parent = timer

local timer_2 = Instance.new("TextLabel")
timer_2.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold)
timer_2.Text = "01:00"
timer_2.TextColor3 = Color3.new(1, 0.705882, 0.298039)
timer_2.TextScaled = true
timer_2.TextSize = 14
timer_2.TextWrapped = true
timer_2.TextXAlignment = Enum.TextXAlignment.Right
timer_2.AnchorPoint = Vector2.new(0.5, 0.5)
timer_2.BackgroundColor3 = Color3.new(1, 1, 1)
timer_2.BackgroundTransparency = 1
timer_2.BorderColor3 = Color3.new(0, 0, 0)
timer_2.BorderSizePixel = 0
timer_2.Position = UDim2.new(0.5, 0, 0.5, 0)
timer_2.Size = UDim2.new(0.999833286, 0, 1, 0)
timer_2.Visible = true
timer_2.Name = "Timer"
timer_2.Parent = image_label

local uipadding_3 = Instance.new("UIPadding")
uipadding_3.PaddingBottom = UDim.new(0.07999999821186066, 0)
uipadding_3.PaddingLeft = UDim.new(0.20000000298023224, 0)
uipadding_3.PaddingRight = UDim.new(0.20000000298023224, 0)
uipadding_3.Parent = timer_2

local uiaspect_ratio_constraint_2 = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint_2.AspectRatio = 15.940258026123047
uiaspect_ratio_constraint_2.Parent = timer

function sound()
	local notification = Instance.new("Sound", workspace)
	notification.SoundId = "rbxassetid://5153734608"
	notification.Parent = workspace
	notification:Play()
end

function notify(entity, bypassed, other)
	sound()
	local tem = template:Clone()
	tem.Visible = true
	tem.TextLabel.Text = entity .. " Has just spawned!"
	if bypassed then
		tem.TextLabel.Text = entity .. " Has been bypassed!"
	end
	if other then
		tem.TextLabel.Text = other
	end
	tem.Parent = frame
	game:GetService("TweenService"):Create(tem.UIScale, TweenInfo.new(0.25, Enum.EasingStyle.Sine), { Scale = 1 }):Play()
	spawn(function()
		while true do
			task.wait(0.01)
			if not tem or not tem:FindFirstChild("UIStroke") or not tem:FindFirstChild("UIStroke"):FindFirstChild("UIGradient") then
				return
			end
			tem.UIStroke.UIGradient.Rotation += 1
		end
	end)

	spawn(function()
		while true do
			task.wait(0.01)
			if not tem or not tem:FindFirstChild("UIGradient") then
				return
			end
			if tem.UIGradient.Offset.X >= 1 then
				tem.UIGradient.Offset = Vector2.new(-1, 0)
			end
			tem.UIGradient.Offset += Vector2.new(0.01, 0)
		end
	end)
	spawn(function()
		task.wait(15)
		if tem and tem:FindFirstChild("UIScale") then
			game:GetService("TweenService"):Create(tem.UIScale, TweenInfo.new(0.25, Enum.EasingStyle.Sine), { Scale = 0 }):Play()
			task.wait(.25)
			tem:Destroy()
		end
	end)
end

function billboard(child, name)
	local billboard_gui = Instance.new("BillboardGui")
	billboard_gui.Active = true
	billboard_gui.AlwaysOnTop = true
	billboard_gui.ClipsDescendants = true
	billboard_gui.LightInfluence = 1
	billboard_gui.Size = UDim2.new(10, 0, 2, 0)
	billboard_gui.ResetOnSpawn = false
	billboard_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	billboard_gui.Parent = child

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.GothamBold
	text_label.Text = name
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextScaled = true
	text_label.TextSize = 14
	text_label.TextWrapped = true
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.BorderColor3 = Color3.new(0, 0, 0)
	text_label.BorderSizePixel = 0
	text_label.Size = UDim2.new(1, 0, 1, 0)
	text_label.Visible = true
	text_label.Parent = billboard_gui

	local uistroke = Instance.new("UIStroke")
	uistroke.Thickness = 2.5
	uistroke.Parent = text_label
	
	spawn(function()
		while task.wait() do
			local hue = tick() % 5 / 5
			local color = Color3.fromHSV(hue, 1, 1) 
			text_label.TextColor3 = color
		end
	end)
end

function selection(child, name)
	billboard(child, name)
	local hi = Instance.new("Highlight")
	hi.Parent = child
	hi.Adornee = child
	hi.OutlineColor = Color3.fromRGB(161, 0, 0)
	hi.FillColor = Color3.fromRGB(255, 0, 0)
	hi.FillTransparency = 0.75
	if child:IsA("Part") then
		child.Color = Color3.fromRGB(0, 0, 0)
		child.Transparency = 0
	end
	spawn(function()
		while task.wait() do
			local hue = tick() % 5 / 5
			local color = Color3.fromHSV(hue, 1, 1) 
			hi.OutlineColor = color
			hi.FillColor = color
		end
	end)
end

workspace.ChildAdded:Connect(function(child)
	if child.Name == "BackdoorLookman" then
		if child then
			task.wait()
			child.Parent = game:GetService("Debris")
			return
		end
		notify("👁️ Backdoor Lookman")
		selection(child:WaitForChild("Core"), "👁️ Backdoor Lookman")
	elseif child.Name == "BackdoorRush" then
		notify("💨 Blitz (Backdoor Rush)")
		selection(child:WaitForChild("Main"), "💨 Blitz (Backdoor Rush)")
	end
end)

function checkDistance(part)
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or not part then
		return false
	end
	local distanceToPart = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).magnitude
	if distanceToPart <= 10 then
		return true
	end
	return false
end

for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
	if v:IsA("BasePart") and v.Name == "Door" and v.Parent.Name == "Door" then
		selection(v, "🚪 Door")
	elseif v.Name == "KeyObtain" then
		selection(v, "🔑 Key")
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v.ModulePrompt)
				end
			end
		end)
	elseif v.Name == "Backdoor_Wardrobe" then
		selection(v, "🗄️ Wardrobe")
	elseif v.Name == "TimerLever" then
		selection(v, "⏳ Timer Lever")
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v.ActivateEventPrompt)
				end
			end
		end)
	elseif v.Name == "ActivateEventPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v)
				end
			end
		end)
	elseif v.Name == "LootPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v)
				end
			end
		end)
	end
end

workspace.CurrentRooms.ChildAdded:Connect(function(child)
	spawn(function()
		task.wait(5)
		if child.Assets:FindFirstChild("TimerLever") then
			selection(child.Assets.TimerLever, "⏳ Timer Lever")
			spawn(function()
				while task.wait() do
					fireproximityprompt(child.Assets.TimerLever.ActivateEventPrompt)
				end
			end)
		end
	end)
	task.wait(1)
	for _, v in pairs(child:GetDescendants()) do
		if v:IsA("BasePart") and v.Name == "Door" and v.Parent.Name == "Door" then
			selection(v, "🚪 Door")
		elseif v.Name == "KeyObtain" then
			selection(v, "🔑 Key")
			spawn(function()
				while task.wait() do
					if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
						fireproximityprompt(v.ModulePrompt)
					end
				end
			end)
		elseif v.Name == "Backdoor_Wardrobe" then
			selection(v, "🗄️ Wardrobe")
		elseif v.Name == "ActivateEventPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
			spawn(function()
				while task.wait() do
					if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
						fireproximityprompt(v)
					end
				end
			end)
		elseif v.Name == "LootPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
			spawn(function()
				while task.wait() do
					if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
						fireproximityprompt(v)
					end
				end
			end)
		end
	end
end)

notify("", nil, "🐦 Script made by: kiwib.")
notify("👁️ Backdoor Lookman", true)
notify("", nil, "⚡ Haste is now server-sided so it cannot be bypassed, annoying visuals removed.")

if game:GetService("ReplicatedStorage").FloorClientStuff.ClientRemote:FindFirstChild("Haste") then
	game:GetService("ReplicatedStorage").FloorClientStuff.ClientRemote.Haste:Destroy()
end

local Notified = false

game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer:GetPropertyChangedSignal("Value"):Connect(function()
	if game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer.Value == 0 then
		if not Notified then
			Notified = true
			notify("", nil, "⚡ Haste has spawned! Quickly get to a lever!")
		end
	else
		Notified = false
	end
	local formattedTime = string.format("%02d:%02d", math.floor(game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer.Value / 60), game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer.Value % 60)
	timer_2.Text = formattedTime
end)

spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		workspace.CurrentCamera.FieldOfView = 120
		game:GetService("ReplicatedStorage").RemotesFolder.MotorReplication:FireServer(0, 90, 0, false)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 21
		game.Lighting.Brightness = 2
		game.Lighting.ClockTime = 14
		game.Lighting.FogEnd = 100000
		game.Lighting.GlobalShadows = false
		game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
	end)
end)
