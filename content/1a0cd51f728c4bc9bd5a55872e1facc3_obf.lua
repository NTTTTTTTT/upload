loadstring(game:HttpGet("https://protected-roblox-scripts.onrender.com/Whitelist"))()

if game:GetService("CoreGui"):FindFirstChild("ICraftPeGUI") then
	game:GetService("CoreGui"):FindFirstChild("ICraftPeGUI"):Remove()
end

local MainGui = Instance.new("ScreenGui")
MainGui.ResetOnSpawn = false
MainGui.Name = "ICraftPeGUI"
MainGui.Parent = game:GetService("CoreGui")

local MainScrollableFrame = Instance.new("ScrollingFrame")
MainScrollableFrame.Size = UDim2.new(0, 300, 0, 200)
MainScrollableFrame.Position = UDim2.new(0.42, 0, 0.057, 0)
MainScrollableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainScrollableFrame.Position = UDim2.fromScale(0.5, 0.5)
MainScrollableFrame.BackgroundColor = BrickColor.new(Color3.new(1, 1, 1))
MainScrollableFrame.Visible = true
MainScrollableFrame.Name = math.random(-999999, 999999)
MainScrollableFrame.Parent = MainGui

local Dragging = false
local DragStart
local StartPosition
local ActiveTouch

local function Update(Input)
	local Delta = Input.Position - DragStart

	MainScrollableFrame.Position = UDim2.new(
		StartPosition.X.Scale,
		StartPosition.X.Offset + Delta.X,
		StartPosition.Y.Scale,
		StartPosition.Y.Offset + Delta.Y
	)
end

MainScrollableFrame.InputBegan:Connect(function(Input)
	if Dragging then return end

	if Input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging = true
	else
		if Input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			ActiveTouch = Input
		end
	end

	if Dragging then
		DragStart = Input.Position
		StartPosition = MainScrollableFrame.Position
	end
end)

MainScrollableFrame.InputChanged:Connect(function(Input)
	if Dragging and (Input == ActiveTouch or Input.UserInputType == Enum.UserInputType.MouseMovement) then
		Update(Input)
	end
end)

MainScrollableFrame.InputEnded:Connect(function(Input)
	if Input == ActiveTouch or Input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging = false
		ActiveTouch = nil
	end
end)

local MainScrollableFrameUIListLayout = Instance.new("UIListLayout")
MainScrollableFrameUIListLayout.FillDirection = Enum.FillDirection.Vertical
MainScrollableFrameUIListLayout.ItemLineAlignment = Enum.ItemLineAlignment.Center
MainScrollableFrameUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
MainScrollableFrameUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
MainScrollableFrameUIListLayout.Name = math.random(-999999, 999999)
MainScrollableFrameUIListLayout.Parent = MainScrollableFrame

MainScrollableFrameUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	MainScrollableFrame.CanvasSize = UDim2.new(0, 0, 0, MainScrollableFrameUIListLayout.AbsoluteContentSize.Y)
end)

local MainScrollableFrameCorner = Instance.new("UICorner")
MainScrollableFrameCorner.Name = math.random(-999999, 999999)
MainScrollableFrameCorner.Parent = MainScrollableFrame

local MainScrollableFrameUIStroke = Instance.new("UIStroke")
MainScrollableFrameUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainScrollableFrameUIStroke.Thickness = 2
MainScrollableFrameUIStroke.Name = math.random(-999999, 999999)
MainScrollableFrameUIStroke.Parent = MainScrollableFrame

local OpenButton = Instance.new("TextButton")
OpenButton.Size = UDim2.new(0, 200, 0, 30)
OpenButton.Position = UDim2.new(0.42, 0, 0.057, 0)
OpenButton.AnchorPoint = Vector2.new(0.5, 0.5)
OpenButton.Position = UDim2.fromScale(0.5, 0.25)
OpenButton.BackgroundColor = BrickColor.new(Color3.new(0, 1, 0.188235))
OpenButton.TextScaled = true
OpenButton.Text = "Open (made by: @ICraftPe on YouTube!)"
OpenButton.Visible = false
OpenButton.Name = math.random(-999999, 999999)
OpenButton.Parent = MainGui

local OpenButtonCorner = Instance.new("UICorner")
OpenButtonCorner.Name = math.random(-999999, 999999)
OpenButtonCorner.Parent = OpenButton

local OpenButtonUIStroke1 = Instance.new("UIStroke")
OpenButtonUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
OpenButtonUIStroke1.Thickness = 2
OpenButtonUIStroke1.Name = math.random(-999999, 999999)
OpenButtonUIStroke1.Parent = OpenButton

