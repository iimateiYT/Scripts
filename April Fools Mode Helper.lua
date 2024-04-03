local screen_gui = Instance.new("ScreenGui")
screen_gui.Name = "Kiwi"
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

local function sound()
	local notification = Instance.new("Sound", workspace)
	notification.SoundId = "rbxassetid://5153734608"
	notification.Parent = workspace
	notification:Play()
end

local function notify(entity, bypassed, other)
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

if game:GetService("ReplicatedStorage").GameData.Floor.Value ~= "Retro" then
	notify("", nil, "Not Retro Mode!")
	return
end

if _G.DAFH then
	notify("", nil, "Already Executed!")
	return
end
_G.DAFH = true

local function billboard(child, name, name2, name3)
	local billboard_gui = Instance.new("BillboardGui")
	billboard_gui.Active = true
	billboard_gui.AlwaysOnTop = true
	billboard_gui.ClipsDescendants = true
	billboard_gui.LightInfluence = 1
	billboard_gui.Size = UDim2.new(10, 0, 2, 0)
	billboard_gui.ResetOnSpawn = false
	billboard_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	billboard_gui.Parent = child
	billboard_gui.Name = "KiwiHighlight"
	if name2 then
		billboard_gui.Name = "KiwiHighlight_2"
	end
	if name3 then
		billboard_gui.Name = "KiwiHighlight_3"
	end

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

local function selection(child, name, name2, name3)
	billboard(child, name, name2, name3)
	local hi = Instance.new("Highlight")
	hi.Parent = child
	hi.Adornee = child
	hi.OutlineColor = Color3.fromRGB(161, 0, 0)
	hi.FillColor = Color3.fromRGB(255, 0, 0)
	hi.FillTransparency = 0.75
	hi.Name = "KiwiHighlight"
	if name2 then
		hi.Name = "KiwiHighlight_2"
	end
	if name3 then
		hi.Name = "KiwiHighlight_3"
	end
	if child:IsA("Part") then
		child.Color = Color3.fromRGB(0, 0, 0)
		child.Transparency = 0
	end
	spawn(function()
		while task.wait() do
			if hi then
				local hue = tick() % 5 / 5
				local color = Color3.fromHSV(hue, 1, 1) 
				hi.OutlineColor = color
				hi.FillColor = color
			end
		end
	end)
end

function checkDistance(part, extra)
	if not extra then extra = 15 end
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or not part then
		return false
	end
	local distanceToPart = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).magnitude
	if distanceToPart <= extra then
		return true
	end
	return false
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Doors April Fools Helper",
	LoadingTitle = "Doors April Fools Helper",
	LoadingSubtitle = "by Kiwib.",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "Doors April Fools Helper"
	},
	KeySystem = false,
})

local killBricks
local Eyes
local DrakoBloxxers
local Noclipping
local brightLoop
local KeyESP
local DoorESP
local ClosetESP
local EntityNotifier
local EntityNotifierScreech
local SeekWall
local FLYING = false
local FlySpeed = 0.3
local Clip = true
local MainNotified = false
local AutoInteract = false
local EntityEsp = false
local FOV = 70
local Speed = 15
local JumpPower = 25

local Tab = Window:CreateTab("Main", 16964919241)
local Section = Tab:CreateSection("Toggles")

local Toggle = Tab:CreateToggle({
	Name = "Entity Notifier",
	CurrentValue = false,
	Flag = "EntityNotifier",
	Callback = function(Value)
		if Value then
			EntityNotifier = workspace.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Name == "Eyes" then
					notify("👁️ Retro Eyes")
					if EntityEsp then
						selection(child, "👁️ Retro Eyes")
					end
				elseif child.Name == "RushMoving" and checkDistance(child:FindFirstChildWhichIsA("BasePart"), 1000) then
					notify("💨 Retro Rush")
					if EntityEsp then
						selection(child:FindFirstChildWhichIsA("BasePart"), "💨 Retro Rush")
					end
				elseif child.Name == "AmbushMoving" and checkDistance(child:FindFirstChildWhichIsA("BasePart"), 1000) then
					notify("💨 Retro Ambush")
					if EntityEsp then
						selection(child:FindFirstChildWhichIsA("BasePart"), "💨 Retro Ambush")
					end
				elseif child.Name == "Drakobloxxer" then
					if EntityEsp then
						selection(child, "🧱 DrakoBloxxer")
					end
					if not MainNotified then
						MainNotified = true
						notify("🧱 DrakoBloxxer")
					end
				end
			end)
			EntityNotifierScreech = workspace.CurrentCamera.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Name == "RetroScreech" then
					notify("🗣️ Retro Screech")
					if EntityEsp then
						selection(child, "🗣️ Retro Screech")
					end
				end
			end)
		else
			EntityNotifier:Disconnect()
			EntityNotifierScreech:Disconnect()
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Interact",
	CurrentValue = false,
	Flag = "Auto Interact",
	Callback = function(Value)
		AutoInteract = Value
	end,
})

