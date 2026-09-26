 
task.spawn(function(...)
end)
 
task.spawn(function(...)
end)
 
task.delay(782, function(...)
	 
end)
 
local ScreenGui = Instance.new("ScreenGui")
 
local Frame = Instance.new("Frame")
 
Frame.Position = UDim2.new(0, 0, 0, 0)
 
Frame.Size = UDim2.new(0, 152, 0, 183)
 
Frame.Parent = ScreenGui
 
local Path2D = Instance.new("Path2D")
 
Path2D.Parent = Frame
 
Path2D:SetControlPoints({ Path2DControlPoint.new(UDim2.new(0.375, -9, 0.125, 5), UDim2.new(0, -6, 0, -2), UDim2.new(-0.0625, -3, -0.125, -8)), Path2DControlPoint.new(UDim2.new(0, 1, 0.5, 1), UDim2.new(0, 0, 0, 0), UDim2.new(-0.125, 4, 0, 3)), Path2DControlPoint.new(UDim2.new(0.5, -7, 0, -6), UDim2.new(0, 2, 0, 5), UDim2.new(-0.125, -4, 0.125, 7)) })
 
Path2D:GetLength()
 
Path2D:GetPositionOnCurve(0.1428571492433548)
 
Path2D:GetPositionOnCurve(0.30000001192092896)
 
Path2D:GetPositionOnCurve(0.57142859697341919)
 
Path2D:GetPositionOnCurve(0.20000000298023224)
 
Path2D:GetTangentOnCurve(0.60000002384185791)
 
Path2D:GetTangentOnCurve(0.1666666716337204)
 
Path2D:GetPositionOnCurveArcLength(0.63636362552642822)
 
Path2D:GetPositionOnCurveArcLength(0.5)
 
Path2D:GetPositionOnCurveArcLength(0.3333333432674408)
 
Path2D:GetTangentOnCurveArcLength(0.28571429848670959)
 
Path2D:GetTangentOnCurveArcLength(0.20000000298023224)
 
ScreenGui:Destroy()
 
local connection = game.DescendantRemoving:Connect(function(descendant)
end)
 
connection:Disconnect()
 
local connection2 = workspace.DescendantRemoving:Connect(function(descendant2)
end)
 
connection2:Disconnect()
 
local Folder = Instance.new("Folder")
 
local connection3 = Folder.DescendantRemoving:Connect(function(descendant3)
end)
 
connection3:Disconnect()
 
Folder:GetChildren()
 
Folder:Destroy()
 
local Folder2 = Instance.new("Folder", Folder)
 
local connection4 = Folder2.DescendantRemoving:Connect(function(descendant4)
end)
 
connection4:Disconnect()
 
Folder2.Name = "1707242507"
 
Folder:WaitForChild("1707242507")
 
Folder:Destroy()
 
Folder2:Destroy()
 
local HttpService = game:GetService("HttpService")
 
local connection5 = HttpService.DescendantRemoving:Connect(function(descendant5)
end)
 
connection5:Disconnect()
 
local RunService = game:GetService("RunService")
 
local connection6 = RunService.DescendantRemoving:Connect(function(descendant6)
end)
 
connection6:Disconnect()
 
local Players = game:GetService("Players")
 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local FishingSystem = ReplicatedStorage:WaitForChild("FishingSystem")
 
local FishingSystemEvents = FishingSystem:WaitForChild("FishingSystemEvents")
 
local ZoneConfig = FishingSystem:WaitForChild("ZoneConfig")
 
local module = require(ZoneConfig)
 
FishingSystemEvents:WaitForChild("FishDiscovered", 15)
 
local GetFishIndexData = FishingSystemEvents:WaitForChild("GetFishIndexData", 15)
 
local ServerScriptService = game:GetService("ServerScriptService")
 
local FishData = ServerScriptService.Data.PetCore:WaitForChild("FishData")
 
local module2 = require(FishData)
 
GetFishIndexData.OnServerInvoke = function(arg, arg2)
	 
	module2:GetProfile(arg)
	 
	for i, v in ipairs(module.ZoneOrder) do
	end
end
 
local FishCaughtWithZone = FishingSystemEvents:FindFirstChild("FishCaughtWithZone")
 
FishCaughtWithZone.Name = "FishCaughtWithZone"
 
FishCaughtWithZone.Parent = FishingSystemEvents
 
FishCaughtWithZone.OnServerEvent:Connect(function(arg3)
end)
