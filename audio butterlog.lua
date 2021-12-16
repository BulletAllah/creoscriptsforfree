--[[
Audio ButterLog by Creo

Made to steal other players and game's audio               
]]



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
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
Frame2 = Instance.new("Frame")
TextLabel3 = Instance.new("TextLabel")
ScrollingFrame4 = Instance.new("ScrollingFrame")
UIListLayout5 = Instance.new("UIListLayout")
ScreenGui0.Name = "AudioButterLog"
ScreenGui0.Parent = mas
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Name = "MainFrame"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.214041084, 0, 0.115191981, 0)
Frame1.Size = UDim2.new(0.300000012, 0, 0.400000006, 0)
Frame1.BackgroundColor = BrickColor.new("Institutional white")
Frame1.BackgroundColor3 = Color3.new(1, 1, 1)
Frame1.Style = Enum.FrameStyle.RobloxRound
Frame2.Name = "UPPER"
Frame2.Parent = Frame1
Frame2.Size = UDim2.new(1, 0, 0.200000003, 0)
Frame2.BackgroundColor = BrickColor.new("Institutional white")
Frame2.BackgroundColor3 = Color3.new(1, 1, 1)
Frame2.Style = Enum.FrameStyle.RobloxRound
TextLabel3.Name = "CoolText"
TextLabel3.Parent = Frame2
TextLabel3.Size = UDim2.new(1, 0, 1, 0)
TextLabel3.BackgroundColor = BrickColor.new("Institutional white")
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Font = Enum.Font.ArialBold
TextLabel3.FontSize = Enum.FontSize.Size14
TextLabel3.Text = "Audio ButterLog"
TextLabel3.TextColor = BrickColor.new("Magenta")
TextLabel3.TextColor3 = Color3.new(0.658824, 0.0666667, 1)
TextLabel3.TextScaled = true
TextLabel3.TextSize = 14
TextLabel3.TextStrokeColor3 = Color3.new(0.470588, 0, 0)
TextLabel3.TextStrokeTransparency = 0
TextLabel3.TextWrap = true
TextLabel3.TextWrapped = true
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel3.TextYAlignment = Enum.TextYAlignment.Bottom
ScrollingFrame4.Name = "Audio's"
ScrollingFrame4.Parent = Frame1
ScrollingFrame4.Position = UDim2.new(0, 0, 0.300000012, 0)
ScrollingFrame4.Size = UDim2.new(1, 0, 0.699999988, 0)
ScrollingFrame4.Active = true
ScrollingFrame4.BackgroundColor = BrickColor.new("Black")
ScrollingFrame4.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
ScrollingFrame4.BackgroundTransparency = 0.80000001192093
ScrollingFrame4.CanvasSize = UDim2.new(0, 0, 0, 0)
UIListLayout5.Name = "LL"
UIListLayout5.Parent = ScrollingFrame4
UIListLayout5.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
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
local SF = ScrollingFrame4
ScreenGui0.ResetOnSpawn = false
ScreenGui0.Parent = game.Players.LocalPlayer.PlayerGui
spawn(function()
	local mousedown = false
	game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
		mousedown = true
	end)
	game.Players.LocalPlayer:GetMouse().Button1Up:Connect(function()
		mousedown = false
	end)
	local relativeToFrame
	local mouse = game.Players.LocalPlayer:GetMouse()

	while true do
		game:GetService("RunService").Stepped:wait()
		if game.Players.LocalPlayer:GetMouse().X > (Frame1.AbsolutePosition.X) and game.Players.LocalPlayer:GetMouse().X < (Frame1.AbsolutePosition.X + Frame1.AbsoluteSize.X) and game.Players.LocalPlayer:GetMouse().Y > (Frame1.AbsolutePosition.Y) and game.Players.LocalPlayer:GetMouse().Y < (Frame1.AbsolutePosition.Y + Frame1.AbsoluteSize.Y)  then

			if mousedown == true then
				relativeToFrame = Vector2.new(Frame1.AbsolutePosition.X - mouse.X,Frame1.AbsolutePosition.Y - mouse.Y)
				while mousedown do
					game:GetService("RunService").Stepped:wait()
					if not mousedown then break end
					Frame1.Position = Frame1.Position:Lerp(UDim2.new(0,mouse.X + relativeToFrame.X,0, mouse.Y + relativeToFrame.Y),0.4)
				end
			end
		else

		end
	end

