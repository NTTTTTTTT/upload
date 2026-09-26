 
task.spawn(function(...)
end)
 
task.spawn(function(...)
end)
 
task.delay(424, function(...)
	 
end)
 
local ScreenGui = Instance.new("ScreenGui")
 
local Frame = Instance.new("Frame")
 
Frame.Position = UDim2.new(0, 0, 0, 0)
 
Frame.Size = UDim2.new(0, 268, 0, 269)
 
Frame.Parent = ScreenGui
 
local Path2D = Instance.new("Path2D")
 
Path2D.Parent = Frame
 
Path2D:SetControlPoints({ Path2DControlPoint.new(UDim2.new(0.5, -1, 0.5, -10), UDim2.new(0, -7, -0.125, -4), UDim2.new(0, 0, 0, 0)), Path2DControlPoint.new(UDim2.new(0.5, -1, 0, -3), UDim2.new(0, 0, 0, 0), UDim2.new(0, 5, 0, 0)), Path2DControlPoint.new(UDim2.new(0.5, 2, 0.5, 0), UDim2.new(0, 4, 0.0625, -8), UDim2.new(0, -3, 0, -4)) })
 
Path2D:GetLength()
 
Path2D:GetPositionOnCurve(0.61538463830947876)
 
Path2D:GetPositionOnCurve(0.25)
 
Path2D:GetTangentOnCurve(0.45454546809196472)
 
Path2D:GetTangentOnCurve(0.375)
 
Path2D:GetPositionOnCurveArcLength(0.66666668653488159)
 
Path2D:GetPositionOnCurveArcLength(0.6428571343421936)
 
Path2D:GetPositionOnCurveArcLength(0.72727274894714355)
 
Path2D:GetTangentOnCurveArcLength(0.1666666716337204)
 
Path2D:GetTangentOnCurveArcLength(0.69999998807907104)
 
Path2D:GetTangentOnCurveArcLength(0.91666668653488159)
 
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
 
Folder2.Name = "1774382665"
 
Folder:WaitForChild("1774382665")
 
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
 
print("[CutsceneVFXServer] Script dimulai...")
 
local Players = game:GetService("Players")
 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local FishingSystem = ReplicatedStorage:WaitForChild("FishingSystem", 30)
 
local FishingSystemEvents = FishingSystem:WaitForChild("FishingSystemEvents", 30)
 
local fullName = FishingSystemEvents:GetFullName()
 
print("[CutsceneVFXServer] eventsFolder ditemukan:", fullName)
 
local CutsceneVFX = FishingSystemEvents:FindFirstChild("CutsceneVFX")
 
print("[CutsceneVFXServer] Remote sudah ada:", "CutsceneVFX")
 
FishingSystemEvents:FindFirstChild("CutsceneVFXForOthers")
 
print("[CutsceneVFXServer] Remote sudah ada:", "CutsceneVFXForOthers")
 
CutsceneVFX.OnServerEvent:Connect(function(arg)
end)
 
print("[CutsceneVFXServer] ✅ Ready")
