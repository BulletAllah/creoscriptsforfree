local Player = game.Players.LocalPlayer
string.len("#########################################")
local Chat = function(USay,Player,PlayerSay)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(USay.."["..Player.."]: "..PlayerSay,"All")
end

local RNDmessages = {":0",":D","Hi","What the","???","#"}
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
Frame4 = Instance.new("Frame")
TextBox5 = Instance.new("TextBox")
Frame6 = Instance.new("Frame")
TextBox7 = Instance.new("TextBox")
TextButton8 = Instance.new("TextButton")
ScreenGui0.Name = "ChatImposter"
ScreenGui0.Parent = mas
ScreenGui0.ResetOnSpawn = false
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Name = "MainFrame"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.245106369, 0, 0.475793004, 0)
Frame1.Size = UDim2.new(0.400000006, 0, 0.300000012, 0)
Frame1.BackgroundColor = BrickColor.new("Institutional white")
Frame1.BackgroundColor3 = Color3.new(1, 1, 1)
Frame1.Style = Enum.FrameStyle.RobloxRound
Frame2.Parent = Frame1
Frame2.Size = UDim2.new(1, 0, 0.25, 0)
Frame2.BackgroundColor = BrickColor.new("Institutional white")
Frame2.BackgroundColor3 = Color3.new(1, 1, 1)
Frame2.Style = Enum.FrameStyle.RobloxRound
TextLabel3.Parent = Frame2
TextLabel3.Size = UDim2.new(1, 0, 1, 0)
TextLabel3.BackgroundColor = BrickColor.new("Institutional white")
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Font = Enum.Font.SourceSans
TextLabel3.FontSize = Enum.FontSize.Size14
TextLabel3.Text = "Chat Imposter"
TextLabel3.TextColor = BrickColor.new("Institutional white")
TextLabel3.TextColor3 = Color3.new(1, 1, 1)
TextLabel3.TextScaled = true
TextLabel3.TextSize = 14
TextLabel3.TextWrap = true
TextLabel3.TextWrapped = true
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel3.TextYAlignment = Enum.TextYAlignment.Bottom
Frame4.Parent = Frame1
Frame4.Position = UDim2.new(0, 0, 0.289999992, 0)
Frame4.Size = UDim2.new(1, 0, 0.200000003, 0)
Frame4.BackgroundColor = BrickColor.new("Institutional white")
Frame4.BackgroundColor3 = Color3.new(1, 1, 1)
Frame4.Style = Enum.FrameStyle.RobloxRound
TextBox5.Name = "Player"
TextBox5.Parent = Frame4
TextBox5.Size = UDim2.new(1, 0, 1, 0)
TextBox5.BackgroundColor = BrickColor.new("Institutional white")
TextBox5.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox5.BackgroundTransparency = 1
TextBox5.Font = Enum.Font.SourceSans
TextBox5.FontSize = Enum.FontSize.Size14
TextBox5.Text = ""
TextBox5.TextColor = BrickColor.new("Institutional white")
TextBox5.TextColor3 = Color3.new(1, 1, 1)
TextBox5.TextScaled = true
TextBox5.TextSize = 14
TextBox5.TextWrap = true
TextBox5.TextWrapped = true
TextBox5.PlaceholderText = "Player Name:"
Frame6.Parent = Frame1
Frame6.Position = UDim2.new(0, 0, 0.5, 0)
Frame6.Size = UDim2.new(1, 0, 0.200000003, 0)
Frame6.BackgroundColor = BrickColor.new("Institutional white")
Frame6.BackgroundColor3 = Color3.new(1, 1, 1)
Frame6.Style = Enum.FrameStyle.RobloxRound
TextBox7.Name = "You Say"
TextBox7.Parent = Frame6
TextBox7.Size = UDim2.new(1, 0, 1, 0)
TextBox7.BackgroundColor = BrickColor.new("Institutional white")
TextBox7.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox7.BackgroundTransparency = 1
TextBox7.Font = Enum.Font.SourceSans
TextBox7.FontSize = Enum.FontSize.Size14
TextBox7.Text = ""
TextBox7.TextColor = BrickColor.new("Institutional white")
TextBox7.TextColor3 = Color3.new(1, 1, 1)
TextBox7.TextScaled = true
TextBox7.TextSize = 14
TextBox7.TextWrap = true
TextBox7.TextWrapped = true
TextBox7.PlaceholderText = "Message:"
TextButton8.Name = "Button"
TextButton8.Parent = Frame1
TextButton8.Position = UDim2.new(0, 0, 0.800000012, 0)
TextButton8.Size = UDim2.new(1, 0, 0.200000003, 0)
TextButton8.BackgroundColor = BrickColor.new("Institutional white")
TextButton8.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton8.Font = Enum.Font.Cartoon
TextButton8.FontSize = Enum.FontSize.Size14
TextButton8.Text = "Say"
TextButton8.TextColor = BrickColor.new("Really black")
TextButton8.TextColor3 = Color3.new(0, 0, 0)
TextButton8.TextSize = 14
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
local AddBars = function(Text)
	for i=0,(40-string.len(Text)) do
		Text = Text.."   "
	end
	return Text
end
TextButton8.MouseButton1Click:Connect(function()
	Chat(AddBars(" "),TextBox5.Text,TextBox7.Text)
end)
