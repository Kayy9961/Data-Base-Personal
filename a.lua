-- Ambil Player dan PlayerGui
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Variabel
local basePosition = CFrame.new(100, 10, -50) -- 📍 Ajusta aquí a la posición de tu base

-- ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PadatGUI"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

-- Frame utama
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 160, 0, 130)
mainFrame.Position = UDim2.new(0, 50, 0, 50)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 8)
local stroke = Instance.new("UIStroke", mainFrame)
stroke.Thickness = 1; stroke.Color = Color3.fromRGB(255,255,255); stroke.Transparency = 0.2

local layout = Instance.new("UIListLayout", mainFrame)
layout.Padding = UDim.new(0, 5)
layout.FillDirection = Enum.FillDirection.Vertical
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,18)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 14
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Text = "PadatGUI"
title.TextXAlignment = Enum.TextXAlignment.Center
title.Parent = mainFrame

-- Spacer
local spacer = Instance.new("Frame", mainFrame)
spacer.Size = UDim2.new(1,0,0,4)
spacer.BackgroundTransparency = 1

-- Botón Teleport
local tpButton = Instance.new("TextButton")
tpButton.Size = UDim2.new(1,0,0,28)
tpButton.BackgroundColor3 = Color3.fromRGB(17,144,210)
tpButton.Font = Enum.Font.GothamBold
tpButton.TextSize = 14
tpButton.TextColor3 = Color3.new(1,1,1)
tpButton.Text = "Teleport To Base"
tpButton.Parent = mainFrame
Instance.new("UICorner", tpButton).CornerRadius = UDim.new(0,6)

-- Status
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, 0, 0, 18)
statusLabel.BackgroundTransparency = 1
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextSize = 12
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.Text = "Ready"
statusLabel.TextXAlignment = Enum.TextXAlignment.Center
statusLabel.Parent = mainFrame

local isTeleporting = false

tpButton.MouseButton1Click:Connect(function()
    if isTeleporting then return end
    isTeleporting = true
    statusLabel.Text = "Teleporting..."
    tpButton.AutoButtonColor = false
    tpButton.BackgroundTransparency = 0.5

    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart", 5)
    if hrp then
        hrp.CFrame = basePosition
        statusLabel.Text = "At Base!"
    else
        statusLabel.Text = "Error: no HRP"
    end

    wait(0.3)
    isTeleporting = false
    tpButton.AutoButtonColor = true
    tpButton.BackgroundTransparency = 0
    tpButton.Text = "Teleport To Base"
end)