end)



local MakeNewAudioButton = function(ID,Player)
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
	Frame0 = Instance.new("Frame")
	TextLabel1 = Instance.new("TextLabel")
	TextLabel2 = Instance.new("TextLabel")
	TextButton3 = Instance.new("TextButton")
	Frame0.Name = "NewAudio"
	Frame0.Parent = mas
	Frame0.Size = UDim2.new(1, 0, 0, 50)
	Frame0.BackgroundColor = BrickColor.new("Institutional white")
	Frame0.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame0.Style = Enum.FrameStyle.RobloxRound
	TextLabel1.Name = "Name"
	TextLabel1.Parent = Frame0
	TextLabel1.Size = UDim2.new(0.5, 0, 1, 0)
	TextLabel1.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel1.Font = Enum.Font.ArialBold
	TextLabel1.FontSize = Enum.FontSize.Size14
	TextLabel1.Text = "Name"
	TextLabel1.TextColor = BrickColor.new("Really black")
	TextLabel1.TextColor3 = Color3.new(0, 0, 0)
	TextLabel1.TextScaled = true
	TextLabel1.TextSize = 14
	TextLabel1.TextWrap = true
	TextLabel1.TextWrapped = true
	TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel1.TextYAlignment = Enum.TextYAlignment.Bottom
	TextLabel2.Name = "AudioName"
	TextLabel2.Parent = Frame0
	TextLabel2.Position = UDim2.new(0.5, 0, 0, 0)
	TextLabel2.Size = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel2.Font = Enum.Font.ArialBold
	TextLabel2.FontSize = Enum.FontSize.Size14
	TextLabel2.Text = "Audio Name:"
	TextLabel2.TextColor = BrickColor.new("Really black")
	TextLabel2.TextColor3 = Color3.new(0, 0, 0)
	TextLabel2.TextScaled = true
	TextLabel2.TextSize = 14
	TextLabel2.TextWrap = true
	TextLabel2.TextWrapped = true
	TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel2.TextYAlignment = Enum.TextYAlignment.Bottom
	TextButton3.Name = "Steal"
	TextButton3.Parent = Frame0
	TextButton3.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextButton3.Size = UDim2.new(0.5, 0, 0.5, 0)
	TextButton3.BackgroundColor = BrickColor.new("Institutional white")
	TextButton3.BackgroundColor3 = Color3.new(1, 1, 1)
	TextButton3.Font = Enum.Font.ArialBold
	TextButton3.FontSize = Enum.FontSize.Size14
	TextButton3.Text = "Copy Audio ID"
	TextButton3.TextColor = BrickColor.new("Really black")
	TextButton3.TextColor3 = Color3.new(0, 0, 0)
	TextButton3.TextSize = 14
	TextButton3.TextXAlignment = Enum.TextXAlignment.Left
	TextButton3.TextYAlignment = Enum.TextYAlignment.Bottom
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
	print(ID)
	TextLabel2.Text = game:GetService("MarketplaceService"):GetProductInfo(ID).Name
	TextLabel1.Text = tostring(Player)
	Frame0.Parent = SF
	TextButton3.MouseButton1Click:Connect(function()
		setclipboard(ID)
	end)
SF.CanvasSize = SF.CanvasSize + UDim2.new(0,0,0,50)
end

local WatchAudio = function(Audio)
	Audio.Played:Connect(function()
		MakeNewAudioButton(Audio.SoundId:match("%d+"),Audio.Parent.Parent.Parent.Name)
	end)
end
	




local Descendants = game.Workspace:GetDescendants()

for i=1,#Descendants do
	spawn(function()
		if Descendants[i]:IsA("Sound") then
			WatchAudio(Descendants[i])
		end
	end)
end


workspace.DescendantAdded:Connect(function(Thing)
	if Thing:IsA("Sound") then
		WatchAudio(Thing)
	end
end)
