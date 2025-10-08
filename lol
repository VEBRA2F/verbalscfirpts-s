local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/VEBRA2F/verbalscfirpts-s/refs/heads/main/tesrt"))()
local Window = OrionLib:MakeWindow({
	Name = "window test verbal hub",
	SubName = "MADE BY JOSE",
	icon = true,
	iconid = "rbxassetid://9525535512",
	HidePremium = false,
	SaveConfig = true,
	IntroEnabled = true,
	IntroText = "Welcome To Verbal Hub new window",
	IntroIcon = "rbxassetid://112374567322808",
	ConfigFolder = "Verbal Config 325",
	KeyToOpenWindow = "RightControl",
	Size = UDim2.new(0, 650, 0, 400),
    playid = "rbxassetid://133939848966356",
    Vibrate = {Enabled = true, Duration = 5}, -- 1 second
    Autofit = true,
	SearchBar = {
		Enabled = true,
		Default = "Search for elements...",
		ClearTextOnFocus = true,
		UnlockMouse = true,
		Shiny = true,
		filter = true
	}
})
	Window:MakeTab({
		Name = "Home",
		Icon = "rbxassetid://93522081013627",
		FeedbackWebhook = "https://discord.com/api/webhooks/1419941914014126172/33wYuZ69IVBcrrneJJjzh8n8rDuiifRTG3CADuTgX9vEE5QZtWksO7afgIkY8NP20rk9" -- (Optional) Replace with your webhook to enable feedback
	})
    
local MainTabs = Window:newmaketabtop({
    Name = "Main",
    MultiTab = true
})

