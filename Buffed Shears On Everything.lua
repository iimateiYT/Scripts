local Tool = game:GetObjects("rbxassetid://13710041979")[1]
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
local Humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
local Sound = Instance.new("Sound")
local Durability
local MaxDurability
local RegenAmount = _G.RegenAmount or 0.5
local SnipSpeed = _G.SnipSpeed or 1.25

Sound.PlaybackSpeed = SnipSpeed
Sound.SoundId = "rbxassetid://9118823101"
Sound.Parent = workspace

Durability = _G.Durability or 5
MaxDurability = _G.MaxDurability or 5

if _G.Spawns == true then
	local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Item%20Spawner/Source.lua"))();
	local currentRoomIndex = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value;

	local item = spawner.createItem({
		Url = "https://github.com/abelissus/KwR4Xq3y6ZwnHfLp0jU9eCvItO5x1Dc7zPbM2lVs8NiJrBaFQmGhSdTgEoXuYvW/raw/main/Shears.rbxm?raw=true";
		Spawning = {
			Offset = CFrame.new();
			MinRoom = currentRoomIndex;
			MaxRoom = currentRoomIndex;
			Chance = _G.Luck or 100;
		};
		Locations = {
			Drawers = true;
			Tables = true;
			Chests = true;
			Floor = true;
		};
		Prompt = {
			Range = 7;
			Duration = 0;
		};
	});

	item.Debug.OnSpawned = function()
	end;

	item.Debug.OnPickedUp = function()
		if game.Players.LocalPlayer.Character:FindFirstChild("Shears") then	
			game.Players.LocalPlayer.Character.Shears:SetAttribute("Durability", Durability)
			game.Players.LocalPlayer.Character.Shears:SetAttribute("MaxDurability", MaxDurability)
		elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Shears") then
			game.Players.LocalPlayer.Backpack.Shears:SetAttribute("Durability", Durability)
			game.Players.LocalPlayer.Backpack.Shears:SetAttribute("MaxDurability", MaxDurability)
		end

		while wait(_G.RegenSpeed or 1) do
			if _G.Regens == true then
				if game.Players.LocalPlayer.Character:FindFirstChild("Shears") then
					local shears = game.Players.LocalPlayer.Character.Shears
					local currentDurability = shears:GetAttribute("Durability") or 0
					local maxDurability = shears:GetAttribute("MaxDurability") or 0

					if currentDurability and maxDurability and currentDurability <= maxDurability then
						local newDurability = currentDurability + RegenAmount
						shears:SetAttribute("Durability", newDurability)
					end
				end
			end
		end
	end;

	item.Debug.OnEquipped = function()
	end;

	item.Debug.OnActivated = function()
		if game.Players.LocalPlayer.Character.Shears:GetAttribute("Durability") == 0 then
			if _G.InfiniteUses == false then
				game.Players.LocalPlayer.Character.Shears:Destroy()
			end
		end
		Durability -= _G.DurabilityTakenEachSnip or 0.25
		game.Players.LocalPlayer.Character.Shears:SetAttribute("Durability", Durability)

		local Use = game.Players.LocalPlayer.Character.Shears.Animations.use
		local UseTrack = Humanoid:LoadAnimation(Use)

		UseTrack:Play()
		Sound:Play()
		wait(0.25)
		Sound:Play()

		local mouse = game.Players.LocalPlayer:GetMouse()
		local target = mouse.Target
		if target then
			if target:IsA("Model") then
				if target.Parent ~= workspace.CurrentRooms then
					target:Destroy()
				end
			else
				local parentModel = target:FindFirstAncestorWhichIsA("Model")
				if parentModel then
					if parentModel.Parent ~= workspace.CurrentRooms then
						parentModel:Destroy()
					end
				end
			end
		end
	end;

	item.Debug.OnUnequipped = function()
		for _, anim in pairs(Humanoid.Animator:GetPlayingAnimationTracks()) do
			anim:Stop()
		end
	end;

	item.Debug.OnEnteredItemRoom = function(room)
	end;

	spawner.spawnItem(item);
	return
end

if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui").MainUI.ItemShop.Visible == true then
	CustomShop.CreateItem(Tool, {
		Title = "Shears",
		Desc = "Try snipping objects",
		Image = "https://cdn.discordapp.com/attachments/1095771842087768064/1117105400035155968/11389545392.png",
		Price = "FREE",
		Stack = 1,
	})
else
	Tool.Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
end

Tool.Parent = game.Players.LocalPlayer.Backpack
Tool:SetAttribute("Durability", Durability)
Tool:SetAttribute("MaxDurability", MaxDurability)

Tool.Activated:Connect(function()
	if Tool:GetAttribute("Durability") <= 0 then
		if _G.InfiniteUses == false then
			Tool:Destroy()
		end
	end
	Durability -= _G.DurabilityTakenEachSnip or 0.25
	Tool:SetAttribute("Durability", Durability)

	local Use = Tool.Animations.use
	local UseTrack = Humanoid:LoadAnimation(Use)

	UseTrack:Play()
	Sound:Play()
	wait(0.25)
	Sound:Play()

	local mouse = game.Players.LocalPlayer:GetMouse()
	local target = mouse.Target
	if target then
		if target:IsA("Model") then
			if target.Parent ~= workspace.CurrentRooms then
				target:Destroy()
			end
		else
			local parentModel = target:FindFirstAncestorWhichIsA("Model")
			if parentModel then
				if parentModel.Parent ~= workspace.CurrentRooms then
					parentModel:Destroy()
				end
			end
		end
	end
end)

Tool.Equipped:Connect(function()
	local Idle = Tool.Animations.idle
	local IdleTrack = Humanoid:LoadAnimation(Idle)

	IdleTrack:Play()
end)

Tool.Unequipped:Connect(function()
	for _, v in pairs(Humanoid.Animator:GetPlayingAnimationTracks()) do
		v:Stop()
	end
end)

while wait(_G.RegenSpeed or 1) do
	if _G.Regens == true then
		if Tool:GetAttribute("Durability") <= Tool:GetAttribute("MaxDurability") then
			local currentDurability = Tool:GetAttribute("Durability") or 0
			local newDurability = currentDurability + RegenAmount
			Tool:SetAttribute("Durability", newDurability)
		end
	end	
end
