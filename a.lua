-- Ambil Player dan PlayerGui
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local savedCFrame = nil

-- GUI Setup
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PadatGUI"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 160, 0, 150)
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

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,18)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 14
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Text = "PadatGUI"
title.TextXAlignment = Enum.TextXAlignment.Center
title.Parent = mainFrame

-- Botón guardar endpoint
local setEndpointBtn = Instance.new("TextButton")
setEndpointBtn.Size = UDim2.new(1,0,0,28)
setEndpointBtn.BackgroundColor3 = Color3.fromRGB(100,180,100)
setEndpointBtn.Font = Enum.Font.GothamBold
setEndpointBtn.TextSize = 14
setEndpointBtn.TextColor3 = Color3.new(1,1,1)
setEndpointBtn.Text = "Set Endpoint"
setEndpointBtn.Parent = mainFrame
Instance.new("UICorner", setEndpointBtn).CornerRadius = UDim.new(0,6)

-- Botón teletransportarse
local teleportBtn = Instance.new("TextButton")
teleportBtn.Size = UDim2.new(1,0,0,28)
teleportBtn.BackgroundColor3 = Color3.fromRGB(17,144,210)
teleportBtn.Font = Enum.Font.GothamBold
teleportBtn.TextSize = 14
teleportBtn.TextColor3 = Color3.new(1,1,1)
teleportBtn.Text = "Teleport"
teleportBtn.Parent = mainFrame
Instance.new("UICorner", teleportBtn).CornerRadius = UDim.new(0,6)

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

-- Funciones de los botones
setEndpointBtn.MouseButton1Click:Connect(function()
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if hrp then
        savedCFrame = hrp.CFrame
        statusLabel.Text = "Endpoint saved!"
    else
        statusLabel.Text = "No HRP!"
    end
end)

teleportBtn.MouseButton1Click:Connect(function()
    if not savedCFrame then
        statusLabel.Text = "Set endpoint first!"
        return
    end
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if hrp then
        hrp.CFrame = savedCFrame
        statusLabel.Text = "Teleported!"
    else
        statusLabel.Text = "No HRP!"
    end
end)
