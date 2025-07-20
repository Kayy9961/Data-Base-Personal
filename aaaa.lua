-- LocalScript (StarterPlayerScripts o StarterGui)
local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")

-- Noclip
local noclip = false
UIS.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	if input.KeyCode == Enum.KeyCode.N then
		noclip = not noclip
	end
end)

RS.Stepped:Connect(function()
	if noclip and player.Character then
		for _, part in pairs(player.Character:GetDescendants()) do
			if part:IsA("BasePart") and part.CanCollide == true then
				part.CanCollide = false
			end
		end
	end
end)

-- Fly
local flying = false
local flySpeed = 60
local flyControl = {F = 0, B = 0, L = 0, R = 0, U = 0, D = 0}
local hrp = nil

UIS.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	if input.KeyCode == Enum.KeyCode.F then
		flying = not flying
		if flying then
			hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
			if hrp then
				local bv = Instance.new("BodyVelocity", hrp)
				bv.Name = "FlyVel"
				bv.MaxForce = Vector3.new(1,1,1) * 1e6
				bv.Velocity = Vector3.new()
			end
		else
			if hrp and hrp:FindFirstChild("FlyVel") then
				hrp.FlyVel:Destroy()
			end
		end
	end
end)

UIS.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	if not flying then return end
	if input.KeyCode == Enum.KeyCode.W then flyControl.F = 1 end
	if input.KeyCode == Enum.KeyCode.S then flyControl.B = 1 end
	if input.KeyCode == Enum.KeyCode.A then flyControl.L = 1 end
	if input.KeyCode == Enum.KeyCode.D then flyControl.R = 1 end
	if input.KeyCode == Enum.KeyCode.Space then flyControl.U = 1 end
	if input.KeyCode == Enum.KeyCode.LeftControl then flyControl.D = 1 end
end)

UIS.InputEnded:Connect(function(input, gpe)
	if gpe then return end
	if not flying then return end
	if input.KeyCode == Enum.KeyCode.W then flyControl.F = 0 end
	if input.KeyCode == Enum.KeyCode.S then flyControl.B = 0 end
	if input.KeyCode == Enum.KeyCode.A then flyControl.L = 0 end
	if input.KeyCode == Enum.KeyCode.D then flyControl.R = 0 end
	if input.KeyCode == Enum.KeyCode.Space then flyControl.U = 0 end
	if input.KeyCode == Enum.KeyCode.LeftControl then flyControl.D = 0 end
end)

RS.RenderStepped:Connect(function()
	if flying and hrp and hrp:FindFirstChild("FlyVel") then
		local cam = workspace.CurrentCamera
		local cf = cam.CFrame
		local move = Vector3.new()
		move = move + cf.LookVector * (flyControl.F - flyControl.B)
		move = move + cf.RightVector * (flyControl.R - flyControl.L)
		move = move + Vector3.new(0, 1, 0) * (flyControl.U - flyControl.D)
		if move.Magnitude > 0 then
			move = move.Unit * flySpeed
		end
		hrp.FlyVel.Velocity = move
	end
end)

print("Noclip (N) y Fly (F) activados")