local OpenButtonUIStroke2 = Instance.new("UIStroke")
OpenButtonUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
OpenButtonUIStroke2.Thickness = 0.25
OpenButtonUIStroke2.Name = math.random(-999999, 999999)
OpenButtonUIStroke2.Parent = OpenButton

OpenButton.MouseButton1Click:Connect(function()
	MainScrollableFrame.Visible = true
	OpenButton.Visible = false
end)

local ScriptFunction = Instance.new("Frame")
ScriptFunction.Size = UDim2.new(0, 280, 0, 35)
ScriptFunction.Position = UDim2.new(0.386, 0, 0.088, 0)
ScriptFunction.BackgroundTransparency = 1
ScriptFunction.Name = math.random(-999999, 999999)

local ScriptFunctionName = Instance.new("TextButton")
ScriptFunctionName.Size = UDim2.new(0, 180, 0, 35)
ScriptFunctionName.Position = UDim2.new(0, 0, 0, 0)
ScriptFunctionName.BackgroundTransparency = 1
ScriptFunctionName.TextScaled = true
ScriptFunctionName.Text = "Function name"
ScriptFunctionName.Name = "ScriptFunctionName"
ScriptFunctionName.Parent = ScriptFunction

local ScriptFunctionExecute = Instance.new("TextButton")
ScriptFunctionExecute.Size = UDim2.new(0, 40, 0, 25)
ScriptFunctionExecute.Position = UDim2.new(0.818, 0, 0.143, 0)
ScriptFunctionExecute.BackgroundColor = BrickColor.new(Color3.new(0, 1, 0.188235))
ScriptFunctionExecute.TextScaled = true
ScriptFunctionExecute.Text = "EXECUTE"
ScriptFunctionExecute.Name = "ScriptFunctionExecute"
ScriptFunctionExecute.Parent = ScriptFunction

local ScriptFunctionExecuteUICorner = Instance.new("UICorner")
ScriptFunctionExecuteUICorner.Name = math.random(-999999, 999999)
ScriptFunctionExecuteUICorner.Parent = ScriptFunctionExecute

local ScriptFunctionExecuteUIStroke1 = Instance.new("UIStroke")
ScriptFunctionExecuteUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ScriptFunctionExecuteUIStroke1.Thickness = 2
ScriptFunctionExecuteUIStroke1.Name = math.random(-999999, 999999)
ScriptFunctionExecuteUIStroke1.Parent = ScriptFunctionExecute

local ScriptFunctionExecuteUIStroke2 = Instance.new("UIStroke")
ScriptFunctionExecuteUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
ScriptFunctionExecuteUIStroke2.Thickness = 0.25
ScriptFunctionExecuteUIStroke2.Name = math.random(-999999, 999999)
ScriptFunctionExecuteUIStroke2.Parent = ScriptFunctionExecute

local CloseButton = ScriptFunction:Clone()
CloseButton:WaitForChild("ScriptFunctionName").Text = "Close GUI (made by: @ICraftPe on YouTube!)"
CloseButton:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0, 1, 0.188235))
CloseButton.Parent = MainScrollableFrame

CloseButton:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
	OpenButton.Visible = true
	MainScrollableFrame.Visible = false
end)

