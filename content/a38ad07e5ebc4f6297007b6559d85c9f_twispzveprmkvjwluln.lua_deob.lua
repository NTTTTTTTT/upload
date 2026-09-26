 1:1,19:24576
local connection = game.Changed:Connect(function(value)
end)
 1:1,19:24576
connection:Disconnect()
 1:1,19:24631
local connection2 = workspace.Changed:Connect(function(value2)
end)
 1:1,19:24631
connection2:Disconnect()
 1:1
local Folder = Instance.new("Folder")
 1:1,19:24689
local connection3 = Folder.Changed:Connect(function(value3)
end)
 1:1,19:24689
connection3:Disconnect()
 1:1
Folder:GetChildren()
 1:1
Folder:Destroy()
 1:1
local Folder2 = Instance.new("Folder", Folder)
 1:1,19:24744
local connection4 = Folder2.Changed:Connect(function(value4)
end)
 1:1,19:24744
connection4:Disconnect()
 1:1
Folder2.Name = "600896896"
 1:1
Folder:WaitForChild("600896896")
 1:1
Folder:Destroy()
 1:1
Folder2:Destroy()
 1:1
local HttpService = game:GetService("HttpService")
 1:1,19:24831
local connection5 = HttpService.Changed:Connect(function(value5)
end)
 1:1,19:24831
connection5:Disconnect()
 1:1
local RunService = game:GetService("RunService")
 1:1,19:24889
local connection6 = RunService.Changed:Connect(function(value6)
end)
 1:1,19:24889
connection6:Disconnect()
 1:1,27:26025,31:26855,32:26862
 1:1,27:26025,31:26855,32:26862
makefolder("Banana Cat Hub")
 1:1,27:26025,31:26855,32:26862
local contents = readfile("Banana Cat Hub" .. "/" .. game.Players.LocalPlayer.Name .. "-BloxFruitBNNC.json")
 1:1,27:26025,31:26855,32:26862
local data = HttpService:JSONDecode(contents)
 1:1,27:26025
getgenv().Settings = data
 1:1,27:26025
wait()
 1:1,27:26025
game:FindFirstChild("CoreGui")
 1:1,27:26025
wait()
 1:1,27:26025
local Players = game:GetService("Players")
 1:1,27:26025
Players.LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")
 1:1,27:26025
wait()
 1:1,27:26025
Players.LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")
 1:1,27:26025
wait()
 
