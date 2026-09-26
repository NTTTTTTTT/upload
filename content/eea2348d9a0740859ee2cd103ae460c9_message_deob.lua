 
task.spawn(function(...)
end)
 
task.spawn(function(...)
end)
 
task.delay(684, function(...)
	 
end)
 
local ScreenGui = Instance.new("ScreenGui")
 
local Frame = Instance.new("Frame")
 
Frame.Position = UDim2.new(0, 0, 0, 0)
 
Frame.Size = UDim2.new(0, 282, 0, 118)
 
Frame.Parent = ScreenGui
 
local Path2D = Instance.new("Path2D")
 
Path2D.Parent = Frame
 
Path2D:SetControlPoints({ Path2DControlPoint.new(UDim2.new(0, 9, 0.4375, -10), UDim2.new(0, -1, 0, 0), UDim2.new(0, 0, 0, 0)), Path2DControlPoint.new(UDim2.new(0.5, 2, 0.5, -2), UDim2.new(-0.0625, -5, 0, -4), UDim2.new(0, 0, 0, 0)), Path2DControlPoint.new(UDim2.new(0.5, -4, 0, 6), UDim2.new(0, 0, 0, 0), UDim2.new(0, -5, 0, 0)) })
 
Path2D:GetLength()
 
Path2D:GetPositionOnCurve(0.69230771064758301)
 
Path2D:GetPositionOnCurve(0.40000000596046448)
 
Path2D:GetPositionOnCurve(0.1428571492433548)
 
Path2D:GetTangentOnCurve(0.75)
 
Path2D:GetTangentOnCurve(0.6875)
 
Path2D:GetTangentOnCurve(0.1666666716337204)
 
Path2D:GetPositionOnCurveArcLength(0.5)
 
Path2D:GetPositionOnCurveArcLength(0.13333334028720856)
 
Path2D:GetPositionOnCurveArcLength(0.5)
 
Path2D:GetTangentOnCurveArcLength(0.30000001192092896)
 
Path2D:GetTangentOnCurveArcLength(0.71428573131561279)
 
ScreenGui:Destroy()
 
local connection = game.ChildAdded:Connect(function(child)
end)
 
connection:Disconnect()
 
local connection2 = workspace.ChildAdded:Connect(function(child2)
end)
 
connection2:Disconnect()
 
local Folder = Instance.new("Folder")
 
local connection3 = Folder.ChildAdded:Connect(function(child3)
end)
 
connection3:Disconnect()
 
Folder:GetChildren()
 
Folder:Destroy()
 
local Folder2 = Instance.new("Folder", Folder)
 
local connection4 = Folder2.ChildAdded:Connect(function(child4)
end)
 
connection4:Disconnect()
 
Folder2.Name = "1188261507"
 
Folder:WaitForChild("1188261507")
 
Folder:Destroy()
 
Folder2:Destroy()
 
local HttpService = game:GetService("HttpService")
 
local connection5 = HttpService.ChildAdded:Connect(function(child5)
end)
 
connection5:Disconnect()
 
local RunService = game:GetService("RunService")
 
local connection6 = RunService.ChildAdded:Connect(function(child6)
end)
 
connection6:Disconnect()
 
local Players = game:GetService("Players")
 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local OverheadConfig = ReplicatedStorage:WaitForChild("OverheadConfig")
 
local module = require(OverheadConfig)
 
Players.PlayerAdded:Connect(function(player)
	 
	player.CharacterAdded:Connect(function(character2)
		 
		task.delay(1.5, function(...)
		end)
	end)
	 
	task.delay(1.5, function(...)
	end)
end)
 
local players = Players:GetPlayers()
 
for i, v in ipairs(players) do
	 
	v.CharacterAdded:Connect(function(character)
		 
		task.delay(1.5, function(...)
		end)
	end)
	 
	task.delay(1.5, function(...)
		 
		local children = v.Character:GetChildren()
		 
		for i2, v2 in ipairs(children) do
			 
			local children2 = v2:GetChildren()
			 
			for i3, v3 in ipairs(children2) do
			end
		end
	end)
end
 
task.spawn(function(...)
	 
	task.wait(1)
	 
	task.wait(1)
	 
end)
 
print("[OverheadController] ✅ Ready | ENABLED =", module.ENABLED)