if game.PlaceId == 3233893879 then
	local Function1 = ScriptFunction:Clone()
	Function1:WaitForChild("ScriptFunctionName").Text = "Equip VR Goggles & change the map (starting the quest)"
	Function1:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0, 0.666667, 0.498039))
	Function1.Parent = MainScrollableFrame

	local Function2 = ScriptFunction:Clone()
	Function2:WaitForChild("ScriptFunctionName").Text = "Note: Make sure to subscribe to @ICraftPe on YouTube!"
	Function2:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0, 0.333333, 1))
	Function2:WaitForChild("ScriptFunctionExecute"):Remove()
	Function2.Parent = MainScrollableFrame

	local Function3 = ScriptFunction:Clone()
	Function3:WaitForChild("ScriptFunctionName").Text = "ASCII unicorn puzzle pieces ESP"
	Function3:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(1, 0.333333, 0.498039))
	Function3.Parent = MainScrollableFrame

	local Function4 = ScriptFunction:Clone()
	Function4:WaitForChild("ScriptFunctionName").Text = "Interesting fact: If you'll die in the mission - you're a loser."
	Function4:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0.666667, 0.666667, 0))
	Function4:WaitForChild("ScriptFunctionExecute"):Remove()
	Function4.Parent = MainScrollableFrame

	local Function5 = ScriptFunction:Clone()
	Function5:WaitForChild("ScriptFunctionName").Text = "Puzzle piece #1 (teleport (TP))"
	Function5:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0, 0, 0))
	Function5.Parent = MainScrollableFrame

	local Function6 = ScriptFunction:Clone()
	Function6:WaitForChild("ScriptFunctionName").Text = "Puzzle piece #2 (teleport (TP))"
	Function6:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0.333333, 0, 0))
	Function6.Parent = MainScrollableFrame

	local Function7 = ScriptFunction:Clone()
	Function7:WaitForChild("ScriptFunctionName").Text = "Puzzle piece #3 (teleport (TP))"
	Function7:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(1, 0.666667, 1))
	Function7.Parent = MainScrollableFrame

	local Function8 = ScriptFunction:Clone()
	Function8:WaitForChild("ScriptFunctionName").Text = "Puzzle piece #4 (teleport (TP))"
	Function8:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0.666667, 0, 1))
	Function8.Parent = MainScrollableFrame

	local Function9 = ScriptFunction:Clone()
	Function9:WaitForChild("ScriptFunctionName").Text = 'Teleport to the "MISSION UNICORN" event place (need four real puzzle pieces)'
	Function9:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0.694118, 0.647059, 0.14902))
	Function9.Parent = MainScrollableFrame

	Function1:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
		local args = {
			[1] = "LoadMap",
			[2] = "factory"
		}

		for i,LoadMapRemote in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
			if LoadMapRemote.ClassName == "RemoteEvent" and LoadMapRemote.Name == "Admin" then
				LoadMapRemote:FireServer(unpack(args))
			end
		end

		local args = {
			[1] = "Redeem",
			[2] = "unicorn"
		}

		for i,RedeemCodeRemote in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
			if RedeemCodeRemote.ClassName == "RemoteFunction" and RedeemCodeRemote.Name == "Codes" then
				RedeemCodeRemote:InvokeServer(unpack(args))
			end
		end

		local args = {
			[1] = "EquipClothing",
			[2] = "VR Goggles",
			[3] = "Face"
		}

		for i,EquipVR in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
			if EquipVR.ClassName == "RemoteEvent" and EquipVR.Name == "Inventory" then
				EquipVR:FireServer(unpack(args))
			end
		end
	end)

	Function3:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
		local Puzzle1 = ""
		local Puzzle2 = ""
		local Puzzle3 = ""
		local Puzzle4 = ""
		local Puzzle5 = ""
		local Puzzle6 = ""
		local Puzzle7 = ""
		local Puzzle8 = ""

		for i,P1 in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if P1.ClassName == "ImageLabel" and P1.Parent.Name == "ArtGui" and P1.Image == "rbxassetid://5881804196" then
				Puzzle1 = P1.Parent.Parent.Name
			end
		end

		for i,P2 in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if P2.ClassName == "ImageLabel" and P2.Parent.Name == "ArtGui" and P2.Image == "rbxassetid://5881804516" then
				Puzzle2 = P2.Parent.Parent.Name
			end
		end

		for i,P3 in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if P3.ClassName == "ImageLabel" and P3.Parent.Name == "ArtGui" and P3.Image == "rbxassetid://5881804803" then
				Puzzle3 = P3.Parent.Parent.Name
			end
		end

		for i,P4 in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if P4.ClassName == "ImageLabel" and P4.Parent.Name == "ArtGui" and P4.Image == "rbxassetid://5881805127" then
				Puzzle4 = P4.Parent.Parent.Name
			end
		end

		for i,P5 in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if P5.ClassName == "ImageLabel" and P5.Parent.Name == "ArtGui" and P5.Image == "rbxassetid://5881818717" then
				Puzzle5 = P5.Parent.Parent.Name
			end
		end

		for i,P6 in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if P6.ClassName == "ImageLabel" and P6.Parent.Name == "ArtGui" and P6.Image == "rbxassetid://5881819097" then
				Puzzle6 = P6.Parent.Parent.Name
			end
		end

		for i,P7 in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if P7.ClassName == "ImageLabel" and P7.Parent.Name == "ArtGui" and P7.Image == "rbxassetid://5881819498" then
				Puzzle7 = P7.Parent.Parent.Name
			end
		end

		for i,P8 in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if P8.ClassName == "ImageLabel" and P8.Parent.Name == "ArtGui" and P8.Image == "rbxassetid://5881819757" then
				Puzzle8 = P8.Parent.Parent.Name
			end
		end

		if game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle1):FindFirstChild("ICraftPeESP") then
		else
			local ESPParent = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle1)
			local ESPBox = Instance.new("BillboardGui")
			ESPBox.Name = "ICraftPeESP"
			ESPBox.AlwaysOnTop = true
			ESPBox.Adornee = ESPParent
			ESPBox.Size = UDim2.new(0, 120, 0, 20)
			ESPBox.StudsOffset = Vector3.new(0, 3, 0)
			ESPBox.Parent = ESPParent

			local ESP = Instance.new("TextLabel")
			local ESPCorner = Instance.new("UICorner")
			ESPCorner.Parent = ESP

			local ESPUIStroke1 = Instance.new("UIStroke")
			ESPUIStroke1.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			ESPUIStroke1.Thickness = 2
			ESPUIStroke1.Parent = ESP

			local ESPUIStroke2 = Instance.new("UIStroke")
			ESPUIStroke2.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			ESPUIStroke2.Thickness = 0.25
			ESPUIStroke2.Parent = ESP

			ESP.TextColor = BrickColor.new(Color3.fromRGB(0, 255, 48))
			ESP.BackgroundColor = BrickColor.new(Color3.fromRGB(255, 255, 255))
			ESP.Text = "Real piece: 1"
			ESP.Size = UDim2.new(1, 0, 1, 0)
			ESP.TextScaled = true
			ESP.Parent = ESPBox
		end

		if game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle2):FindFirstChild("ICraftPeESP") then
		else
			local ESPParent = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle2)
			local ESPBox = Instance.new("BillboardGui")
			ESPBox.Name = "ICraftPeESP"
			ESPBox.AlwaysOnTop = true
			ESPBox.Adornee = ESPParent
			ESPBox.Size = UDim2.new(0, 120, 0, 20)
			ESPBox.StudsOffset = Vector3.new(0, 3, 0)
			ESPBox.Parent = ESPParent

			local ESP = Instance.new("TextLabel")
			local ESPCorner = Instance.new("UICorner")
			ESPCorner.Parent = ESP

			local ESPUIStroke1 = Instance.new("UIStroke")
			ESPUIStroke1.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			ESPUIStroke1.Thickness = 2
			ESPUIStroke1.Parent = ESP

			local ESPUIStroke2 = Instance.new("UIStroke")
			ESPUIStroke2.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			ESPUIStroke2.Thickness = 0.25
			ESPUIStroke2.Parent = ESP

			ESP.TextColor = BrickColor.new(Color3.fromRGB(0, 255, 48))
			ESP.BackgroundColor = BrickColor.new(Color3.fromRGB(255, 255, 255))
			ESP.Text = "Real piece: 2"
			ESP.Size = UDim2.new(1, 0, 1, 0)
			ESP.TextScaled = true
			ESP.Parent = ESPBox
		end

		if game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle3):FindFirstChild("ICraftPeESP") then
		else
			local ESPParent = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle3)
			local ESPBox = Instance.new("BillboardGui")
			ESPBox.Name = "ICraftPeESP"
			ESPBox.AlwaysOnTop = true
			ESPBox.Adornee = ESPParent
			ESPBox.Size = UDim2.new(0, 120, 0, 20)
			ESPBox.StudsOffset = Vector3.new(0, 3, 0)
			ESPBox.Parent = ESPParent

			local ESP = Instance.new("TextLabel")
			local ESPCorner = Instance.new("UICorner")
			ESPCorner.Parent = ESP

			local ESPUIStroke1 = Instance.new("UIStroke")
			ESPUIStroke1.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			ESPUIStroke1.Thickness = 2
			ESPUIStroke1.Parent = ESP

			local ESPUIStroke2 = Instance.new("UIStroke")
			ESPUIStroke2.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			ESPUIStroke2.Thickness = 0.25
			ESPUIStroke2.Parent = ESP

			ESP.TextColor = BrickColor.new(Color3.fromRGB(0, 255, 48))
			ESP.BackgroundColor = BrickColor.new(Color3.fromRGB(255, 255, 255))
			ESP.Text = "Real piece: 3"
			ESP.Size = UDim2.new(1, 0, 1, 0)
			ESP.TextScaled = true
			ESP.Parent = ESPBox
		end

		if game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle4):FindFirstChild("ICraftPeESP") then
		else
			local ESPParent = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle4)
			local ESPBox = Instance.new("BillboardGui")
			ESPBox.Name = "ICraftPeESP"
			ESPBox.AlwaysOnTop = true
			ESPBox.Adornee = ESPParent
			ESPBox.Size = UDim2.new(0, 120, 0, 20)
			ESPBox.StudsOffset = Vector3.new(0, 3, 0)
			ESPBox.Parent = ESPParent

			local ESP = Instance.new("TextLabel")
			local ESPCorner = Instance.new("UICorner")
			ESPCorner.Parent = ESP

			local ESPUIStroke1 = Instance.new("UIStroke")
			ESPUIStroke1.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			ESPUIStroke1.Thickness = 2
			ESPUIStroke1.Parent = ESP

			local ESPUIStroke2 = Instance.new("UIStroke")
			ESPUIStroke2.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			ESPUIStroke2.Thickness = 0.25
			ESPUIStroke2.Parent = ESP

			ESP.TextColor = BrickColor.new(Color3.fromRGB(0, 255, 48))
			ESP.BackgroundColor = BrickColor.new(Color3.fromRGB(255, 255, 255))
			ESP.Text = "Real piece: 4"
			ESP.Size = UDim2.new(1, 0, 1, 0)
			ESP.TextScaled = true
			ESP.Parent = ESPBox
		end

		if game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle5):FindFirstChild("ICraftPeESP") then
		else
			local ESPParent = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle5)
			local ESPBox = Instance.new("BillboardGui")
			ESPBox.Name = "ICraftPeESP"
			ESPBox.AlwaysOnTop = true
			ESPBox.Adornee = ESPParent
			ESPBox.Size = UDim2.new(0, 120, 0, 20)
			ESPBox.StudsOffset = Vector3.new(0, 3, 0)
			ESPBox.Parent = ESPParent

			local ESP = Instance.new("TextLabel")
			local ESPCorner = Instance.new("UICorner")
			ESPCorner.Parent = ESP

			local ESPUIStroke1 = Instance.new("UIStroke")
			ESPUIStroke1.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			ESPUIStroke1.Thickness = 2
			ESPUIStroke1.Parent = ESP

			local ESPUIStroke2 = Instance.new("UIStroke")
			ESPUIStroke2.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			ESPUIStroke2.Thickness = 0.25
			ESPUIStroke2.Parent = ESP

			ESP.TextColor = BrickColor.new(Color3.fromRGB(255, 0, 0))
			ESP.BackgroundColor = BrickColor.new(Color3.fromRGB(255, 255, 255))
			ESP.Text = "Fake piece: 1"
			ESP.Size = UDim2.new(1, 0, 1, 0)
			ESP.TextScaled = true
			ESP.Parent = ESPBox
		end

		if game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle6):FindFirstChild("ICraftPeESP") then
		else
			local ESPParent = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle6)
			local ESPBox = Instance.new("BillboardGui")
			ESPBox.Name = "ICraftPeESP"
			ESPBox.AlwaysOnTop = true
			ESPBox.Adornee = ESPParent
			ESPBox.Size = UDim2.new(0, 120, 0, 20)
			ESPBox.StudsOffset = Vector3.new(0, 3, 0)
			ESPBox.Parent = ESPParent

			local ESP = Instance.new("TextLabel")
			local ESPCorner = Instance.new("UICorner")
			ESPCorner.Parent = ESP

			local ESPUIStroke1 = Instance.new("UIStroke")
			ESPUIStroke1.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			ESPUIStroke1.Thickness = 2
			ESPUIStroke1.Parent = ESP

			local ESPUIStroke2 = Instance.new("UIStroke")
			ESPUIStroke2.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			ESPUIStroke2.Thickness = 0.25
			ESPUIStroke2.Parent = ESP

			ESP.TextColor = BrickColor.new(Color3.fromRGB(255, 0, 0))
			ESP.BackgroundColor = BrickColor.new(Color3.fromRGB(255, 255, 255))
			ESP.Text = "Fake piece: 2"
			ESP.Size = UDim2.new(1, 0, 1, 0)
			ESP.TextScaled = true
			ESP.Parent = ESPBox
		end

		if game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle7):FindFirstChild("ICraftPeESP") then
		else
			local ESPParent = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle7)
			local ESPBox = Instance.new("BillboardGui")
			ESPBox.Name = "ICraftPeESP"
			ESPBox.AlwaysOnTop = true
			ESPBox.Adornee = ESPParent
			ESPBox.Size = UDim2.new(0, 120, 0, 20)
			ESPBox.StudsOffset = Vector3.new(0, 3, 0)
			ESPBox.Parent = ESPParent

			local ESP = Instance.new("TextLabel")
			local ESPCorner = Instance.new("UICorner")
			ESPCorner.Parent = ESP

			local ESPUIStroke1 = Instance.new("UIStroke")
			ESPUIStroke1.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			ESPUIStroke1.Thickness = 2
			ESPUIStroke1.Parent = ESP

			local ESPUIStroke2 = Instance.new("UIStroke")
			ESPUIStroke2.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			ESPUIStroke2.Thickness = 0.25
			ESPUIStroke2.Parent = ESP

			ESP.TextColor = BrickColor.new(Color3.fromRGB(255, 0, 0))
			ESP.BackgroundColor = BrickColor.new(Color3.fromRGB(255, 255, 255))
			ESP.Text = "Fake piece: 3"
			ESP.Size = UDim2.new(1, 0, 1, 0)
			ESP.TextScaled = true
			ESP.Parent = ESPBox
		end

		if game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle8):FindFirstChild("ICraftPeESP") then
		else
			local ESPParent = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(Puzzle8)
			local ESPBox = Instance.new("BillboardGui")
			ESPBox.Name = "ICraftPeESP"
			ESPBox.AlwaysOnTop = true
			ESPBox.Adornee = ESPParent
			ESPBox.Size = UDim2.new(0, 120, 0, 20)
			ESPBox.StudsOffset = Vector3.new(0, 3, 0)
			ESPBox.Parent = ESPParent

			local ESP = Instance.new("TextLabel")
			local ESPCorner = Instance.new("UICorner")
			ESPCorner.Parent = ESP

			local ESPUIStroke1 = Instance.new("UIStroke")
			ESPUIStroke1.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			ESPUIStroke1.Thickness = 2
			ESPUIStroke1.Parent = ESP

			local ESPUIStroke2 = Instance.new("UIStroke")
			ESPUIStroke2.Name = game:GetService("HttpService"):GenerateGUID()
			ESPUIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			ESPUIStroke2.Thickness = 0.25
			ESPUIStroke2.Parent = ESP

			ESP.TextColor = BrickColor.new(Color3.fromRGB(255, 0, 0))
			ESP.BackgroundColor = BrickColor.new(Color3.fromRGB(255, 255, 255))
			ESP.Text = "Fake piece: 4"
			ESP.Size = UDim2.new(1, 0, 1, 0)
			ESP.TextScaled = true
			ESP.Parent = ESPBox
		end
	end)

	Function5:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
		for i,v in pairs(game:GetService("Workspace"):FindFirstChild("Characters"):GetDescendants()) do
			if v.ClassName == "Model" and v.Parent.Name == "Characters" then
				for i,r in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
					if r.ClassName == "ImageLabel" and r.Name == "Art" and r.Image == "rbxassetid://5881804196" then
						v:SetPrimaryPartCFrame(r.Parent.Parent.CFrame)
						local args = {
							[1] = "Scan",
							[2] = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(r.Parent.Parent.Name)
						}

						for i,Apply in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
							if Apply.ClassName == "RemoteEvent" and Apply.Name == "VR" then
								Apply:FireServer(unpack(args))
							end
						end
					end
				end
			end
		end
	end)

	Function6:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
		for i,v in pairs(game:GetService("Workspace"):FindFirstChild("Characters"):GetDescendants()) do
			if v.ClassName == "Model" and v.Parent.Name == "Characters" then
				for i,r in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
					if r.ClassName == "ImageLabel" and r.Name == "Art" and r.Image == "rbxassetid://5881804516" then
						v:SetPrimaryPartCFrame(r.Parent.Parent.CFrame)
						local args = {
							[1] = "Scan",
							[2] = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(r.Parent.Parent.Name)
						}

						for i,Apply in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
							if Apply.ClassName == "RemoteEvent" and Apply.Name == "VR" then
								Apply:FireServer(unpack(args))
							end
						end
					end
				end
			end
		end
	end)

	Function7:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
		for i,v in pairs(game:GetService("Workspace"):FindFirstChild("Characters"):GetDescendants()) do
			if v.ClassName == "Model" and v.Parent.Name == "Characters" then
				for i,r in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
					if r.ClassName == "ImageLabel" and r.Name == "Art" and r.Image == "rbxassetid://5881804803" then
						v:SetPrimaryPartCFrame(r.Parent.Parent.CFrame)
						local args = {
							[1] = "Scan",
							[2] = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(r.Parent.Parent.Name)
						}

						for i,Apply in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
							if Apply.ClassName == "RemoteEvent" and Apply.Name == "VR" then
								Apply:FireServer(unpack(args))
							end
						end
					end
				end
			end
		end
	end)

	Function8:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
		for i,v in pairs(game:GetService("Workspace"):FindFirstChild("Characters"):GetDescendants()) do
			if v.ClassName == "Model" and v.Parent.Name == "Characters" then
				for i,r in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
					if r.ClassName == "ImageLabel" and r.Name == "Art" and r.Image == "rbxassetid://5881805127" then
						v:SetPrimaryPartCFrame(r.Parent.Parent.CFrame)
						local args = {
							[1] = "Scan",
							[2] = game:GetService("Workspace"):WaitForChild("NonGeometry"):WaitForChild(r.Parent.Parent.Name)
						}

						for i,Apply in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
							if Apply.ClassName == "RemoteEvent" and Apply.Name == "VR" then
								Apply:FireServer(unpack(args))
							end
						end
					end
				end
			end
		end
	end)

	Function9:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
		local Code1 = ""
		local Code2 = ""
		local Code3 = ""
		local Code4 = ""

		for i,One in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if One.ClassName == "ImageLabel" and One.Image == "rbxassetid://5881804196" then
				Code1 = One.Parent.Parent.Name
			end
		end

		for i,Two in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if Two.ClassName == "ImageLabel" and Two.Image == "rbxassetid://5881804516" then
				Code2 = Two.Parent.Parent.Name
			end
		end

		for i,Three in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if Three.ClassName == "ImageLabel" and Three.Image == "rbxassetid://5881804803" then
				Code3 = Three.Parent.Parent.Name
			end
		end

		for i,Four in pairs(game:GetService("Workspace"):FindFirstChild("NonGeometry"):GetDescendants()) do
			if Four.ClassName == "ImageLabel" and Four.Image == "rbxassetid://5881805127" then
				Code4 = Four.Parent.Parent.Name
			end
		end

		local args = {
			[1] = "Password",
			[2] = Code1,
			[3] = Code2,
			[4] = Code3,
			[5] = Code4
		}

		for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
			if v.ClassName == "RemoteFunction" and v.Name == "VR" then
				v:InvokeServer(unpack(args))
			end
		end
	end)
