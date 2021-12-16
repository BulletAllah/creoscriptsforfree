FakeLimbs = {["Head"] = nil,["Torso1"] = nil,["Torso2"] = nil,["Right Arm"] = nil,["Left Arm"] = nil,["Right Leg"] = nil,["Left Leg"] = nil}
Accessorys = {}


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
Msgreq("FE Lightning Fighter","Made by Helkern, converted by Creo.",nil,nil)


local HumanRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
function StickAcc(Part0,Part1,Angle,Position)
	Part0:FindFirstChildWhichIsA("Weld"):Destroy()
	local AlignPos = Instance.new('AlignPosition', Part1)
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1)
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1)
	local AttachmentB=Instance.new('Attachment',Part0)
	local AttachmentC=Instance.new('Attachment',Part1)
	local AttachmentD=Instance.new('Attachment',Part0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
	AttachmentC.Orientation = Angle
	Part0.Parent = FakeCharacter
	if Position then
		AttachmentA.Position = Position
	end
	game:GetService("RunService").Heartbeat:connect(function()
		Part0.Velocity = Vector3.new(0,35,0)
	end)
end

for i, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
	if part:IsA("Accessory") then
		if part.Handle.Size == Vector3.new(1, 1, 2) then
			if FakeLimbs["Right Arm"] == nil then
				FakeLimbs["Right Arm"] = part.Handle
			elseif FakeLimbs["Left Arm"] == nil then
				FakeLimbs["Left Arm"] = part.Handle

			elseif FakeLimbs["Right Leg"] == nil then
				FakeLimbs["Right Leg"] = part.Handle
			elseif FakeLimbs["Left Leg"] == nil then
				FakeLimbs["Left Leg"] = part.Handle
			elseif FakeLimbs["Torso1"] == nil then
				FakeLimbs["Torso1"] = part.Handle
			elseif FakeLimbs["Torso2"] == nil then
				FakeLimbs["Torso2"] = part.Handle
			end
		elseif part.Handle.Size == Vector3.new(1,1,1) then
			FakeLimbs["Head"] = part.Handle
		end
	end
end
game.Players.LocalPlayer.Character.Archivable = true
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Motor6D2 = Instance.new("Motor6D")
Part3 = Instance.new("Part")
Motor6D4 = Instance.new("Motor6D")
Motor6D5 = Instance.new("Motor6D")
Motor6D6 = Instance.new("Motor6D")
Motor6D7 = Instance.new("Motor6D")
Motor6D8 = Instance.new("Motor6D")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
Part13 = Instance.new("Part")
Decal14 = Instance.new("Decal")
SpecialMesh15 = Instance.new("SpecialMesh")
Humanoid16 = Instance.new("Humanoid")
Model0.Name = "Dummy"
Model0.Parent = mas
Model0.PrimaryPart = Part1
Part1.Name = "HumanoidRootPart"
Part1.Parent = Model0
Part1.Position =game.Players.LocalPlayer.Character.HumanoidRootPart.Position
Part1.Transparency = 0.5
Part1.Size = Vector3.new(2, 2, 1)
Part1.Anchored = false
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Motor6D2.Name = "RootJoint"
Motor6D2.Parent = Part1
Motor6D2.MaxVelocity = 0.10000000149012
Motor6D2.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Motor6D2.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Motor6D2.Part0 = Part1
Motor6D2.Part1 = Part3
Motor6D2.part1 = Part3
Part3.Name = "Torso"
Part3.Parent = Model0
Part3.CFrame = CFrame.new(282.536926, 2.99999976, 343.539185, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part3.Position = Vector3.new(282.53692626953, 2.9999997615814, 343.53918457031)
Part3.Size = Vector3.new(2, 2, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.CanCollide = false
Part3.TopSurface = Enum.SurfaceType.Smooth
Motor6D4.Name = "Left Hip"
Motor6D4.Parent = Part3
Motor6D4.MaxVelocity = 0.10000000149012
Motor6D4.C0 = CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D4.C1 = CFrame.new(-0.5, 1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D4.Part0 = Part3
Motor6D4.Part1 = Part9
Motor6D4.part1 = Part9
Motor6D5.Name = "Right Hip"
Motor6D5.Parent = Part3
Motor6D5.MaxVelocity = 0.10000000149012
Motor6D5.C0 = CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D5.C1 = CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D5.Part0 = Part3
Motor6D5.Part1 = Part10
Motor6D5.part1 = Part10
Motor6D6.Name = "Left Shoulder"
Motor6D6.Parent = Part3
Motor6D6.MaxVelocity = 0.10000000149012
Motor6D6.C0 = CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D6.C1 = CFrame.new(0.5, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D6.Part0 = Part3
Motor6D6.Part1 = Part11
Motor6D6.part1 = Part11
Motor6D7.Name = "Right Shoulder"
Motor6D7.Parent = Part3
Motor6D7.MaxVelocity = 0.10000000149012
Motor6D7.C0 = CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D7.C1 = CFrame.new(-0.5, 0.5, 0, -4.37113883e-08, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D7.Part0 = Part3
Motor6D7.Part1 = Part12
Motor6D7.part1 = Part12
Motor6D8.Name = "Neck"
Motor6D8.Parent = Part3
Motor6D8.MaxVelocity = 0.10000000149012
Motor6D8.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Motor6D8.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Motor6D8.Part0 = Part3
Motor6D8.Part1 = Part13
Motor6D8.part1 = Part13
Part9.Name = "Left Leg"
Part9.Parent = Model0
Part9.CFrame = CFrame.new(282.036926, 0.999999881, 343.539185, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
Part9.Position = Vector3.new(282.03692626953, 0.99999988079071, 343.53918457031)
Part9.Size = Vector3.new(1, 2, 1)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.CanCollide = false
Part9.TopSurface = Enum.SurfaceType.Smooth
Part10.Name = "Right Leg"
Part10.Parent = Model0
Part10.CFrame = CFrame.new(283.036926, 0.999999881, 343.539185, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
Part10.Position = Vector3.new(283.03692626953, 0.99999988079071, 343.53918457031)
Part10.Size = Vector3.new(1, 2, 1)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.CanCollide = false
Part10.TopSurface = Enum.SurfaceType.Smooth
Part11.Name = "Left Arm"
Part11.Parent = Model0
Part11.CFrame = CFrame.new(281.036926, 2.99999976, 343.539185, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
Part11.Position = Vector3.new(281.03692626953, 2.9999997615814, 343.53918457031)
Part11.Size = Vector3.new(1, 2, 1)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.CanCollide = false
Part11.TopSurface = Enum.SurfaceType.Smooth
Part12.Name = "Right Arm"
Part12.Parent = Model0
Part12.CFrame = CFrame.new(284.036926, 2.99999976, 343.539185, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
Part12.Position = Vector3.new(284.03692626953, 2.9999997615814, 343.53918457031)
Part12.Size = Vector3.new(1, 2, 1)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.CanCollide = false
Part12.TopSurface = Enum.SurfaceType.Smooth
Part13.Name = "Head"
Part13.Parent = Model0
Part13.CFrame = CFrame.new(282.536926, 4.5, 343.539185, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part13.Position = Vector3.new(282.53692626953, 4.5, 343.53918457031)
Part13.Size = Vector3.new(2, 1, 1)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Decal14.Name = "Face"
Decal14.Parent = Part13
Decal14.Texture = "rbxasset://textures/face.png"
SpecialMesh15.Parent = Part13
SpecialMesh15.Scale = Vector3.new(1.25, 1.25, 1.25)
Humanoid16.Parent = Model0
Humanoid16.LeftLeg = Part9
Humanoid16.RightLeg = Part10
Humanoid16.Torso = Part1
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end













-- Kill Player
FakeCharacter = Model0
FakeCharacter.Parent = workspace



for i, part in pairs(FakeCharacter:GetDescendants()) do
	if part:IsA("Part") or part:IsA("MeshPart") then
		part.Transparency = 1
	elseif part:IsA("Accessory") then
		part:Destroy()
	end
end
for i = 1,#Accessorys do
	StickAcc(Accessorys[i],FakeCharacter.Head,Vector3.new(0,0,0))
end








function StickParts(Part0,Part1,Angle,Position)
	Part0:FindFirstChildWhichIsA("Weld"):Destroy()
	Part0:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
	local AlignPos = Instance.new('AlignPosition', Part1)
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1)
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1)
	local AttachmentB=Instance.new('Attachment',Part0)
	local AttachmentC=Instance.new('Attachment',Part1)
	local AttachmentD=Instance.new('Attachment',Part0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
	AttachmentC.Orientation = Angle
	Part0.Parent = FakeCharacter
	if Position then
		AttachmentA.Position = Position
	end
	s = game:GetService("RunService").Heartbeat:connect(function()
		Part0.Velocity = Vector3.new(0,50,0)
	end)
	spawn(function()
		while true do
			wait()
			if HumanDied then
				s:Disconnect()
				break
			end
		end
	end)
end




Bypass = "death"
if not Bypass then Bypass = "limbs" end
HumanDied = false

CountSCIFIMOVIELOL = 1
function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "AthP_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "AthP_"..CountSCIFIMOVIELOL
	local AttachmentC=Instance.new('Attachment',Part1); AttachmentC.Name = "AthO_"..CountSCIFIMOVIELOL
	local AttachmentD=Instance.new('Attachment',Part0); AttachmentD.Name = "AthO_"..CountSCIFIMOVIELOL
	AttachmentC.Orientation = Angle
	AttachmentA.Position = Position
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1

end



if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
	if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
		wait() 
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
		DeadChar.HumanoidRootPart:Destroy()

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			VEL = 1
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
			wait()
			VEL = 0
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			pcall(function()
				CloneChar.Humanoid.Health = 0
				DeadChar.Humanoid.Health = 0
			end)
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				DeadChar["Torso"].CFrame = CloneChar["Torso"].CFrame
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") and table.find(SETHATS,v.Handle) == nil then
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end

		DeadChar.Torso["Left Shoulder"]:Destroy()
		DeadChar.Torso["Right Shoulder"]:Destroy()
		DeadChar.Torso["Left Hip"]:Destroy()
		DeadChar.Torso["Right Hip"]:Destroy()

	elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
		game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
		local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
		Instance.new("Part",FalseChar).Name = "Head" 
		Instance.new("Part",FalseChar).Name = "Torso" 
		Instance.new("Humanoid",FalseChar).Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"] = FalseChar
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
		local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
		Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
		Clone.Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
		game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
		wait(5.65) 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)


		StickParts(FakeLimbs["Head"],CloneChar.Head,Vector3.new(0,0,0))
		StickParts(FakeLimbs["Right Arm"],CloneChar["Right Arm"],Vector3.new(90,0,0))
		StickParts(FakeLimbs["Left Arm"],CloneChar["Left Arm"],Vector3.new(90,0,0))
		StickParts(FakeLimbs["Right Leg"],CloneChar["Right Leg"],Vector3.new(90,0,0))
		StickParts(FakeLimbs["Left Leg"],CloneChar["Left Leg"],Vector3.new(90,0,0))
		StickParts(FakeLimbs["Torso1"],CloneChar.Torso,Vector3.new(90,0,0),Vector3.new(0.5,0,0))
		StickParts(FakeLimbs["Torso2"],CloneChar.Torso,Vector3.new(90,0,0),Vector3.new(-0.5,0,0))

		wait() 




		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid 
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		FalseChar:Destroy()

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					CloneChar.Humanoid.WalkToPoint = CloneChar.HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					HumanRoot.CanCollide = false
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
					HumanRoot.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			CloneChar.Humanoid.Health = 0
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()



		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end
	elseif Bypass == "hats" then
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local DeadChar = game.Players.LocalPlayer.Character
		DeadChar.Name = "non"
		local HatPosition = Vector3.new(0,0,0)
		local HatName = "MediHood"
		local HatsLimb = {
			Rarm = DeadChar:FindFirstChild("Hat1"),
			Larm = DeadChar:FindFirstChild("Pink Hair"),
			Rleg = DeadChar:FindFirstChild("Robloxclassicred"),
			Lleg = DeadChar:FindFirstChild("Kate Hair"),
			Torso1 = DeadChar:FindFirstChild("Pal Hair"),
			Torso2 = DeadChar:FindFirstChild("LavanderHair")
		}
		HatName = DeadChar:FindFirstChild(HatName)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		SCIFIMOVIELOL(HatName.Handle,DeadChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(HatsLimb.Torso1.Handle,DeadChar["Torso"],Vector3.new(0.5,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Torso2.Handle,DeadChar["Torso"],Vector3.new(-0.5,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Larm.Handle,DeadChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Rarm.Handle,DeadChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Lleg.Handle,DeadChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Rleg.Handle,DeadChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))

		for i,v in pairs(HatsLimb) do
			v.Handle:FindFirstChild("AccessoryWeld"):Destroy()
			if v.Handle:FindFirstChild("Mesh") then v.Handle:FindFirstChild("Mesh"):Destroy() end
			if v.Handle:FindFirstChild("SpecialMesh") then v.Handle:FindFirstChild("SpecialMesh"):Destroy() end
		end
		HatName.Handle:FindFirstChild("AccessoryWeld"):Destroy()
	end
else
	if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid 
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
		DeadChar.HumanoidRootPart:Destroy()

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			CloneChar.Humanoid.Health = 0
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				v:Clone().Parent = CloneChar
			end
		end

		for _,v in next, DeadChar:GetDescendants() do
			if v:IsA("Motor6D") and v.Name ~= "Neck" then
				v:Destroy()
			end
		end

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

		SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				DeadChar["UpperTorso"].CFrame = CloneChar["Torso"].CFrame * CFrame.new(0,0.2,0)
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end

	elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
		game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
		local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
		Instance.new("Part",FalseChar).Name = "Head" 
		Instance.new("Part",FalseChar).Name = "UpperTorso"
		Instance.new("Humanoid",FalseChar).Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"] = FalseChar
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
		local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
		Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
		Clone.Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
		game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
		wait(5.65) 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
		wait() 
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid 
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		FalseChar:Destroy()

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			CloneChar.Humanoid.Health = 0
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				v:Clone().Parent = CloneChar
			end
		end

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

		SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

		SCIFIMOVIELOL(DeadChar["HumanoidRootPart"],CloneChar["HumanoidRootPart"],Vector3.new(0,0,0),Vector3.new(0,0,0))

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end
		if DeadChar.Head:FindFirstChild("Neck") then
			game.Players.LocalPlayer.Character:BreakJoints()
		end
	end
end





local CloneChar = workspace.non
s = game:GetService("RunService").Heartbeat:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,35,0)
end)
task.spawn(function()
	while true do
		wait()
		if HumanDied == true then
			s:Disconnect()
			break
		end
	end
end)
local SHOW = Instance.new("SelectionBox",workspace)
SHOW.Adornee = game.Players.LocalPlayer.Character.HumanoidRootPart










































function swait(dur)
	game:GetService("RunService").Heartbeat:wait()
end

COLOR = Color3.new(0.0745098, 0.956863, 1)








-- converter by Drahazar

--created by helkern
--some things might be taken from other scripts
if game:GetService("RunService"):IsStudio() then wait(1) else wait(1/60) end


Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = CloneChar
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Torso)

CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor


Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 16
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local neck2 = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
--ROBLOXIDLEANIMATION.Parent = Humanoid
local Effects = Instance.new("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
ANIMATOR:Destroy()
local UNANCHOR = true
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}	


function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = Instance.new(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = Instance.new("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local function weldBetween(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end


function Clerp(a, b, t)
	return a:lerp(b,t)
end



function weld(parent, part0, part1, c0, c1)
	local w = Instance.new("Weld")
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	w.Parent = parent
	return w
end

local S = Instance.new("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.EmitterSize = 5*VOLUME
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})

function WACKYEFFECT2(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLORLOOP = (Table.ColorLoop or false)
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1, TIME+1 do
					swait()
					if COLORLOOP == true then
						EFFECT.Color = COLOR
					end
					MSH.Scale = MSH.Scale - (VT((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1, TIME+1 do
					swait()
					if COLORLOOP == true then
						EFFECT.Color = COLOR
					end
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end
	end))
end



function CastLightning(Parent, FromPosition,ToPosition, Offset, Branches, Range, Thickness, Color, IsCircular, Gradient, GradientColor)
	local Zap = {}
	local LightningModel = Instance.new("Model", workspace)
	local lastpos = FromPosition
	local steps = Branches
	local off = Offset
	local range = Range
	local distance = (FromPosition-ToPosition).Magnitude
	if distance > range then
		distance = range
	end
	local maxi = 0
	for i = 0,distance,steps do
		maxi = i
	end
	local Half = maxi / 2
	local Lightning = {}
	local Gradient = {}
	if GradientColor then
		Gradient.R = (GradientColor.R * 255) / maxi
		Gradient.G = (GradientColor.G * 255) / maxi
		Gradient.B = (GradientColor.B * 255) / maxi
	end
	for i = 0,distance,steps do
		local from = lastpos
		local offset = Vector3.new((math.random(-off,off)), (math.random(-off,off)), (math.random(-off,off)))
		local too = from + -(from-ToPosition).unit*steps + offset
		local Branch = Instance.new("Part")
		Branch.Material = "Neon"
		Branch.Anchored = true
		Branch.CanCollide = false
		Branch.Color = Color
		Branch.FormFactor = "Custom"
		Branch.Name = "Electrode"
		if IsCircular then
			Branch.Size = Vector3.new(0,Thickness,Thickness)
		else
			Branch.Size = Vector3.new(Thickness,Thickness,0)
		end
		Branch.CastShadow = false
		if IsCircular then
			local Cyl = Instance.new("SpecialMesh", Branch)
			Cyl.MeshType = Enum.MeshType.Cylinder
		end
		Branch.Parent = LightningModel
		if IsCircular then
			Branch.Size = Vector3.new((from-too).Magnitude,Branch.Size.y,Branch.Size.Y)
		else
			Branch.Size = Vector3.new(Branch.Size.x,Branch.Size.y,(from-too).Magnitude)
		end
		if IsCircular then
			Branch.CFrame = CFrame.new(from:Lerp(too,0.5),too) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
		else
			Branch.CFrame = CFrame.new(from:Lerp(too,0.5),too) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
		end
		distance = (FromPosition - ToPosition).Magnitude
		local e = distance - 255
		if Gradient then
			--Branch.Color = Color3.fromRGB(Gradient.R * i, Gradient.G * i, Gradient.B * i)
			Branch.Color = COLOR
		end
		table.insert(Lightning, Branch)
		lastpos = too
		if i == 0 then
			--Branch.Color = Color3.fromRGB(0, 255,0)
			Branch.Name = "Start"
			Zap.Start = Branch
		end
		if i == maxi then
			--Branch.Color = Color3.fromRGB(0, 255,0)
			Branch.Name = "End"
			--Branch.Transparency = 1
			Zap.End = Branch
		end
	end
	local function Fade(Dur)
		coroutine.wrap(function()
			for i = 1, Dur do
				swait()
				for i = 1, #Lightning do
					Lightning[i].Transparency = Lightning[i].Transparency + 1 / Dur
				end
			end
			for i = 1, #Lightning do
				Lightning[i]:Destroy()
			end
		end)()
	end
	local function Shrink(Dur)
		coroutine.wrap(function()
			for i = 1, Dur do
				swait()
				for i = 1, #Lightning do
					if IsCircular then
						Lightning[i].Size = Lightning[i].Size - Vector3.new(0, Lightning[i].Size.Y, Lightning[i].Size.Z) / Dur
					else
						Lightning[i].Size = Lightning[i].Size - Vector3.new(Lightning[i].Size.X, Lightning[i].Size.Y, 0) / Dur
					end
				end
			end
			for i = 1, #Lightning do
				Lightning[i]:Destroy()
			end
			LightningModel:Destroy()
		end)()
	end
	Fade(5)
	Shrink(5)
	return Zap, LightningModel
end

function sphere(bonuspeed, type, pos, scale, value, color)
	local type = type
	local rng = Instance.new("Part", Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = Instance.new("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end


function SHAKECAM(POSITION,RANGE,INTENSITY,TIME)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						local CAMSHAKER = script.CamShake:Clone()
						CAMSHAKER.Shake.Value = INTENSITY
						CAMSHAKER.Timer.Value = TIME
						CAMSHAKER.Parent = CHILD
						CAMSHAKER.Disabled = false
					end
				end
			end
		end
	end
end


function AttachmentCFrame(What)
	return What.Parent.CFrame*CF(What.Position)
end


--weap
local SONG = 243199198
d = CF(0,0,0)
local la = Instance.new("Weld")
local ra = Instance.new("Weld")
RightShoulder.Parent = nil
LeftShoulder.Parent = nil
ra.Name = "ra"
ra.Part0 = Torso 
ra.C0 = CF(1.5, 0.5, 0)
ra.C1 = CF(0, 0.5, 0)
ra.Part1 = RightArm
ra.Parent = Torso  

la.Name = "la"
la.Part0 = Torso 
la.C0 = CF(-1.5, 0.5, 0)
la.C1 = CF(0, 0.5, 0) 
la.Part1 = LeftArm
la.Parent = Torso
Player:ClearCharacterAppearance()

local lh = weld(LeftLeg,Torso,LeftLeg,CF(-.5,-1,0),d)
lh.C1 = CF(0,1,0)
local rh = weld(RightLeg,Torso,RightLeg,CF(.5,-1,0),d)
rh.C1 = CF(0,1,0)
--local bc = Character:WaitForChild("Body Colors")
--bc.HeadColor3,bc.LeftArmColor3,bc.LeftLegColor3,bc.RightArmColor3,bc.RightLegColor3,bc.TorsoColor3 = Color3.fromRGB(241, 231, 199)





--dmg
function electr(MODEL)
	MODEL:BreakJoints()
	for index, CHILD in pairs(MODEL:GetChildren()) do
		if CHILD.Name == "Torso" then
			CHILD.Name = "stuff"..MRANDOM(1,10000)..""
		end
		coroutine.resume(coroutine.create(function()
			swait(MRANDOM(3,7)/10)
			local va = MRANDOM(30,80)
			if CHILD:IsA("BasePart") and CHILD.Name ~= "HumanoidRootPart" then
				if CHILD.Name == "Head" then
					WACKYEFFECT2({Time = MRANDOM(30,45), EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)), Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-2,2),0,0), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, SizeBoomerang = 0, Boomerang = 35})
				elseif CHILD.Name ~= "HumanoidRootPart" then
					WACKYEFFECT2({Time = MRANDOM(30,45), EffectType = "Box", Size = CHILD.Size, Size2 = CHILD.Size, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-2,2),0,0), RotationX = 0, RotationY = 0, RotationZ = 0 ,Material = "Neon", Color = COLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, SizeBoomerang = 0, Boomerang = 35})
				end
				CHILD:remove()
			end
		end))
	end
	Debris:AddItem(MODEL,6)
end

function ApplyDamage(Humanoid,Damage)
	Damage = Damage
	if Humanoid.Health < 2000 then
		if Humanoid.Health - Damage > 0 then
			Humanoid.Health = Humanoid.Health - Damage
		else
			electr(Humanoid.Parent)
		end
	else
		electr(Humanoid.Parent)
	end
end

function ApplyAoE(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	spawn(function()
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD:FindFirstChildWhichIsA("Humanoid") and CHILD ~= Character and CHILD ~= FakeCharacter and CHILD ~= game.Players.LocalPlayer then
				local TORSO = CHILD.HumanoidRootPart
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						HumanRoot.Position = TORSO.Position
						bambam.Location = TORSO.Position
					bambam.Force = Vector3.new(500,0,500)
					end
		end
		end
		end)
end



--attacks
function cs()
	if SONG == 243199198 then
		SONG = 3252017264
	elseif SONG == 3252017264 then
		SONG = 2136873592
	elseif SONG == 2136873592 then
		SONG = 1190369682
	elseif SONG == 1190369682 then
		SONG = 4521683726
	elseif SONG == 4521683726 then
		SONG = 243199198	
	end
end

function datp()
	ATTACK = true
	local ogpos = RootPart.Position

	RootPart.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*70
	RootPart.Velocity = VT(0,0,0)
	local dist = (ogpos - RootPart.Position).Magnitude
	for i = 1,MRANDOM(6,8) do
		CastLightning(Effects,ogpos,RootPart.Position,1.5,MRANDOM(10,15),dist/1.5,.2,COLOR,false,true,COLOR)	
	end
	CreateSound(1202656211,RootPart,8,2,false)
	CreateSound(1202657035,RootPart,5,1,false)
	WACKYEFFECT2({Time = 30, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(38,38,38), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang =35})
	WACKYEFFECT2({Time = 30, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(38,38,38)/1.3, Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang =35})
	for i = 1,13 do
		WACKYEFFECT2({Time = 35, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = RootPart.Position+VT(MRANDOM(-20,20),0,MRANDOM(-20,20)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 35, SizeBoomerang = 0})
	end
	for i = 1,9 do
		WACKYEFFECT2({Time = 50, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = RootPart.Position+VT(MRANDOM(-20,20),MRANDOM(-20,20),MRANDOM(-20,20))*2, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})

	end
	for i = 0,15 do
		swait()
		local Alpha = .4
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,-1,0.1)*ANGLES(RAD(-11.9),RAD(30.8),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.3,0.1,-1)*ANGLES(RAD(5),RAD(-23.4),RAD(0.3)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1,-0.2)*ANGLES(RAD(-65.1),RAD(-21),RAD(-11.1)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.2,0.4,0.1)*ANGLES(RAD(1.5),RAD(44.7),RAD(-92.2)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.4,0.4,-0.2)*ANGLES(RAD(63.5),RAD(19.4),RAD(-32.2)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0,0,0)*ANGLES(RAD(0),RAD(-29.7),RAD(0))*NECKC0,Alpha)
	end
	ATTACK = false
end

function datpup()
	ATTACK = true
	local ogpos = RootPart.Position

	RootPart.CFrame = RootPart.CFrame*CF(0,70,0)
	RootPart.Velocity = VT(0,0,0)
	local dist = (ogpos - RootPart.Position).Magnitude
	for i = 1,MRANDOM(6,8) do
		CastLightning(Effects,ogpos,RootPart.Position,1.5,MRANDOM(10,15),dist/1.5,.2,COLOR,false,true,COLOR)	
	end
	CreateSound(1202656211,RootPart,8,2,false)
	CreateSound(1202657035,RootPart,5,1,false)
	WACKYEFFECT2({Time = 30, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(38,38,38), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang =35})
	WACKYEFFECT2({Time = 30, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(38,38,38)/1.3, Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang =35})
	for i = 1,13 do
		WACKYEFFECT2({Time = 35, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = RootPart.Position+VT(MRANDOM(-20,20),0,MRANDOM(-20,20)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 35, SizeBoomerang = 0})
	end
	for i = 1,9 do
		WACKYEFFECT2({Time = 50, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = RootPart.Position+VT(MRANDOM(-20,20),MRANDOM(-20,20),MRANDOM(-20,20))*2, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})

	end
	for i = 0,15 do
		swait()
		local Alpha = .4
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,-1,0.1)*ANGLES(RAD(-11.9),RAD(30.8),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.3,0.1,-1)*ANGLES(RAD(5),RAD(-23.4),RAD(0.3)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1,-0.2)*ANGLES(RAD(-65.1),RAD(-21),RAD(-11.1)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.2,0.4,0.1)*ANGLES(RAD(1.5),RAD(44.7),RAD(-92.2)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.4,0.4,-0.2)*ANGLES(RAD(63.5),RAD(19.4),RAD(-32.2)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0,0,0)*ANGLES(RAD(0),RAD(-29.7),RAD(0))*NECKC0,Alpha)
	end
	ATTACK = false
end

function clightn()
	ATTACK = true
	local ls = 	CreateSound(705787045,LeftArm,6,1,true)
	repeat
		swait()
		local armp = AttachmentCFrame(LeftArm.LeftGripAttachment)
		local h,ps = CastProperRay(armp.p,  Mouse.Hit.p, 500, Character)
		local dist = (armp.p - ps).Magnitude
		CastLightning(Effects,armp.p,ps,MRANDOM(1,2),MRANDOM(10,15),dist/1.5,.2,COLOR,false,true,COLOR)
		local Alpha = .3
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0,-0.2)*ANGLES(RAD(-9.3),RAD(-39.7),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.5,-1,-0.1)*ANGLES(RAD(10.6),RAD(20),RAD(-9.8)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1.1,-0.1)*ANGLES(RAD(6.9),RAD(-7.9),RAD(-2.2)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.6,0.5,-0.3)*ANGLES(RAD(88.3),RAD(-22),RAD(-43.5)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.4,0.5,0.2)*ANGLES(RAD(13.2),RAD(-17.4),RAD(29.4)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(-0.1,0,-0.2)*ANGLES(RAD(11),RAD(39.2),RAD(-7))*NECKC0,Alpha)
		ApplyAoE(ps,3,2,7,10,false)
	until KEYHOLD == false
	ls:Destroy()
	ATTACK = false
end

function fromsky()
	ATTACK= true
	local startpoint = CF(Mouse.Hit.p)*CF(0,100,0)
	for i = 0,20 do
		swait()
		local Alpha = .1
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0,0.2)*ANGLES(RAD(9.7),RAD(0),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.5,-1,-0.1)*ANGLES(RAD(-9.3),RAD(7),RAD(-3.3)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1,-0.1)*ANGLES(RAD(-9.2),RAD(-7.5),RAD(3.8)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.6,0.5,0.1)*ANGLES(RAD(4.7),RAD(14.4),RAD(-18.1)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.6,0.8,0)*ANGLES(RAD(-171.3),RAD(16.4),RAD(0)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0,0,-0.3)*ANGLES(RAD(12.6),RAD(0),RAD(0))*NECKC0,Alpha)
	end
	local h,ps = CastProperRay(startpoint.p,  Mouse.Hit.p, 500, Character)
	local dist = (startpoint.p - ps).Magnitude
	spawn(function()
		for i = 1,15 do
			swait()
			CastLightning(Effects,startpoint.p,ps,MRANDOM(1,2),MRANDOM(10,15),dist,.3,COLOR,false,true,COLOR)
		end
	end)
	ApplyAoE(ps,20,40,60,75,false)
	WACKYEFFECT2({Time = 30, EffectType = "Box", Size = VT(1,1,1), Size2 = VT(50,50,50)/2, Transparency = 0, Transparency2 = 1, CFrame = CF(ps), MoveToPos = nil, RotationX = 10, RotationY = 10, RotationZ = 10, Material = "Neon", Color = COLOR,SoundID = 821439273, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	for i = 1,5 do
		WACKYEFFECT2({Time = 37, EffectType = "Box", Size = VT(1,1,1), Size2 = VT(20,20,20), Transparency = 0, Transparency2 = 1, CFrame = CF(ps)*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = MRANDOM(-1,1)*7, RotationY = MRANDOM(-1,1)*7, RotationZ = MRANDOM(-1,1)*7, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	for i = 1,3 do
		WACKYEFFECT2({Time = 45, EffectType = "Round Slash", Size = VT(.01,.01,.01), Size2 = VT(.09,.02,.09)*2, Transparency = 0, Transparency2 = 1, CFrame = CF(ps)*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = ps+VT(0,5,0), RotationX = 0, RotationY = MRANDOM(-3,3), RotationZ = 0, Material = "Neon", Color = C3(1,1,1),SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	for i = 1,10 do
		WACKYEFFECT2({Time = 50, EffectType = "Box", Size = VT(.5,.5,.5)*3, Size2 = VT(.6,.6,.6)*3, Transparency = 0, Transparency2 = 1, CFrame = CF(ps), MoveToPos = ps+VT(MRANDOM(-15,15),MRANDOM(0,15),MRANDOM(-15,15)), RotationX = MRANDOM(-6,6), RotationY = MRANDOM(-6,6), RotationZ = MRANDOM(-6,6), Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	for i = 0,5 do
		local Alpha = .2
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0.1,0)*ANGLES(RAD(-2.6),RAD(0),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.5,-1.1,-0.1)*ANGLES(RAD(3),RAD(7),RAD(-3.3)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1.1,-0.1)*ANGLES(RAD(3.1),RAD(-7.5),RAD(3.8)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.6,0.5,0.1)*ANGLES(RAD(4.7),RAD(14.4),RAD(-18.1)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.7,0.3,-0.4)*ANGLES(RAD(85.1),RAD(-4),RAD(16)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0,0,0)*ANGLES(RAD(0.2),RAD(0),RAD(0))*NECKC0,Alpha)
	end
	for i = 0,15 do
		swait()
		local Alpha = .3
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0.2,-0.3)*ANGLES(RAD(-26.7),RAD(0),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.5,-1.2,-0.3)*ANGLES(RAD(27),RAD(7),RAD(-3.3)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1.2,-0.3)*ANGLES(RAD(27.1),RAD(-7.5),RAD(3.8)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.6,0.5,0.1)*ANGLES(RAD(4.7),RAD(14.4),RAD(-18.1)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.6,0.1,-0.3)*ANGLES(RAD(20.9),RAD(-16.1),RAD(3.4)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0,0.1,-0.5)*ANGLES(RAD(18.6),RAD(0),RAD(0))*NECKC0,Alpha)
	end
	ATTACK = false
end

function tuant()
	ATTACK = true
	CreateSound(4148540024,Head,3,1,false)
	for i = 0,120 do swait()
		local Alpha = .1
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0+0.07*COS(SINE/24),0)*ANGLES(RAD(-1.4+4*SIN(SINE/48)),RAD(0+6*COS(SINE/48)),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.5,-1-0.07*COS(SINE/24),-0.1)*ANGLES(RAD(1.1-4*SIN(SINE/48)),RAD(7-6*COS(SINE/48)),RAD(-3.3)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1-0.07*COS(SINE/24),-0.1)*ANGLES(RAD(1-4*SIN(SINE/48)),RAD(-7.5-6*COS(SINE/48)),RAD(3.8)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.4,0.8,-0.8)*ANGLES(RAD(130.4),RAD(45.9),RAD(56.6)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.5,0.5+0.05*COS(SINE/24),0.1+0.08*SIN(SINE/48))*ANGLES(RAD(0.8),RAD(-11.7),RAD(4.2)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0.2,0,0.3)*ANGLES(RAD(-13.9),RAD(29.1),RAD(6.9))*NECKC0,Alpha)
	end

	ATTACK = false
end

function multpunchattempt()
	ATTACK = true
	for i = 0,40 do
		swait()
		local Alpha = .1
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0,0.1)*ANGLES(RAD(-12.2),RAD(0),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.5,-1,-0.2)*ANGLES(RAD(12.6),RAD(7),RAD(-3.3)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1,-0.2)*ANGLES(RAD(12.7),RAD(-7.5),RAD(3.8)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.5,0.2,0.1)*ANGLES(RAD(13.8),RAD(0),RAD(0)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.5,0.2,0)*ANGLES(RAD(12.1),RAD(0),RAD(0)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0,0,0.2)*ANGLES(RAD(-13),RAD(0),RAD(0))*NECKC0,Alpha)
	end
	for i = 0,12 do
		swait()
		local Alpha = .3
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0,0.4)*ANGLES(RAD(13.2),RAD(0),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.5,-1,-0.1)*ANGLES(RAD(-12.8),RAD(7),RAD(-3.3)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1,-0.1)*ANGLES(RAD(-12.7),RAD(-7.5),RAD(3.8)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.4,0.4,0.1)*ANGLES(RAD(2.9),RAD(0.4),RAD(-92.3)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.5,0.4,0.1)*ANGLES(RAD(1.7),RAD(1.6),RAD(90.6)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0,0,-0.2)*ANGLES(RAD(8),RAD(0),RAD(0))*NECKC0,Alpha)
	end
	local beats = 0
	local brug = false
	spawn(function()
		repeat swait() beats = beats +.037 until ATTACK==false--beats==0 	
	end)
	spawn(function()
		wait(5)
		brug=true
	end)
	Rooted = true
	repeat
		for i = 0,12-beats do
			swait()
			local Alpha = .5
			RootJoint.C0 = RootJoint.C0:lerp(CF(-0.1,0,-0.1)*ANGLES(RAD(5.2),RAD(59.7),RAD(-2.2))*ROOTC0,Alpha)
			lh.C0 = lh.C0:lerp(CF(-0.7,-1,0)*ANGLES(RAD(-23.2),RAD(-32.5),RAD(-24.7)),Alpha)
			rh.C0 = rh.C0:lerp(CF(0.7,-1,-0.3)*ANGLES(RAD(-8),RAD(-33.4),RAD(0.8)),Alpha)
			la.C0 = la.C0:lerp(CF(-1.3,0.6,-0.2)*ANGLES(RAD(91.2),RAD(-8.2),RAD(34.7)),Alpha)
			ra.C0 = ra.C0:lerp(CF(1.5,0.5,0.2)*ANGLES(RAD(-21),RAD(-11.4),RAD(12.7)),Alpha)
			Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(-0.1,0,0.1)*ANGLES(RAD(-9.3),RAD(-70.9),RAD(-7))*NECKC0,Alpha)
		end
		for i = 0,12-beats do
			swait()
			local Alpha = .5
			RootJoint.C0 = RootJoint.C0:lerp(CF(0,-0.3,0)*ANGLES(RAD(0),RAD(-64.2),RAD(10.8))*ROOTC0,Alpha)
			lh.C0 = lh.C0:lerp(CF(-1,-0.6,0.1)*ANGLES(RAD(12.8),RAD(70.7),RAD(-16.3)),Alpha)
			rh.C0 = rh.C0:lerp(CF(0.7,-1.1,0)*ANGLES(RAD(-40.6),RAD(44.4),RAD(32.5)),Alpha)
			la.C0 = la.C0:lerp(CF(-1.5,0.6,-0.2)*ANGLES(RAD(81.3),RAD(-18.1),RAD(-61.1)),Alpha)
			ra.C0 = ra.C0:lerp(CF(1.3,0.2,0.2)*ANGLES(RAD(-20.5),RAD(9.4),RAD(60.4)),Alpha)
			Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0.1,0,0)*ANGLES(RAD(-4.1),RAD(64.7),RAD(-1))*NECKC0,Alpha)
		end
		CreateSound(260433584,LeftArm,6,1,false)
		--CreateSound(1428541279,LeftArm,4,1,false)
		ApplyAoE(LeftArm.Position+VT(0,0,3),10,10,20,30)
		WACKYEFFECT2({Time = 10, EffectType = "Sphere", Size = VT(10,10,.05)/2, Size2 = VT(15,15,.05)/2, Transparency = 0, Transparency2 = 1, CFrame = AttachmentCFrame(LeftArm.LeftGripAttachment)*ANGLES(RAD(90),0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT2({Time = 10, EffectType = "Sphere", Size = VT(5,5,10)/2, Size2 = VT(10,10,15)/2, Transparency = 0, Transparency2 = 1, CFrame = AttachmentCFrame(LeftArm.LeftGripAttachment)*CF(0,-3,0)*ANGLES(RAD(90),0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		local endp = AttachmentCFrame(LeftArm.LeftGripAttachment)*CF(0,-7,0)
		for i = 1,15 do
			CastLightning(Effects,AttachmentCFrame(LeftArm.LeftGripAttachment).p,endp.p,MRANDOM(1,2),MRANDOM(3,4),3,.3,COLOR,false,true,COLOR)
		end
		for i = 0,12-beats do
			swait()
			local Alpha = .5
			RootJoint.C0 = RootJoint.C0:lerp(CF(0.1,0,-0.1)*ANGLES(RAD(6.1),RAD(-64.9),RAD(3.4))*ROOTC0,Alpha)
			lh.C0 = lh.C0:lerp(CF(-0.6,-1,0)*ANGLES(RAD(7.1),RAD(55),RAD(-2.1)),Alpha)
			rh.C0 = rh.C0:lerp(CF(0.7,-1,0)*ANGLES(RAD(-21.2),RAD(28.1),RAD(22)),Alpha)
			la.C0 = la.C0:lerp(CF(-1.5,0.5,0.2)*ANGLES(RAD(-19.8),RAD(11.6),RAD(-13.4)),Alpha)
			ra.C0 = ra.C0:lerp(CF(1.3,0.6,-0.3)*ANGLES(RAD(90.3),RAD(9.2),RAD(-34)),Alpha)
			Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0.1,0,0.1)*ANGLES(RAD(-9.2),RAD(70.8),RAD(6.9))*NECKC0,Alpha)
			--ch
		end

		for i = 0,12-beats do
			swait()
			local Alpha = .5
			RootJoint.C0 = RootJoint.C0:lerp(CF(0,-0.3,0)*ANGLES(RAD(0),RAD(64.2),RAD(-10.8))*ROOTC0,Alpha)
			lh.C0 = lh.C0:lerp(CF(-0.7,-1.1,0)*ANGLES(RAD(-39.5),RAD(-43.2),RAD(-31.8)),Alpha)
			rh.C0 = rh.C0:lerp(CF(1,-0.6,0)*ANGLES(RAD(22.9),RAD(-77.8),RAD(33.3)),Alpha)
			la.C0 = la.C0:lerp(CF(-1.3,0.2,0.2)*ANGLES(RAD(-20.5),RAD(-9.4),RAD(-60.4)),Alpha)
			ra.C0 = ra.C0:lerp(CF(1.5,0.6,-0.2)*ANGLES(RAD(81.3),RAD(18.1),RAD(61.1)),Alpha)
			Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(-0.1,0,0)*ANGLES(RAD(-4.1),RAD(-64.7),RAD(1))*NECKC0,Alpha)
		end
		CreateSound(260433584,RightArm,6,1,false)
		--CreateSound(1428541279,RightArm,4,1,false)
		ApplyAoE(RightArm.Position+VT(0,0,3),10,10,20,30)
		WACKYEFFECT2({Time = 10, EffectType = "Sphere", Size = VT(10,10,.05)/2, Size2 = VT(15,15,.05)/2, Transparency = 0, Transparency2 = 1, CFrame = AttachmentCFrame(RightArm.RightGripAttachment)*ANGLES(RAD(90),0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT2({Time = 10, EffectType = "Sphere", Size = VT(5,5,10)/2, Size2 = VT(10,10,15)/2, Transparency = 0, Transparency2 = 1, CFrame = AttachmentCFrame(RightArm.RightGripAttachment)*CF(0,-3,0)*ANGLES(RAD(90),0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		local endp = AttachmentCFrame(RightArm.RightGripAttachment)*CF(0,-7,0)

		for i = 1,15 do
			CastLightning(Effects,AttachmentCFrame(RightArm.RightGripAttachment).p,endp.p,MRANDOM(1,2),MRANDOM(3,4),3,.3,COLOR,false,true,COLOR)
		end
	until brug == true
	for i  = 0,35 do
		swait()
		local Alpha = .1
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0,0.2)*ANGLES(RAD(13.8),RAD(0),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.5,-1,0)*ANGLES(RAD(-13.4),RAD(5.6),RAD(-3.9)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1,0)*ANGLES(RAD(-13.6),RAD(-4.2),RAD(3.4)),Alpha)
		la.C0 = la.C0:lerp(CF(-1,0.8,-0.2)*ANGLES(RAD(138.4),RAD(0),RAD(31.2)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.1,0.8,-0.2)*ANGLES(RAD(134.9),RAD(0),RAD(-34.9)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))*NECKC0,Alpha)
	end
	WACKYEFFECT2({Time = 40, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(55,55,55), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	for i = 1,15 do
		WACKYEFFECT2({Time = 45, EffectType = "Box", Size = VT(1,1,1), Size2 = VT(2,2,2), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = RootPart.Position+VT(MRANDOM(-30,30),MRANDOM(0,30),MRANDOM(-30,30)), RotationX = MRANDOM(-7,7), RotationY = MRANDOM(-7,7), RotationZ = MRANDOM(-7,7), Material = "Neon", Color = COLOR,SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	WACKYEFFECT2({Time = 45, EffectType = "Wave", Size = VT(1,1,1), Size2 = VT(65,1,65), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.9,0), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-3,3), RotationZ = 0, Material = "Neon", Color = C3(1,1,1),SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	for i = 1,6 do
		WACKYEFFECT2({Time = 60, EffectType = "Round Slash", Size = VT(.01,.01,.01), Size2 = VT(.5,.025,.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-10,10), RotationZ = 0, Material = "Neon", Color = C3(1,1,1),SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	ApplyAoE(RootPart.Position,30,0,0,150,true)
	CreateSound(821439273,RootPart,7,1,false)
	for i = 0,25 do
		swait()
		local Alpha = .3
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0,0.2)*ANGLES(RAD(13.8),RAD(0),RAD(0))*ROOTC0,Alpha)
		lh.C0 = lh.C0:lerp(CF(-0.5,-1,0)*ANGLES(RAD(-13.4),RAD(5.6),RAD(-3.9)),Alpha)
		rh.C0 = rh.C0:lerp(CF(0.5,-1,0)*ANGLES(RAD(-13.6),RAD(-4.2),RAD(3.4)),Alpha)
		la.C0 = la.C0:lerp(CF(-1.3,0.5,0.4)*ANGLES(RAD(-52.9),RAD(6.8),RAD(-30.5)),Alpha)
		ra.C0 = ra.C0:lerp(CF(1.4,0.6,0.3)*ANGLES(RAD(-42.4),RAD(1.9),RAD(34.8)),Alpha)
		Neck.C0 = Neck.C0:lerp(CF(0,0,0+ ((1) - 1))*CF(0,0.1,-0.4)*ANGLES(RAD(16.4),RAD(0),RAD(0))*NECKC0,Alpha)
	end
	Rooted = false
	ATTACK = false
end
--keys
local khold2 = false

local Mouse = game.Players.LocalPlayer:GetMouse()

function MouseDown(Mouse)
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
	HOLD = false
end
Rainbow = false
function KeyDown(Key)
	KEYHOLD = true
	if Key == "e" and ATTACK == false then
		datp()
	end

	if Key == "q" and ATTACK == false then
		datpup()
	end

	if Key == "z" and ATTACK == false then
		clightn()
	end

	if Key == "x" and ATTACK == false then
		fromsky()
	end

	if Key == "c" and ATTACK == false then
		multpunchattempt()
	end

	if Key == "b" and ATTACK == false then

	end
	

	if Key=="t" and ATTACK==false then tuant() end

	if Key=="m" then cs() end

	if Key == "2" and Speed == 16 then Speed = 40 elseif Key=="2" and Speed==40 then Speed=16 end

	if Key == "]" and ATTACK == false then
		if sick.Parent ~= Character then
			sick = Instance.new("Sound",Torso)
			sick.SoundId = "rbxassetid://"..SONG
		end
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

Mouse.Button1Down:connect(function(NEWKEY)
	MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
	MouseUp(NEWKEY)
end)
Mouse.KeyDown:connect(function(NEWKEY)
	KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)

function unanchor()
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	if UNANCHOR == true then
		RootPart.Anchored = false
	else
		RootPart.Anchored = true
	end
end

--loop stuff

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

bambam = Instance.new("BodyThrust")
bambam.Parent = HumanRoot
bambam.Force = Vector3.new(0,0,0)

while HumanDied ~= true do
	swait()
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
		v:Stop();
	end
	SINE = SINE + CHANGE*2
	wsv = 12
	if Speed <= 16 then
		wsv = 12
	elseif Speed >=17 then
		wsv = 20		
	end
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR,HITPOS,NORMAL = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4+Humanoid.HipHeight, Character)
	local TiltVelocity = CF(RootPart.CFrame:vectorToObjectSpace(RootPart.Velocity/1.6))
	local WALKSPEEDVALUE = wsv / (Humanoid.WalkSpeed / 16)
	if ATTACK == false then
		HumanRoot.Position = Torso.Position
		HumanRoot.AssemblyAngularVelocity = Vector3.new(0,0,0)
		bambam.Force = Vector3.new(0,0,0)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			ra.C0 = Clerp(ra.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))), 1 / Animation_Speed)
			la.C0 = Clerp(la.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))), 1 / Animation_Speed)
			rh.C0 = Clerp(rh.C0, CF(.5, -0.4, -0.6) * ANGLES(RAD(1), RAD(0), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			lh.C0 = Clerp(lh.C0, CF(-.5, -1, 0) * ANGLES(RAD(0), RAD(5), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			ra.C0 = Clerp(ra.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))), 1 / Animation_Speed)
			la.C0 = Clerp(la.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))), 1 / Animation_Speed)
			rh.C0 = Clerp(rh.C0, CF(.5, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(0), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			lh.C0 = Clerp(lh.C0, CF(-.5, -0.8, -0.3) * ANGLES(RAD(-10), RAD(10), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		local Alpha = .1
		ANIM = "Idle"
		if ATTACK == false then
			RootJoint.C0 = RootJoint.C0:lerp(CF(0,0+0.07*COS(SINE/24),0)*ANGLES(RAD(-1.4+4*SIN(SINE/48)),RAD(0+6*COS(SINE/48)),RAD(0))*ROOTC0,Alpha)
			lh.C0 = lh.C0:lerp(CF(-0.5,-1-0.07*COS(SINE/24),-0.1)*ANGLES(RAD(1.1-4*SIN(SINE/48)),RAD(7-6*COS(SINE/48)),RAD(-3.3)),Alpha)
			rh.C0 = rh.C0:lerp(CF(0.5,-1-0.07*COS(SINE/24),-0.1)*ANGLES(RAD(1-4*SIN(SINE/48)),RAD(-7.5-6*COS(SINE/48)),RAD(3.8)),Alpha)
			la.C0 = la.C0:lerp(CF(-1.5,0.5+0.05*COS(SINE/24),0.1+0.08*SIN(SINE/48))*ANGLES(RAD(0.5),RAD(8.9-5*SIN(SINE/24)),RAD(-3.3+1.5*COS(SINE/24))),Alpha)
			ra.C0 = ra.C0:lerp(CF(1.5,0.5+0.05*COS(SINE/24),0.1+0.08*SIN(SINE/48))*ANGLES(RAD(0.5),RAD(-7.8+5*SIN(SINE/24)),RAD(3.3-1.5*COS(SINE/24))),Alpha)
			Neck.C0 = Neck.C0:lerp(NECKC0*CF(0,0,0+ ((1) - 1))*CF(0,0,0)*ANGLES(RAD(0-6*SIN(SINE/24)),RAD(0-6*COS(SINE/48)),RAD(0)),Alpha)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			local Alpha = .1
			RootJoint.C0 = RootJoint.C0:lerp(CF(0,0+0.08*SIN(SINE/WALKSPEEDVALUE*2),0-.10*COS(SINE/(WALKSPEEDVALUE/2)))*ANGLES(RAD(-2+3*SIN(SINE/(WALKSPEEDVALUE/2)))+RAD(TiltVelocity.Z)*1,RAD(10*COS(SINE/WALKSPEEDVALUE)),RAD(0))*ROOTC0,Alpha)
			lh.C0 = lh.C0:lerp(CF(-0.5,-.9+0.55*COS(SINE/WALKSPEEDVALUE)/2,-.1-.5*COS(SINE/WALKSPEEDVALUE)/2)*ANGLES(RAD(-5+15*COS(SINE/WALKSPEEDVALUE))+RootPart.RotVelocity.Y/-75+SIN(SINE/WALKSPEEDVALUE)/2.5*-RAD(TiltVelocity.Z)*10,RAD(0-5*COS(SINE/WALKSPEEDVALUE)),RAD(0))*ANGLES(RAD(0-2*COS(SINE/WALKSPEEDVALUE)),RAD(0),RAD(0+25*SIN(SINE/WALKSPEEDVALUE)*RAD(TiltVelocity.X)*5.5)),Alpha)
			rh.C0 = rh.C0:lerp(CF(0.5,-.9-0.55*COS(SINE/WALKSPEEDVALUE)/2,-.1+.5*COS(SINE/WALKSPEEDVALUE)/2)*ANGLES(RAD(-5-15*COS(SINE/WALKSPEEDVALUE))-RootPart.RotVelocity.Y/75+-SIN(SINE/WALKSPEEDVALUE)/2.5*-RAD(TiltVelocity.Z)*10,RAD(0-5*COS(SINE/WALKSPEEDVALUE)),RAD(0))*ANGLES(RAD(0+2*COS(SINE/WALKSPEEDVALUE)),RAD(0),RAD(0+25*SIN(SINE/WALKSPEEDVALUE)*-RAD(TiltVelocity.X)*5.5)),Alpha)
			la.C0 = la.C0:lerp(CF(-1.5,0.5,0)*ANGLES(RAD(-28*COS(SINE/WALKSPEEDVALUE)),RAD(0),RAD(0)),Alpha)
			ra.C0 = ra.C0:lerp(CF(1.5,0.5,0)*ANGLES(RAD(28*COS(SINE/WALKSPEEDVALUE)),RAD(0),RAD(0)),Alpha)
			Neck.C0 = Neck.C0:lerp(NECKC0*CF(0,0,0)*ANGLES(RAD(0+3.5*COS(SINE/WALKSPEEDVALUE)),RAD(0),RAD(-10*COS(SINE/WALKSPEEDVALUE))-RAD(TiltVelocity.X)*3),Alpha)
		end
	end
	if MRANDOM(1,4) == 1 then
		local rnd
		CastLightning(Effects,RootPart.Position+VT(MRANDOM(-4,4),-2.9,MRANDOM(-4,4)),RootPart.Position+VT(0,MRANDOM(4,6),0),1,2,3,.1,Color3.fromRGB(255, 0, 0),false,true,COLOR)	
	end
	unanchor()
	Humanoid.MaxHealth = 1e4
	Humanoid.Health = 1e4
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	sick.SoundId = "rbxassetid://"..SONG
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 3
	sick.Playing = true
end
