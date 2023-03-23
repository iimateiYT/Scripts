local Tool = game:GetObjects("rbxassetid://12685165702")[1]
local Humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
local Sound = Instance.new("Sound")

Tool.Parent = game.Players.LocalPlayer.Backpack

Sound.PlaybackSpeed = 1.25
Sound.SoundId = "rbxassetid://9118823101"
Sound.Parent = Tool

Tool.Activated:Connect(function()
	local Use = Tool.Animations.use
	local UseTrack = Humanoid:LoadAnimation(Use)

	UseTrack:Play()
	Sound:Play()
	wait(0.25)
	Sound:Play()
end)

Tool.Equipped:Connect(function()
	local Idle = Tool.Animations.idle
	local IdleTrack = Humanoid:LoadAnimation(Idle)

	IdleTrack:Play()
end)