-- CREDIT TO INFINITE YIELD FOR THE FLY, NOCLIP AND FULL BRIGHT!

function sFLY(vfly)
	repeat task.wait() until game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat task.wait() until game:GetService("Players").LocalPlayer:GetMouse()
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat task.wait()
				if not vfly and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and FlySpeed or FlySpeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and FlySpeed or FlySpeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and FlySpeed or FlySpeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and FlySpeed or FlySpeed)
		elseif true and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and FlySpeed or FlySpeed)*2
		elseif true and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and FlySpeed or FlySpeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = game:GetService("Players").LocalPlayer:GetMouse().KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local Toggle = Tab:CreateToggle({
	Name = "Fly",
	CurrentValue = false,
	Flag = "Fly",
	Callback = function(Value)
		if Value then
			NOFLY()
			task.wait()
			sFLY()
		else
			NOFLY()
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Noclip",
	CurrentValue = false,
	Flag = "Noclip",
	Callback = function(Value)
		if Value then
			Clip = false
			task.wait(0.1)
			local function NoclipLoop()
				if Clip == false and game.Players.LocalPlayer.Character ~= nil then
					for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if child:IsA("BasePart") and child.CanCollide == true then
							child.CanCollide = false
						end
					end
				end
			end
			Noclipping = game:GetService("RunService").Stepped:Connect(NoclipLoop)
		else
			if Noclipping then
				Noclipping:Disconnect()
			end
			Clip = true
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Full Bright",
	CurrentValue = false,
	Flag = "FullBright",
	Callback = function(Value)
		if Value then
			if brightLoop then
				brightLoop:Disconnect()
			end
			local function brightFunc()
				game:GetService("Lighting").Brightness = 2
				game:GetService("Lighting").ClockTime = 14
				game:GetService("Lighting").FogEnd = 100000
				game:GetService("Lighting").GlobalShadows = false
				game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
			end

			brightLoop = game:GetService("RunService").RenderStepped:Connect(brightFunc)
		else
			if brightLoop then
				brightLoop:Disconnect()
			end
		end
	end,
})

local Section = Tab:CreateSection("Buttons")

local Button = Tab:CreateButton({
	Name = "God Mode",
	Callback = function()
		game.Players.LocalPlayer.Character.Collision.Weld.C0 += Vector3.new(7, 0, 0)
		game.Players.LocalPlayer.Character.Collision.Weld.C1 += Vector3.new(0, -0.5, 0)
		game.Players.LocalPlayer.Character.Collision.CanCollide = false
		game.Players.LocalPlayer.Character.Collision:GetPropertyChangedSignal("CanCollide"):Connect(function()
			game.Players.LocalPlayer.Character.Collision.CanCollide = false
		end)
	end,
})

local Button = Tab:CreateButton({
	Name = "Delete Messages",
	Callback = function()
		for _, v in pairs(workspace:GetChildren()) do
			if v:IsA("Message") then
				v:Destroy()
			end
		end
	end,
})

local Section = Tab:CreateSection("Sliders")

local Slider = Tab:CreateSlider({
	Name = "Walk Speed",
	Range = {15, 21},
	Increment = 0.5,
	Suffix = "Speed",
	CurrentValue = 15,
	Flag = "WalkSpeed",
	Callback = function(Value)
		Speed = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Jump Power",
	Range = {0, 100},
	Increment = 1,
	Suffix = "Power",
	CurrentValue = 25,
	Flag = "JumpPower",
	Callback = function(Value)
		JumpPower = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Fly Speed",
	Range = {0, 0.3},
	Increment = 0.01,
	Suffix = "Speed",
	CurrentValue = 0.3,
	Flag = "FlySpeed",
	Callback = function(Value)
		FlySpeed = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Field Of View",
	Range = {70, 120},
	Increment = 1,
	Suffix = "FOV",
	CurrentValue = 70,
	Flag = "FOV",
	Callback = function(Value)
		FOV = Value
	end,
})

local Tab = Window:CreateTab("ESP", 11043368148)
local Section = Tab:CreateSection("Toggles")

