local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Check The Roblox App Icon , See the Notfications",
	Content = "Check !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
wait(0.4)
rconsoleprint("@@RED@@")
rconsoleprint("Please Wait Script is Loading")
wait(3)
rconsoleclear()
rconsoleprint("Thanks For Chosing Lyno , Script Loaded wait 6 sec to load data")
wait(3)
rconsoleclear()
rconsoleprint("Join Lyno Community For Updates")
wait(3)
rconsoleclear()
rconsoleprint("@@GREEN@@")
rconsoleprint("[LOGS]: Loading Script , Script Loaded , Update AD")
rconsoleprint("[LYNO SYSTEM]: Injector Is Loading !")
rconsoleprint("[LYNO SYSTEM]: Checking User")
rconsoleprint("[LYNO SYSTEM]: You are Not Owner User Loaded")
rconsoleprint("[LYNO SYSTEM]: Script Loaded , Not Owner ")
rconsoleprint("[LYNO SYSTEM]: AutoMod Cleaning")
rconsoleclear()
rconsoleprint("[LYNO SYSTEM]: Checking WhiteList")
wait(2)
rconsoleprint("[LYNO SYSTEM]: Script Loaded")
wait(1)
rconsoleclear()
rconsoleprint("[LYNO SYSTEM]: All logs , Loading Assents , Loading ADS, loading KeySystem , Checking User Role , Check WhiteList , Loaded")
rconsoleprint("@@WHITE@@")
rconsoleprint("[PC Helper]: Loading Assents ▒▒▒▒▒▒▒▒▒▒ 1%")
wait(1)
rconsoleclear()
rconsoleprint("[PC Helper]: Loading Hub ██▒▒▒▒▒▒▒▒ 30%") --███████▒▒▒ 70% This is Loading Emoji
wait(1)
rconsoleclear()
rconsoleprint("[PC Helper]: Loading Data ████▒▒▒▒▒▒ 45%")
wait(1)
rconsoleclear()
rconsoleprint("[PC Helper]: Loading Lyno Word ██████▒▒▒▒ 55%")
wait(1)
rconsoleclear()
rconsoleprint("[PC Helper]: Loading Lyno BOT ████████▒▒ 80%")
wait(1)
rconsoleclear()
rconsoleprint("[PC Helper]: Loading Lyno Icons █████████▒ 95%")
wait(1)
rconsoleclear()
rconsoleprint("[PC Helper]: Loading Discord██████████ 100%")
wait(1)
rconsoleclear()
rconsoleprint("[Lyno System]: ██████████ 100% Finish Loading")
wait(5)
rconsoleclear()
OrionLib:MakeNotification({
	Name = "Loaded Data !",
	Content = "Check !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Window = OrionLib:MakeWindow({Name = "AutoSave Hub (Dont need to care)", HidePremium = false, SaveConfig = true, ConfigFolder = "LynoHubConfig"})
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Lyno Hub v.0.3",
	LoadingTitle = "Lyno Hub",
	LoadingSubtitle = "by 7GrandDadLyno",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "LynoWorkspace",
		FileName = "Big Hub"
	},
	KeySystem = true, -- Set this to true to use their key system
	KeySettings = {
		Title = "Lyno Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/Q5TvZna9R3) , Beta Please Report Bugs to Our Server , This Exploit Only For Special Members ! , Will Always Update the Key !",
		SaveKey = true,
		Key = "LynoOnTop"
	}
})

 -- Notfication -- Title, Content, Image

local Tab = Window:CreateTab("Bedwars", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Combat")



local Toggle = Tab:CreateToggle({
	Name = "BetterKillAura",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		local player = game:GetService("Players").LocalPlayer
		local UIS = game:GetService("UserInputService")
		local CoreGui = game:GetService("StarterGui")
		
		--// Keybind Functions \\--
		UIS.InputBegan:connect(function(input)
			if input.KeyCode == rangeSubtractkeybind then
				if PreciseRange == true then
					range = range - 0.01
				else
					range = range - 1
				end
				wait()
				if DoNotDisturb == false then
					game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "the range was set to"..range})
				end
			end
		end)
		
		UIS.InputBegan:connect(function(input)
			if input.KeyCode == rangeAddkeybind then
				if PreciseRange == true then
					range = range + 0.01
				else
					range = range + 1
				end
				wait()
				if DoNotDisturb == false then
					game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "the range was set to"..range})
				end
			end
		end)
		
		UIS.InputBegan:connect(function(input)
			if input.KeyCode == TogglePreciseRange then
				if PreciseRange == false then
					PreciseRange = true
					if DoNotDisturb == false then
						game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "the Precise range was set to true"})
					end
				else
					PreciseRange = false
					if DoNotDisturb == false then
						game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "the Precise range was set to false"})
					end
				end
				
			end
		end)
		
		--// Script \\--
		game:GetService("RunService").RenderStepped:Connect(function()
			local p = game.Players:GetPlayers()
			for i = 2, #p do local v = p[i].Character
				if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(v.HumanoidRootPart.Position) <= range then
					local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
					if tool and tool:FindFirstChild("Handle") then
						tool:Activate()
						for i,v in next, v:GetChildren() do
							if v:IsA("BasePart") then
								firetouchinterest(tool.Handle,v,0)
								firetouchinterest(tool.Handle,v,1)
							end
						end
					end
				end
			end
		end)
		
		if DoNotDisturb == false then
			game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Script Load", Text = "the script loaded successfully!"})
		end
		-- The function that takes place when the toggle is pressed
    		-- The variable (Value) is a boolean on whether the toggle is true or false
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "BetterReach",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)

	end,
})

local Button = Tab:CreateButton({
	Name = "Lyno Private",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadLyno/ModDevOwnerOnly/main/MainScript.lua",true))
	end,
})
local Button = Tab:CreateButton({
	Name = "AutoReport (New)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/Auto-Report/main/main.lua"))()
	end,
})
local Button = Tab:CreateButton({
	Name = "Lyno Today :D",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
	end,
})
local Keybind = Tab:CreateKeybind({
	Name = "Speed - 23",
	CurrentKeybind = "R",
	HoldToInteract = false,
	Flag = "Keybind1", 
	Callback = function(Keybind)

	end,
})



