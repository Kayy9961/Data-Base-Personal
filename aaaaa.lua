local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")
local endpointCF = nil
local flying = false

-- Crear ScreenGui
local screenGui = Instance.new("ScreenGui", gui)
screenGui.Name = "FlyNoclipGUI"

local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0,200,0,150)
frame.Position = UDim2.new(0,50,0,50)
frame.BackgroundColor3 = Color3.new(.1,.1,.1)
Instance.new("UICorner", frame)

local layout = Instance.new("UIListLayout", frame)
layout.Padding = UDim.new(0,5)
layout.FillDirection = Enum.FillDirection.Vertical

local status = Instance.new("TextLabel", frame)
status.Size = UDim2.new(1,0,0,24)
status.BackgroundTransparency = 1
status.TextColor3 = Color3.new(1,1,1)
status.Text = "Estado: listo"

-- Botón endpoint
local btnEP = Instance.new("TextButton", frame)
btnEP.Size = UDim2.new(1,0,0,30)
btnEP.Text = "Marcar Punto"
btnEP.BackgroundColor3 = Color3.new(0.2,0.5,0.8)

-- Botón teleport
local btnTP = Instance.new("TextButton", frame)
btnTP.Size = UDim2.new(1,0,0,30)
btnTP.Text = "Teletransportar"
btnTP.BackgroundColor3 = Color3.new(0.2,0.8,0.2)

-- Botón volar/noclip
local btnFly = Instance.new("TextButton", frame)
btnFly.Size = UDim2.new(1,0,0,30)
btnFly.Text = "Toggle Fly"
btnFly.BackgroundColor3 = Color3.new(0.8,0.8,0.2)

local function getHRP()
    local char = player.Character or player.CharacterAdded:Wait()
    return char:FindFirstChild("HumanoidRootPart")
end

btnEP.MouseButton1Click:Connect(function()
    local hrp = getHRP()
    endpointCF = hrp.CFrame
    status.Text = "Punto guardado"
end)

btnTP.MouseButton1Click:Connect(function()
    local hrp = getHRP()
    if not endpointCF then
        status.Text = "Marca primero el punto"
        return
    end
    -- Teletransportar
    hrp.CFrame = endpointCF
    status.Text = "Teletransportado"
end)

btnFly.MouseButton1Click:Connect(function()
    local hrp = getHRP()
    flying = not flying
    if flying then
        status.Text = "Modo vuelo ON"
        -- Crea BodyVelocity y BodyGyro
        local bg = Instance.new("BodyGyro", hrp)
        bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
        bg.P = 9e4
        bg.CFrame = hrp.CFrame
        local bv = Instance.new("BodyVelocity", hrp)
        bv.MaxForce = Vector3.new(9e9,9e9,9e9)
        bv.Velocity = Vector3.new(0,0,0)
        hrp.Parent.Humanoid.PlatformStand = true

        -- Noclip (atravesar paredes)
        for _, part in pairs(hrp.Parent:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end

        -- Control de vuelo
        local uis = game:GetService("UserInputService")
        local cam = workspace.CurrentCamera
        local speed = 50

        local conn = game:GetService("RunService").RenderStepped:Connect(function()
            if not flying then conn:Disconnect() return end
            bv.Velocity = (uis:IsKeyDown(Enum.KeyCode.W) and cam.CFrame.LookVector or Vector3.new())
                          + (uis:IsKeyDown(Enum.KeyCode.S) and -cam.CFrame.LookVector or Vector3.new())
                          + (uis:IsKeyDown(Enum.KeyCode.A) and -cam.CFrame.RightVector or Vector3.new())
                          + (uis:IsKeyDown(Enum.KeyCode.D) and cam.CFrame.RightVector or Vector3.new())
            bv.Velocity = bv.Velocity.Unit * speed
            bg.CFrame = cam.CFrame
        end)
    else
        status.Text = "Modo vuelo OFF"
        -- Cleanup
        for _, v in ipairs(hrp:GetChildren()) do
            if v:IsA("BodyVelocity") or v:IsA("BodyGyro") then v:Destroy() end
        end
        hrp.Parent.Humanoid.PlatformStand = false
        -- Reset colisiones
        for _, part in pairs(hrp.Parent:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end)
