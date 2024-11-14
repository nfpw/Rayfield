getgenv().__UIScale = 1
local T = game.ReplicatedStorage:WaitForChild("RayField"):WaitForChild("RayField")
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/nfpw/Rayfield/refs/heads/main/Executor%20/Rayfield-ModuleScript.lua"))()

local Window = Rayfield:CreateWindow({
	Name = "test",
	LoadingTitle = "Welcome "..game.Players.LocalPlayer.DisplayName,
	LoadingSubtitle = "by nfpw",
	KeySystem = false,
	Theme = 'Default',
})

Rayfield:Notify({
	Title = "Rayfield Interface",
	Content = "Enjoying this UI library? Find it at sirius.menu/discord",
	Duration = 7,
	Image = 4483362458,
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
local Tab2 = Window:CreateTab("Tab Example 2", 4483362458) -- Title, Image

local Section = Tab2:CreateSection("Section")

local ColorPicker = Tab2:CreateColorPicker({
	Name = "Color Picker",
	Color = Color3.fromRGB(255,255,255),
	Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place every time the color picker is moved/changed
		-- The variable (Value) is a Color3fromRGB value based on which color is selected
	end
})

local Slider = Tab2:CreateSlider({
	Name = "Slider Example",
	Range = {0, 100},
	Increment = 10,
	Suffix = "Bananas",
	CurrentValue = 40,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place when the slider changes
		-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})

local Input = Tab2:CreateInput({
	Name = "Input Example",
	PlaceholderText = "Input Placeholder",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- The function that takes place when the input is changed
		-- The variable (Text) is a string for the value in the text box
	end,
})



Rayfield:Notify({Title = "Rayfield Interface", Content = "Welcome to Rayfield. These - are the brand new notification design for Rayfield, with custom sizing and Rayfield calculated wait times.", Image = 4483362458})

local Section = Tab:CreateSection("Section Example")

local Button = Tab:CreateButton({
	Name = "Change Theme",
	Callback = function()
		-- The function that takes place when the button is pressed
		Window.ModifyTheme('Bloom')
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Toggle Example",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place when the toggle is pressed
		-- The variable (Value) is a boolean on whether the toggle is true or false
	end,
})

local ColorPicker = Tab:CreateColorPicker({
	Name = "Color Picker",
	Color = Color3.fromRGB(255,255,255),
	Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place every time the color picker is moved/changed
		-- The variable (Value) is a Color3fromRGB value based on which color is selected
	end
})

local Slider = Tab:CreateSlider({
	Name = "Slider Example",
	Range = {0, 100},
	Increment = 10,
	Suffix = "Bananas",
	CurrentValue = 40,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place when the slider changes
		-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})

local Input = Tab:CreateInput({
	Name = "Input Example",
	CurrentValue = "",
	PlaceholderText = "Adaptive Input",
	RemoveTextAfterFocusLost = false,
	Flag = 'InputExample',
	Callback = function(Text)
		-- The function that takes place when the input is changed
		-- The variable (Text) is a string for the value in the text box
	end,
})

local thoptions = {}
for themename, theme in pairs(Rayfield.Theme) do
	table.insert(thoptions, themename)
end

local Dropdown = Tab:CreateDropdown({
	Name = "Theme",
	Options = thoptions,
	CurrentOption = {"Default"},
	MultipleOptions = false,
	Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Options)
		Window.ModifyTheme(Options[1])
		-- The function that takes place when the selected option is changed
		-- The variable (Options) is a table of strings for the current selected options
	end,
})

local Keybind = Tab:CreateKeybind({
	Name = "Keybind Example",
	CurrentKeybind = "Q",
	HoldToInteract = false,
	Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Keybind)
		-- The function that takes place when the keybind is pressed
		-- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
	end,
})

local Label = Tab:CreateLabel("Label Example")

local Paragraph = Tab:CreateParagraph({Title = "Paragraph Example", Content = "Paragraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph ExampleParagraph Example"})
T.UIScale.Scale = getgenv().__UIScale