else
	if game.PlaceId == 5913871729 then
		local KindaAuto = false

		local Function1 = ScriptFunction:Clone()
		Function1:WaitForChild("ScriptFunctionName").Text = "Note: Make sure to subscribe to @ICraftPe on YouTube, lol."
		Function1:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0.458824, 0.470588, 0.588235))
		Function1:WaitForChild("ScriptFunctionExecute"):Remove()
		Function1.Parent = MainScrollableFrame

		local Function2 = ScriptFunction:Clone()
		Function2:WaitForChild("ScriptFunctionName").Text = "Zombie no touch / hitbox changer (press K on keyboard)"
		Function2:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0.0196078, 0.027451, 0.494118))
		Function2.Parent = MainScrollableFrame

		local Function3 = ScriptFunction:Clone()
		Function3:WaitForChild("ScriptFunctionName").Text = "Teleport to next encounter (press L on keyboard)"
		Function3:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0.666667, 0, 0))
		Function3.Parent = MainScrollableFrame

		local Function4 = ScriptFunction:Clone()
		Function4:WaitForChild("ScriptFunctionName").Text = "Kinda auto (press J on keyboard)"
		Function4:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0, 0, 0))
		Function4.Parent = MainScrollableFrame

		Function2:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
			for i,Hitbox in pairs(game:GetService("Workspace"):FindFirstChild("Enemies"):GetDescendants()) do
				if Hitbox.Name == "Hitbox" and Hitbox.Parent.Parent.Name == "Enemies" then
					for i,Change in pairs(Hitbox:GetDescendants()) do
						if Change.Parent.Name == "Hitbox" then
							Change.CanCollide = true
							Change.Size = Vector3.new(25, 25, 25)
						end
					end
				end
			end
		end)

		Function3:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
			for i,v in pairs(game:GetService("Workspace"):FindFirstChild("Characters"):GetDescendants()) do
				if v.ClassName == "Model" and v.Parent.Name == "Characters" then
					for i,r in pairs(game:GetService("Workspace"):FindFirstChild("Encounters"):GetDescendants()) do
						if r.Name == "BeginTrigger" and r:FindFirstChildWhichIsA("TouchTransmitter") then
							v:SetPrimaryPartCFrame(r.CFrame)
						else
							if r.Name == "PrizeTrigger" and r:FindFirstChildWhichIsA("TouchTransmitter") then
								v:SetPrimaryPartCFrame(r.CFrame)
							end
						end
					end
				end
			end
		end)

		Function4:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
			if KindaAuto == false then
				KindaAuto = true

				Function2:FindFirstChild("ScriptFunctionExecute"):Remove()
				Function3:FindFirstChild("ScriptFunctionExecute"):Remove()
				Function4:FindFirstChild("ScriptFunctionExecute"):Remove()

				while wait() do
					for i,v in pairs(game:GetService("Workspace"):FindFirstChild("Characters"):GetDescendants()) do
						if v.ClassName == "Model" and v.Parent.Name == "Characters" then
							for i,r in pairs(game:GetService("Workspace"):FindFirstChild("Enemies"):GetDescendants()) do
								if r.Name == "Root" and r.Parent.Parent.Name == "Enemies" then
									local BodyPosition = Instance.new("BodyPosition", v.PrimaryPart)
									BodyPosition.MaxForce = Vector3.new(1e9, 1e9, 1e9)
									BodyPosition.Position = r.Position + Vector3.new(0, 10, 0)
									game:GetService("Debris"):AddItem(BodyPosition, 0.5)

									for i,Hitbox in pairs(r.Parent:GetDescendants()) do
										if Hitbox.Name == "Hitbox" and Hitbox.Parent.Parent.Name == "Enemies" then
											for i,Change in pairs(Hitbox:GetDescendants()) do
												if Change.Parent.Name == "Hitbox" then
													Change.CanCollide = true
													Change.Size = Vector3.new(25, 25, 25)
												end
											end
										end
									end
								end
							end

							for i,r in pairs(game:GetService("Workspace"):FindFirstChild("Encounters"):GetDescendants()) do
								if r.Name == "BeginTrigger" and r:FindFirstChildWhichIsA("TouchTransmitter") then
									v:SetPrimaryPartCFrame(r.CFrame)
								else
									if r.Name == "PrizeTrigger" and r:FindFirstChildWhichIsA("TouchTransmitter") then
										v:SetPrimaryPartCFrame(r.CFrame)
									end
								end
							end
						end
					end
				end
			end
		end)

		game:GetService("UserInputService").InputBegan:Connect(function(Input, Processed)
			if not Processed and Input.KeyCode == Enum.KeyCode.K then
				for i,Hitbox in pairs(game:GetService("Workspace"):FindFirstChild("Enemies"):GetDescendants()) do
					if Hitbox.Name == "Hitbox" and Hitbox.Parent.Parent.Name == "Enemies" then
						for i,Change in pairs(Hitbox:GetDescendants()) do
							if Change.Parent.Name == "Hitbox" then
								Change.CanCollide = true
								Change.Size = Vector3.new(25, 25, 25)
							end
						end
					end
				end
			end
		end)

		game:GetService("UserInputService").InputBegan:Connect(function(Input, Processed)
			if not Processed and Input.KeyCode == Enum.KeyCode.L then
				for i,v in pairs(game:GetService("Workspace"):FindFirstChild("Characters"):GetDescendants()) do
					if v.ClassName == "Model" and v.Parent.Name == "Characters" then
						for i,r in pairs(game:GetService("Workspace"):FindFirstChild("Encounters"):GetDescendants()) do
							if r.Name == "BeginTrigger" and r:FindFirstChildWhichIsA("TouchTransmitter") then
								v:SetPrimaryPartCFrame(r.CFrame)
							else
								if r.Name == "PrizeTrigger" and r:FindFirstChildWhichIsA("TouchTransmitter") then
									v:SetPrimaryPartCFrame(r.CFrame)
								end
							end
						end
					end
				end
			end
		end)

		game:GetService("UserInputService").InputBegan:Connect(function(Input, Processed)
			if not Processed and Input.KeyCode == Enum.KeyCode.J then
				if KindaAuto == false then
					KindaAuto = true
					
					Function2:FindFirstChild("ScriptFunctionExecute"):Remove()
					Function3:FindFirstChild("ScriptFunctionExecute"):Remove()
					Function4:FindFirstChild("ScriptFunctionExecute"):Remove()

					while wait() do
						for i,v in pairs(game:GetService("Workspace"):FindFirstChild("Characters"):GetDescendants()) do
							if v.ClassName == "Model" and v.Parent.Name == "Characters" then
								for i,r in pairs(game:GetService("Workspace"):FindFirstChild("Enemies"):GetDescendants()) do
									if r.Name == "Root" and r.Parent.Parent.Name == "Enemies" then
										local BodyPosition = Instance.new("BodyPosition", v.PrimaryPart)
										BodyPosition.MaxForce = Vector3.new(1e9, 1e9, 1e9)
										BodyPosition.Position = r.Position + Vector3.new(0, 15, 0)
										game:GetService("Debris"):AddItem(BodyPosition, 0.5)

										for i,Hitbox in pairs(r.Parent:GetDescendants()) do
											if Hitbox.Name == "Hitbox" and Hitbox.Parent.Parent.Name == "Enemies" then
												for i,Change in pairs(Hitbox:GetDescendants()) do
													if Change.Parent.Name == "Hitbox" then
														Change.CanCollide = false
														Change.Size = Vector3.new(200, 15, 200)
													end
												end
											end
										end
									end
								end

								for i,r in pairs(game:GetService("Workspace"):FindFirstChild("Encounters"):GetDescendants()) do
									if r.Name == "BeginTrigger" and r:FindFirstChildWhichIsA("TouchTransmitter") then
										v:SetPrimaryPartCFrame(r.CFrame)
									else
										if r.Name == "PrizeTrigger" and r:FindFirstChildWhichIsA("TouchTransmitter") then
											v:SetPrimaryPartCFrame(r.CFrame)
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end

if game.PlaceId == 3233893879 or game.PlaceId == 5913871729 then
else
	local Function1 = ScriptFunction:Clone()
	Function1:WaitForChild("ScriptFunctionName").Text = "Teleport to UGC game"
	Function1:WaitForChild("ScriptFunctionName").TextColor = BrickColor.new(Color3.new(0, 0.333333, 0))
	Function1.Parent = MainScrollableFrame

	Function1:WaitForChild("ScriptFunctionExecute").MouseButton1Click:Connect(function()
		game:GetService("TeleportService"):Teleport(3233893879)
	end)
end