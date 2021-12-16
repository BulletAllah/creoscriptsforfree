-- This script works with all hats and accessory's but if you want a straight tail its best to use the free international fedora's such as
-- https://web.roblox.com/catalog/3409612660/International-Fedora-USA



local lerpspeed = 0.4





local NotificationBindable = Instance.new("BindableFunction")
local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
	game.StarterGui:SetCore("SendNotification", {
		Title = Title;
		Text = Text;
		Icon = "";
		Duration = Duration;
		Button1 = Button1Text;
		Button2 = Button2Text;
		Callback = NotificationBindable;
	})
end


Msgreq("Tail Script","Choose Which To Load",999999,"With Mesh","Without Mesh")
function NotificationBindable.OnInvoke(res)
	local Loaded = nil
	if res == "With Mesh" then
		res = "With"
	elseif res == "Without Mesh" then
		Loaded = "Without"
	else
		if res == "Cool" then
			repeat
				wait(99999999)
			until game == nil
		end
	end


if res ~= nil then


	Msgreq("Tail Script","Creo's Tail script loaded",9999999,"Cool")
	Spawn(function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
				game:GetService("RunService").Heartbeat:connect(function()
					v.Velocity = Vector3.new(0,35,0)
					wait(0.5)
				end)
			end
		end
	end)
coroutine.wrap(function()
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:wait()
	if sethiddenproperty then
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			settings().Physics.AllowSleep = false
			local TBL = game:GetService("Players"):GetChildren() 
			for _ = 1,#TBL do local Players = TBL[_]
				if Players ~= game:GetService("Players").LocalPlayer then
					Players.MaximumSimulationRadius = 0
					sethiddenproperty(Players,"SimulationRadius",0) 
				end 
			end
			game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
			sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.pow(math.huge,math.huge)*math.huge)
			if HumanDied then break end
		end
	else
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			settings().Physics.AllowSleep = false
			local TBL = game:GetService("Players"):GetChildren() 
			for _ = 1,#TBL do local Players = TBL[_]
				if Players ~= game:GetService("Players").LocalPlayer then
					Players.MaximumSimulationRadius = 0
				end 
			end
			game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
			if HumanDied then break end
		end
	end
end)()
function SCIFIMOVIELOL(Part0,Part1)
	local AlignPos = Instance.new('AlignPosition', Part1);
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1);
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); 
	local AttachmentB=Instance.new('Attachment',Part0);
	local AttachmentC=Instance.new('Attachment',Part1);
	local AttachmentD=Instance.new('Attachment',Part0);
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
end

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character
local Hats = {}
local Parts = {}
local scr = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local absx = scr.AbsoluteSize.X
local absy = scr.AbsoluteSize.Y
scr:Destroy()

local DESC = Character:GetDescendants()
for i=1,#DESC do
	if DESC[i]:IsA("Accessory") then
		table.insert(Hats,#Hats+1,DESC[i])
	end
end
for i=1,#Hats do
	spawn(function()
		local Hat = Hats[i]
			Hat.Handle:FindFirstChildWhichIsA("Weld"):Destroy()
			if Loaded == "Without" then
				Hat.Handle:FindFirstChildWhichIsA("SpecialMesh"):Destroy()		
			end
		local Part = Instance.new("Part",Character)
		Part.Anchored = true 
		Part.CanCollide = false
		Part.Transparency = 1
		Part.Size = Vector3.new(0,0,0)
		SCIFIMOVIELOL(Hat.Handle,Part)
		table.insert(Parts,#Parts+1,Part)
	end)
end
local scr = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local absx = scr.AbsoluteSize.X
local absy = scr.AbsoluteSize.Y
game:GetService("RunService").Stepped:Connect(function()
	wait() 
	for i=1,#Parts do
		if i == 1 then
			Parts[i].CFrame = Parts[i].CFrame:Lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0,-0.3,1)* CFrame.Angles(math.rad(-Mouse.Y/(absy/#Hats)*(30/#Hats)),math.rad(0),math.rad(((-Mouse.X + absx/2)/(absx/(180/#Hats)))))  ,lerpspeed)
		else
			Parts[i].CFrame = Parts[i].CFrame:Lerp(Parts[i-1].CFrame* CFrame.new(0,0,1)* CFrame.Angles(math.rad(((-Mouse.Y + absx/2)/(absy/(360*2/#Hats)))),math.rad(0),math.rad(((-Mouse.X + absx/2)/(absx/(180/#Hats)))))  ,lerpspeed)
		end
	end
		end)
		end
	end
