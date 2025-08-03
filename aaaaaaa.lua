local Players = game:GetService("Players")
local player = Players.LocalPlayer

function createESP(character)
    if character:FindFirstChild("Head") and not character.Head:FindFirstChild("EspGui") then
        local billboard = Instance.new("BillboardGui", character.Head)
        billboard.Name = "EspGui"
        billboard.Size = UDim2.new(0, 100, 0, 30)
        billboard.StudsOffset = Vector3.new(0, 2, 0)
        billboard.AlwaysOnTop = true

        local textLabel = Instance.new("TextLabel", billboard)
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.TextColor3 = Color3.fromRGB(255,0,0)
        textLabel.TextStrokeTransparency = 0
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextScaled = true

        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            textLabel.Text = "Vida: "..math.floor(humanoid.Health)
            humanoid.HealthChanged:Connect(function(health)
                textLabel.Text = "Vida: "..math.floor(health)
            end)
        end
    end
end

-- Crear ESP para enemigos que ya existen
for _, v in pairs(Players:GetPlayers()) do
    if v ~= player and v.Team ~= player.Team and v.Character then
        createESP(v.Character)
    end
end

-- Crear ESP cuando aparecen nuevos enemigos
Players.PlayerAdded:Connect(function(v)
    if v ~= player then
        v.CharacterAdded:Connect(function(char)
            if v.Team ~= player.Team then
                createESP(char)
            end
        end)
    end
end)
