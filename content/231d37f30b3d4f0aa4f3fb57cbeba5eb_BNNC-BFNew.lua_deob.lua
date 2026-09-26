 
 
 
local HttpService = game:GetService("HttpService")
 
 
makefolder("Banana Cat Hub")
 
local contents = readfile("Banana Cat Hub" .. "/" .. game.Players.LocalPlayer.Name .. "-BloxFruitBNNC.json")
 
local data = HttpService:JSONDecode(contents)
 
getgenv().Settings = data
 
wait()
 
game:FindFirstChild("CoreGui")
 
wait()
 
local Players = game:GetService("Players")
 
Players.LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")
 
wait()
 
Players.LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")
 
wait()
 