local Toggle = Tab:CreateToggle({
	Name = "Key ESP",
	CurrentValue = false,
	Flag = "KeyESP",
	Callback = function(Value)
		if Value then
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KeyObtain" and v:IsA("Model") then
					selection(v, "🔑 Key")
					notify("", nil, "🔑 Key Found!")
					spawn(function()
						while task.wait() do
							if checkDistance(v:FindFirstChildWhichIsA("BasePart")) and AutoInteract then
								fireproximityprompt(v.ModulePrompt)
							end
						end
					end)
				end
			end
			KeyESP = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				for _, v in pairs(child:GetDescendants()) do
					if v.Name == "KeyObtain" and v:IsA("Model") then
						selection(v, "🔑 Key")
						notify("", nil, "🔑 Key Found!")
						spawn(function()
							while task.wait() do
								if checkDistance(v:FindFirstChildWhichIsA("BasePart")) and AutoInteract then
									fireproximityprompt(v.ModulePrompt)
								end
							end
						end)
					end
				end
			end)
		else
			KeyESP:Disconnect()
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KiwiHighlight" then
					v:Destroy()
				end
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Door ESP",
	CurrentValue = false,
	Flag = "DoorESP",
	Callback = function(Value)
		if Value then
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "Door" and v:IsA("Model") then
					selection(v, "🚪 Door", true)
					spawn(function()
						while task.wait() do
							if checkDistance(v:FindFirstChild("Hidden")) and AutoInteract then
								fireproximityprompt(v.ActivateEventPrompt)
							end
						end
					end)
				end
			end
			DoorESP = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				for _, v in pairs(child:GetDescendants()) do
					if v.Name == "Door" and v:IsA("Model") then
						selection(v, "🚪 Door", true)
						spawn(function()
							while task.wait() do
								if checkDistance(v:FindFirstChild("Hidden")) and AutoInteract then
									fireproximityprompt(v.ActivateEventPrompt)
								end
							end
						end)
					end
				end
			end)
		else
			DoorESP:Disconnect()
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KiwiHighlight_2" then
					v:Destroy()
				end
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Closet ESP",
	CurrentValue = false,
	Flag = "ClosetESP",
	Callback = function(Value)
		if Value then
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "RetroWardrobe" and v:IsA("Model") then
					selection(v, "🗄️ Wardrobe", false, true)
				end
			end
			ClosetESP = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				for _, v in pairs(child:GetDescendants()) do
					if v.Name == "RetroWardrobe" and v:IsA("Model") then
						selection(v, "🗄️ Wardrobe", false, true)
					end
				end
			end)
		else
			ClosetESP:Disconnect()
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KiwiHighlight_3" then
					v:Destroy()
				end
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Entity ESP",
	CurrentValue = false,
	Flag = "EntityESP",
	Callback = function(Value)
		EntityEsp = Value
	end,
})

local Tab = Window:CreateTab("Bypasses", 16999490474)
local Section = Tab:CreateSection("Toggles")

local Toggle = Tab:CreateToggle({
	Name = "Bypass Screech",
	CurrentValue = false,
	Flag = "BypassScreech",
	Callback = function(Value)
		if Value then
			game:GetService("ReplicatedStorage").Entities.ScreechRetro.Name = "Screechretro"
		else
			game:GetService("ReplicatedStorage").Entities.Screechretro.Name = "ScreechRetro"
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Bypass Killbricks",
	CurrentValue = false,
	Flag = "BypassKillbricks",
	Callback = function(Value)
		if Value then
			for _, child in pairs(workspace.CurrentRooms:GetChildren()) do
				if child then
					for _, v in pairs(child:GetDescendants()) do
						if v.Name == "Lava" then
							v.CanTouch = false
						end
					end
				end
			end
			killBricks = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				if child then
					for _, v in pairs(child:GetDescendants()) do
						if v.Name == "Lava" then
							v.CanTouch = false
						end
					end
				end
			end)
		else
			killBricks:Disconnect()
			for _, child in pairs(workspace.CurrentRooms:GetChildren()) do
				if child then
					for _, v in pairs(child:GetDescendants()) do
						if v.Name == "Lava" then
							v.CanTouch = true
						end
					end
				end
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Bypass Eyes",
	CurrentValue = false,
	Flag = "BypassEyes",
	Callback = function(Value)
		if Value then
			Eyes = game:GetService("RunService").RenderStepped:Connect(function()
				game:GetService("ReplicatedStorage").RemotesFolder.MotorReplication:FireServer(0, 90, 0, false)
			end)
		else
			Eyes:Disconnect()
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Bypass Seek",
	CurrentValue = false,
	Flag = "BypassSeek",
	Callback = function(Value)
		if Value then
			for _, child in pairs(workspace.CurrentRooms:GetChildren()) do
				if child.Parts:FindFirstChild("ScaryWall") then
					child.Parts.ScaryWall:Destroy()
				end
			end
			SeekWall = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Parts:FindFirstChild("ScaryWall") then
					child.Parts.ScaryWall:Destroy()
				end
			end)
		else
			SeekWall:Disconnect()
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Bypass DrakoBloxxers",
	CurrentValue = false,
	Flag = "BypassDrakoBloxxers",
	Callback = function(Value)
		if Value then
			DrakoBloxxers = workspace.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Name == "Drakobloxxer" then
					child:Destroy()
					for _, v in pairs(workspace:GetChildren()) do
						if v.Name == "Sound" and v:IsA("Sound") then
							v:Destroy()
						end
					end
				end
			end)
		else
			DrakoBloxxers:Disconnect()
		end
	end,
})

notify("", nil, "🐦 Script made by: kiwib.")

game:GetService("RunService").RenderStepped:Connect(function()
	workspace.CurrentCamera.FieldOfView = FOV
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
end)