local ControlsTab = Window:MakeTab({
    Name = "Controls",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

ControlsTab:AddLabel("Standard Elements")

ControlsTab:AddButton({
    Name = "Click Me!",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Button",
            Content = "You clicked the button!",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
    end
})

local MyToggle = ControlsTab:AddToggle({
    Name = "Example Toggle",
    Default = false, 
    Callback = function(Value)
        print("Toggle is now:", Value)
    end     
})

ControlsTab:AddButton({
    Name = "Set Toggle to True",
    Callback = function()
        MyToggle:Set(true)
    end
})

ControlsTab:AddSlider({
    Name = "Speed Slider",
    Min = 16,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(170, 122, 255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        print("Slider value:", Value)
    end
})

local AdvancedTabs = Window:newmaketabtop({
    Name = "Advanced",
    MultiTab = true
})

local ElementsTab = Window:MakeTab({
    Name = "Elements",
    Icon = "rbxassetid://3926307971"
})

ElementsTab:AddLabel("More Elements")

ElementsTab:AddDropdown({
    Name = "Choose an Option",
    Options = {"Option 1", "Option 2", "Another Choice", "Last One"},
    Default = "Option 1",
    MultiSelect = true,
    Callback = function(Value)
        if type(Value) == "table" then
            print("Dropdown selected:", table.concat(Value, ", "))
        else
            print("Dropdown selected:", Value)
        end
    end
})

ElementsTab:AddBind({
    Name = "Keybind",
    Default = Enum.KeyCode.F,
    Callback = function()
        OrionLib:MakeNotification({Name = "Keybind", Content = "You pressed the keybind!"})
    end
})

ElementsTab:AddTextbox({
    Name = "Input Box",
    Default = "Some text",
    Callback = function(Value)
        print("Textbox content:", Value)
    end
})
ElementsTab:AddTextbox({
    Name = "Input Box",
    Default = "Some text",
    Callback = function(Value)
        print("Textbox content:", Value)
    end
})

ElementsTab:AddColorpicker({
    Name = "UI Color",
    Default = Color3.fromRGB(255, 0, 106),
    Callback = function(Value)
        print("Color changed to:", Value)
    end
})

local ShowcaseTabs = Window:newmaketabtop({
    Name = "Showcase",
    MultiTab = true
})

local FeatureTab = Window:MakeTab({
    Name = "Feature Examples",
    Icon = "rbxassetid://4483345998"
})

FeatureTab:AddSection({Name = "Element Locking"})

FeatureTab:AddParagraph(
    "Lock/Unlock Elements",
    "You can dynamically lock and unlock elements to prevent interaction. Use the buttons below to test this feature on the slider."
)

local lockedSlider = FeatureTab:AddSlider({
    Name = "Target Slider",
    Min = 0, Max = 50, Default = 25
})

FeatureTab:AddToggle({
    Name = "This toggle is locked",
    Default = true,
    Locked = true
})

local lockBtn = FeatureTab:AddButton({
    Name = "Lock Slider",
    Callback = function()
        lockedSlider:Lock()
        OrionLib:MakeNotification({Name = "Locked", Content = "The slider is now locked."})
    end
})

local unlockBtn = FeatureTab:AddButton({
    Name = "Unlock Slider",
    Callback = function()
        lockedSlider:Unlock()
        OrionLib:MakeNotification({Name = "Unlocked", Content = "The slider is now unlocked."})
    end
})

FeatureTab:AddSection({Name = "Advanced Dropdown"})

FeatureTab:AddDropdown({
    Name = "Searchable Dropdown",
    Options = {
        "Apple", "Apricot", "Avocado", "Banana", "Blackberry", "Blueberry", 
        "Cherry", "Coconut", "Cranberry", "Date", "Dragonfruit", "Durian", 
        "Elderberry", "Fig", "Grape", "Grapefruit", "Guava", "Honeydew",
        "Jackfruit", "Kiwi", "Lemon", "Lime", "Lychee", "Mango", "Melon",
        "Nectarine", "Orange", "Papaya", "Passionfruit", "Peach", "Pear", 
        "Pineapple", "Plum", "Pomegranate", "Raspberry", "Strawberry", "Watermelon"
    },
    Default = "Apple",
    Search = true,
    MultiSelect = true,
    Callback = function(Value)
        if type(Value) == "table" then
            print("Fruits selected:", table.concat(Value, ", "))
        else
            print("Fruit selected:", Value)
        end
    end
})


FeatureTab:AddSection({Name = "More Element Variations"})

FeatureTab:AddSlider({
    Name = "Slider With Input",
    Min = 0,
    Max = 1000,
    Default = 500,
    Increment = 10,
    ValueName = "$",
    input = true
})

FeatureTab:AddButton({
    Name = "Button With Image",
    Image = "rbxassetid://6031143431"
})

local ExecuterTab = Window:MakeTab({
    Name = "Executer",
    Icon = "rbxassetid://6023426922"
})

ExecuterTab:AddLabel("Script Executer")

ExecuterTab:executerthing({
    Name = "Lua Executer",
    Default = "print('Hello from the executer!')",
    Callback = function(script)
        local f, err = loadstring(script)
        if f then
            f()
        else
            warn("Execution Error:", err)
        end
    end
})

Window:AddScriptHub({
    Name = "ScriptBlox",
    scripts = true
})

local MediaTabs = Window:newmaketabtop({
    Name = "Media",
    MultiTab = true
})

local PlayerTab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://2813227643"
})

PlayerTab:AddLabel("Media Player")

PlayerTab:AddMediaPlayer({
    Name = "Web Media Player",
    Default = "",
    Callback = function(Success, MediaType)
        if Success then
            print("Successfully started playing:", MediaType)
        else
            print("Failed to play media.")
        end
    end
})

local MoreFeatTabs = Window:newmaketabtop({
    Name = "More Features",
    MultiTab = true
})

local AdvElementsTab = Window:MakeTab({
    Name = "Adv. Elements",
    Icon = "rbxassetid://10489703350"
})

AdvElementsTab:AddSection({Name = "Code Block"})

AdvElementsTab:AddParagraph("Code Blocks", "Display formatted and syntax-highlighted code. It includes a copy button and can be minimized.")

local codeBlock = AdvElementsTab:AddCode({
    Name = "Example: Client-Side WalkSpeed",
    Content = [[
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = 50
    print("WalkSpeed set to 50 for " .. player.Name)
end

if player.Character then
    onCharacterAdded(player.Character)
end

player.CharacterAdded:Connect(onCharacterAdded)
    ]]
})

AdvElementsTab:AddButton({
    Name = "Change Code Block Content",
    Callback = function()
        codeBlock:SetCode([[
print("The code has been changed dynamically!")
local part = Instance.new("Part", workspace)
part.Anchored = true
part.Size = Vector3.new(5, 5, 5)
        ]])
        OrionLib:MakeNotification({Name="Code Block", Content="The code has been updated."})
    end
})

AdvElementsTab:AddSection({Name = "Advanced Paragraphs"})
AdvElementsTab:AddParagraph({
    Title = "Thumbnail Paragraph",
    Content = "You can add a large thumbnail image above the content. This is great for showcasing game passes, items, or locations.",
    Thumbnail = "rbxassetid://120651148831946"
})

AdvElementsTab:AddParagraph({
    Title = "Colored Bar Paragraph",
    Content = "Add a colored bar to the left for categorization or to draw attention. The color can be a string name or a Color3 value.",
    Color = "Green"
})


AdvElementsTab:AddSection({Name = "Advanced Dropdowns"})

AdvElementsTab:AddDropdown({
    Name = "Styled Dropdown (Fill)",
    Options = {"Red Apple", "Green Grapes", "Blue Blueberry"},
    Fill = true,
    FillColor = "Purple",
    FillTransparency = 0.6,
    MultiSelect = true,
    Callback = function(Value)
        if type(Value) == "table" then
            print("Styled dropdown (Fill) selected:", table.concat(Value, ", "))
        else
            print("Styled dropdown (Fill) selected:", Value)
        end
    end
})

AdvElementsTab:AddDropdown({
    Name = "Styled Dropdown (Outline)",
    Options = {"Option A", "Option B", "Option C"},
    Outline = true,
    OutlineColor = "Green",
    MultiSelect = true,
    Callback = function(Value)
        if type(Value) == "table" then
            print("Styled dropdown (Outline) selected:", table.concat(Value, ", "))
        else
            print("Styled dropdown (Outline) selected:", Value)
        end
    end
})

AdvElementsTab:AddDropdown({
    Name = "Dropdown With Images",
    Options = {
        {Name = "Sword", Image = "rbxassetid://6031143431"},
        {Name = "Script", Image = "rbxassetid://6023426922"},
        {Name = "Player", Image = "rbxassetid://2813227643"}
    },
    MultiSelect = true,
    Callback = function(Value)
        if type(Value) == "table" then
            print("Dropdown with images selected:", table.concat(Value, ", "))
        else
            print("Dropdown with images selected:", Value)
        end
    end
})

local EffectsTab = Window:MakeTab({
    Name = "Tab Effects",
    Icon = "rbxassetid://5946093983",
    Effects = true,
    flames = true,
    flamescover = true,
    Discord = true,
    DiscordLink = "https://discord.gg/your-invite",
    messages = {"This is a custom message!", "OrionLib is cool!", "Wow, such effects!"}
})

local AboutTab = Window:newmaketabtop({
    Name = "About",
    MultiTab = false
})

local Tab = AboutTab

Tab:AddParagraph({
    Title = "realsticsoccerowner",
    Content = "Creator and lead developer of this admin panel",
    image = true,
    UserProfile = "7693276571",
    ImageSize = 60,
    custom = true,
    texticon = true,
    name = {"[OWNER]", "👑"},
    color = "Purple"
})

Tab:AddParagraph({
    Title = "Bliz_T",
    Content = "UI design and feature implementation",
    image = true,
    UserProfile = "982324314",
    ImageSize = 60,
    custom = true,
    texticon = true,
    name = {"[ADMIN]", "👑"},
    color = "Red"
})

Tab:AddParagraph({
    Title = "Normal User",
    Content = "Regular paragraph without custom effects",
    image = true,
    UserProfile = "1",
    ImageSize = 36,
    custom = false,
    Color = "Blue"
})

Tab:AddToggle({
    Name = "This is a checkbox with image!",
    Default = false,
    Checkbox = true,
    ImageIcon = true,
    ImageId = "rbxassetid://3944680095",
    Callback = function(Value)
        print(Value)
    end     
})
Tab:AddToggle({
    Name = "This is a toggle with image!",
    Default = false,
    Checkbox = false,
    ImageIcon = true,
    ImageId = "rbxassetid://3944680095",
    Callback = function(Value)
        print(Value)
    end     
})
Tab:AddToggle({
    Name = "Regular checkbox",
    Default = false,
    Checkbox = true,
    Callback = function(Value)
        print(Value)
    end     
})

AboutTab:AddParagraph("About This UI", "This is an example script demonstrating the features of OrionLib, including the tab system, various UI elements, the ScriptBlox hub, and the media player.")
AboutTab:AddParagraph("Credits", "UI Library: OrionLib by shlexware")

