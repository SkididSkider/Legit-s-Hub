local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Legit's Script Dump",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "OrionTest"
})

OrionLib:MakeNotification({
    Name = "Welcome",
    Content = "Made By Unknown_1q",
    Image = "rbxassetid://4483345998",
    Time = 10
})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddLabel("Hitbox Expander")

local Xcolor = Color3.fromRGB(255, 0, 0) -- Default color for the color picker

Tab:AddColorpicker({
    Name = "Colorpicker",
    Default = Xcolor,
    Callback = function(color)
        Xcolor = color
    end	  
})

Tab:AddButton({
    Name = "Expand",
    Callback = function()
        local Players = game:GetService("Players")
        local Lp = Players.LocalPlayer

        local function arePlayersOnSameTeam(player1, player2)
            return player1.Team == player2.Team
        end

        if not _G.Size or type(_G.Size) ~= "number" then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Error",
                Text = "Please enter a valid number",
                Icon = "rbxassetid://17682701167"
            })
            return
        end

        while wait(0.1) do
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= Lp and player.Character then
                    local ht = player.Character:FindFirstChild("HumanoidRootPart")
                    if ht then
                        if _G.Toggle2 and arePlayersOnSameTeam(Lp, player) then
                            break
                        end
                        ht.Size = Vector3.new(_G.Size, _G.Size, _G.Size)
                        ht.Transparency = 0.4
                        ht.CanCollide = _G.Toggle
                        ht.Material = Enum.Material.Neon
                        ht.Color = Xcolor
                    end
                end
            end
        end
    end
})

Tab:AddSlider({
    Name = "Slider",
    Min = 0,
    Max = 35,
    Default = 5,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Size",
    Callback = function(Value)
        _G.Size = Value
    end
})

Tab:AddToggle({
	Name = "TeamCheck",
	Default = false,
	Callback = function(Value)
		if _G.Toggle2 == false then
            _G.Toggle2 = true
            Teamcheck.TextColor3 = Color3.fromRGB(77, 255, 0)
            Teamcheck.Text = "TeamCheck: ON"
        else
            _G.Toggle2 = false
            Teamcheck.TextColor3 = Color3.fromRGB(255, 0, 0)
            Teamcheck.Text = "TeamCheck: OFF"
        end
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddLabel("Utility")

Tab:AddToggle({
    Name = "Anti Kill Brick",
    Default = false,
    Callback = function(state)
        local Players = game:GetService("Players")
        local Lp = Players.LocalPlayer
        local RunService = game:GetService("RunService")
        local isAntiEnabled = state
        if isAntiEnabled then
            local connection
            connection = RunService.Stepped:Connect(function()
                local parts = workspace:GetPartBoundsInRadius(Lp.Character:WaitForChild("HumanoidRootPart").Position, 10)
                for _, part in ipairs(parts) do
                    part.CanTouch = false
                end
                if not isAntiEnabled then
                    connection:Disconnect()
                end
            end)
        end
    end
})



local TrollTab = Window:MakeTab({
    Name = "Troll",
    Icon = "rbxassetid://95737107",
    PremiumOnly = false
})

TrollTab:AddButton({
	Name = "Attach To Building",
	Callback = function()
        -- use noclip with it
-- made by joshclark756#7155
-- Variables
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

-- Connect
mouse.Button1Down:Connect(function()
   -- Check for Target & Left Shift
   if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
local npc = mouse.target
local npcparts = mouse.target.Parent
local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
local PlayerRootPart = PlayerCharacter.HumanoidRootPart
local A0 = Instance.new("Attachment")
local AP = Instance.new("AlignPosition")
local AO = Instance.new("AlignOrientation")
local A1 = Instance.new("Attachment")
for _, v in pairs(npcparts:GetDescendants()) do
if v:IsA("BasePart") or v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
do
v.CanCollide = false

end
end
end
-- Variables
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

-- Connect
mouse.Button1Down:Connect(function()
   if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
local npc = mouse.target
local npcparts = mouse.target.Parent
local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
local PlayerRootPart = PlayerCharacter.HumanoidRootPart
local A0 = Instance.new("Attachment")
local AP = Instance.new("AlignPosition")
local AO = Instance.new("AlignOrientation")
local A1 = Instance.new("Attachment")
for _, v in pairs(npcparts:GetDescendants()) do
if v:IsA("BasePart") or v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
do
v.CanCollide = false

wait(0)
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "e" -- has to be lowercase
mouse.KeyDown:connect(function(key)
if key == bind then do
v.CanCollide = true
end
end
end)
end
end
end
for _, v in pairs(PlayerCharacter:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then

end
end
end
PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(0, 0, 0)
PlayerCharacter.Head.Anchored = false
PlayerCharacter.Torso.Anchored = false
A0.Parent = npc
AP.Parent = npc
AO.Parent = npc
AP.Responsiveness = 200
AP.MaxForce = math.huge
AO.MaxTorque = math.huge
AO.Responsiveness = 200
AP.Attachment0 = A0
AP.Attachment1 = A1
AO.Attachment1 = A1
AO.Attachment0 = A0
A1.Parent = PlayerRootPart
end
end)
for _, v in pairs(PlayerCharacter:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then

end
end
end
PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(0, 0, 0)
PlayerCharacter.Head.Anchored = false
PlayerCharacter.Torso.Anchored = false
A0.Parent = npc
AP.Parent = npc
AO.Parent = npc
AP.Responsiveness = 200
AP.MaxForce = math.huge
AO.MaxTorque = math.huge
AO.Responsiveness = 200
AP.Attachment0 = A0
AP.Attachment1 = A1
AO.Attachment1 = A1
AO.Attachment0 = A0
A1.Parent = PlayerRootPart
end
end)
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

TrollTab:AddButton({
	Name = "NPC Controller",
	Callback = function()
      		-- Variables
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

-- Connect
mouse.Button1Down:Connect(function()
   -- Check for Target & Left Shift
   if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
local npc = mouse.target.Parent
local npcRootPart = npc.HumanoidRootPart
local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
local PlayerRootPart = PlayerCharacter.HumanoidRootPart
local A0 = Instance.new("Attachment")
local AP = Instance.new("AlignPosition")
local AO = Instance.new("AlignOrientation")
local A1 = Instance.new("Attachment")
for _, v in pairs(npc:GetDescendants()) do
if v:IsA("BasePart") then
game:GetService("RunService").Stepped:Connect(function()
v.CanCollide = false
end)
end
end
PlayerRootPart:BreakJoints()
for _, v in pairs(PlayerCharacter:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then
else
v:Destroy()
end
end
end
PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(5, 0, 0)
PlayerCharacter.Head.Anchored = true
PlayerCharacter.UpperTorso.Anchored = true
A0.Parent = npcRootPart
AP.Parent = npcRootPart
AO.Parent = npcRootPart
AP.Responsiveness = 200
AP.MaxForce = math.huge
AO.MaxTorque = math.huge
AO.Responsiveness = 200
AP.Attachment0 = A0
AP.Attachment1 = A1
AO.Attachment1 = A1
AO.Attachment0 = A0
A1.Parent = PlayerRootPart
end
end)
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
