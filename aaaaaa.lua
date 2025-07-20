local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")
local flying = false
local speed = 250 -- ¡Puedes subir esto más aún!
local uis = game:GetService("UserInputService")

-- Interfaz simple
local screenGui = Instance.new("ScreenGui", gui)
screenGui.Name = "UltraFlyGUI"
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 150, 0, 50)
frame.Position = UDim2.new(0, 30, 0, 30)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Instance.new("UICorner", frame)

local btn = Instance.new("TextButton", frame)
btn.Size = UDim2.new(1, 0, 1, 0)
btn.Text = "FLY [OFF]"
btn.Font = Enum.Font.GothamBold
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.BackgroundColor3 = Color3.fromRGB(60, 150, 230)

-- Fly y Noclip
local function noclipChar(char, state)
    for _, p in ipairs(char:GetDescendants()) do
        if p:IsA("BasePart") then
            p.CanCollide = not state
        end
    end
end

local function startFly()
    flying = true
    btn.Text = "FLY [ON]"
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    noclipChar(char, true)
    char.Humanoid.PlatformStand = true

    local bv = Instance.new("BodyVelocity", hrp)
    bv.MaxForce = Vector3.new(1e9,1e9,1e9)
    bv.Velocity = Vector3.new(0,0,0)

    -- Control de movimiento
    local flyConn
    flyConn = game:GetService("RunService").Heartbeat:Connect(function()
        if not flying or not hrp or not hrp.Parent then
            bv:Destroy()
            if flyConn then flyConn:Disconnect() end
            char.Humanoid.PlatformStand = false
            noclipChar(char, false)
            btn.Text = "FLY [OFF]"
            return
        end

        local moveVec = Vector3.new()
        local cam = workspace.CurrentCamera

        -- Movimiento WASD
        if uis:IsKeyDown(Enum.KeyCode.W) then
            moveVec = moveVec + cam.CFrame.LookVector
        end
        if uis:IsKeyDown(Enum.KeyCode.S) then
            moveVec = moveVec - cam.CFrame.LookVector
        end
        if uis:IsKeyDown(Enum.KeyCode.A) then
            moveVec = moveVec - cam.CFrame.RightVector
        end
        if uis:IsKeyDown(Enum.KeyCode.D) then
            moveVec = moveVec + cam.CFrame.RightVector
        end
        -- Volar arriba/abajo
        if uis:IsKeyDown(Enum.KeyCode.Space) then
            moveVec = moveVec + Vector3.new(0,1,0)
        end
        if uis:IsKeyDown(Enum.KeyCode.LeftShift) or uis:IsKeyDown(Enum.KeyCode.RightShift) then
            moveVec = moveVec + Vector3.new(0,-1,0)
        end
        if moveVec.Magnitude > 0 then
            bv.Velocity = moveVec.Unit * speed
        else
            bv.Velocity = Vector3.new(0,0,0)
        end
    end)
end

local function stopFly()
    flying = false
end

btn.MouseButton1Click:Connect(function()
    if flying then
        stopFly()
    else
        startFly()
    end
end)

-- Por si mueres, se quita el fly
player.CharacterAdded:Connect(function(char)
    stopFly()
end)
