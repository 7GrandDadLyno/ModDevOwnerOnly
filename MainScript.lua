local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Mod , Dev , Owner Only",
	LoadingTitle = "Rayfield Interface Suite",
	LoadingSubtitle = "Loading",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "loading",
		FileName = "Big Hub"
	},
	KeySystem = true, -- Set this to true to use their key system
	KeySettings = {
		Title = "Developer , Moderator Only !",
		Subtitle = "Key System",
		Note = "Enter Mod , Dev , Owner Key",
		SaveKey = true,
		Key = "NoNeedKey"
	}
})

Rayfield:Notify("Alr", "Loading", 4483362458) -- Notfication -- Title, Content, Image

local Tab = Window:CreateTab("Excute On Down", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Lyno Private")

local Button = Tab:CreateButton({
	Name = "Click Me",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
		Rayfield:Notify("Excuted", "Thanks :D", 4483362458) -- Notfication -- Title, Content, Image
		-- The function that takes place when the button is pressed
	end,
})

