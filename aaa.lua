-- Roblox LocalScript: Teleport to Saved Position GUI

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local isRunning = false
local cancelFlag = false
local savedCFrame = nil

-- GUI Setup
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TeleportGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 180, 0, 140)
mainFrame.Position = UDim2.new(0, 50, 0, 50)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 8)
local stroke = Instance.new("UIStroke", mainFrame)
stroke.Thickness = 1
stroke.Color = Color3.fromRGB(255, 255, 255)
stroke.Transparency = 0.2

local padding = Instance.new("UIPadding", mainFrame)
padding.PaddingTop = UDim.new(0, 6)
padding.PaddingLeft = UDim.new(0, 6)
padding.PaddingRight = UDim.new(0, 6)

local layout = Instance.new("UIListLayout", mainFrame)
layout.Padding = UDim.new(0, 5)
layout.FillDirection = Enum.FillDirection.Vertical
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- Status Label
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, 0, 0, 18)
statusLabel.BackgroundTransparency = 1
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextSize = 12
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.Text = "Ready"
statusLabel.TextXAlignment = Enum.TextXAlignment.Center
statusLabel.Parent = mainFrame

-- Set Endpoint Button
local endpointBtn = Instance.new("TextButton")
endpointBtn.Size = UDim2.new(1, 0, 0, 26)
endpointBtn.BackgroundColor3 = Color3.fromRGB(55, 170, 90)
endpointBtn.Font = Enum.Font.GothamBold
endpointBtn.TextSize = 12
endpointBtn.TextColor3 = Color3.new(1, 1, 1)
endpointBtn.Text = "Set Endpoint"
endpointBtn.Parent = mainFrame
Instance.new("UICorner", endpointBtn).CornerRadius = UDim.new(0, 6)

-- Teleport Button
local teleportBtn = Instance.new("TextButton")
teleportBtn.Size = UDim2.new(1, 0, 0, 26)
teleportBtn.BackgroundColor3 = Color3.fromRGB(17, 144, 210)
teleportBtn.Font = Enum.Font.GothamBold
teleportBtn.TextSize = 12
teleportBtn.TextColor3 = Color3.new(1, 1, 1)
teleportBtn.Text = "Teleport"
teleportBtn.Parent = mainFrame
Instance.new("UICorner", teleportBtn).CornerRadius = UDim.new(0, 6)

-- Refresh/Cancel Button
local resetButton = Instance.new("TextButton")
resetButton.Size = UDim2.new(1, 0, 0, 22)
resetButton.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
resetButton.Font = Enum.Font.GothamBold
resetButton.TextSize = 12
resetButton.TextColor3 = Color3.new(1, 1, 1)
resetButton.Text = "Refresh"
resetButton.Parent = mainFrame
Instance.new("UICorner", resetButton).CornerRadius = UDim.new(0, 6)

-- Button Functions
endpointBtn.MouseButton1Click:Connect(function()
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if hrp then
        savedCFrame = hrp.CFrame
        statusLabel.Text = "Endpoint set!"
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
        -- Teleport in loop to try avoid server correction (may not work on all games!)
        for i = 1, 25 do
            hrp.CFrame = savedCFrame
            task.wait(0.03)
        end
        statusLabel.Text = "Teleported (try)!"
    else
        statusLabel.Text = "No HRP!"
    end
end)

resetButton.MouseButton1Click:Connect(function()
    savedCFrame = nil
    statusLabel.Text = "Cleared endpoint!"
end)
