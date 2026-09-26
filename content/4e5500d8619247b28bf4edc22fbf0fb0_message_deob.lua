local tbl = {}
local unpack_ = unpack or table.unpack
tbl.value1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/traurobloxdeptrai/oii/refs/heads/main/vindui.lua"))()
tbl.value2 = game:GetService("Players")
tbl.value3 = game:GetService("RunService")
tbl.value4 = game:GetService("TweenService")
tbl.value5 = game:GetService("TeleportService")
tbl.value6 = game:GetService("ReplicatedStorage")
tbl.value7 = game:GetService("Workspace")
tbl.value8 = game:GetService("HttpService")
local Assets = require(tbl.value6:WaitForChild("Data"):WaitForChild("Assets"))
local EggState = nil

pcall(function()
	EggState = require(tbl.value6:WaitForChild("Client"):WaitForChild("EggState"))
end)

local PlotState = nil

pcall(function()
	PlotState = require(tbl.value6.Client.PlotState)
end)

local AreaEggResetWall = nil

pcall(function()
	AreaEggResetWall = require(tbl.value6.Client.AreaEggResetWall)
end)

local AreaEggSlotIdentity = nil

pcall(function()
	AreaEggSlotIdentity = require(tbl.value6.Shared.Util.AreaEggSlotIdentity)
end)

local scramble = nil

pcall(function()
	scramble = require(tbl.value6:WaitForChild("Shared"):WaitForChild("Remotes")).Scramble
end)

local UserInputService = game:GetService("UserInputService")
tbl.value9 = tbl.value2.LocalPlayer
tbl.value10 = {}
tbl.value11 = {}
tbl.value12 = {}
tbl.value13 = {}

tbl.value10.Rarities = {
	"Common",
	"Uncommon",
	"Rare",
	"Epic",
	"Legendary",
	"Mythic",
	"Cosmic",
	"Secret",
	"Divine",
	"Eternal",
}

tbl.value14 = {
	AutoSteal = false,
	FarmMethod = "Speed",
	AntiTrap = true,
	SecretPriority = true,
	AutoHop = false,
	MaxHops = 15,
	HopDelay = 20,
	HopCount = 0,
	LowPlayerHop = false,
	AutoHatch = false,
	HatchOnce = false,
	EggESP = false,
	FpsBoost = false,
	AutoEquipBest = false,
	AutoClaim = false,
	ClaimInterval = 20,
	AutoUpgrade = false,
	UpgradeInterval = 30,
	AutoTreadmill = false,
	AutoStealTreadmill = false,
	EggValueThreshold = 0,
	AutoUpgradeTreadmill = false,
	AntiCheat = false,
	HumReady = false,
	Unloaded = false,
}

tbl.value15 = {}
tbl.value16 = {}

tbl.value17 = function()
	return not tbl.value14.Unloaded
end

tbl.value18 = function(arg, arg2, arg3)
	pcall(function()
		tbl.value12.Window:Notify({ Title = arg, Content = arg2, Duration = arg3 or 4 })
	end)
end

tbl.value11.hostGui = type(gethui) == "function" and gethui() or game:GetService("CoreGui")
tbl.value11.warnLayer = nil

local function fn(arg)
	local thread = task.spawn(function()
		xpcall(arg, function(arg2)
			warn("[RealKidHub] " .. tostring(arg2) .. "\n" .. debug.traceback())
		end)
	end)

	tbl.value15[#tbl.value15 + 1] = thread
	return thread
end

tbl.value19 = nil

tbl.value19 = function()
	if tbl.value11.warnLayer and tbl.value11.warnLayer.Parent then
		return tbl.value11.warnLayer
	end

	return pcall(function()
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "RealKidHubWarn"
		screenGui.ResetOnSpawn = false
		screenGui.IgnoreGuiInset = true
		screenGui.DisplayOrder = 9999
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.Parent = tbl.value11.hostGui
		tbl.value11.warnLayer = screenGui
	end) and tbl.value11.warnLayer or nil
end

tbl.value20 = function(text, arg)
	local v = tbl.value19()
	if not v then
		return
	end
	local n = arg or 4

	pcall(function()
		local frame = Instance.new("Frame")
		frame.AnchorPoint = Vector2.new(1, 1)
		frame.Position = UDim2.new(1, 20, 1, -22)
		frame.Size = UDim2.fromOffset(232, 54)
		frame.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
		frame.BorderSizePixel = 0
		frame.Parent = v
		local uiCorner = Instance.new("UICorner")
		uiCorner.CornerRadius = UDim.new(0, 10)
		uiCorner.Parent = frame
		local uiStroke = Instance.new("UIStroke")
		uiStroke.Thickness = 1
		uiStroke.Color = Color3.fromRGB(238, 168, 62)
		uiStroke.Transparency = 0.35
		uiStroke.Parent = frame
		local frame2 = Instance.new("Frame")
		frame2.Size = UDim2.new(0, 3, 1, -16)
		frame2.Position = UDim2.new(0, 8, 0, 8)
		frame2.BackgroundColor3 = Color3.fromRGB(238, 168, 62)
		frame2.BorderSizePixel = 0
		frame2.Parent = frame
		local uiCorner2 = Instance.new("UICorner")
		uiCorner2.CornerRadius = UDim.new(1, 0)
		uiCorner2.Parent = frame2
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.Position = UDim2.new(0, 20, 0, 9)
		textLabel.Size = UDim2.new(1, -30, 0, 16)
		textLabel.Font = Enum.Font.GothamBold
		textLabel.TextSize = 12
		textLabel.TextColor3 = Color3.fromRGB(238, 168, 62)
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.Text = "Warning"
		textLabel.Parent = frame
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.BackgroundTransparency = 1
		textLabel2.Position = UDim2.new(0, 20, 0, 27)
		textLabel2.Size = UDim2.new(1, -30, 0, 18)
		textLabel2.Font = Enum.Font.Gotham
		textLabel2.TextSize = 12
		textLabel2.TextColor3 = Color3.fromRGB(206, 206, 212)
		textLabel2.TextXAlignment = Enum.TextXAlignment.Left
		textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel2.Text = text
		textLabel2.Parent = frame
		tbl.value4:Create(frame, TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(1, -18, 1, -22) }):Play()

		task.delay(n, function()
			local tween = tbl.value4:Create(frame, TweenInfo.new(0.24, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { Position = UDim2.new(1, 260, 1, -22) })
			tween:Play()
			tween.Completed:Wait()
			frame:Destroy()
		end)
	end)
end

local function fn2(arg)
	tbl.value16[#tbl.value16 + 1] = arg
	return arg
end

tbl.value21 = function()
	local character = tbl.value9.Character
	return character and character:FindFirstChild("HumanoidRootPart") or nil
end

tbl.value22 = function()
	local character = tbl.value9.Character
	return character and character:FindFirstChildWhichIsA("Humanoid") or nil
end

tbl.value23 = function()
	local v = tbl.value22()
	return tbl.value21() ~= nil and v ~= nil and v.Health > 0
end

tbl.value10.HUM_COPY = {
	"RigType",
	"HipHeight",
	"JumpPower",
	"JumpHeight",
	"UseJumpPower",
	"AutoRotate",
	"MaxSlopeAngle",
	"DisplayDistanceType",
	"NameDisplayDistance",
	"HealthDisplayDistance",
	"AutomaticScalingEnabled",
	"BreakJointsOnDeath",
	"RequiresNeck",
	"EvaluateStateMachine",
}

local function fn3()
	local character = tbl.value9.Character
	local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
	if not character or not humanoid then
		return false
	end
	local tbl2 = {}

	for _, v in ipairs(tbl.value10.HUM_COPY) do
		local v2 = v

		local ok, result = pcall(function()
			return humanoid[v2]
		end)

		if ok then
			tbl2[v2] = result
		end
	end

	local walkSpeed = humanoid.WalkSpeed
	tbl.value11.originalHumanoid = humanoid

	pcall(function()
		humanoid.Parent = nil
	end)

	tbl.value3.Heartbeat:Wait()
	local humanoid2 = Instance.new("Humanoid")

	for k, v in pairs(tbl2) do
		local v2 = k
		local v3 = v

		pcall(function()
			humanoid2[v2] = v3
		end)
	end

	humanoid2.Parent = character
	tbl.value3.Heartbeat:Wait()
	if character ~= humanoid2.Parent then
		return false
	end
	humanoid2.WalkSpeed = walkSpeed

	pcall(function()
		humanoid2:ChangeState(Enum.HumanoidStateType.Landed)
	end)

	local currentCamera = tbl.value7.CurrentCamera

	if currentCamera then
		pcall(function()
			currentCamera.CameraSubject = humanoid2
		end)
	end

	tbl.value14.HumReady = true
	return true
end

tbl.value24 = tbl.value6:FindFirstChild("Packages")
tbl.value24 = tbl.value24 and tbl.value24:FindFirstChild("Networking") or nil

tbl.value25 = {
	EggSnapshot = "RF/EggWorld/AskFieldEggSnapshot",
	EggCarry = "RF/EggWorld/AskFieldEggCarry",
	GuardStrike = "RE/GuardPatrol/ForestStrike",
	EggPlace = "RF/EggWorld/AskPlaceEgg",
	EggDrop = "RF/EggWorld/AskFieldEggDrop",
	EggLive = "RF/EggWorld/AskLiveSnapshot",
	EggRarityShow = "RF/EggWorld/AskFieldEggRarityShows",
	Hatch = "RF/EggWorld/AskHatch",
	HatchFinish = "RF/EggWorld/AskFinishHatch",
	SkipGrowth = "RF/EggWorld/AskSkipGrowth",
	PlotState = "RF/Homestead/AskState",
	BaseTierRaise = "RE/Homestead/AskBaseTierRaise",
	NearbyBuy = "RE/Homestead/AskNearbyPurchase",
	Collect = "RF/AwayEarnings/AskCollect",
	PendingCheck = "RF/AwayEarnings/PendingCheck",
	CodexAll = "RF/Codex/AskRedeemAll",
	WearBest = "RF/Haul/WearBest",
	SatchelSale = "RF/Haul/OfferFullSatchelSale",
	SellEveryPet = "RE/PetSatchel/SellEveryPet",
	SellPet = "RE/PetSatchel/SellPet",
	PetSnapshot = "RF/PenRoster/AskLiveSnapshot",
	PetSale = "RF/PenRoster/AskSale",
	PetWear = "RF/PenRoster/AskWear",
	PetDoff = "RF/PenRoster/AskDoff",
	TreadRaise = "RF/Treadmill/AskTierRaise",
	TreadRender = "RF/Treadmill/AskRenderSnapshot",
	WearTool = "RF/EggWorld/AskWearTool",
	DoffTool = "RF/EggWorld/AskDoffTool",
	RigWipe = "RE/RigSync/AskRigWipe",
}

tbl.value26 = nil

tbl.value26 = function(arg)
	return tbl.value24 and tbl.value24:FindFirstChild(arg) or nil
end

tbl.value27 = function(arg, ...)
	local v = tbl.value26(arg)
	if not v then
		return nil
	end

	if v:IsA("RemoteFunction") then
		local ok, result = pcall(v.InvokeServer, v, ...)
		return ok and result or nil
	end
	return pcall(v.FireServer, v, ...) or nil
end

local AssignedBeltShifted = tbl.value26("RE/Treadmill/AssignedBeltShifted")

if AssignedBeltShifted and AssignedBeltShifted:IsA("RemoteEvent") then
	fn2(AssignedBeltShifted.OnClientEvent:Connect(function(arg)
		if arg and tbl.value14.AntiTreadmill then
			task.spawn(tbl.value27, "RF/Treadmill/AskDoff")
		end
	end))
end

tbl.value28 = function()
	local tbl2 = {}

	if tbl.value24 then
		for _, child in ipairs(tbl.value24:GetChildren()) do
			if child:IsA("RemoteFunction") or child:IsA("RemoteEvent") then
				tbl2[#tbl2 + 1] = child.Name
			end
		end
	end

	table.sort(tbl2)
	return tbl2
end

local fireproximityprompt_ = fireproximityprompt or syn and syn.fireproximityprompt
tbl.value29 = nil
tbl.value29 = fireproximityprompt_

tbl.value30 = function(arg)
	if not tbl.value29 or not arg or not arg.Enabled then
		return false
	end

	pcall(function()
		arg.HoldDuration = 0
	end)

	return pcall(tbl.value29, arg)
end

tbl.value31 = function(arg)
	local v = tbl.value21()
	local parent = arg and arg.Parent
	if not v or not parent then
		return false
	end
	local position

	if parent:IsA("BasePart") then
		position = parent.Position
	elseif parent:IsA("Model") then
		local ok, result = pcall(function()
			return parent:GetPivot()
		end)

		position = ok and result.Position or nil
	else
		position = nil

		if parent:IsA("Attachment") then
			position = parent.WorldPosition
		end
	end

	if not position then
		return false
	end
	return (v.Position - position).Magnitude <= (arg.MaxActivationDistance > 0 and arg.MaxActivationDistance or 12) + 4
end

tbl.value32 = function(arg, arg2)
	local tbl2 = {}
	if not arg then
		return tbl2
	end

	for _, descendant in ipairs(arg:GetDescendants()) do
		if descendant:IsA("ProximityPrompt") and descendant.Enabled then
			local str = (descendant.Name .. " " .. descendant.ActionText .. " " .. descendant.ObjectText):lower()

			if descendant.Parent then
				str ..= " " .. descendant.Parent.Name:lower()
			end

			for _, v in ipairs(arg2) do
				if str:find(v, 1, true) then
					tbl2[#tbl2 + 1] = descendant
					break
				end
			end
		end
	end

	return tbl2
end

tbl.value11.uidShape = {}

tbl.value33 = function(arg, arg2)
	local v = tbl.value11.uidShape[arg]

	if v ~= 2 then
		local v2 = tbl.value27(arg, { Uid = arg2 })
		if v2 ~= nil and v2 ~= false then
			tbl.value11.uidShape[arg] = 1
			return true
		end

		if v == 1 then
			return false
		end
	end

	local v2 = tbl.value27(arg, arg2)
	if v2 ~= nil and v2 ~= false then
		tbl.value11.uidShape[arg] = 2
		return true
	end
	return false
end

tbl.value10.rarityLadder = {}

for i, rarity in ipairs(tbl.value10.Rarities) do
	tbl.value10.rarityLadder[rarity] = i
end

tbl.value34 = function(arg)
	if type(arg) ~= "string" then
		return 0
	end
	return tbl.value10.rarityLadder[arg] or 0
end

tbl.value13.areaLabel = {}
tbl.value13.areaRarity = {}
tbl.value13.areaTierName = {}
tbl.value13.areaByLabel = {}
tbl.value13.areaOrder = {}

tbl.value35 = function(arg, arg2, arg3, arg4)
	if not arg or tbl.value13.areaLabel[arg] then
		return
	end
	arg2 = arg2 or arg
	tbl.value13.areaLabel[arg] = arg2
	tbl.value13.areaRarity[arg] = arg3 or 0
	tbl.value13.areaTierName[arg] = arg4
	tbl.value13.areaByLabel[arg2] = arg
	tbl.value13.areaOrder[#tbl.value13.areaOrder + 1] = arg
end

tbl.value36 = function()
	table.sort(tbl.value13.areaOrder, function(arg, arg2)
		local n = tbl.value13.areaRarity[arg]
		local value13 = tbl.value13
		n = n or 0
		local n2 = value13.areaRarity[arg2] or 0
		if n == n2 then
			return tostring(tbl.value13.areaLabel[arg]) < tostring(tbl.value13.areaLabel[arg2])
		end
		return n < n2
	end)
end

tbl.value37 = function()
	local tbl2 = {}

	for _, v in ipairs(tbl.value13.areaOrder) do
		tbl2[#tbl2 + 1] = tbl.value13.areaLabel[v]
	end

	return tbl2
end

local data = tbl.value6:FindFirstChild("Data")
tbl.value38 = data and data:FindFirstChild("Areas")

local ok, result = pcall(function()
	return tbl.value38 and require(tbl.value38)
end)

local directory = ok and type(result) == "table" and (result.Directory or result) or nil

if type(directory) == "table" then
	for k, v in pairs(directory) do
		if type(k) == "string" and type(v) == "table" then
			local n = 0
			local displayName = nil

			if type(v.Rarity) == "table" then
				n = tonumber(v.Rarity.RarityNumber) or 0
				displayName = v.Rarity.DisplayName or v.Rarity._id
			end

			tbl.value35(k, v.DisplayName or v.Name or k, n, displayName)
		end
	end
end

if #tbl.value13.areaOrder == 0 then
	local areas = tbl.value7:FindFirstChild("Areas") or tbl.value7:FindFirstChild("Islands")

	if areas then
		local n = 0

		for _, child in ipairs(areas:GetChildren()) do
			n += 1
			tbl.value35(child.Name, child.Name, n, nil)
		end
	end
end

tbl.value36()

tbl.value39 = function(arg)
	local tbl2 = {}
	local n = 0

	if type(arg) == "table" then
		for _, v in ipairs(arg) do
			if type(v) == "string" and v ~= "" then
				tbl2[v] = true
				n += 1
			end
		end
	end

	return tbl2, n
end

local value13 = tbl.value13
tbl.value13.areaWanted = {}
value13.areaWantedCount = 0
local value132 = tbl.value13
tbl.value13.rarityWanted = {}
value132.rarityWantedCount = 0
tbl.value13.eggWanted = {}
tbl.value13.eggWantedCount = 0

tbl.value40 = function()
	local v = tbl.value39(tbl.value14.AreaFocus)
	local areaWanted = {}
	local areaWantedCount = 0

	for k in pairs(v) do
		k = tbl.value13.areaByLabel[k] or k
		areaWanted[k] = true
		areaWantedCount += 1
	end

	local value133 = tbl.value13
	tbl.value13.areaWanted = areaWanted
	value133.areaWantedCount = areaWantedCount
end

tbl.value41 = nil

tbl.value42 = function()
	local value133 = tbl.value13
	local value134 = tbl.value13
	local v, v2 = tbl.value39(tbl.value14.RarityFilter)
	value133.rarityWanted = v
	value134.rarityWantedCount = v2
end

tbl.value41 = {}

tbl.value43 = function(arg, arg2)
	local v = tbl.value41[arg]
	if not v then
		return
	end

	if pcall(function()
		v:SetValue(arg2)
	end) then
		return
	end

	pcall(function()
		v:Set(arg2)
	end)
end

tbl.value44 = function(arg, arg2)
	local v = tbl.value41[arg]
	if not v then
		return
	end

	if pcall(function()
		v:Refresh(arg2)
	end) then
		return
	end

	pcall(function()
		v:SetValues(arg2)
	end)
end

tbl.value11.slotsCache = nil
tbl.value45 = nil

tbl.value45 = function()
	if tbl.value11.slotsCache and tbl.value11.slotsCache.Parent then
		return tbl.value11.slotsCache
	end
	tbl.value11.slotsCache = tbl.value7:FindFirstChild("AreaEggSlotsClient")
	return tbl.value11.slotsCache
end

tbl.value46 = nil

tbl.value46 = function(arg)
	local v = tbl.value45()
	return v and v:FindFirstChild(arg) or nil
end

tbl.value47 = function(arg)
	local v = tbl.value46(arg)
	if not v then
		return nil
	end
	return v.PrimaryPart or v:FindFirstChild("Hitbox") or v:FindFirstChildWhichIsA("BasePart")
end

tbl.value48 = function(arg)
	if arg.BaseMutation then
		return true
	end
	return type(arg.Mutations) == "table" and next(arg.Mutations) ~= nil
end

tbl.value11.eggList = {}
tbl.value11.eggListAt = 0
tbl.value11.triedUids = {}
tbl.value11.collectedUids = {}
tbl.value11.failUids = {}
tbl.value11.areaDirty = false

tbl.value49 = function(arg)
	local flag = not arg
	local flag2

	if flag then
		local eggListAt = tbl.value11.eggListAt
		flag2 = tick() - eggListAt < 1.5
	else
		flag2 = flag
	end

	if flag2 then
		return tbl.value11.eggList
	end
	local records = tbl.value27(tbl.value25.EggSnapshot)
	records = records and records.Records
	if type(records) ~= "table" then
		return tbl.value11.eggList
	end
	local eggList = {}
	local v, v2, v3 = pairs(records)
	local flag3 = nil

	while true do
		local v4, v5 = v(v2, v3)

		if not v4 then
			break
		elseif not ((v5.State == "Slot" or v5.State == "Dropped") and v5.Uid) then
			v3 = v4
		else
			local v6 = tbl.value47(v5.Uid)
			local position

			if v6 then
				position = v6.Position
			else
				local boundsCFrame = v5.BoundsCFrame or v5.BottomCFrame
				position = boundsCFrame and boundsCFrame.Position or nil
			end

			if not position then
				v3 = v4
			else
				local areaId = v5.AreaId

				if areaId and not tbl.value13.areaLabel[areaId] then
					local value35 = tbl.value35
					local n = #tbl.value13.areaOrder + 1
					local rarity = v5.Rarity or v5.RarityName or v5.Tier or v5.RarityId

					if type(rarity) == "table" then
						local displayName = rarity.DisplayName

						if displayName then
							rarity = displayName
						else
							local id = rarity._id

							if id then
								rarity = id
							else
								rarity = rarity.Name or rarity.Id
							end
						end
					end

					value35(areaId, areaId, n, type(rarity) == "string" and rarity or nil)
					tbl.value11.areaDirty = true
				end

				local rarity = v5.Rarity or v5.RarityName or v5.Tier or v5.RarityId
				local displayName

				if type(rarity) == "table" then
					displayName = rarity.DisplayName or rarity._id or rarity.Name or rarity.Id
				else
					displayName = rarity
				end

				displayName = type(displayName) == "string" and displayName or nil
				local v7 = Assets.Directory[v5.AssetCategory]

				if v7 then
					displayName = v7.Rarity.DisplayName
				end

				if tbl.value34(displayName) == 0 then
					displayName = nil
				end

				if not displayName then
					while true do
						if not flag3 and areaId then
							displayName = tbl.value13.areaTierName[areaId]

							if not displayName then
								flag3 = true
							end
						else
							displayName = v5.Rarity or v5.RarityName or v5.Tier or v5.RarityId

							if type(displayName) == "table" then
								local displayName2 = displayName.DisplayName

								if displayName2 then
									displayName = displayName2
								else
									local id = displayName._id

									if id then
										displayName = id
									else
										displayName = displayName.Name or displayName.Id
									end
								end
							end

							displayName = type(displayName) == "string" and displayName
							flag3 = false
							displayName = displayName or nil
						end

						if flag3 then
							continue
						end
						break
					end
				end

				eggList[#eggList + 1] = {
					uid = v5.Uid,
					area = areaId,
					nestId = v5.NestId,
					label = areaId and tbl.value13.areaLabel[areaId] or "Unknown",
					pos = position,
					tier = areaId and tbl.value13.areaRarity[areaId] or 0,
					rarity = displayName,
					rank = tbl.value34(displayName),
					pet = v5.AssetCategory,
					earning = v7 and v7.EarningRate or 0,
					mutated = tbl.value48(v5),
					size = v5.BoundsSize and v5.BoundsSize.Magnitude or 3,
				}

				v3 = v4
			end
		end
	end

	if tbl.value11.areaDirty then
		tbl.value11.areaDirty = false
		tbl.value36()
		tbl.value40()
		tbl.value44("AreaFocus", tbl.value37())
	end

	tbl.value11.eggList = eggList
	tbl.value11.eggListAt = tick()
	local tbl2 = {}

	for i = 1, #eggList do
		tbl2[eggList[i].uid] = true
	end

	local now = tick()

	for k, triedUid in pairs(tbl.value11.triedUids) do
		if not tbl2[k] and now - triedUid > 300 then
			tbl.value11.triedUids[k] = nil
			tbl.value11.failUids[k] = nil
		end
	end

	return eggList
end

tbl.value50 = function(arg)
	local v = tbl.value11.triedUids[arg.uid]

	if v then
		local n = tbl.value11.failUids[arg.uid] or 0
		local n2

		if n >= 4 then
			n2 = 600
		elseif n == 3 then
			n2 = 120
		elseif n == 2 then
			n2 = 45
		else
			n2 = 6

			if n == 1 then
				n2 = 18
			end
		end

		if tick() - v < n2 then
			return false
		end
	end

	if tbl.value13.areaWantedCount > 0 and not tbl.value13.areaWanted[arg.area] then
		return false
	end

	if tbl.value13.rarityWantedCount > 0 and not tbl.value13.rarityWanted[arg.rarity] then
		return false
	end

	if tbl.value13.eggWantedCount > 0 and not tbl.value13.eggWanted[arg.uid] then
		return false
	end

	if tbl.value14.AutoStealTreadmill and arg.earning < tbl.value14.EggValueThreshold then
		return false
	end
	return true
end

local function fn4()
	local v = tbl.value21()
	if not v then
		return nil
	end
	tbl.value49(false)

	if tbl.value11.recoverUid then
		for _, v2 in ipairs(tbl.value11.eggList) do
			if v2.uid == tbl.value11.recoverUid then
				return v2
			end
		end

		tbl.value11.recoverUid = nil
	end

	local v2 = ipairs
	local value154 = tbl.value154 or {}

	for _, v3 in v2(value154) do
		for _, v4 in ipairs(tbl.value11.eggList) do
			if v4.uid == v3 and tbl.value50(v4) then
				return v4
			end
		end
	end

	local position = v.Position
	local v3 = nil
	local v4 = nil

	for i = 1, #tbl.value11.eggList do
		local v5 = tbl.value11.eggList[i]

		if tbl.value50(v5) then
			local n = v5.earning * 1000000 + v5.rank * 10000 + (not v5.mutated and 0 or 1000) + (v5.tier > 0 and v5.tier or v5.rank) * 10 - math.min((v5.pos - position).Magnitude, 100000) / 100000

			if not v3 or v3 < n then
				v3 = n
				v4 = v5
			end
		end
	end

	return v4
end

local function fn5()
	if not (tbl.value14.AutoSteal and tbl.value14.AutoStealTreadmill) then
		return false
	end

	for _, v in ipairs(tbl.value49(false)) do
		if tbl.value50(v) then
			return true
		end
	end

	return false
end

tbl.value11.travelling = false
tbl.value11.travelToken = 0
tbl.value11.recoverUid = nil
tbl.value11.eggResetUntil = 0

if EggState and EggState.ResetCountdown then
	fn2(EggState.ResetCountdown:Connect(function(arg)
		if type(arg) == "table" and type(arg.DayStartsAt) == "number" then
			tbl.value11.eggResetUntil = arg.DayStartsAt + 5
			tbl.value11.travelToken = tbl.value11.travelToken + 1
			tbl.value11.travelling = false
			tbl.value51()
		end
	end))
end

local function fn6(arg, arg2)
	pcall(function()
		arg.AssemblyLinearVelocity = Vector3.zero
		arg.AssemblyAngularVelocity = Vector3.zero
	end)

	if arg2 then
		pcall(function()
			arg2:ChangeState(Enum.HumanoidStateType.Physics)
		end)
	end
end

tbl.value51 = function(arg)
	local v = tbl.value21()
	local v2 = tbl.value22()

	if v then
		pcall(function()
			v.AssemblyLinearVelocity = Vector3.zero
			v.AssemblyAngularVelocity = Vector3.zero
		end)
	end

	if v2 then
		pcall(function()
			v2:ChangeState(Enum.HumanoidStateType.GettingUp)
		end)

		pcall(function()
			v2:ChangeState(Enum.HumanoidStateType.Landed)
		end)
	end

	local originalHumanoid = tbl.value11.originalHumanoid

	if not arg and not tbl.value14.AutoSteal and originalHumanoid then
		pcall(function()
			if v2 then
				v2:Destroy()
			end

			originalHumanoid.Parent = tbl.value9.Character
			local v3 = originalHumanoid
			local v4 = originalHumanoid
			originalHumanoid.PlatformStand = false
			v3.Sit = false
			v4.AutoRotate = true
			originalHumanoid:ChangeState(Enum.HumanoidStateType.Running)
			local currentCamera = tbl.value7.CurrentCamera

			if currentCamera then
				currentCamera.CameraSubject = originalHumanoid
			end
		end)

		tbl.value11.originalHumanoid = nil
		tbl.value14.HumReady = false
	end
end

tbl.value10.TRAP_RADIUS = 16
tbl.value10.TRAP_WORDS = { "trap", "cage", "snare" }
tbl.value11.trapList = {}
tbl.value11.trapModels = {}
tbl.value11.trapAt = 0

tbl.value52 = function()
	local trapModels = {}
	local trapList = {}
	local value7 = tbl.value7

	for _, v in ipairs({ tbl.value7:FindFirstChild("__DEBRIS"), value7 }) do
		if v then
			for _, child in ipairs(v:GetChildren()) do
				if (function(arg)
					if arg:IsA("BasePart") and arg:FindFirstChild("Hitbox") then
						return true
					end

					if not arg:IsA("Model") then
						return false
					end

					if arg:FindFirstChild("UnplacePrompt") then
						return true
					end
					local str = arg.Name:lower()

					for _, trapWord in ipairs(tbl.value10.TRAP_WORDS) do
						if str:find(trapWord, 1, true) then
							return true
						end
					end

					return false
				end)(child) then
					local function fn7(arg)
						local ok2, result2 = pcall(function()
							return arg:GetPivot()
						end)

						if ok2 and result2 then
							return result2.Position
						end
						local basePart = arg:FindFirstChildWhichIsA("BasePart")
						return basePart and basePart.Position or nil
					end

					local v2 = fn7(child)

					if v2 then
						trapList[#trapList + 1] = v2
						trapModels[#trapModels + 1] = child

						if tbl.value14.AntiTrap then
							local function fn8(arg)
								for _, descendant in ipairs(arg:GetDescendants()) do
									local v3 = descendant

									if v3:IsA("BasePart") then
										pcall(function()
											v3.CanTouch = false
										end)

										pcall(function()
											v3.CanCollide = false
										end)
									end
								end
							end

							fn8(child)
						end
					end
				end
			end
		end
	end

	tbl.value11.trapList = trapList
	tbl.value11.trapModels = trapModels
	tbl.value11.trapAt = tick()
	return trapList
end

tbl.value53 = function()
	local trapAt = tbl.value11.trapAt

	if tick() - trapAt > 2 then
		tbl.value52()
	end

	return tbl.value11.trapList
end

tbl.value54 = function(arg, arg2, arg3)
	if not tbl.value14.AntiTrap then
		return false
	end
	local v = tbl.value53()
	arg3 = arg3 or tbl.value10.TRAP_RADIUS
	local n = arg3 * arg3

	for i = 1, #v do
		local v2 = v[i]
		local n2 = v2.X - arg
		local n3 = v2.Z - arg2
		if n > n2 * n2 + n3 * n3 then
			return true
		end
	end

	return false
end

tbl.value55 = function()
	local character = tbl.value9.Character
	if not character then
		return
	end

	for _, descendant in ipairs(character:GetDescendants()) do
		local v = descendant

		if v:IsA("BasePart") then
			if v.Anchored then
				pcall(function()
					v.Anchored = false
				end)
			end
		elseif v:IsA("WeldConstraint") or v:IsA("Weld") then
			pcall(function()
				local part0 = v.Part0
				local part1 = v.Part1

				if part0 and not part0:IsDescendantOf(character) or part1 and not part1:IsDescendantOf(character) then
					v:Destroy()
				end
			end)
		end
	end

	local v = tbl.value22()

	if v and (tbl.value14.AutoSteal or tbl.value11.travelling) then
		pcall(function()
			v:ChangeState(Enum.HumanoidStateType.GettingUp)
		end)

		pcall(function()
			v:ChangeState(Enum.HumanoidStateType.Physics)
		end)
	end
end

tbl.value11.groundParams = RaycastParams.new()
tbl.value11.groundParams.FilterType = Enum.RaycastFilterType.Exclude
tbl.value11.groundParams.IgnoreWater = true

tbl.value56 = function()
	local tbl2 = {}

	if tbl.value9.Character then
		tbl2[#tbl2 + 1] = tbl.value9.Character
	end

	for _, player in ipairs(tbl.value2:GetPlayers()) do
		if player ~= tbl.value9 and player.Character then
			tbl2[#tbl2 + 1] = player.Character
		end
	end

	local v = tbl.value45()

	if v then
		tbl2[#tbl2 + 1] = v
	end

	for _, trapModel in ipairs(tbl.value11.trapModels) do
		if trapModel.Parent then
			tbl2[#tbl2 + 1] = trapModel
		end
	end

	return tbl2
end

tbl.value57 = function()
	tbl.value11.groundParams.FilterDescendantsInstances = tbl.value56()
end

tbl.value10.PROBE_LOW = 7
tbl.value10.PROBE_HIGH = 160
tbl.value10.PROBE_DOWN = 420
tbl.value10.STEP_MAX = 6
tbl.value10.TRAVEL_SPEED = 700
tbl.value10.ESP_DISTANCE = 750

local function fn7(arg)
	for i = 1, 6 do
		if not arg or arg == tbl.value7 then
			return false
		end

		if arg:IsA("Model") and arg:FindFirstChildWhichIsA("Humanoid") or arg:FindFirstChildWhichIsA("AnimationController") then
			return true
		end
		arg = arg.Parent
	end

	return false
end

tbl.value58 = nil

tbl.value58 = function(arg, arg2, arg3, arg4)
	local n = arg3

	for i = 1, 4 do
		local groundParams = tbl.value11.groundParams
		local hit = tbl.value7:Raycast(Vector3.new(arg, n, arg2), Vector3.new(0, -(n - arg3 - arg4), 0), groundParams)
		if not hit then
			return nil
		end

		if not fn7(hit.Instance) then
			return hit.Position.Y
		end
		n = hit.Position.Y - 0.6
		if n <= arg3 - arg4 then
			return nil
		end
	end

	return nil
end

tbl.value59 = function(arg, arg2, arg3)
	local v = tbl.value58(arg, arg2, arg3 + tbl.value10.PROBE_LOW, tbl.value10.PROBE_LOW + tbl.value10.PROBE_DOWN)
	if v then
		return v
	end
	local v2 = tbl.value58(arg, arg2, arg3 + tbl.value10.PROBE_HIGH, tbl.value10.PROBE_HIGH + tbl.value10.PROBE_DOWN)
	if v2 and v2 > arg3 + tbl.value10.PROBE_LOW then
		return v2
	end
	return nil
end

tbl.value60 = function()
	local n = tbl.value21()
	local v = tbl.value22()
	n = n and n.Size.Y * 0.5 or 1
	local n2 = 2

	if v then
		local ok2

		ok2, n2 = pcall(function()
			return v.HipHeight
		end)

		ok2 = ok2 and type(n2) == "number" and n2 > 0
		local n3 = 2

		if not ok2 then
			n2 = n3
		end
	end

	return n + n2
end

tbl.value11.PathService = game:GetService("PathfindingService")
tbl.value10.ROUTE_SAMPLE = 14
tbl.value10.ROUTE_DROP = 26
tbl.value61 = nil

tbl.value61 = function(arg, arg2, arg3)
	local vector = Vector3.new(arg2.X - arg.X, 0, arg2.Z - arg.Z)
	local magnitude = vector.Magnitude
	if magnitude < 1 then
		return true, arg3
	end
	local unit = vector.Unit
	local v = math.ceil(magnitude / tbl.value10.ROUTE_SAMPLE)
	local n = 0

	while true do
		n += 1

		if not (n <= v) then
			return true, arg3
		else
			local n2 = arg + unit * math.min(magnitude, n * tbl.value10.ROUTE_SAMPLE)
			if tbl.value54(n2.X, n2.Z) then
				return false, arg3
			end
			local v2 = tbl.value59(n2.X, n2.Z, arg3)
			local flag = not v2
			local flag2

			if flag then
				flag2 = flag
			else
				local routeDrop = tbl.value10.ROUTE_DROP
				flag2 = math.abs(v2 - arg3) > routeDrop
			end

			if flag2 then
				break
			end
			arg3 = v2
		end
	end

	return false, arg3
end

tbl.value62 = function(arg, arg2)
	local v = tbl.value59(arg.X, arg.Z, arg.Y)
	if not v then
		return false
	end

	for i = 1, #arg2 do
		local v2, v3 = tbl.value61(arg, arg2[i], v)
		if not v2 then
			return false
		end
		arg = arg2[i]
		v = v3
	end

	return true
end

local value11 = tbl.value11
tbl.value11.hubCache = nil
value11.hubTried = false
tbl.value63 = nil

tbl.value63 = function(arg, arg2)
	if not arg then
		return nil
	end
	local v, v2, v3 = ipairs(arg:GetDescendants())
	local flag = nil
	local vector = Vector3.zero
	local n = 0
	local v4

	while true do
		local v5 = v3

		while true do
			v3, v4 = v(v2, v5)

			if not v3 then
				flag = true
			end

			if not flag then
				if not v4:IsA("BasePart") then
					v5 = v3
					continue
				end
			end

			break
		end

		if not flag then
			vector += v4.Position
			n += 1
			if not (arg2 <= n) then
				continue
			end
		end

		break
	end

	if n == 0 then
		return nil
	end
	return vector / n
end

tbl.value64 = function()
	if tbl.value11.hubCache or tbl.value11.hubTried then
		return tbl.value11.hubCache
	end
	tbl.value11.hubTried = true
	local n = tbl.value63(tbl.value7:FindFirstChild("Stands"), 60)

	if not n then
		local plots = tbl.value7:FindFirstChild("Plots")

		if plots then
			local vector = Vector3.zero
			local n2 = 0

			for _, child in ipairs(plots:GetChildren()) do
				if child:IsA("Model") then
					local ok2, result2 = pcall(function()
						return child:GetPivot()
					end)

					if ok2 and result2 then
						vector += result2.Position
						n2 += 1
					end
				end
			end

			if n2 > 0 then
				n = vector / n2
			end
		end
	end

	if n then
		local v = tbl.value59(n.X, n.Z, n.Y) or tbl.value59(n.X, n.Z, n.Y + 200)

		if v then
			tbl.value11.hubCache = Vector3.new(n.X, v, n.Z)
		end
	end

	return tbl.value11.hubCache
end

tbl.value65 = function(arg)
	local tbl2 = {}

	for i = 1, #arg do
		local v = arg[i]
		local v2 = tbl2[#tbl2]

		if not v2 or Vector3.new(v.X - v2.X, 0, v.Z - v2.Z).Magnitude > 3 then
			tbl2[#tbl2 + 1] = v
		end
	end

	if #tbl2 < 3 then
		return tbl2
	end
	local tbl3 = {}

	for i = 2, #tbl2 - 1 do
		local vector = Vector3.new(tbl2[i].X - tbl2[i - 1].X, 0, tbl2[i].Z - tbl2[i - 1].Z)
		local vector2 = Vector3.new(tbl2[i + 1].X - tbl2[i].X, 0, tbl2[i + 1].Z - tbl2[i].Z)
		local flag = vector.Magnitude > 0.1
		local flag2

		if flag then
			flag2 = vector2.Magnitude > 0.1 and vector.Unit:Dot(vector2.Unit) < 0.995
		else
			flag2 = flag
		end

		if flag2 then
			tbl3[#tbl3 + 1] = tbl2[i]
		end
	end

	tbl3[#tbl3 + 1] = tbl2[#tbl2]
	return tbl3
end

local function fn8(arg, arg2)
	local ok2, result2 = pcall(function()
		return tbl.value11.PathService:CreatePath({
			AgentRadius = 3,
			AgentHeight = 6,
			AgentCanJump = true,
			AgentCanClimb = false,
			WaypointSpacing = 24,
		})
	end)

	if not ok2 or not result2 then
		return nil
	end

	local ok3 = pcall(function()
		result2:ComputeAsync(arg, arg2)
	end)

	tbl.value11.travelStep = tick()
	local status = nil
	local waypoints = nil

	pcall(function()
		status = result2.Status
	end)

	if ok3 and status == Enum.PathStatus.Success then
		pcall(function()
			waypoints = result2:GetWaypoints()
		end)
	end

	pcall(function()
		result2:Destroy()
	end)

	if type(waypoints) ~= "table" or #waypoints < 2 then
		return nil
	end
	local tbl2 = {}

	for i = 2, #waypoints do
		tbl2[#tbl2 + 1] = waypoints[i].Position
	end

	tbl2[#tbl2] = arg2
	return tbl.value65(tbl2)
end

tbl.value10.SIDE_OFFSETS = { 30, -30, 70, -70, 140, -140, 240, -240 }
tbl.value10.STRAIGHT_MAX = 60
tbl.value66 = nil

tbl.value66 = function(arg, arg2, arg3)
	if tbl.value62(arg, { arg3, arg2 }) then
		return { arg3, arg2 }
	end
	local vector = Vector3.new(arg3.X - arg.X, 0, arg3.Z - arg.Z)

	if vector.Magnitude > 1 then
		local vector2 = Vector3.new(-vector.Unit.Z, 0, vector.Unit.X)

		for i = 1, #tbl.value10.SIDE_OFFSETS do
			local n = arg3 + vector2 * tbl.value10.SIDE_OFFSETS[i]
			local v = tbl.value59(n.X, n.Z, arg3.Y)
			if not v then
				continue
			end
			local vector3 = Vector3.new(n.X, v, n.Z)
			if tbl.value62(arg, { vector3, arg2 }) then
				return { vector3, arg2 }
			end
		end
	end

	return nil
end

tbl.value67 = function(arg, arg2, arg3)
	local v = arg3 and tbl.value64() or nil

	if arg3 == "pickup" and v then
		local v2 = tbl.value72()

		local ok2, result2 = pcall(function()
			return v2 and v2:GetPivot()
		end)

		local flag = ok2 and result2 and Vector3.new(arg.X - result2.Position.X, 0, arg.Z - result2.Position.Z).Magnitude <= 26
		local magnitude = Vector3.new(arg2.X - arg.X, 0, arg2.Z - arg.Z).Magnitude
		local magnitude2 = Vector3.new(arg2.X - v.X, 0, arg2.Z - v.Z).Magnitude

		if not flag and magnitude2 > magnitude then
			v = nil
		end
	end

	if arg3 == "pickup" and not v then
		local v2 = fn8(arg, arg2)
		if v2 and #v2 > 0 then
			return v2
		end
	end

	local straightMax = tbl.value10.STRAIGHT_MAX
	if Vector3.new(arg2.X - arg.X, 0, arg2.Z - arg.Z).Magnitude <= straightMax and tbl.value62(arg, { arg2 }) and not v then
		return { arg2 }
	end

	if v then
		local v2 = tbl.value66(arg, arg2, v)
		if v2 then
			return v2
		end
	end

	local vector = Vector3.new(arg2.X - arg.X, 0, arg2.Z - arg.Z)

	if vector.Magnitude > 1 then
		local unit = vector.Unit
		local vector2 = Vector3.new(-unit.Z, 0, unit.X)
		local n = arg + vector * 0.5

		for i = 1, #tbl.value10.SIDE_OFFSETS do
			local n2 = n + vector2 * tbl.value10.SIDE_OFFSETS[i]
			local v2 = tbl.value59(n2.X, n2.Z, n.Y)
			if not v2 then
				continue
			end
			local vector3 = Vector3.new(n2.X, v2, n2.Z)
			if tbl.value62(arg, { vector3, arg2 }) then
				return { vector3, arg2 }
			end
		end
	end

	local v2 = fn8(arg, arg2)
	if v2 and #v2 > 0 then
		return v2
	end

	if v then
		return { v, arg2 }
	end
	return { arg2 }
end

tbl.value68 = function(arg, arg2, arg3, arg4, arg5, arg6)
	arg5 = arg5 or 0
	arg6 = arg6 or tbl.value10.TRAVEL_SPEED
	local v = tbl.value21()
	if not v then
		return false
	end
	local position = v.Position
	local vector = Vector3.new(arg.X - position.X, 0, arg.Z - position.Z)
	local magnitude = vector.Magnitude
	if magnitude <= 0.5 then
		return true
	end
	local unit = vector.Unit
	local rotation = CFrame.lookAt(Vector3.zero, unit).Rotation
	local v2 = tbl.value60()
	local n = (tbl.value59(position.X, position.Z, position.Y - v2) or position.Y - v2) + v2 + arg5
	local n2 = tick() + magnitude / arg6 + 10
	local now = tick()
	local n3 = 0
	local position2 = position
	local flag

	while true do
		local flag2 = tbl.value17() and arg4 == tbl.value11.travelToken and (not arg3 or arg3())
		flag = false

		if flag2 then
			local result2 = tbl.value3.Heartbeat:Wait()
			tbl.value11.travelStep = tick()
			local v3 = tbl.value21()
			local v4 = tbl.value22()
			local v5 = v3

			if not (not v5 or not v5.Parent or not v4 or v4.Health <= 0) then
				if (v5.Position - position2).Magnitude > 2 then
					position2 = v5.Position
					now = tick()
				elseif tick() - now > 0.5 then
					now = tick()
					tbl.value55()
				end

				if not (n2 < tick()) then
					local n4 = math.min(arg6 * math.min(result2, 0.1), magnitude - n3)
					local max = math.max
					local v6 = math.ceil(n4 / tbl.value10.STEP_MAX)
					local v7 = max(1, v6)
					local n5 = n4 / v7

					for i = 1, v7 do
						n3 = math.min(magnitude, n3 + n5)
						local n6 = position + unit * n3
						local v8 = tbl.value59(n6.X, n6.Z, n - v2)

						if v8 then
							if arg5 > 0 then
								n = v8 + v2 + arg5
							else
								n += math.clamp(v8 + v2 - n, -tbl.value10.STEP_MAX * 4, tbl.value10.STEP_MAX * 4)
							end
						end

						if not (magnitude <= n3) then
							continue
						end
						break
					end

					local n6 = position + unit * n3

					pcall(function()
						v5.CFrame = CFrame.new(n6.X, n, n6.Z) * rotation
					end)

					fn6(v5, v4)

					if n3 >= magnitude - 0.01 then
						flag = true
						break
					else
						continue
					end
				end
			end
		end

		break
	end

	if arg4 ~= tbl.value11.travelToken then
		return false
	end

	if flag then
		return true
	end
	local v3 = tbl.value21()
	if not v3 then
		return false
	end
	return Vector3.new(arg.X - v3.Position.X, 0, arg.Z - v3.Position.Z).Magnitude <= (arg2 or 8)
end

tbl.value10.TP_STEP = 45
tbl.value10.TP_WAIT = 0.08

local function fn9(arg, arg2, arg3, arg4, arg5)
	local n = arg5 or 0
	local v = tbl.value21()
	if not v then
		return false
	end
	local position = v.Position
	local vector = Vector3.new(arg.X - position.X, 0, arg.Z - position.Z)
	local magnitude = vector.Magnitude
	if magnitude <= 0.5 then
		return true
	end
	local unit = vector.Unit
	local rotation = CFrame.lookAt(Vector3.zero, unit).Rotation
	local v2 = tbl.value60()
	local n2 = (tbl.value59(position.X, position.Z, position.Y - v2) or position.Y - v2) + v2 + n
	local n3 = math.ceil(magnitude / tbl.value10.TP_STEP) * (tbl.value10.TP_WAIT + 0.06)
	local n4 = tick() + n3 + 10
	local now = tick()
	local n5 = 0
	local position2 = position
	local exitTo = nil

	while true do
		if tbl.value17() and arg4 == tbl.value11.travelToken and (not arg3 or arg3()) then
			local v3 = tbl.value21()
			local v4 = tbl.value22()
			local v5 = v3
			local flag = not v5
			local flag2

			if flag then
				flag2 = flag
			else
				local flag3 = not v5.Parent

				if flag3 then
					flag2 = flag3
				else
					flag2 = not v4 or v4.Health <= 0
				end
			end

			flag2 = flag2 or n4 < tick()

			if flag2 then
				exitTo = 1
				break
			else
				if (v5.Position - position2).Magnitude > 2 then
					position2 = v5.Position
					now = tick()
				elseif tick() - now > 0.5 then
					now = tick()
					tbl.value55()
				end

				n5 = math.min(magnitude, n5 + tbl.value10.TP_STEP)
				local n6 = position + unit * n5
				local v6 = tbl.value59(n6.X, n6.Z, n2 - v2)

				if v6 then
					n2 = v6 + v2 + n
				end

				pcall(function()
					v5.CFrame = CFrame.new(n6.X, n2, n6.Z) * rotation
				end)

				fn6(v5, v4)
				tbl.value11.travelStep = tick()
				if not (magnitude - 0.01 <= n5) then
					task.wait(tbl.value10.TP_WAIT)
					continue
				end
			end
		else
			exitTo = 1
			break
		end

		break
	end

	if exitTo == 1 then
		if arg4 ~= tbl.value11.travelToken then
			return false
		end
		local v3 = tbl.value21()
		if not v3 then
			return false
		end
		return Vector3.new(arg.X - v3.Position.X, 0, arg.Z - v3.Position.Z).Magnitude <= (arg2 or 8)
	end

	return true
end

local function fn10(arg, arg2)
	local objects = tbl.value7:FindFirstChild("__OBJECTS")
	objects = objects and objects:FindFirstChild("Areas")
	local wallStartCollision = objects and objects:FindFirstChild("WallStartCollision")
	objects = objects and objects:FindFirstChild("WallStartVisual")
	if not (wallStartCollision and objects and wallStartCollision:IsA("BasePart") and objects:IsA("BasePart") and wallStartCollision.CanCollide) then
		return nil
	end
	local rightVector = wallStartCollision.Size.X < wallStartCollision.Size.Z and wallStartCollision.CFrame.RightVector or wallStartCollision.CFrame.LookVector
	local v = (arg.Position - wallStartCollision.Position):Dot(rightVector)
	if v == 0 or v * (arg2 - wallStartCollision.Position):Dot(rightVector) >= 0 then
		return nil
	end
	return wallStartCollision.Position + rightVector * (v > 0 and 6 or -6)
end

local function fn11(arg, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	local v = tbl.value21()
	if not v or not arg then
		return false
	end
	arg2 = arg2 or 8
	arg7 = arg7 and nil or fn10(v, arg)

	if arg7 then
		if Vector3.new(arg7.X - v.Position.X, 0, arg7.Z - v.Position.Z).Magnitude <= arg2 then
			return false
		end
		arg = arg7
	end

	if arg2 >= Vector3.new(arg.X - v.Position.X, 0, arg.Z - v.Position.Z).Magnitude then
		return true
	end
	tbl.value11.travelToken = tbl.value11.travelToken + 1
	tbl.value11.travelling = false
	tbl.value57()
	tbl.value52()
	local travelToken = tbl.value11.travelToken
	tbl.value11.travelStep = tick()
	tbl.value11.travelling = true
	local value68 = arg6 and tbl.value68 or tbl.value14.FarmMethod == "TP Walk" and fn9 or tbl.value68
	local v2 = tbl.value67(v.Position, arg, arg4)
	local flag = true

	for i = 1, #v2 do
		local flag2 = i == #v2

		if not (arg4 == "return" and flag2 and fn9 or value68)(v2[i], flag2 and arg2 or 4, arg3, travelToken, (arg4 == "return" or arg4 == "pickup") and flag2 and 0 or arg5, arg6) then
			flag = false
			break
		elseif arg4 and not flag2 then
			local v3 = tbl.value21()
			local v4 = tbl.value60()
			local v5 = v3 and tbl.value59(v3.Position.X, v3.Position.Z, v3.Position.Y - v4)

			if v3 and v5 then
				local rotation = v3.CFrame.Rotation
				v3.CFrame = CFrame.new(v3.Position.X, v5 + v4, v3.Position.Z) * rotation
			end
		end
	end

	if travelToken ~= tbl.value11.travelToken then
		return false
	end
	tbl.value11.travelling = false
	tbl.value51(arg8)
	local v3 = tbl.value21()
	if not v3 then
		return false
	end
	return not arg7 and flag and Vector3.new(arg.X - v3.Position.X, 0, arg.Z - v3.Position.Z).Magnitude <= arg2 + 6
end

tbl.value11.travelStep = 0

fn2(tbl.value3.Heartbeat:Connect(function()
	local travelling = tbl.value11.travelling
	local flag

	if travelling then
		local travelStep = tbl.value11.travelStep
		flag = tick() - travelStep > 6
	else
		flag = travelling
	end

	if flag then
		tbl.value11.travelling = false
		tbl.value51()
	end
end))

fn2(tbl.value9.CharacterAdded:Connect(function()
	tbl.value11.travelToken = tbl.value11.travelToken + 1
	tbl.value11.travelling = false
	tbl.value11.travelStep = 0
	tbl.value11.carryingUid = nil
	tbl.value11.deliverFails = 0
	tbl.value11.penCache = nil
end))

local debris = tbl.value7:FindFirstChild("__DEBRIS")

if debris then
	fn2(debris.ChildAdded:Connect(function()
		task.delay(0.1, function()
			if tbl.value17() and tbl.value14.AntiTrap then
				pcall(tbl.value52)
			end
		end)
	end))
end

fn(function()
	while tbl.value17() do
		if tbl.value14.AntiTrap then
			pcall(tbl.value52)
		end

		task.wait(3)
	end
end)

tbl.value11.voidBusy = false

tbl.value69 = function(arg)
	if not tbl.value23() then
		return false
	end
	local v = tbl.value21()
	local flag = v ~= nil
	local flag2

	if flag then
		flag2 = v.Parent ~= nil and arg < v.Position.Y
	else
		flag2 = flag
	end

	return flag2
end

tbl.value70 = function()
	if tbl.value11.voidBusy then
		return false
	end
	local v = tbl.value21()
	if not v then
		return false
	end
	tbl.value11.voidBusy = true
	tbl.value11.travelToken = tbl.value11.travelToken + 1
	tbl.value11.travelling = false
	local n = -500

	local ok2, result2 = pcall(function()
		return tbl.value7.FallenPartsDestroyHeight
	end)

	if ok2 and type(result2) == "number" then
		n = result2
	end

	local n2 = n + 60
	local position = v.Position
	local v2 = tbl.value22()

	if v2 then
		pcall(function()
			v2:ChangeState(Enum.HumanoidStateType.Physics)
		end)
	end

	local n3 = tick() + 5

	while true do
		if tbl.value17() and n3 > tick() then
			local v3 = tbl.value21()

			if not (not v3 or not v3.Parent) then
				pcall(function()
					v3.CFrame = CFrame.new(position.X, n2, position.Z)
					v3.AssemblyLinearVelocity = Vector3.zero
					v3.AssemblyAngularVelocity = Vector3.zero
				end)

				tbl.value3.Heartbeat:Wait()
				continue
			end
		end

		break
	end

	local v3 = tbl.value21()

	if v3 and v3.Parent then
		pcall(function()
			v3.CFrame = CFrame.new(position.X, n - 250, position.Z)
			v3.AssemblyLinearVelocity = Vector3.new(0, -280, 0)
		end)
	end

	local n4 = n + 200
	local n5 = tick() + 20
	local flag

	while true do
		local flag2 = tbl.value17() and n5 > tick()
		flag = false

		if flag2 then
			if tbl.value69(n4) then
				flag = true
				break
			else
				task.wait(0.2)
				continue
			end
		end

		break
	end

	if not flag and tbl.value17() then
		tbl.value20("Using Fallback..", 5)
		tbl.value27(tbl.value25.RigWipe)
		local n6 = tick() + 12

		while true do
			if tbl.value17() and n6 > tick() then
				if tbl.value69(n4) then
					flag = true
					break
				else
					task.wait(0.2)
					continue
				end
			end

			break
		end
	end

	tbl.value11.voidBusy = false
	return flag
end

tbl.value71 = function(arg)
	local stands = tbl.value7:FindFirstChild("Stands")
	stands = stands and stands:FindFirstChild("Prompts")
	stands = stands and stands:FindFirstChild(arg)
	return stands and stands:FindFirstChildWhichIsA("ProximityPrompt") or nil
end

local function fn12()
	local SellAll = tbl.value71("SellAll") or tbl.value71("Sell")
	SellAll = SellAll and SellAll.Parent
	if SellAll and SellAll:IsA("BasePart") then
		return SellAll.CFrame * CFrame.new(0, 0, 3)
	end
	return nil
end

local value112 = tbl.value11
tbl.value11.cachedSlot = nil
value112.cachedPlot = nil
tbl.value11.plotTried = 0

tbl.value72 = function()
	local v = PlotState and PlotState.ResolvePlot()
	if v then
		return v.PlotFolder
	end

	if tbl.value11.cachedPlot and tbl.value11.cachedPlot.Parent then
		return tbl.value11.cachedPlot
	end
	local plots = tbl.value7:FindFirstChild("Plots")
	if not plots then
		return nil
	end

	if not tbl.value11.cachedSlot then
		local v2 = tbl.value27(tbl.value25.PlotState)

		if type(v2) == "table" then
			local ownersBySlot = v2.OwnersBySlot or v2.SlotOwners or v2.Owners or v2.Slots

			if type(ownersBySlot) == "table" then
				for k, v3 in pairs(ownersBySlot) do
					if type(v3) == "table" then
						local userId = v3.UserId

						if userId then
							v3 = userId
						else
							local ownerUserId = v3.OwnerUserId

							if ownerUserId then
								v3 = ownerUserId
							else
								v3 = v3.Id or v3.Name
							end
						end
					end

					if v3 == tbl.value9.UserId or v3 == tostring(tbl.value9.UserId) or v3 == tbl.value9.Name then
						tbl.value11.cachedSlot = k
						break
					end
				end
			end
		end
	end

	if tbl.value11.cachedSlot then
		tbl.value11.cachedPlot = plots:FindFirstChild(unpack_({ tostring(tbl.value11.cachedSlot) }))
		if tbl.value11.cachedPlot then
			return tbl.value11.cachedPlot
		end
	end

	local plotTried = tbl.value11.plotTried
	if tick() - plotTried < 10 then
		return nil
	end
	local getChildren = plots.GetChildren
	tbl.value11.plotTried = tick()

	for _, v2 in ipairs(getChildren(plots)) do
		for _, descendant in ipairs(v2:GetDescendants()) do
			local v3 = descendant

			if v3:IsA("TextLabel") or v3:IsA("TextButton") then
				local ok2, result2 = pcall(function()
					return v3.Text
				end)

				if ok2 and type(result2) == "string" and #result2 > 0 and result2:find(tbl.value9.Name, 1, true) then
					tbl.value11.cachedPlot = v2
					return v2
				end
			end
		end
	end

	return nil
end

local function fn13()
	local v = tbl.value72()
	if not v then
		return nil
	end

	local ok2, result2 = pcall(function()
		return v:GetPivot()
	end)

	return ok2 and result2 or nil
end

tbl.value11.penCache = nil

tbl.value73 = function()
	if tbl.value11.penCache then
		return tbl.value11.penCache
	end
	local v = tbl.value72()

	if v then
		for _, descendant in ipairs(v:GetDescendants()) do
			local v2 = descendant

			if v2.Name:lower():find("pen", 1, true) then
				if v2:IsA("BasePart") then
					tbl.value11.penCache = v2.CFrame
					return tbl.value11.penCache
				end

				if v2:IsA("Model") then
					local ok2, penCache = pcall(function()
						return v2:GetPivot()
					end)

					if ok2 and penCache then
						tbl.value11.penCache = penCache
						return tbl.value11.penCache
					end
				end
			end
		end
	end

	local v2 = tbl.value72()
	local result2

	if not v2 then
		result2 = nil
	else
		local ok2

		ok2, result2 = pcall(function()
			return v2:GetPivot()
		end)

		result2 = ok2 and result2 or nil
	end

	if result2 then
		tbl.value11.penCache = result2 * CFrame.new(0, 0, 15)
		return tbl.value11.penCache
	end
	return nil
end

tbl.value74 = function(arg)
	local ownerUserId = arg.OwnerUserId or arg.UserId or arg.PlayerId or arg.Owner

	if type(ownerUserId) == "table" then
		local userId = ownerUserId.UserId

		if userId then
			ownerUserId = userId
		else
			ownerUserId = ownerUserId.userId or ownerUserId.Id
		end
	end

	return ownerUserId
end

tbl.value75 = nil

tbl.value75 = function(arg)
	local v = tbl.value74(arg)
	if type(v) == "number" then
		return v == tbl.value9.UserId
	end

	if type(v) == "string" then
		return v == tostring(tbl.value9.UserId) or v == tbl.value9.Name
	end
	return nil
end

tbl.value76 = nil

tbl.value76 = function()
	local tbl2 = {}
	local tbl3 = {}
	local v = tbl.value27(tbl.value25.EggLive)
	if type(v) ~= "table" then
		return tbl2
	end

	local function fn14(arg)
		for k, v2 in pairs(arg) do
			if type(v2) == "table" then
				local uid = v2.Uid or type(k) == "string" and k or nil

				if uid and not tbl3[uid] and tbl.value75(v2) ~= false then
					tbl3[uid] = true

					if v2.Uid == nil then
						v2.Uid = uid
					end

					tbl2[#tbl2 + 1] = v2
				end
			end
		end
	end

	for _, v2 in pairs(v) do
		if type(v2) == "table" and tbl.value75(v2) == true and type(v2.Records) == "table" then
			fn14(v2.Records)
		end
	end

	if #tbl2 == 0 then
		for _, v2 in pairs(v) do
			if type(v2) == "table" and type(v2.Records) == "table" then
				fn14(v2.Records)
			end
		end
	end

	if #tbl2 == 0 and type(v.Records) == "table" then
		fn14(v.Records)
	end

	return tbl2
end

tbl.value77 = function()
	local tbl2 = { l = {}, w = {} }

	for _, v in ipairs(tbl.value76()) do
		local placement = v.Placement

		if placement then
			placement = placement.LocalCFrame or placement.CFrame or placement.WorldCFrame
		end

		if typeof(placement) == "CFrame" then
			tbl2.l[#tbl2.l + 1] = placement.Position
		elseif typeof(placement) == "Vector3" then
			tbl2.l[#tbl2.l + 1] = placement
		end
	end

	for _, child in ipairs(tbl.value7:GetChildren()) do
		if child.Name == "PlacedEggRenders" then
			for _, child2 in ipairs(child:GetChildren()) do
				local v = child2

				local ok2, result2 = pcall(function()
					if v:IsA("BasePart") then
						return v.Position
					end

					if v:IsA("Model") then
						return v:GetPivot().Position
					end
					return nil
				end)

				if ok2 and result2 then
					tbl2.w[#tbl2.w + 1] = result2
				end
			end
		end
	end

	return tbl2
end

tbl.value11.originCache = nil
tbl.value11.originAt = 0

local function fn14()
	local v = PlotState and PlotState.ResolvePlot()
	if v then
		return { v.CenterPoint.CFrame }
	end
	local originCache = tbl.value11.originCache

	if originCache then
		local originAt = tbl.value11.originAt
		originCache = tick() - originAt < 15
	end

	if originCache then
		return tbl.value11.originCache
	end
	local tbl2 = {}
	local v2 = tbl.value72()

	if v2 then
		local ok2, result2 = pcall(function()
			return v2.PrimaryPart
		end)

		if ok2 and result2 then
			tbl2[#tbl2 + 1] = result2.CFrame
		end

		local n = 0
		local v3 = nil

		for _, child in ipairs(v2:GetChildren()) do
			if child:IsA("BasePart") then
				local str = child.Name:lower()

				if str:find("base", 1, true) or str:find("plate", 1, true) or str:find("pad", 1, true) or str:find("floor", 1, true) or str:find("ground", 1, true) or str:find("origin", 1, true) then
					local n2 = child.Size.X * child.Size.Z

					if n < n2 then
						n = n2
						v3 = child
					end
				end
			end
		end

		if v3 then
			tbl2[#tbl2 + 1] = v3.CFrame
		end

		local ok3, result3 = pcall(function()
			return v2:GetPivot()
		end)

		if ok3 and result3 then
			tbl2[#tbl2 + 1] = result3
		end
	end

	if #tbl2 == 0 then
		tbl2[1] = CFrame.new()
	end

	local originCache2 = {}

	for _, v3 in ipairs(tbl2) do
		local flag = true

		for _, v4 in ipairs(originCache2) do
			if (v4.Position - v3.Position).Magnitude < 0.5 then
				flag = false
				break
			end
		end

		if flag then
			originCache2[#originCache2 + 1] = v3
		end
	end

	tbl.value11.originCache = originCache2
	tbl.value11.originAt = tick()
	return originCache2
end

tbl.value10.RING8 = { { 1, 0 }, { -1, 0 }, { 0, 1 }, { 0, -1 }, { 1, 1 }, { 1, -1 }, { -1, 1 }, { -1, -1 } }
tbl.value10.PLACE_PITCH = 6
tbl.value10.PLACE_HALF = 24
tbl.value10.EGG_CLEAR = 7
tbl.value10.ZONE_HALF = 20
tbl.value10.GRID_STEP = 4
tbl.value11.claimedCells = {}

local function fn15()
	local v = fn14()[1]
	local v2 = PlotState and PlotState.ResolvePlot()
	local petArea = v2 and v2.PetArea
	if not v then
		return {}
	end
	local w = tbl.value77().w
	local tbl2 = {}
	local tbl3 = {}
	local n = tbl.value10.EGG_CLEAR * tbl.value10.EGG_CLEAR

	local function fn16(arg, arg2)
		local huge = math.huge

		for _, v3 in ipairs(w) do
			local n2 = v3.X - arg
			local n3 = v3.Z - arg2
			local n4 = n2 * n2 + n3 * n3

			if n4 < huge then
				huge = n4
			end
		end

		return huge
	end

	local zoneHalf = tbl.value10.ZONE_HALF
	local gridStep = tbl.value10.GRID_STEP
	local n2 = -zoneHalf

	while n2 <= zoneHalf do
		local n3 = -zoneHalf

		while n3 <= zoneHalf do
			local function fn17(arg, arg2)
				local n4 = v * CFrame.new(arg, 0, arg2)
				local v3 = petArea and petArea.CFrame:PointToObjectSpace(n4.Position)
				local flag

				if v3 then
					local n5 = petArea.Size.X / 2 - 3
					flag = math.abs(v3.X) > n5

					if not flag then
						local n6 = petArea.Size.Z / 2 - 3
						flag = math.abs(v3.Z) > n6
					end
				else
					flag = v3
				end

				if flag then
					return
				end
				local str = math.floor(n4.X / 3) .. ":" .. math.floor(n4.Z / 3)
				if tbl3[str] then
					return
				end
				local v4 = tbl.value11.claimedCells[str]
				if v4 and tick() - v4 < 20 then
					return
				end
				local v5 = fn16(n4.X, n4.Z)
				if v5 < n then
					return
				end
				local y = petArea and petArea.CFrame:PointToWorldSpace(Vector3.new(v3.X, petArea.Size.Y / 2, v3.Z)).Y or tbl.value59(n4.X, n4.Z, v.Position.Y)
				if not y then
					return
				end
				tbl3[str] = true
				tbl2[#tbl2 + 1] = { key = str, w = Vector3.new(n4.X, y, n4.Z), lx = arg, lz = arg2, clr = math.sqrt(v5) }
			end

			fn17(n3, n2)
			n3 += gridStep
		end

		n2 += gridStep
	end

	return tbl2
end

tbl.value78 = function()
	local character = tbl.value9.Character
	if not character then
		return false
	end

	for _, child in ipairs(character:GetChildren()) do
		local str = child.Name:lower()
		local attribute = child:GetAttribute("EggUid") or child:GetAttribute("UID") or child:GetAttribute("Uid") or child:GetAttribute("AssetCategory") or child:GetAttribute("ItemType") == "Egg" or str:find("egg")
		local isTool = child:IsA("Tool")

		if isTool then
			isTool = not (str:find("sword") or str:find("radar") or str:find("basket") or str:find("punch"))
		end

		if isTool or child:IsA("Model") then
			if attribute then
				return true
			end
		end
	end

	if EggState and EggState.ReadFieldEggs then
		local ok2, result2 = pcall(EggState.ReadFieldEggs)

		if ok2 and result2 and result2.Records then
			for _, record in ipairs(result2.Records) do
				if (record.State == "Carried" or record.State == 2) and (record.CarrierUserId == tbl.value9.UserId or record.Carrier == tbl.value9.UserId) then
					return true
				end
			end
		end
	end

	return false
end

tbl.value79 = function(arg)
	local function fn16()
		local tool = tbl.value9.Character and tbl.value9.Character:FindFirstChildWhichIsA("Tool")
		return tool and tool:GetAttribute("ItemType") == "AssetEgg" and tool:GetAttribute("UID") == arg
	end

	if fn16() then
		return true
	end

	for i = 1, 8 do
		tbl.value27(tbl.value25.WearTool, arg)

		for i2 = 1, 4 do
			tbl.value3.Heartbeat:Wait()
			if fn16() then
				return true
			end
		end
	end

	return false
end

tbl.value10.SHAPE_FILE = "RealKidHubPlaceShape.txt"
tbl.value11.placeOK = nil
tbl.value11.placeWhy = ""
tbl.value11.placeLog = {}
tbl.value11.placeFails = 0

tbl.value80 = function(arg, arg2)
	tbl.value11.placeLog[#tbl.value11.placeLog + 1] = tostring(arg) .. " " .. tostring(arg2)

	if #tbl.value11.placeLog > 12 then
		table.remove(tbl.value11.placeLog, 1)
	end
end

tbl.value81 = function()
	if tbl.value11.placeOK and type(writefile) == "function" then
		pcall(function()
			local v = writefile
			local shapeFile = tbl.value10.SHAPE_FILE
			local str = tostring(tbl.value11.placeOK.origin)
			v(shapeFile, str)
		end)
	end
end

if type(isfile) == "function" and type(readfile) == "function" then
	local ok2, result2 = pcall(function()
		if isfile(tbl.value10.SHAPE_FILE) then
			return readfile(tbl.value10.SHAPE_FILE)
		end
		return nil
	end)

	local num = ok2 and tonumber(result2) or nil

	if num and num >= 1 then
		tbl.value11.placeOK = { origin = math.floor(num) }
	end
end

local function fn16(arg, arg2, arg3)
	local v = fn14()[arg2]
	if not v then
		return false
	end
	local v2 = tbl.value26(tbl.value25.EggPlace)
	if not v2 or not v2:IsA("RemoteFunction") then
		return false
	end

	if not tbl.value78() then
		return false
	end
	local cframe = CFrame.new((v:Inverse() * arg3).Position)

	local ok2, result2, result3 = pcall(function()
		return v2:InvokeServer({ Uid = arg, LocalCFrame = cframe })
	end)

	if not ok2 then
		if type(result2) == "string" and #result2 > 0 then
			tbl.value11.placeWhy = result2:sub(1, 140)
		end

		tbl.value80("O" .. arg2, result2)
		return false
	end

	if result2 == true then
		for i = 1, 16 do
			if tbl.value78() then
				tbl.value3.Heartbeat:Wait()
				continue
			end
			break
		end

		return true
	end

	if type(result3) == "string" and #result3 > 0 then
		tbl.value11.placeWhy = result3:sub(1, 140)
		tbl.value80("O" .. arg2, result3)
	elseif type(result3) == "table" then
		local error = result3.Error or result3.Reason or result3.Message or result3.Why

		if type(error) == "string" and #error > 0 then
			tbl.value11.placeWhy = error:sub(1, 140)
		end

		tbl.value80("O" .. arg2, error or "table reply")
	else
		tbl.value11.placeWhy = "server returned " .. tostring(result3)
		tbl.value80("O" .. arg2, "returned " .. tostring(result3))
	end

	return false
end

tbl.value82 = function(arg, arg2)
	local cframe = CFrame.new(arg2.w)
	local v = fn14()
	if tbl.value11.placeOK and v[tbl.value11.placeOK.origin] then
		return fn16(arg, tbl.value11.placeOK.origin, cframe)
	end

	for i = 1, #v do
		if fn16(arg, i, cframe) then
			tbl.value11.placeOK = { origin = i }
			tbl.value81()
			return true
		end

		task.wait(0.04)
	end

	return false
end

local function fn17(arg, arg2)
	local n = arg2 or 18
	if not tbl.value79(arg) then
		tbl.value11.placeWhy = "egg never reached the hand"
		return false, false
	end
	local tool = tbl.value9.Character and tbl.value9.Character:FindFirstChildWhichIsA("Tool")

	if tool then
		local attribute = tool:GetAttribute("UID")

		if attribute == nil then
			for _, child in ipairs(tool:GetChildren()) do
				if child:IsA("Model") then
					attribute = child.Name:match("_(%w+)$")
					if not attribute then
						continue
					end
				else
					continue
				end

				break
			end
		end

		if attribute ~= nil then
			arg = tostring(attribute)
		end
	end

	if not tbl.value11.placeOK then
		tbl.value11.placeLog = {}
		tbl.value11.placeWhy = ""
	end

	local v = fn15()
	local v2 = fn14()
	local position = v2[1] and v2[1].Position or tbl.value21() and tbl.value21().Position or Vector3.zero

	table.sort(v, function(arg3, arg4)
		return (arg3.w - position).Magnitude < (arg4.w - position).Magnitude
	end)

	local n2 = #tbl.value76()
	local n3 = 0

	for _, v3 in ipairs(v) do
		n3 += 1

		if tbl.value82(arg, v3) then
			tbl.value11.claimedCells[v3.key] = tick()
			tbl.value11.placeFails = 0
			return true
		end

		if not tbl.value78() then
			tbl.value11.placeFails = 0
			return true
		end

		if n <= n3 then
			break
		end
		task.wait(0.04)
	end

	if not tbl.value78() then
		tbl.value11.placeFails = 0
		return true
	end

	if n2 < #tbl.value76() then
		tbl.value11.placeFails = 0
		return true
	end
	tbl.value11.placeFails = tbl.value11.placeFails + 1

	if tbl.value11.placeOK and tbl.value11.placeFails >= 3 then
		tbl.value11.placeOK = nil
		tbl.value11.placeFails = 0
	end

	return false, #v == 0
end

tbl.value83 = function(arg)
	local character = tbl.value9.Character
	local v = tbl.value22()
	local world = tbl.value7:FindFirstChild("World")
	world = world and world:FindFirstChild("Areas")
	world = world and world:FindFirstChild("GuardAreas")
	local forest = world and world:FindFirstChild("Forest")

	if not forest then
		forest = tbl.value7:FindFirstChild("__OBJECTS")
		forest = forest and forest:FindFirstChild("Areas")
		forest = forest and forest:FindFirstChild("GuardAreas")
		forest = forest and forest:FindFirstChild("Forest")
	end

	if forest then
		forest = forest:FindFirstChild("Guard") or forest:FindFirstChild("ForestGuardAuthored")
	end

	if not character or not v or not forest then
		return false
	end
	local position = forest:GetPivot().Position
	local flag = tbl.value11.recoverUid == arg.uid
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

	if flag and humanoidRootPart and (arg.pos - humanoidRootPart.Position).Magnitude > 1000 then
		tbl.value11.recoverUid = nil
		flag = false
	end

	local v2 = nil
	local flag2 = not flag

	if flag2 then
		for _, v3 in ipairs(tbl.value11.eggList) do
			if v3.uid ~= arg.uid and (not v2 or (v3.pos - position).Magnitude < (v2.pos - position).Magnitude) then
				v2 = v3
			end
		end

		if not v2 then
			return false
		end
	end

	local currentCamera = tbl.value7.CurrentCamera
	local cameraSubject = currentCamera and currentCamera.CameraSubject
	local primaryPart = tbl.value46(arg.uid)

	if primaryPart then
		primaryPart = primaryPart.PrimaryPart or primaryPart:FindFirstChild("Hitbox") or primaryPart:FindFirstChildWhichIsA("BasePart")
	end

	if currentCamera and primaryPart then
		currentCamera.CameraSubject = primaryPart
	end

	local function fn18(arg2)
		if currentCamera then
			currentCamera.CameraSubject = cameraSubject or v
		end

		return arg2
	end

	local function fn19()
		return tbl.value86()
	end

	local function fn20(arg2)
		local v3 = tbl.value21()

		if v3 then
			local rotation = v3.CFrame.Rotation
			character:PivotTo(CFrame.new(arg2 + Vector3.new(0, 0.4, 0)) * rotation)
			v3.AssemblyLinearVelocity = Vector3.zero
			v3.AssemblyAngularVelocity = Vector3.zero
		end

		pcall(function()
			local v4 = v
			v.PlatformStand = false
			v4.Sit = false
			v:ChangeState(Enum.HumanoidStateType.Running)
		end)
	end

	local function fn21(arg2, arg3)
		local function fn22()
			local readFieldEggs = EggState and EggState.ReadFieldEggs and EggState.ReadFieldEggs()
			local v3 = ipairs
			local records = readFieldEggs and readFieldEggs.Records or {}

			for _, record in v3(records) do
				if record.Uid == arg2.uid and record.State == "Carried" and record.CarrierUserId == tbl.value9.UserId then
					return true
				end
			end

			return false
		end

		local n = tick() + 3.5

		while not fn22() and tick() < n and fn19(arg2.uid) do
			fn20(arg3)
			local v3 = tbl.value46(arg2.uid)
			local v4 = tbl.value45()

			local function fn23(arg4)
				if arg4:IsA("ProximityPrompt") then
					arg4.RequiresLineOfSight = false
					arg4.HoldDuration = 0

					task.spawn(function()
						pcall(tbl.value29, arg4, 0)
					end)

					task.spawn(function()
						tbl.value30(arg4)
					end)
				end
			end

			if v3 then
				for _, descendant in ipairs(v3:GetDescendants()) do
					fn23(descendant)
				end
			end

			if v4 then
				for _, child in ipairs(v4:GetChildren()) do
					local basePart = child:FindFirstChildWhichIsA("BasePart") or child.PrimaryPart

					if basePart and (basePart.Position - arg3).Magnitude <= 18 then
						for _, descendant in ipairs(child:GetDescendants()) do
							fn23(descendant)
						end
					end
				end
			end

			local smartPromptPart = tbl.value7:FindFirstChild("SmartPromptPart")
			smartPromptPart = smartPromptPart and smartPromptPart:FindFirstChild("CarryAreaEgg")

			if smartPromptPart and smartPromptPart.Enabled then
				fn23(smartPromptPart)
			end

			local v5 = AreaEggSlotIdentity and AreaEggSlotIdentity.LooksLikeFirstAreaUid(arg2.uid)
			local v6 = nil

			if v5 then
				v6 = AreaEggSlotIdentity.SlotKey(arg2.area, arg2.nestId)
			end

			task.spawn(tbl.value27, tbl.value25.EggCarry, { Uid = arg2.uid, FirstAreaSlotKey = v6 })

			if EggState and EggState.CarryFieldEgg then
				task.spawn(EggState.CarryFieldEgg, arg2.uid, v6)
			end

			tbl.value3.Heartbeat:Wait()
		end

		return (fn22())
	end

	if flag2 then
		local v3 = tbl.value85(v2)
		if not fn11(v3, 8, function()
			return fn19(v2.uid)
		end, "pickup", 30, tbl.value10.TRAVEL_SPEED) then
			return (fn18(false))
		end

		if not fn21(v2, v3) then
			return (fn18(false))
		end

		if not fn11(position, 8, function()
			return tbl.value86() and tbl.value78()
		end, "pickup", 30, tbl.value10.TRAVEL_SPEED) then
			return (fn18(false))
		end
		tbl.value27(tbl.value25.GuardStrike)
		local n = tick() + 4.5

		while tbl.value78() and tbl.value86() and tick() < n do
			fn20(position)
			tbl.value3.Heartbeat:Wait()
		end

		if tbl.value78() then
			return (fn18(false))
		end
	end

	local v3 = tbl.value85(arg)
	if flag then
		return (fn18(fn11(v3, 8, function()
			return fn19(arg.uid)
		end, "pickup", 30, tbl.value10.TRAVEL_SPEED) and fn21(arg, v3)))
	end

	while fn19() do
		local v4 = tbl.value21()

		if not (not v4 or Vector3.new(v4.Position.X - v3.X, 0, v4.Position.Z - v3.Z).Magnitude <= 5) then
			fn20(v3)
			v3 = tbl.value85(arg)
			tbl.value3.Heartbeat:Wait()
			continue
		end

		break
	end

	return (fn18(fn19() and fn21(arg, v3)))
end

tbl.value84 = function(arg)
	local v = tbl.value45()
	if not v then
		return true
	end
	return v:FindFirstChild(arg) ~= nil
end

tbl.value10.GRAB_TOLERANCE = 8

local function fn18(arg, arg2)
	local v = tbl.value21()
	if not v or not arg then
		return false
	end
	local x = arg.X
	return (Vector3.new(v.Position.X, 0, v.Position.Z) - Vector3.new(x, 0, arg.Z)).Magnitude <= (arg2 or 12) + tbl.value10.GRAB_TOLERANCE
end

tbl.value11.carryingUid = nil

tbl.value85 = function(arg)
	local v = tbl.value47(arg.uid)

	if v then
		arg.pos = v.Position
	end

	return arg.pos
end

tbl.value86 = function()
	if AreaEggResetWall and AreaEggResetWall.IsSealed and AreaEggResetWall.IsSealed() then
		return false
	end
	return tbl.value17() and tbl.value14.AutoSteal and tbl.value7:GetServerTimeNow() >= tbl.value11.eggResetUntil
end

tbl.value87 = function()
	for _, child in ipairs(tbl.value7:GetChildren()) do
		if child.Name == "SmartPromptPart" then
			for _, child2 in ipairs(child:GetChildren()) do
				if not (child2:IsA("ProximityPrompt") and child2.Enabled) then
					continue
				end
				local str = (child2.Name .. " " .. tostring(child2.ActionText) .. " " .. tostring(child2.ObjectText)):lower()
				if str:find("place", 1, true) or str:find("plant", 1, true) or str:find("drop", 1, true) then
					return child2
				end
			end
		end
	end

	return nil
end

tbl.value11.deliverAt = 0
tbl.value11.deliverFails = 0
tbl.value11.dryRuns = 0
tbl.value11.warnPlantAt = 0
tbl.value11.hatchAll = nil

tbl.value88 = function(arg)
	local placeTrack = tbl.value11.placeTrack
	if not placeTrack or placeTrack.fieldUid ~= arg or not placeTrack.ready then
		tbl.value11.placeWhy = "owned-egg snapshot unavailable before return"
		return false
	end

	local function fn19(arg2)
		local v = EggState.ReadFieldEgg(arg)
		return v and v.State == "Carried" and v.CarrierUserId == tbl.value9.UserId or fn18(arg2, 60)
	end

	local v = PlotState and PlotState.ResolvePlot()

	if not v and PlotState then
		local v2 = tbl.value72()
		local v3 = PlotState.FindRespawnCFrame()
		local cFrame

		if v3 then
			cFrame = v3
		else
			cFrame = v2 and v2:FindFirstChild("SpawnPoint") and v2.SpawnPoint.CFrame
		end

		if not cFrame or not fn11(cFrame.Position, 20, function()
			return tbl.value17() and tbl.value14.AutoSteal and fn19(cFrame.Position)
		end, "pickup", 30, tbl.value10.TRAVEL_SPEED) then
			return false
		end
		task.wait(0.2)
		v = PlotState.ResolvePlot()
	end

	local petArea = v and v.PetArea
	if not petArea then
		tbl.value11.placeWhy = "garden not loaded"
		return false
	end
	local position = petArea.Position
	if not fn18(position, 8) and not fn11(position, 8, function()
		return tbl.value17() and tbl.value14.AutoSteal and fn19(position)
	end, "pickup", 30, tbl.value10.TRAVEL_SPEED) then
		return false
	end
	local v2 = tbl.value21()
	local v3 = tbl.value60()

	if v2 then
		v2.CFrame = CFrame.new(petArea.CFrame:PointToWorldSpace(Vector3.new(0, petArea.Size.Y / 2, 0)) + Vector3.new(0, v3, 0)) * v2.CFrame.Rotation
	end

	local ok2, result2 = pcall(EggState.SyncOwnedEggs)
	local n = 0
	local v4 = nil

	if ok2 then
		v4 = nil

		for _, v5 in ipairs(result2) do
			if v5.OwnerUserId == tbl.value9.UserId then
				for k, record in pairs(v5.Records) do
					if not placeTrack.seen[k] and record.AssetCategory == placeTrack.category and not record.Placement then
						n += 1
						v4 = k
					end
				end
			end
		end
	end

	if n ~= 1 then
		tbl.value11.placeWhy = "claimed egg UID not unique (" .. n .. ")"
		return false
	end
	placeTrack.claimedUid = v4
	arg = v4
	return fn17(arg)
end

fn(function()
	while tbl.value17() do
		local n = 0.1

		if (tbl.value86() or tbl.value11.carryingUid) and tbl.value23() then
			local ok2, result2 = pcall(function()
				if tbl.value11.carryingUid then
					local v = EggState.ReadFieldEgg(tbl.value11.carryingUid)
					local flag = not (tbl.value11.placeTrack and tbl.value11.placeTrack.claimedUid)

					if flag then
						flag = not (v and v.State == "Carried" and v.CarrierUserId == tbl.value9.UserId)
					end

					if flag then
						tbl.value11.recoverUid = tbl.value11.carryingUid
						tbl.value11.carryingUid = nil
						tbl.value11.deliverFails = 0
						return
					end

					local deliverAt = tbl.value11.deliverAt
					if tick() - deliverAt < 1 then
						return
					end
					tbl.value11.deliverAt = tick()

					if tbl.value88(tbl.value11.carryingUid) then
						tbl.value11.carryingUid = nil
						tbl.value11.deliverFails = 0
						return
					end

					tbl.value11.deliverFails = tbl.value11.deliverFails + 1

					if tbl.value11.deliverFails >= 4 then
						tbl.value11.deliverFails = 0
						tbl.value33(tbl.value25.DoffTool, tbl.value11.carryingUid)
						tbl.value11.carryingUid = nil
						local warnPlantAt = tbl.value11.warnPlantAt

						if tick() - warnPlantAt > 60 then
							tbl.value11.warnPlantAt = tick()
							tbl.value20("Could not plant that egg" .. (#tbl.value11.placeWhy > 0 and ": " .. tbl.value11.placeWhy or "") .. ". Moving on to the next one.", 6)
						end
					end

					return
				end

				if tbl.value14.SecretPriority and tbl.value11.carryingUid then
					tbl.value49(false)
					local exitTo = nil
					local v

					for i = 1, #tbl.value11.eggList do
						v = tbl.value11.eggList[i]
						if v.rank >= (tbl.value10.rarityLadder.Secret or 8) and tbl.value50(v) then
							exitTo = 1
							break
						end
					end

					if exitTo == 1 then
						local v2 = nil

						for i = 1, #tbl.value11.eggList do
							if tbl.value11.eggList[i].uid == tbl.value11.carryingUid then
								v2 = tbl.value11.eggList[i]
								break
							else
								v2 = nil
							end
						end

						if (v2 and v2.rank or 0) < v.rank then
							pcall(function()
								tbl.value33(tbl.value25.DoffTool, tbl.value11.carryingUid)
							end)

							tbl.value11.carryingUid = nil
							tbl.value11.deliverFails = 0
							tbl.value11.travelToken = tbl.value11.travelToken + 1
							tbl.value11.travelling = false
							tbl.value20("Secret egg spotted — switching targets!", 4)
						end
					end
				end

				tbl.value49(true)
				local v = fn4()

				if not v then
					tbl.value11.dryRuns = tbl.value11.dryRuns + 1
					tbl.value49(true)
					n = math.min(0.6 + tbl.value11.dryRuns * 0.4, 3)
					return
				end

				tbl.value11.dryRuns = 0
				tbl.value11.triedUids[v.uid] = tick()
				tbl.value11.stealBusy = true

				if tbl.value14.AutoStealTreadmill then
					tbl.value27("RF/Treadmill/AskDoff")
					local v2 = tbl.value22()

					if v2 and v2.Sit then
						v2.Sit = false
						v2:ChangeState(Enum.HumanoidStateType.GettingUp)
						tbl.value3.Heartbeat:Wait()
					end
				end

				if tbl.value83(v) then
					local ok2, result2 = pcall(EggState.SyncOwnedEggs)
					local tbl2 = {}

					if ok2 then
						for _, v2 in ipairs(result2) do
							if v2.OwnerUserId == tbl.value9.UserId then
								for k in pairs(v2.Records) do
									tbl2[k] = true
								end
							end
						end
					end

					tbl.value11.placeTrack = { fieldUid = v.uid, category = v.pet, seen = tbl2, ready = ok2 }
					tbl.value11.failUids[v.uid] = nil
					tbl.value11.recoverUid = nil
					tbl.value11.collectedUids[v.uid] = true
					tbl.value11.carryingUid = v.uid
					tbl.value11.deliverAt = tick()
					tbl.value11.deliverFails = 0

					if tbl.value88(v.uid) then
						tbl.value11.carryingUid = nil
					else
						tbl.value11.deliverFails = 1
					end

					n = 0
					return
				end

				if not tbl.value86() then
					return
				end
				tbl.value11.failUids[v.uid] = (tbl.value11.failUids[v.uid] or 0) + 1
			end)

			tbl.value11.stealBusy = false

			if not ok2 then
				warn("[RealKidHub] steal: " .. tostring(result2))
				task.wait(0.5)
			end
		else
			n = 0.3
		end

		if n > 0 then
			task.wait(n)
		else
			tbl.value3.Heartbeat:Wait()
		end
	end
end)

tbl.value10.MOVE_KEYS = {
	[Enum.KeyCode.W] = Vector3.new(0, 0, -1),
	[Enum.KeyCode.S] = Vector3.new(0, 0, 1),
	[Enum.KeyCode.A] = Vector3.new(-1, 0, 0),
	[Enum.KeyCode.D] = Vector3.new(1, 0, 0),
}

tbl.value11.held = {}

fn2(UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then
		return
	end

	if tbl.value10.MOVE_KEYS[input.KeyCode] then
		tbl.value11.held[input.KeyCode] = true
	end
end))

fn2(UserInputService.InputEnded:Connect(function(input)
	if tbl.value10.MOVE_KEYS[input.KeyCode] then
		tbl.value11.held[input.KeyCode] = nil
	end
end))

fn2(unpack_({
	UserInputService.JumpRequest:Connect(function()
		if not tbl.value14.HumReady or tbl.value11.travelling then
			return
		end
		local v = tbl.value22()

		if v and v.Health > 0 then
			pcall(function()
				v:ChangeState(Enum.HumanoidStateType.Jumping)
			end)
		end
	end),
}))

tbl.value89 = nil

tbl.value89 = function()
	local currentCamera = tbl.value7.CurrentCamera
	if not currentCamera then
		return Vector3.zero
	end
	local vector = Vector3.zero

	for k, moveKey in pairs(tbl.value10.MOVE_KEYS) do
		if tbl.value11.held[k] then
			vector += moveKey
		end
	end

	if vector.Magnitude < 0.01 then
		return Vector3.zero
	end
	local cFrame = currentCamera.CFrame
	local n = cFrame.RightVector * vector.X - cFrame.LookVector * vector.Z
	return Vector3.new(n.X, 0, n.Z)
end

fn(function()
	while tbl.value17() do
		tbl.value3.Heartbeat:Wait()

		if tbl.value14.HumReady and not tbl.value11.travelling and not tbl.value14.AutoTreadmill then
			local v = tbl.value22()

			if v and v.Health > 0 then
				local v2 = tbl.value89()

				if v2.Magnitude > 0.01 then
					v:Move(v2.Unit, false)
				end
			end
		end
	end
end)

fn2(tbl.value9.CharacterAdded:Connect(function(character)
	tbl.value14.HumReady = false
	tbl.value11.carryingUid = nil
	tbl.value11.travelToken = tbl.value11.travelToken + 1
	tbl.value11.travelling = false

	pcall(function()
		character:WaitForChild("HumanoidRootPart", 10)
	end)

	task.wait(0.7)

	if tbl.value14.AutoSteal then
		if tbl.value14.AntiCheat and not tbl.value14.HumReady and tbl.value23() then
			fn3()
			return
		end
	end
end))

tbl.value11.hatchCursor = 0

local function hatchAll(arg)
	if arg then
		local v = fn13()

		if v then
			if not fn18(v.Position, 20) then
				fn11(v.Position, 12)
			end
		end
	end

	local v = tbl.value76()
	local n = #v

	if n == 0 then
		tbl.value11.hatchCursor = 0
	else
		if n <= tbl.value11.hatchCursor then
			tbl.value11.hatchCursor = 0
		end

		arg = arg and n or math.min(n, 12)
		local n2 = 0

		while true do
			n2 += 1

			if not (n2 <= arg) then
				break
			else
				local uid = v[(tbl.value11.hatchCursor + n2 - 1) % n + 1]
				uid = uid and uid.Uid

				if uid then
					tbl.value33(tbl.value25.SkipGrowth, uid)
					tbl.value33(tbl.value25.Hatch, uid)
					tbl.value33(tbl.value25.HatchFinish, uid)
					task.wait(0.06)
				end
			end
		end

		tbl.value11.hatchCursor = (tbl.value11.hatchCursor + arg) % n
	end

	local n2 = 0

	if n > 0 then
		local n3 = #tbl.value76()

		if n3 < n then
			n2 = n - n3
		end
	end

	if n2 == 0 then
		for _, v2 in ipairs(tbl.value32(tbl.value72(), { "hatch", "open" })) do
			if tbl.value31(v2) and tbl.value30(v2) then
				n2 += 1
				task.wait(0.08)
			end
		end
	end

	return n2
end

tbl.value11.hatchAll = hatchAll

fn(function()
	while tbl.value17() do
		local autoHatch = tbl.value14.AutoHatch
		local flag

		if autoHatch then
			flag = autoHatch
		else
			local hatchOnce = tbl.value14.HatchOnce

			if hatchOnce then
				flag = tbl.value23() and not tbl.value11.travelling
			else
				flag = hatchOnce
			end
		end

		if flag then
			tbl.value14.HatchOnce = false
			pcall(hatchAll, false)
		end

		task.wait(2)
	end
end)

tbl.value13.rarityColor = {
	Common = Color3.fromRGB(190, 190, 190),
	Uncommon = Color3.fromRGB(120, 220, 120),
	Rare = Color3.fromRGB(90, 160, 255),
	Epic = Color3.fromRGB(180, 110, 255),
	Legendary = Color3.fromRGB(255, 200, 70),
	Mythic = Color3.fromRGB(255, 110, 190),
	Cosmic = Color3.fromRGB(130, 240, 255),
	Secret = Color3.fromRGB(60, 60, 70),
	Divine = Color3.fromRGB(255, 250, 200),
	Eternal = Color3.fromRGB(255, 90, 90),
}

tbl.value11.espFolder = nil
tbl.value11.espTags = {}
tbl.value90 = nil

tbl.value90 = function()
	if tbl.value11.espFolder and tbl.value11.espFolder.Parent then
		return tbl.value11.espFolder
	end
	tbl.value11.espFolder = Instance.new("Folder")
	tbl.value11.espFolder.Name = "RealKidHubEggESP"
	tbl.value11.espFolder.Parent = gethui and gethui() or game:GetService("CoreGui")
	return tbl.value11.espFolder
end

tbl.value91 = function()
	for k, espTag in pairs(tbl.value11.espTags) do
		local v = espTag

		pcall(function()
			v:Destroy()
		end)

		tbl.value11.espTags[k] = nil
	end

	if tbl.value11.espFolder then
		pcall(function()
			tbl.value11.espFolder:Destroy()
		end)

		tbl.value11.espFolder = nil
	end
end

tbl.value92 = function(arg)
	local v = tbl.value46(arg.uid)
	local v2 = tbl.value47(arg.uid)
	if not v or not v2 then
		return nil
	end
	local color = tbl.value13.rarityColor[arg.rarity] or Color3.fromRGB(255, 255, 255)
	local folder = Instance.new("Folder")
	folder.Name = arg.uid
	local highlight = Instance.new("Highlight")
	highlight.Adornee = v
	highlight.FillColor = color
	highlight.OutlineColor = arg.mutated and Color3.fromRGB(255, 150, 60) or color
	highlight.FillTransparency = 0.62
	highlight.OutlineTransparency = 0
	highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	highlight.Parent = folder
	local billboardGui = Instance.new("BillboardGui")
	billboardGui.Adornee = v2
	billboardGui.Size = UDim2.fromOffset(230, 26)
	billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 3.2, 0)
	billboardGui.AlwaysOnTop = true
	billboardGui.MaxDistance = 100000
	billboardGui.Parent = folder
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.fromScale(1, 1)
	textLabel.BackgroundTransparency = 1
	textLabel.Font = Enum.Font.GothamBold
	textLabel.TextSize = 13
	textLabel.TextColor3 = color
	textLabel.TextStrokeTransparency = 0.35
	textLabel.Text = (Assets.Directory[arg.pet] and Assets.Directory[arg.pet].DisplayName or arg.pet or arg.rarity or "Egg") .. " — $" .. tostring(math.floor(arg.earning or 0)):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") .. "/s" .. (not arg.mutated and "" or "  MUT")
	textLabel.Parent = billboardGui
	folder.Parent = tbl.value90()
	return folder
end

fn(function()
	while tbl.value17() do
		if tbl.value14.EggESP then
			pcall(function()
				local v = tbl.value49(false)
				local tbl2 = {}
				local v2 = tbl.value21()

				for _, v3 in ipairs(v) do
					if v2 and (v3.pos - v2.Position).Magnitude <= tbl.value10.ESP_DISTANCE then
						tbl2[v3.uid] = true
						local v4 = tbl.value11.espTags[v3.uid]

						if not v4 or not v4.Parent or not tbl.value46(v3.uid) then
							if v4 then
								pcall(function()
									v4:Destroy()
								end)
							end

							tbl.value11.espTags[v3.uid] = tbl.value92(v3)
						end
					end
				end

				for k, espTag in pairs(tbl.value11.espTags) do
					local v3 = espTag

					if not tbl2[k] then
						pcall(function()
							v3:Destroy()
						end)

						tbl.value11.espTags[k] = nil
					end
				end
			end)
		elseif next(tbl.value11.espTags) then
			tbl.value91()
		end

		task.wait(1.2)
	end
end)

tbl.value11.Lighting = game:GetService("Lighting")
tbl.value11.fpsSaved = nil
tbl.value11.hiddenParts = {}
tbl.value11.hiddenGuis = {}
tbl.value11.killedFx = {}

tbl.value93 = function(arg)
	for _, player in ipairs(tbl.value2:GetPlayers()) do
		local character = player.Character
		if character and arg == character or arg:IsDescendantOf(character) then
			return true
		end
	end

	return false
end

local function fn19(arg)
	for i = 1, 8 do
		if not arg or arg == tbl.value7 then
			return false
		end
		local str = arg.Name:lower()
		if str == "clientrenderedassets" or str:find("pet") or str:find("pen") then
			return true
		end
		arg = arg.Parent
	end

	return false
end

tbl.value94 = function(arg)
	local tbl2 = {}
	local clientRenderedAssets = tbl.value7:FindFirstChild("ClientRenderedAssets")

	if arg then
		if clientRenderedAssets then
			tbl2[#tbl2 + 1] = clientRenderedAssets
		end

		return tbl2
	end

	for _, child in ipairs(tbl.value7:GetChildren()) do
		local str = child.Name:lower()

		if str:find("pet") or str:find("pen") then
			tbl2[#tbl2 + 1] = child
		end
	end

	local plots = tbl.value7:FindFirstChild("Plots")

	if plots then
		tbl2[#tbl2 + 1] = plots
	end

	return tbl2
end

tbl.value95 = function(arg)
	if tbl.value11.hiddenParts[arg] ~= nil then
		return
	end
	tbl.value11.hiddenParts[arg] = arg.LocalTransparencyModifier

	pcall(function()
		arg.LocalTransparencyModifier = 1
	end)
end

tbl.value96 = function(arg)
	if tbl.value11.hiddenGuis[arg] ~= nil then
		return
	end
	tbl.value11.hiddenGuis[arg] = arg.Enabled

	pcall(function()
		arg.Enabled = false
	end)
end

tbl.value97 = nil

tbl.value97 = function(arg)
	if tbl.value11.killedFx[arg] ~= nil then
		return
	end

	if arg:IsA("ParticleEmitter") or arg:IsA("Trail") or arg:IsA("Beam") or arg:IsA("Smoke") or arg:IsA("Fire") or arg:IsA("Sparkles") or arg:IsA("PostEffect") then
		tbl.value11.killedFx[arg] = arg.Enabled

		pcall(function()
			arg.Enabled = false
		end)
	end
end

tbl.value98 = function(arg)
	for i = 1, #arg do
		local v = arg[i]
		tbl.value97(v)

		if not tbl.value93(v) and fn19(v) then
			if v:IsA("BasePart") then
				tbl.value95(v)
			elseif v:IsA("BillboardGui") then
				tbl.value96(v)
			end
		end
	end
end

tbl.value99 = function()
	local terrain = tbl.value7:FindFirstChildWhichIsA("Terrain")

	if not tbl.value11.fpsSaved then
		tbl.value11.fpsSaved = {
			shadows = tbl.value11.Lighting.GlobalShadows,
			diffuse = tbl.value11.Lighting.EnvironmentDiffuseScale,
			specular = tbl.value11.Lighting.EnvironmentSpecularScale,
			fogEnd = tbl.value11.Lighting.FogEnd,
			terrain = terrain,
		}

		pcall(function()
			tbl.value11.fpsSaved.quality = settings().Rendering.QualityLevel
		end)

		if terrain then
			tbl.value11.fpsSaved.waveSize = terrain.WaterWaveSize
			tbl.value11.fpsSaved.waveSpeed = terrain.WaterWaveSpeed
			tbl.value11.fpsSaved.reflect = terrain.WaterReflectance
		end
	end

	pcall(function()
		local level01 = Enum.QualityLevel.Level01
		settings().Rendering.QualityLevel = level01
	end)

	pcall(function()
		tbl.value11.Lighting.GlobalShadows = false
	end)

	pcall(function()
		tbl.value11.Lighting.EnvironmentDiffuseScale = 0
	end)

	pcall(function()
		tbl.value11.Lighting.EnvironmentSpecularScale = 0
	end)

	pcall(function()
		tbl.value11.Lighting.FogEnd = 100000
	end)

	if terrain then
		pcall(function()
			terrain.WaterWaveSize = 0
			terrain.WaterWaveSpeed = 0
			terrain.WaterReflectance = 0
		end)
	end

	for _, child in ipairs(tbl.value11.Lighting:GetChildren()) do
		tbl.value97(child)
	end

	for _, v in ipairs(tbl.value94(true)) do
		tbl.value98(v:GetDescendants())
	end
end

tbl.value100 = function()
	for k, hiddenPart in pairs(tbl.value11.hiddenParts) do
		local v = k
		local v2 = hiddenPart

		pcall(function()
			v.LocalTransparencyModifier = v2
		end)

		tbl.value11.hiddenParts[v] = nil
	end

	for k, hiddenGui in pairs(tbl.value11.hiddenGuis) do
		local v = hiddenGui

		pcall(function()
			k.Enabled = v
		end)

		tbl.value11.hiddenGuis[k] = nil
	end

	for k, v in pairs(tbl.value11.killedFx) do
		local v2 = k
		local v3 = v

		pcall(function()
			v2.Enabled = v3
		end)

		tbl.value11.killedFx[v2] = nil
	end

	if not tbl.value11.fpsSaved then
		return
	end

	pcall(function()
		tbl.value11.Lighting.GlobalShadows = tbl.value11.fpsSaved.shadows
	end)

	pcall(function()
		tbl.value11.Lighting.EnvironmentDiffuseScale = tbl.value11.fpsSaved.diffuse
	end)

	pcall(function()
		tbl.value11.Lighting.EnvironmentSpecularScale = tbl.value11.fpsSaved.specular
	end)

	pcall(function()
		tbl.value11.Lighting.FogEnd = tbl.value11.fpsSaved.fogEnd
	end)

	if tbl.value11.fpsSaved.quality then
		pcall(function()
			local quality = tbl.value11.fpsSaved.quality
			settings().Rendering.QualityLevel = quality
		end)
	end

	local terrain = tbl.value11.fpsSaved.terrain

	if terrain and tbl.value11.fpsSaved.waveSize then
		pcall(function()
			terrain.WaterWaveSize = tbl.value11.fpsSaved.waveSize
			terrain.WaterWaveSpeed = tbl.value11.fpsSaved.waveSpeed
			terrain.WaterReflectance = tbl.value11.fpsSaved.reflect
		end)
	end

	tbl.value11.fpsSaved = nil
end

tbl.value101 = nil

tbl.value101 = function()
	local v = fn12()
	if not v then
		return false
	end

	if fn18(v.Position, 14) then
		return true
	end
	return fn11(v.Position, 8)
end

tbl.value102 = function(arg)
	if arg then
		tbl.value101()
	end

	local SellAll = tbl.value71("SellAll")

	if not (not SellAll or not tbl.value31(SellAll)) then
		tbl.value30(SellAll)
	end

	tbl.value27(tbl.value25.SellEveryPet)
	tbl.value27(tbl.value25.SatchelSale)
	return "Sold every pet"
end

fn(function()
	while tbl.value17() do
		if tbl.value14.AutoEquipBest and tbl.value23() then
			tbl.value27(tbl.value25.WearBest)
		end

		task.wait(6)
	end
end)

tbl.value103 = nil

tbl.value103 = function(arg)
	if arg then
		local v = fn13()

		if v then
			if not fn18(v.Position, 20) then
				fn11(v.Position, 12)
			end
		end
	end

	local v, v2, v3 = ipairs(tbl.value32(tbl.value72(), { "claim", "collect", "coin", "cash" }))
	local n = 0

	for _, v4 in v, v2, v3 do
		if tbl.value31(v4) and tbl.value30(v4) then
			n += 1
			task.wait(0.06)
		end
	end

	if tbl.value27(tbl.value25.Collect) then
		n += 1
	end

	if tbl.value27(tbl.value25.CodexAll) then
		n += 1
	end

	return n
end

tbl.value104 = function(arg)
	if arg then
		local v = fn13()

		if v then
			if not fn18(v.Position, 20) then
				fn11(v.Position, 12)
			end
		end
	end

	local v, v2, v3 = ipairs(tbl.value32(tbl.value72(), { "upgrade", "buy", "purchase", "tier", "level" }))
	local n = 0

	for _, v4 in v, v2, v3 do
		if tbl.value31(v4) and tbl.value30(v4) then
			n += 1
			task.wait(0.06)
		end
	end

	if tbl.value27(tbl.value25.BaseTierRaise) then
		n += 1
	end

	if tbl.value27(tbl.value25.NearbyBuy) then
		n += 1
	end

	return n
end

fn(function()
	while tbl.value17() do
		local autoClaim = tbl.value14.AutoClaim
		local flag

		if autoClaim then
			flag = tbl.value23() and not tbl.value11.travelling
		else
			flag = autoClaim
		end

		if flag then
			pcall(tbl.value103, false)
		end

		local wait = task.wait
		local n = math.clamp(tbl.value14.ClaimInterval, 5, 300)
		wait(n)
	end
end)

fn(function()
	while tbl.value17() do
		if tbl.value14.AutoUpgrade and tbl.value23() and not tbl.value11.travelling then
			pcall(tbl.value104, false)
		end

		local wait = task.wait
		local n = math.clamp(tbl.value14.UpgradeInterval, 5, 300)
		wait(n)
	end
end)

tbl.value10.TREAD_AVOID = {
	"upgrade",
	"tier",
	"level",
	"board",
	"sign",
	"billboard",
	"gui",
	"shop",
	"buy",
	"display",
	"screen",
	"label",
	"text",
	"icon",
	"price",
	"cost",
	"info",
	"menu",
}

tbl.value105 = function(arg)
	local str = arg:lower()

	for i = 1, #tbl.value10.TREAD_AVOID do
		if str:find(tbl.value10.TREAD_AVOID[i], 1, true) then
			return true
		end
	end

	return false
end

tbl.value106 = function(arg, arg2)
	if not arg then
		return arg2
	end

	if arg:IsA("Model") or arg:IsA("BasePart") and arg.Name:lower():find("treadmill", 1, true) and not tbl.value105(arg.Name) then
		arg2[#arg2 + 1] = arg
	end

	for _, descendant in ipairs(arg:GetDescendants()) do
		if descendant:IsA("Model") or descendant:IsA("BasePart") and descendant.Name:lower():find("treadmill", 1, true) and not tbl.value105(descendant.Name) then
			arg2[#arg2 + 1] = descendant
		end
	end

	return arg2
end

tbl.value107 = function(arg)
	if arg:IsA("BasePart") then
		return arg.Position
	end

	local ok2, result2 = pcall(function()
		return arg:GetPivot()
	end)

	return ok2 and not not result2 and result2.Position or nil
end

tbl.value11.treadCache = nil

local function fn20()
	if tbl.value11.treadCache and tbl.value11.treadCache.Parent then
		return tbl.value11.treadCache
	end
	local tbl2 = {}
	tbl.value106(tbl.value72(), tbl2)

	if #tbl2 == 0 then
		tbl.value106(tbl.value7:FindFirstChild("Treadmills"), tbl2)
	end

	if #tbl2 == 0 then
		tbl.value106(tbl.value7:FindFirstChild("Stands"), tbl2)
	end

	if #tbl2 == 0 then
		for _, child in ipairs(tbl.value7:GetChildren()) do
			if child.Name:lower():find("tread", 1, true) then
				tbl.value106(child, tbl2)
			end
		end
	end

	if #tbl2 == 0 then
		return nil
	end
	local v = tbl.value72()
	local result2

	if not v then
		result2 = nil
	else
		local ok2

		ok2, result2 = pcall(function()
			return v:GetPivot()
		end)

		result2 = ok2 and result2 or nil
	end

	local v2 = tbl.value21()
	result2 = result2 and result2.Position or v2 and v2.Position
	local v3 = nil
	local v4 = nil

	for i = 1, #tbl2 do
		local v5 = tbl.value107(tbl2[i])

		if v5 then
			local magnitude = result2 and (v5 - result2).Magnitude
			local v6 = tbl2[i]
			magnitude = magnitude or 0
			local n = (not v6:IsA("Model") and 0 or 40) - magnitude

			if not v3 or v3 < n then
				v4 = tbl2[i]
				v3 = n
			end
		end
	end

	tbl.value11.treadCache = v4
	return tbl.value11.treadCache
end

local function fn21()
	local v = fn20()
	if not v then
		return nil
	end

	if v:IsA("Seat") or v:IsA("VehicleSeat") then
		return v
	end

	if v:IsA("BasePart") then
		return nil
	end

	for _, descendant in ipairs(v:GetDescendants()) do
		if descendant:IsA("Seat") or descendant:IsA("VehicleSeat") then
			return descendant
		end
	end

	return nil
end

tbl.value10.BELT_HINTS = { "belt", "tread", "walk", "run", "platform", "floor", "deck", "pad" }
tbl.value108 = nil

tbl.value108 = function()
	local v = fn20()
	if not v then
		return nil
	end

	if v:IsA("BasePart") then
		return v
	end
	local v2 = nil
	local v3 = nil

	for _, descendant in ipairs(v:GetDescendants()) do
		if descendant:IsA("BasePart") and not tbl.value105(descendant.Name) then
			local str = descendant.Name:lower()
			local n = 0

			for i = 1, #tbl.value10.BELT_HINTS do
				if str:find(tbl.value10.BELT_HINTS[i], 1, true) then
					n = 100000
					break
				end
			end

			local n2 = n + descendant.Size.X * descendant.Size.Z

			if not v2 or v2 < n2 then
				v2 = n2
				v3 = descendant
			end
		end
	end

	return v3 or v.PrimaryPart
end

tbl.value109 = function()
	local v = fn21()
	if v then
		return v.CFrame
	end
	local v2 = tbl.value108()
	return v2 and v2.CFrame or nil
end

tbl.value110 = function(arg)
	local v = tbl.value22()
	local v2 = tbl.value21()
	local v3 = v
	if not arg or not v3 or not v2 then
		return false
	end

	if v3.Sit then
		return true
	end

	for _, v4 in ipairs(tbl.value32(fn20(), { "sit", "ride", "use", "start" })) do
		if not (tbl.value31(v4) and tbl.value30(v4)) then
			continue
		end
		task.wait(0.2)
		if v3.Sit then
			return true
		end
	end

	pcall(function()
		arg:Sit(v3)
	end)

	local cFrame = arg.CFrame * CFrame.new(0, 1.4, 0)

	for i = 1, 24 do
		if v3.Sit then
			return true
		end

		pcall(function()
			v2.CFrame = cFrame
		end)

		tbl.value3.Heartbeat:Wait()
	end

	return v3.Sit == true
end

tbl.value111 = nil

tbl.value111 = function()
	local n = 0

	if tbl.value27(tbl.value25.TreadRaise) then
		n = 1
	end

	for _, v in ipairs(tbl.value32(fn20(), { "upgrade", "level", "tier", "buy" })) do
		if tbl.value31(v) and tbl.value30(v) then
			n += 1
			task.wait(0.06)
		end
	end

	return n
end

fn(function()
	local n = 0

	while tbl.value17() do
		tbl.value3.Heartbeat:Wait()

		if (tbl.value14.AutoTreadmill or tbl.value14.AutoSteal and tbl.value14.AutoStealTreadmill) and tbl.value23() and not tbl.value11.travelling and not tbl.value11.stealBusy and not tbl.value11.carryingUid and not tbl.value11.recoverUid and not tbl.value78() and not fn5() then
			local v = fn21()
			local v2 = tbl.value109()
			local v3 = tbl.value21()
			local v4 = tbl.value22()

			if v2 and v3 and v4 then
				if Vector3.new(v2.Position.X - v3.Position.X, 0, v2.Position.Z - v3.Position.Z).Magnitude > 12 and not v4.Sit then
					fn11(v2.Position, 6, function()
						return tbl.value17() and (tbl.value14.AutoTreadmill or tbl.value14.AutoSteal and tbl.value14.AutoStealTreadmill) and not tbl.value11.stealBusy and not tbl.value11.carryingUid and not tbl.value11.recoverUid and not tbl.value78() and not fn5()
					end)
				elseif v then
					if not v4.Sit then
						tbl.value110(v)
					end

					if tbl.value14.AutoUpgradeTreadmill and tick() - n > 4 then
						n = tick()
						pcall(tbl.value111)
					end
				else
					local lookVector = v2.LookVector

					if (v3.Position - v2.Position):Dot(lookVector) > 6 then
						lookVector = -lookVector
					end

					pcall(function()
						v4.WalkSpeed = math.max(v4.WalkSpeed, 60)
					end)

					v4:Move(Vector3.new(lookVector.X, 0, lookVector.Z).Unit, false)

					if tbl.value14.AutoUpgradeTreadmill and tick() - n > 4 then
						n = tick()
						pcall(tbl.value111)
					end
				end
			end
		end
	end
end)

tbl.value11.rawRequest = syn and syn.request or http and http.request or http_request or request

tbl.value112 = function(arg)
	if type(tbl.value11.rawRequest) == "function" then
		local ok2, result2 = pcall(tbl.value11.rawRequest, { Url = arg, Method = "GET" })
		local flag

		if ok2 then
			flag = type(result2) == "table" and type(result2.Body) == "string"
		else
			flag = ok2
		end

		if flag then
			return result2.Body
		end
	end

	local ok2, result2 = pcall(function()
		return game:HttpGet(arg)
	end)

	if ok2 and type(result2) == "string" then
		return result2
	end
	return nil
end

tbl.value10.HOP_FILE = "RealKidHubHopCount.txt"

tbl.value113 = function(realKidHubHops)
	if writefile then
		local v = pcall
		local v2 = writefile
		local hopFile = tbl.value10.HOP_FILE
		local str = tostring(realKidHubHops)
		v(v2, hopFile, str)
	end

	if getgenv then
		getgenv().__realKidHubHops = realKidHubHops
	end
end

local function fn22()
	if isfile and readfile and isfile(tbl.value10.HOP_FILE) then
		local ok2, result2 = pcall(readfile, tbl.value10.HOP_FILE)
		if ok2 then
			return tonumber(result2) or 0
		end
	end

	return tonumber(getgenv and getgenv().__realKidHubHops) or 0
end

tbl.value14.HopCount = fn22()
tbl.value11.visited = {}
tbl.value11.hopping = false

tbl.value114 = function()
	local str = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&excludeFullGames=true&limit=100"
	local tbl2 = {}
	local nextPageCursor

	for i = 1, 5 do
		local v = tbl.value112(str .. (nextPageCursor and "&cursor=" .. tbl.value8:UrlEncode(nextPageCursor) or ""))

		local ok2, result2 = pcall(function()
			return v and tbl.value8:JSONDecode(v)
		end)

		if not (not ok2 or type(result2) ~= "table" or type(result2.data) ~= "table") then
			for _, v2 in ipairs(result2.data) do
				local id = v2.id

				if id then
					local flag = v2.id ~= game.JobId

					if flag then
						local flag2 = not tbl.value11.visited[v2.id]

						if flag2 then
							id = (v2.playing or 0) < (v2.maxPlayers or 30)
						else
							id = flag2
						end
					else
						id = flag
					end

					if id then
						id = not tbl.value14.LowPlayerHop

						if not id then
							id = (v2.playing or 0) >= 1

							if id then
								id = (v2.playing or 0) <= 2
							end
						end
					end
				end

				if id then
					tbl2[#tbl2 + 1] = v2.id
				end
			end

			nextPageCursor = result2.nextPageCursor
			if nextPageCursor then
				continue
			end
		end

		break
	end

	for i = #tbl2, 2, -1 do
		local n = math.random(i)
		local v = tbl2[i]
		tbl2[i] = tbl2[n]
		tbl2[n] = v
	end

	return tbl2
end

tbl.value115 = function()
	if tbl.value11.hopping then
		return false
	end
	tbl.value11.hopping = true
	local v = tbl.value114()

	for _, v2 in ipairs(v) do
		local v3 = v2
		tbl.value11.visited[v3] = true
		tbl.value14.HopCount = tbl.value14.HopCount + 1
		tbl.value113(tbl.value14.HopCount)

		if pcall(function()
			tbl.value5:TeleportToPlaceInstance(game.PlaceId, v3, tbl.value9)
		end) then
			task.wait(6)
			tbl.value11.hopping = false
			return true
		end
	end

	if not tbl.value14.LowPlayerHop then
		pcall(function()
			tbl.value5:Teleport(game.PlaceId, tbl.value9)
		end)
	end

	tbl.value11.hopping = false
	return #v > 0
end

fn(function()
	while tbl.value17() do
		if tbl.value14.AutoHop then
			if tbl.value14.HopCount >= tbl.value14.MaxHops then
				tbl.value14.AutoHop = false
				tbl.value43("AutoHop", false)
				tbl.value18("Server Hop", "Hop limit reached.")
			else
				pcall(tbl.value115)
			end
		end

		local wait = task.wait
		local n = math.clamp(tbl.value14.HopDelay, 5, 300)
		wait(n)
	end
end)

tbl.value116 = function()
	local respawnLocation = tbl.value9.RespawnLocation
	if respawnLocation and respawnLocation:IsA("BasePart") then
		return respawnLocation.CFrame.Position + Vector3.new(0, 4, 0)
	end

	for _, descendant in ipairs(tbl.value7:GetDescendants()) do
		if descendant:IsA("SpawnLocation") then
			return descendant.Position + Vector3.new(0, 4, 0)
		end
	end

	local v = tbl.value72()
	local result2

	if not v then
		result2 = nil
	else
		local ok2

		ok2, result2 = pcall(function()
			return v:GetPivot()
		end)

		result2 = ok2 and result2 or nil
	end

	return result2 and result2.Position or nil
end

tbl.value117 = function()
	tbl.value14.Unloaded = true
	tbl.value14.AutoSteal = false
	tbl.value14.AutoHop = false
	tbl.value14.AutoHatch = false
	tbl.value14.EggESP = false
	tbl.value14.AutoEquipBest = false
	tbl.value14.AutoClaim = false
	tbl.value14.AutoUpgrade = false
	tbl.value14.AutoTreadmill = false
	tbl.value14.AutoUpgradeTreadmill = false
	tbl.value14.AntiTreadmill = false
	tbl.value14.FpsBoost = false
	tbl.value11.travelToken = tbl.value11.travelToken + 1
	tbl.value11.travelling = false
	tbl.value100()
	tbl.value91()

	if stealGui then
		pcall(function()
			stealGui:Destroy()
		end)

		stealGui = nil
		updateBtn = nil
	end

	for _, v in ipairs(tbl.value16) do
		local v2 = v

		pcall(function()
			v2:Disconnect()
		end)
	end

	for _, v in ipairs(tbl.value15) do
		pcall(task.cancel, v)
	end

	tbl.value51()
end

tbl.value118 = function(arg)
	local tbl2 = {}

	if type(arg) == "table" then
		for k, v in pairs(arg) do
			if v == true then
				tbl2[#tbl2 + 1] = k
			elseif type(v) == "string" then
				tbl2[#tbl2 + 1] = v
			end
		end

		return tbl2
	end

	if type(arg) == "string" then
		tbl2[1] = arg
	end

	return tbl2
end

tbl.value10.filterValues = {}

for _, rarity in ipairs(tbl.value10.Rarities) do
	tbl.value10.filterValues[#tbl.value10.filterValues + 1] = rarity
end

local value12 = tbl.value12
local value1 = tbl.value1

local v = value1:CreateWindow({
	Title = "RealKidHub",
	Subtitle = "Steal An Egg",
	Size = UDim2.fromOffset(640, 455),
	MinSize = Vector2.new(500, 360),
	Draggable = true,
	Resizable = true,
	UseBlur = true,
	DefaultTab = "Auto Steal",
	ToggleKeybind = Enum.KeyCode.LeftControl,
	TogglePosition = UDim2.fromOffset(20, 220),
})

v.Notify = function(arg, arg2)
	return value1:Notify({
		Title = arg2.Title or "RealKidHub",
		Text = arg2.Content or arg2.Text or "",
		Type = arg2.Type or "info",
		Duration = arg2.Duration,
	})
end

value12.Window = v
local str = "English"
local tbl2 = {}
local tbl3 = {}

local tbl4 = {
	["Anti-Cheat Bypass"] = "Vượt chống gian lận",
	["Enable Anti-Cheat Bypass"] = "Bật vượt chống gian lận",
	["Void Unstuck"] = "Thoát kẹt hư không",
	["Speed Changer"] = "Đổi tốc độ",
	["Walk Speed"] = "Tốc độ đi bộ",
	["Focus Area"] = "Khu vực tập trung",
	["Egg Rarity Filter"] = "Lọc độ hiếm trứng",
	["Auto Steal"] = "Tự động nhặt trứng",
	["Enable Auto Steal"] = "Bật tự động nhặt trứng",
	["Farm Method"] = "Phương thức di chuyển",
	["Tween Speed"] = "Tốc độ tween",
	["Secret Egg Priority"] = "Ưu tiên trứng Secret",
	["Anti Trap"] = "Chống bẫy",
	["Server Hop"] = "Đổi server",
	["Enable Auto Server Hop"] = "Bật tự động đổi server",
	["Max Hops"] = "Số lần đổi tối đa",
	["Check Delay"] = "Thời gian chờ kiểm tra",
	["Server Hop Now"] = "Đổi server ngay",
	["Recall to Spawn"] = "Về điểm spawn",
	["Hatch & ESP"] = "Ấp & ESP",
	["Enable Auto Hatch"] = "Bật tự động ấp",
	["Hatch Once"] = "Ấp một lần",
	["Enable Egg ESP"] = "Bật ESP trứng",
	["FPS Boost"] = "Tăng FPS",
	["Equip & Sell"] = "Trang bị & bán",
	["Enable Auto Equip Best"] = "Tự động trang bị pet tốt nhất",
	["Equip Best Now"] = "Trang bị pet tốt nhất",
	["Sell Inventory Now"] = "Bán túi đồ",
	["Claim & Upgrade"] = "Thu thập & nâng cấp",
	["Enable Auto Claim"] = "Bật tự động thu thập",
	["Claim Interval"] = "Khoảng thời gian thu thập",
	["Claim Now"] = "Thu thập ngay",
	["Enable Auto Upgrade"] = "Bật tự động nâng cấp",
	["Upgrade Interval"] = "Khoảng thời gian nâng cấp",
	["Upgrade Now"] = "Nâng cấp ngay",
	Treadmill = "Máy chạy bộ",
	["Enable Auto Treadmill"] = "Bật tự động dùng máy chạy bộ",
	["Auto-Upgrade Treadmill"] = "Tự động nâng cấp máy chạy bộ",
	["Go to Treadmill"] = "Đi đến máy chạy bộ",
	Configuration = "Cấu hình",
	["Show Window"] = "Hiện cửa sổ",
	["Drop to Void"] = "Rơi xuống hư không",
	["Copy Remote List"] = "Sao chép danh sách remote",
	["Copy Plot Dump"] = "Sao chép dữ liệu plot",
	["Copy Place Source"] = "Sao chép mã đặt trứng",
	["Reset Hop Count"] = "Đặt lại số lần đổi server",
	["Rejoin Server"] = "Vào lại server",
	["Unload Script"] = "Tắt script",
	["Visual Pets (Client Only)"] = "Pet hiển thị (chỉ client)",
	Pet = "Pet",
	["Refresh Pet List"] = "Làm mới danh sách pet",
	["Custom Name"] = "Tên tùy chỉnh",
	["Orbit Radius"] = "Bán kính xoay",
	["Orbit Speed"] = "Tốc độ xoay",
	["Spawn Pet"] = "Tạo pet",
	["Remove Last Pet"] = "Xóa pet cuối",
	["Remove All Pets"] = "Xóa tất cả pet",
	Direction = "Hướng dịch",
	Translate = "Dịch",
	["Egg Value Threshold (M/s)"] = "Ngưỡng giá trị trứng (M/s)",
}

local function fn23(arg)
	return str == "Vietnamese" and (tbl4[arg] or arg) or arg
end

tbl4.Language = "Ngôn ngữ"
tbl4.Event = "Sự kiện"
tbl4["Dr Scramble"] = "Bác sĩ Scramble"
tbl4["Auto Farm Dr Scramble"] = "Tự farm Bác sĩ Scramble"
tbl4["Pet Filter ($/s)"] = "Lọc pet ($/s)"
tbl4["Interface Language"] = "Ngôn ngữ giao diện"
tbl4["Hop 1-2 Players"] = "Vào server 1-2 người"
tbl4["Anti Treadmill"] = "Chống máy chạy bộ"

local tbl5 = {
	["Only steals eggs at or above this earning; then runs the treadmill until one appears"] = "Chỉ nhặt trứng từ mức này trở lên; khi không có sẽ chạy máy chạy bộ đến khi có trứng",
	["Equips The Scrambler and flies to living drones"] = "Trang bị The Scrambler và bay đến drone còn sống",
	["Replaces the Humanoid so WalkSpeed governor hits a dead object"] = "Thay Humanoid để bộ kiểm soát WalkSpeed tác động lên đối tượng không hoạt động",
	["Ejects you from the treadmill when the bypass causes you to get stuck"] = "Thoát khỏi máy chạy bộ khi bypass làm nhân vật bị kẹt",
	["Locks WalkSpeed every frame. Requires Bypass active."] = "Khóa WalkSpeed mỗi frame. Cần bật bypass.",
	["Requires Bypass active."] = "Cần bật bypass.",
	["Walk to your pen then tap this"] = "Đi đến chuồng của bạn rồi bấm nút này",
	["Smoothly carries held eggs back to your base"] = "Đưa trứng đang cầm về căn cứ bằng chuyển động mượt",
	["Leave empty for all areas"] = "Để trống để chọn mọi khu vực",
	["Leave empty for all rarities"] = "Để trống để chọn mọi độ hiếm",
	["Takes the rarest egg first, plants it on your base and goes straight back out"] = "Ưu tiên nhặt trứng hiếm nhất, đặt vào căn cứ rồi quay lại ngay",
	["Speed slides along the ground, TP Walk hops in place to place jumps"] = "Speed lướt trên mặt đất, TP Walk nhảy tại chỗ để di chuyển",
	["Maximum 700 studs per second"] = "Tối đa 700 studs mỗi giây",
	["Drops current egg and immediately targets any Secret, Divine or Eternal that spawns"] = "Bỏ trứng hiện tại và ưu tiên Secret, Divine hoặc Eternal vừa xuất hiện",
	["Routes around traps other players drop and breaks the hold if one closes on you"] = "Đi vòng bẫy của người khác và phá trạng thái bị giữ khi bị mắc bẫy",
	["Pick as many areas as you want, leave it empty for every area"] = "Chọn nhiều khu vực tùy ý, để trống để chọn tất cả",
	["Pick as many rarities as you want, leave it empty for every rarity"] = "Chọn nhiều độ hiếm tùy ý, để trống để chọn tất cả",
	["Pick pets by hatch income, leave empty for every pet"] = "Chọn pet theo tiền nhận mỗi giây sau khi nở, để trống để chọn tất cả",
	["Rotates through public servers until the hop limit is spent"] = "Đổi qua các server công khai đến khi hết giới hạn",
	["Hops allowed before the toggle switches itself off"] = "Số lần đổi trước khi tự tắt",
	["Seconds between hops"] = "Số giây giữa mỗi lần đổi server",
	["Only joins servers with one or two players"] = "Chỉ vào server có một hoặc hai người chơi",
	["Leaves the treadmill immediately when it assigns you"] = "Rời máy chạy bộ ngay khi bị đưa vào",
	["Keeps your base empty so Auto Steal always has room to plant the next egg"] = "Giữ căn cứ trống để Auto Steal luôn có chỗ đặt trứng",
	["Outlines nearby field eggs and shows their income"] = "Viền trứng ở gần và hiển thị thu nhập của pet",
	["Cheapest rendering settings and hides shared client pet renders"] = "Giảm thiết lập hiển thị và ẩn render pet chung",
	["Keeps your strongest pets worn"] = "Luôn trang bị những pet mạnh nhất",
	["Collects base earnings and finished quest rewards"] = "Thu thập tiền căn cứ và phần thưởng nhiệm vụ hoàn thành",
	["Seconds between claims"] = "Số giây giữa mỗi lần thu thập",
	["Raises the base tier and buys whatever upgrade is in reach"] = "Tăng cấp căn cứ và mua nâng cấp có thể mua",
	["Seconds between upgrade attempts"] = "Số giây giữa mỗi lần thử nâng cấp",
	["Sits on the treadmill itself, or walks the belt when it has no seat"] = "Ngồi trên máy chạy bộ hoặc đi trên băng chuyền khi không có ghế",
	["Raises the belt tier while you run on it"] = "Tăng cấp máy chạy bộ khi bạn đang chạy",
	["Also bound to Right Control"] = "Có thể mở bằng phím Right Control",
	["Holds five seconds in the void and waits for the respawn"] = "Giữ trong hư không năm giây rồi chờ hồi sinh",
	["Stops every loop and closes the window"] = "Dừng mọi vòng lặp và đóng cửa sổ",
	["Pick from pets found in the world"] = "Chọn pet được tìm thấy trong thế giới",
	["Re-scans workspace for pet models"] = "Quét lại workspace để tìm model pet",
	["Type a pet name manually if it's not in the list"] = "Tự nhập tên pet nếu không có trong danh sách",
	["How far pets orbit from you"] = "Khoảng cách pet xoay quanh bạn",
	["How fast pets spin around you"] = "Tốc độ pet xoay quanh bạn",
	["Clones the selected/typed pet around your character"] = "Nhân bản pet đã chọn/nhập quanh nhân vật",
}

local function fn24(arg, arg2)
	tbl2[#tbl2 + 1] = { Control = arg, Config = arg2 }
	return arg
end

local function fn25(arg)
	str = arg

	for _, v2 in ipairs(tbl3) do
		v2.Tab._label.Text = fn23(v2.Title)
	end

	for _, v2 in ipairs(tbl2) do
		pcall(function()
			v2.Control:SetTitle(fn23(v2.Config.Title))
		end)

		pcall(function()
			v2.Control:SetDescription(str == "Vietnamese" and (tbl5[v2.Config.Desc] or v2.Config.Desc) or v2.Config.Desc)
		end)
	end
end

local function fn26(arg)
	local v2 = v:AddTab({ Name = fn23(arg.Title) })
	tbl3[#tbl3 + 1] = { Tab = v2, Title = arg.Title }

	local function fn27(arg2)
		return {
			Control = arg2,
			Set = function(arg3, arg4)
				return arg3.Control:Set(arg4)
			end,
			SetValue = function(arg3, arg4)
				return arg3.Control:Set(arg4)
			end,
			Refresh = function(arg3, arg4)
				return arg3.Control:Refresh(arg4)
			end,
			SetValues = function(arg3, arg4)
				return arg3.Control:Refresh(arg4)
			end,
			NewOptions = function(arg3, arg4)
				return arg3.Control:Refresh(arg4)
			end,
			Destroy = function(arg3)
				return arg3.Control:Destroy()
			end,
			SetTitle = function(arg3, text)
				local title = arg3.Control.Instance and arg3.Control.Instance:FindFirstChild("Title", true)

				if title then
					title.Text = text
				end
			end,
			SetDescription = function(arg3, text)
				local description = arg3.Control.Instance and (arg3.Control.Instance:FindFirstChild("Description", true) or arg3.Control.Instance:FindFirstChild("Content", true))

				if description then
					description.Text = text
				end
			end,
		}
	end

	v2.Section = function(arg2, arg3)
		return arg2:AddSection({ Text = fn23(arg3.Title) })
	end

	v2.Toggle = function(arg2, arg3)
		return fn24(fn27(arg2:AddToggle({ Text = fn23(arg3.Title), Description = fn23(arg3.Desc), Default = arg3.Value, Callback = arg3.Callback })), arg3)
	end

	v2.Button = function(arg2, arg3)
		return fn24(fn27(arg2:AddButton({ Text = fn23(arg3.Title), Description = fn23(arg3.Desc), Callback = arg3.Callback })), arg3)
	end

	v2.Dropdown = function(arg2, arg3)
		local value = type(arg3.Value) == "number" and arg3.Values[arg3.Value] or arg3.Value

		return fn24(fn27(arg2:AddDropdown({
			Text = fn23(arg3.Title),
			Description = fn23(arg3.Desc),
			Options = arg3.Values,
			MultiSelect = arg3.Multi,
			Default = value,
			Callback = arg3.Callback,
		})), arg3)
	end

	v2.Slider = function(arg2, arg3)
		local v3 = fn24(fn27(arg2:AddSlider({
			Text = fn23(arg3.Title),
			Description = fn23(arg3.Desc),
			Min = arg3.Value.Min,
			Max = arg3.Value.Max,
			Increment = arg3.Step,
			Default = arg3.Value.Default,
			Callback = arg3.Callback,
		})), arg3)

		v3.SetTitle = function(arg4, text)
			for _, child in ipairs(arg4.Control.Instance:GetChildren()) do
				if child:IsA("TextLabel") and (child.Text == arg3.Title or child.Text == tbl4[arg3.Title]) then
					child.Text = text
				end
			end
		end

		v3.SetDescription = function(arg4, text)
			for _, child in ipairs(arg4.Control.Instance:GetChildren()) do
				if arg3.Desc and child:IsA("TextLabel") and (child.Text == arg3.Desc or child.Text == tbl5[arg3.Desc]) then
					child.Text = text
				end
			end
		end

		return v3
	end

	v2.Input = function(arg2, arg3)
		return fn24(fn27(arg2:AddTextbox({
			Text = fn23(arg3.Title),
			Description = fn23(arg3.Desc),
			Default = "",
			Placeholder = arg3.Placeholder,
			Callback = arg3.Callback,
		})), arg3)
	end

	v2.Paragraph = function(arg2, arg3)
		local v3 = fn27(arg2:AddParagraph({ Title = fn23(arg3.Title), Text = fn23(arg3.Desc) }))

		v3.SetDescription = function(arg4, arg5)
			return arg4.Control:Set(arg5)
		end

		return fn24(v3, arg3)
	end

	return v2
end

v.Section = function()
	return { Tab = function(arg, arg2)
		return fn26(arg2)
	end }
end

local function fn27()
	for _, v2 in ipairs({ "Open", "Maximize", "Unminimize", "Show" }) do
		local v3 = v2
		if pcall(function()
			tbl.value12.Window[v3](tbl.value12.Window)
		end) then
			return true
		end
	end

	return pcall(function()
		tbl.value12.Window:Minimize(false)
	end)
end

fn2(UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed and input.KeyCode == Enum.KeyCode.RightControl then
		fn27()
	end
end))

local function fn28(arg)
	return fn26({ Title = arg })
end

tbl.value12.TabSteal = fn28("Auto Steal")
tbl.value12.TabEvent = fn28("Event")
tbl.value12.TabStealFree = fn28("Movement")
tbl.value12.TabHop = fn28("Server Hop")
tbl.value12.TabHatch = fn28("Hatch & ESP")
tbl.value12.TabSell = fn28("Equip & Sell")
tbl.value12.TabClaim = fn28("Claim & Upgrade")
tbl.value12.TabTread = fn28("Treadmill")
tbl.value12.TabTranslator = fn28("Language")
tbl.value12.TabTranslator:Section({ Title = "Interface Language" })
tbl.value12.TabTranslator:Dropdown({ Title = "Language", Values = { "English", "Vietnamese" }, Value = "English", Callback = fn25 })
local v2 = tbl.value12.TabEvent:Paragraph({ Title = "Dr Scramble", Desc = "Loading event status..." })

task.spawn(function()
	while tbl.value17() do
		local ok2, result2 = pcall(function()
			return scramble and scramble.Request:InvokeServer("Snapshot")
		end)

		if ok2 and type(result2) == "table" and result2.Window then
			local window = result2.Window
			local active = result2.Window.Active
			local n = math.max(0, math.ceil((active and window.EndsAt or window.NextAt or 0) - tbl.value7:GetServerTimeNow()))
			v2:SetDescription((str == "Vietnamese" and (active and "Đợt bùng phát đang diễn ra" or "Đang chờ") or active and "Outbreak Active" or "Idle") .. " | " .. (str == "Vietnamese" and (active and "Kết thúc sau " or "Spawn sau ") or active and "Ends in " or "Spawns in ") .. string.format("%02d:%02d", math.floor(n / 60), n % 60))
		else
			v2:SetDescription("Event status unavailable")
		end

		task.wait(2)
	end
end)

local function fn29()
	for _, v3 in ipairs({ "__OBJECTS", "World" }) do
		local areas = tbl.value7:FindFirstChild(v3)
		areas = areas and areas:FindFirstChild("Areas")
		areas = areas and areas:FindFirstChild("GuardAreas")
		local abyssOcean = areas and areas:FindFirstChild("Abyss Ocean")
		abyssOcean = abyssOcean and abyssOcean:FindFirstChild("Guard")
		if abyssOcean then
			return abyssOcean, v3
		end
	end
end

local function fn30(arg, arg2, arg3)
	local v3 = fn29()
	if not arg3 and not v3 then
		return false
	end

	if arg2 and not tbl.value14.HumReady then
		if not tbl.value23() or not fn3() then
			return false
		end
	end

	local v4 = tbl.value22()

	if arg2 then
		local value113 = tbl.value11
		tbl.value11.hubCache = nil
		value113.hubTried = false
	end

	tbl.value21()
	local v5 = fn11(arg3 or v3:GetPivot().Position, 8, arg, "pickup", 30, tbl.value10.TRAVEL_SPEED, false, arg2)

	if arg2 and v5 then
		task.wait(2)

		if tbl.value17() and tbl.value22() == v4 then
			tbl.value51()
		end
	end

	if not v5 then
		tbl.value21()
		tbl.value22()
	end

	return v5
end

tbl.value12.TabEvent:Toggle({
	Title = "Auto Farm Dr Scramble",
	Desc = "Equips The Scrambler and flies to living drones",
	Value = false,
	Callback = function(autoScramble)
		tbl.value14.AutoScramble = autoScramble
		tbl.value11.scrambleEntered = false
		if not autoScramble then
			return
		end

		task.spawn(function()
			while tbl.value17() and tbl.value14.AutoScramble do
				local character = tbl.value9.Character
				local scrambleLocalVisuals = tbl.value7:FindFirstChild("ScrambleLocalVisuals")
				local humanoid = character and character:FindFirstChildOfClass("Humanoid")

				if not tbl.value11.scrambleEntered then
					if fn30(function()
						return tbl.value14.AutoScramble
					end, true) then
						tbl.value11.scrambleEntered = true
					end

					task.wait(0.5)
				else
					local v3 = nil
					local v4 = ipairs
					scrambleLocalVisuals = scrambleLocalVisuals and scrambleLocalVisuals:GetChildren() or {}

					for _, scrambleLocalVisual in v4(scrambleLocalVisuals) do
						local hitbox = scrambleLocalVisual:FindFirstChild("Hitbox")

						if hitbox then
							hitbox = (hitbox:GetAttribute("Health") or 0) > 0
						end

						if hitbox and scrambleLocalVisual:GetAttribute("DroneState") ~= "Death" then
							v3 = v3 or scrambleLocalVisual
						end
					end

					if v3 and humanoid then
						local hitbox = v3:FindFirstChild("Hitbox")
						local flag

						if hitbox then
							flag = (hitbox:GetAttribute("Health") or 0) > 0
						else
							flag = hitbox
						end

						flag = flag and v3:GetAttribute("DroneState") ~= "Death"

						if flag then
							for _, v5 in ipairs({ character, tbl.value9:FindFirstChildOfClass("Backpack") }) do
								local v6 = ipairs
								v5 = v5 and v5:GetChildren() or {}

								for _, v7 in v6(v5) do
									if v7:IsA("Tool") and v7:GetAttribute("IsBat") == true then
										humanoid:EquipTool(v7)
										break
									end
								end
							end

							fn30(function()
								local flag2 = tbl.value17() and tbl.value14.AutoScramble and v3.Parent and v3:GetAttribute("DroneState") ~= "Death"
								local flag3

								if flag2 then
									flag3 = (hitbox:GetAttribute("Health") or 0) > 0
								else
									flag3 = flag2
								end

								return flag3
							end, true, hitbox.Position)
						end
					end

					task.wait(0.25)
				end
			end
		end)
	end,
})

tbl.value119 = nil

tbl.value119 = {
	SpeedChanger = false,
	SpeedValue = 60,
	HumReady = false,
	VoidUnstuck = false,
	AutoPutEggs = false,
	PutEggsDelay = 0.4,
	AreaFocus = {},
	RarityFilter = {},
}

fn(function()
	while tbl.value17() do
		tbl.value3.Heartbeat:Wait()

		if tbl.value119.SpeedChanger and tbl.value119.HumReady then
			local v3 = tbl.value22()

			if v3 and v3.Health > 0 then
				pcall(function()
					if v3.WalkSpeed ~= tbl.value119.SpeedValue then
						v3.WalkSpeed = tbl.value119.SpeedValue
					end
				end)
			end
		end
	end
end)

tbl.value12.TabStealFree:Section({ Title = "Anti-Cheat Bypass" })

tbl.value12.TabStealFree:Toggle({
	Title = "Enable Anti-Cheat Bypass",
	Desc = "Replaces the Humanoid so WalkSpeed governor hits a dead object",
	Value = false,
	Callback = function(arg)
		tbl.value119.HumReady = false

		if arg then
			task.spawn(function()
				local v3 = fn3()
				tbl.value119.HumReady = v3
				tbl.value18("Anti-Cheat", not v3 and "Not ready." or "Bypass active.")
			end)

			return
		end

		tbl.value18("Anti-Cheat", "Bypass disabled.")
	end,
})

tbl.value12.TabStealFree:Toggle({
	Title = "Void Unstuck",
	Desc = "Ejects you from the treadmill when the bypass causes you to get stuck",
	Value = false,
	Callback = function(voidUnstuck)
		tbl.value119.VoidUnstuck = voidUnstuck
	end,
})

tbl.value12.TabStealFree:Toggle({
	Title = "Speed Changer",
	Desc = "Locks WalkSpeed every frame. Requires Bypass active.",
	Value = false,
	Callback = function(speedChanger)
		tbl.value119.SpeedChanger = speedChanger
		if speedChanger and not tbl.value119.HumReady then
			tbl.value18("Speed", "Enable Anti-Cheat Bypass first!")
			return
		end

		if not speedChanger then
			local v3 = tbl.value22()

			if v3 then
				pcall(function()
					v3.WalkSpeed = 16
				end)
			end
		end
	end,
})

tbl.value12.TabStealFree:Slider({
	Title = "Walk Speed",
	Desc = "Requires Bypass active.",
	Step = 1,
	Value = { Min = 16, Max = 500, Default = 60 },
	Callback = function(speedValue)
		tbl.value119.SpeedValue = speedValue

		if tbl.value119.SpeedChanger then
			local v3 = tbl.value22()

			if v3 then
				pcall(function()
					v3.WalkSpeed = speedValue
				end)
			end
		end
	end,
})

tbl.value12.TabSteal:Section({ Title = "Auto Steal" })
tbl.value139 = nil
tbl.value140 = nil

tbl.value141 = function()
	if tbl.value139 and tbl.value139.Parent then
		return
	end
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "RealKidHubStealGui"
	screenGui.ResetOnSpawn = false
	screenGui.IgnoreGuiInset = true
	screenGui.DisplayOrder = 999

	pcall(function()
		screenGui.Parent = tbl.value11.hostGui
	end)

	if not screenGui.Parent then
		screenGui.Parent = tbl.value9.PlayerGui
	end

	tbl.value139 = screenGui
	local frame = Instance.new("Frame")
	frame.Size = UDim2.fromOffset(174, 106)
	frame.AnchorPoint = Vector2.new(1, 0.5)
	frame.Position = UDim2.new(1, -18, 0.5, -104)
	frame.BackgroundColor3 = Color3.fromRGB(38, 55, 82)
	frame.BackgroundTransparency = 0.24
	frame.BorderSizePixel = 0
	frame.ClipsDescendants = true
	frame.Active = true
	frame.Draggable = true
	frame.Parent = screenGui
	Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 22)
	local uiStroke = Instance.new("UIStroke", frame)
	uiStroke.Color = Color3.fromRGB(235, 246, 255)
	uiStroke.Thickness = 1
	uiStroke.Transparency = 0.52
	local uiGradient = Instance.new("UIGradient", frame)
	uiGradient.Color = ColorSequence.new(Color3.fromRGB(126, 164, 220), Color3.fromRGB(35, 49, 76))
	local new = NumberSequenceKeypoint.new
	uiGradient.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.2), new(1, 0.72) })
	uiGradient.Rotation = 90
	local frame2 = Instance.new("Frame", frame)
	frame2.BackgroundColor3 = Color3.new(1, 1, 1)
	frame2.BackgroundTransparency = 0.84
	frame2.BorderSizePixel = 0
	frame2.Size = UDim2.new(1, 0, 0, 40)
	Instance.new("UICorner", frame2).CornerRadius = UDim.new(0, 22)
	local uiGradient2 = Instance.new("UIGradient", frame2)
	local new2 = NumberSequenceKeypoint.new
	uiGradient2.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.12), new2(1, 1) })
	uiGradient2.Rotation = 90
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, -48, 0, 28)
	textLabel.Position = UDim2.new(0, 16, 0, 9)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = "AUTO STEAL"
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextColor3 = Color3.fromRGB(238, 240, 246)
	textLabel.Font = Enum.Font.GothamBold
	textLabel.TextSize = 13
	textLabel.Parent = frame
	local textButton = Instance.new("TextButton")
	textButton.Size = UDim2.fromOffset(22, 22)
	textButton.Position = UDim2.new(1, -32, 0, 10)
	textButton.BackgroundColor3 = Color3.new(1, 1, 1)
	textButton.BackgroundTransparency = 0.87
	textButton.Text = "✕"
	textButton.TextColor3 = Color3.fromRGB(232, 240, 255)
	textButton.Font = Enum.Font.Gotham
	textButton.TextSize = 12
	textButton.Text = "×"
	textButton.BorderSizePixel = 0
	textButton.Parent = frame
	Instance.new("UICorner", textButton).CornerRadius = UDim.new(1, 0)

	textButton.MouseButton1Click:Connect(function()
		tbl.value14.AutoSteal = false
		tbl.value43("AutoSteal", false)

		pcall(function()
			screenGui:Destroy()
		end)

		tbl.value139 = nil
		tbl.value140 = nil
	end)

	local textButton2 = Instance.new("TextButton")
	textButton2.Size = UDim2.new(1, -28, 0, 44)
	textButton2.Position = UDim2.new(0, 14, 0, 50)
	textButton2.BackgroundColor3 = Color3.fromRGB(104, 205, 255)
	textButton2.BackgroundTransparency = 0.52
	textButton2.Text = "Start"
	textButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
	textButton2.Font = Enum.Font.GothamBold
	textButton2.TextSize = 14
	textButton2.BorderSizePixel = 0
	textButton2.Parent = frame
	Instance.new("UICorner", textButton2).CornerRadius = UDim.new(0, 15)
	local uiStroke2 = Instance.new("UIStroke", textButton2)
	uiStroke2.Color = Color3.fromRGB(205, 243, 255)
	uiStroke2.Transparency = 0.36
	local uiGradient3 = Instance.new("UIGradient", textButton2)
	uiGradient3.Color = ColorSequence.new(Color3.fromRGB(154, 224, 255), Color3.fromRGB(74, 138, 235))
	local new3 = NumberSequenceKeypoint.new
	uiGradient3.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.15), new3(1, 0.48) })
	uiGradient3.Rotation = 90

	tbl.value140 = function()
		local autoSteal = tbl.value14.AutoSteal
		textButton2.Text = autoSteal and "Stop" or "Start"
		textButton2.BackgroundColor3 = autoSteal and Color3.fromRGB(255, 122, 148) or Color3.fromRGB(104, 205, 255)
		uiStroke2.Color = autoSteal and Color3.fromRGB(255, 220, 228) or Color3.fromRGB(205, 243, 255)
	end

	tbl.value140()

	textButton2.MouseButton1Click:Connect(function()
		local autoSteal = not tbl.value14.AutoSteal
		tbl.value14.AutoSteal = autoSteal
		tbl.value43("AutoSteal", autoSteal)

		if autoSteal then
			tbl.value14.AntiCheat = true

			task.spawn(function()
				if tbl.value14.AntiCheat and not tbl.value14.HumReady and tbl.value23() then
					fn3()
				end

				tbl.value52()
				if tbl.value14.FarmMethod == "TP Walk" then
					tbl.value18("Auto Steal", "Running the TP Walk route, " .. tbl.value10.TP_STEP .. " studs every " .. tbl.value10.TP_WAIT .. "s.")
					return
				end
				tbl.value18("Auto Steal", "Running the ground route at " .. tbl.value10.TRAVEL_SPEED .. " studs.")
			end)
		else
			tbl.value11.travelToken = tbl.value11.travelToken + 1
			tbl.value11.travelling = false
			tbl.value51()
			tbl.value18("Auto Steal", "Stopped.")
		end

		tbl.value140()
	end)
end

tbl.value41.AutoSteal = tbl.value12.TabSteal:Toggle({
	Title = "Enable Auto Steal",
	Desc = "Takes the rarest egg first, plants it on your base and goes straight back out",
	Value = false,
	Callback = function(autoSteal)
		tbl.value14.AutoSteal = autoSteal

		if autoSteal then
			tbl.value141()

			if tbl.value140 then
				tbl.value140()
			end

			tbl.value14.AntiCheat = true

			task.spawn(function()
				if tbl.value14.AntiCheat and not tbl.value14.HumReady and tbl.value23() then
					fn3()
				end

				tbl.value52()
				if tbl.value14.FarmMethod == "TP Walk" then
					tbl.value18("Auto Steal", "Running the TP Walk route, " .. tbl.value10.TP_STEP .. " studs every " .. tbl.value10.TP_WAIT .. "s.")
					return
				end
				tbl.value18("Auto Steal", "Running the ground route at " .. tbl.value10.TRAVEL_SPEED .. " studs.")
			end)

			return
		end

		if tbl.value140 then
			tbl.value140()
		end

		if tbl.value139 then
			pcall(function()
				tbl.value139:Destroy()
			end)

			tbl.value139 = nil
		end

		tbl.value11.travelToken = tbl.value11.travelToken + 1
		tbl.value11.travelling = false
		tbl.value51()
		tbl.value18("Auto Steal", "Stopped.")
	end,
})

tbl.value150 = nil
tbl.value151 = nil

tbl.value152 = function()
	local value150 = tbl.value150
	local value151 = tbl.value151
	if not value150 or not value150.Parent or type(value151) ~= "table" then
		return
	end
	local v3 = tbl.value49(true)

	table.sort(v3, function(arg, arg2)
		return arg.earning == arg2.earning and arg.rank > arg2.rank or arg.earning > arg2.earning
	end)

	local tbl6 = {}
	local value154 = tbl.value154 or {}
	local value157 = {}

	for _, v4 in ipairs(v3) do
		tbl6[v4.uid] = v4
	end

	for _, v4 in ipairs(value154) do
		if tbl6[v4] then
			value157[#value157 + 1] = v4
			tbl6[v4] = nil
		end
	end

	for _, v4 in ipairs(v3) do
		if tbl6[v4.uid] then
			value157[#value157 + 1] = v4.uid
		end
	end

	tbl.value157 = value157

	for i, v4 in ipairs(value151) do
		local v5 = v3[1]

		for _, v6 in ipairs(v3) do
			if v6.uid == value157[i] then
				v5 = v6
				break
			end
		end

		v4.Root.Visible = v5 ~= nil

		if v5 then
			local tbl7 = Assets.Directory[v5.pet] or {}
			local str2 = tostring(math.floor(v5.earning)):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
			v4.Label.Text = string.format("#%d %s ($%s/s)", i, tbl7.DisplayName or v5.pet or "Unknown", str2)

			if v4.Shadow then
				v4.Shadow.Text = v4.Label.Text
			end

			if v4.Icon and tbl7.Icon then
				v4.Icon.Image = tbl7.Icon
			end

			if v4.Up then
				v4.Up.Visible = i > 1
			end

			if v4.Down then
				v4.Down.Visible = i < #value157
			end
		end
	end

	local plusEquip = value150:FindFirstChild("PlusEquip", true)

	if plusEquip then
		plusEquip = plusEquip:FindFirstChild("TextLabel") or plusEquip
	end

	if plusEquip and plusEquip:IsA("TextLabel") then
		plusEquip.Text = tbl.value14.AutoSteal and "AUTO STEAL: ON" or "AUTO STEAL: OFF"
	end

	local imageLabel = tbl.value155 and tbl.value155:FindFirstChild("ImageLabel", true)
	local v4 = v3[1]

	for _, v5 in ipairs(v3) do
		if v5.uid == value157[1] then
			v4 = v5
			break
		end
	end

	v4 = v4 and Assets.Directory[v4.pet]

	if imageLabel and v4 and v4.Icon then
		imageLabel.Image = v4.Icon
	end

	local value158 = tbl.value158
	local value155 = tbl.value155
	local parent = value158 and value158.Parent and value158.Parent.Parent

	if value158 and value155 and parent then
		local n = nil

		for _, child in ipairs(value158.Parent:GetChildren()) do
			if child:IsA("GuiObject") and child.Visible and child.AbsolutePosition.Y > value158.AbsolutePosition.Y then
				n = math.min(n or math.huge, child.AbsolutePosition.Y - value158.AbsolutePosition.Y - value158.AbsoluteSize.Y)
			end
		end

		value155.AnchorPoint = Vector2.zero
		value155.Position = UDim2.fromOffset(value158.AbsolutePosition.X - parent.AbsolutePosition.X, value158.AbsolutePosition.Y - parent.AbsolutePosition.Y - value155.AbsoluteSize.Y - (n or 16))
		value155.Size = UDim2.fromOffset(value158.AbsoluteSize.X, value158.AbsoluteSize.Y)
	end
end

tbl.value153 = function()
	local v3 = tbl
	local v4 = tbl
	tbl.value150 = nil
	v3.value151 = nil
	v4.value155 = nil
	local playerGui = tbl.value9:FindFirstChild("PlayerGui")
	local activePets = playerGui and playerGui:FindFirstChild("ActivePets", true)
	activePets = activePets and activePets:FindFirstChild("Frame", true)
	local rightButtons = playerGui and playerGui:FindFirstChild("RightButtons", true)
	rightButtons = rightButtons and rightButtons:FindFirstChild("EggsButton")
	if not activePets or not rightButtons then
		return
	end
	local hostGui = tbl.value11.hostGui or playerGui
	local realKidStealPanel = hostGui:FindFirstChild("RealKidStealPanel")

	if realKidStealPanel then
		realKidStealPanel:Destroy()
	end

	local realKidStealPanel2 = playerGui:FindFirstChild("RealKidStealPanel")

	if realKidStealPanel2 then
		realKidStealPanel2:Destroy()
	end

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "RealKidStealPanel"
	screenGui.ResetOnSpawn = false
	screenGui.DisplayOrder = 1001
	screenGui.Parent = hostGui
	local clone = activePets:Clone()
	clone.Name = "StealPanel"
	clone.Visible = false
	clone.Parent = screenGui
	local uiScale = Instance.new("UIScale")
	uiScale.Name = "RealKidPanelScale"
	uiScale.Scale = 0.92
	uiScale.Parent = clone
	local tween = nil

	local function fn31(arg)
		if tween then
			tween:Cancel()
		end

		if arg then
			local v5 = uiScale
			clone.Visible = true
			v5.Scale = 0.92
			tween = tbl.value4:Create(uiScale, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Scale = 1 })
		else
			tween = tbl.value4:Create(uiScale, TweenInfo.new(0.14, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { Scale = 0.92 })

			tween.Completed:Once(function()
				clone.Visible = false
			end)
		end

		tween:Play()
	end

	local equipBest = clone:FindFirstChild("EquipBest", true)

	if equipBest then
		equipBest.Visible = false
	end

	local title = clone:FindFirstChild("Title", true)

	if title then
		title = title:FindFirstChild("TextLabel") or title
	end

	if title and title:IsA("TextLabel") then
		title.Text = "STEAL PANEL"
	end

	local scrollingFrame = clone:FindFirstChild("ScrollingFrame", true)
	local template = scrollingFrame and scrollingFrame:FindFirstChild("Template")
	if not scrollingFrame or not template then
		screenGui:Destroy()
		return
	end
	scrollingFrame.ClipsDescendants = true
	local growingEggs = playerGui:FindFirstChild("GrowingEggs")
	growingEggs = growingEggs and growingEggs:FindFirstChild("Skip", true)

	for _, child in ipairs(scrollingFrame:GetChildren()) do
		if child ~= template and child:GetAttribute("PetListRowClone") then
			child:Destroy()
		end
	end

	template.Visible = false
	local value151 = {}

	for i = 1, 5 do
		local clone2 = template:Clone()
		clone2.Name = "StealEgg_" .. i
		clone2.LayoutOrder = i
		clone2.Visible = true
		clone2:SetAttribute("PetListRowClone", true)
		local spacer = clone2:FindFirstChild("Spacer")
		local textLabel = spacer and spacer:FindFirstChild("TextLabel")
		local textLabel2 = textLabel and textLabel:FindFirstChild("TextLabel")
		local icon = spacer and spacer:FindFirstChild("Icon")
		local unequip = spacer and spacer:FindFirstChild("Unequip")

		if unequip and growingEggs then
			unequip:Destroy()
			unequip = growingEggs:Clone()
			unequip.Parent = spacer
			local img = unequip:FindFirstChild("Img", true)

			if img then
				img.Visible = true
				img.ImageTransparency = 0
				local udim2 = UDim2.fromScale(0.5, 0.5)
				local udim22 = UDim2.fromScale(0.62, 0.62)
				local zIndex = unequip.ZIndex + 1
				img.AnchorPoint = Vector2.new(0.5, 0.5)
				img.Position = udim2
				img.Size = udim22
				img.Rotation = 90
				img.ZIndex = zIndex
			end
		end

		local clone3 = unequip and unequip:Clone()

		if unequip then
			local udim2 = UDim2.fromOffset(48, 42)
			local udim22 = UDim2.new(1, -54, 0.5, -21)
			unequip.Name = "Down"
			unequip.Size = udim2
			unequip.Position = udim22
			unequip.Rotation = 0

			if not growingEggs then
				for _, descendant in ipairs(unequip:GetDescendants()) do
					if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
						descendant.Text = "v"
					end
				end
			end

			unequip.Activated:Connect(function()
				local v5 = table.clone(tbl.value157 or {})

				if v5[i + 1] then
					local n = i + 1
					local v6 = v5[i]
					v5[i] = v5[i + 1]
					v5[n] = v6
				end

				tbl.value154 = v5
				tbl.value152()
			end)
		end

		if clone3 then
			local udim2 = UDim2.fromOffset(48, 42)
			local udim22 = UDim2.new(1, -108, 0.5, -21)
			clone3.Name = "Up"
			clone3.Size = udim2
			clone3.Position = udim22
			clone3.Parent = spacer
			clone3.Rotation = 0
			local img = clone3:FindFirstChild("Img", true)

			if img and growingEggs then
				local zIndex = clone3.ZIndex + 1
				img.Rotation = 270
				img.ZIndex = zIndex
			end

			clone3.Visible = i > 1

			if not growingEggs then
				for _, descendant in ipairs(clone3:GetDescendants()) do
					if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
						descendant.Text = "^"
					end
				end
			end

			if clone3:IsA("TextButton") then
				clone3.Text = "^"
			end

			clone3.Activated:Connect(function()
				local v5 = table.clone(tbl.value157 or {})

				if v5[i - 1] then
					local n = i - 1
					local v6 = v5[i]
					v5[i] = v5[i - 1]
					v5[n] = v6
				end

				tbl.value154 = v5
				tbl.value152()
			end)
		end

		clone2.Parent = scrollingFrame
		value151[i] = { Root = clone2, Label = textLabel, Shadow = textLabel2, Icon = icon, Up = clone3, Down = unequip }
	end

	local plusEquip = clone:FindFirstChild("PlusEquip", true)

	if plusEquip and plusEquip:IsA("GuiButton") then
		plusEquip.Activated:Connect(function()
			tbl.value41.AutoSteal:Set(not tbl.value14.AutoSteal)
			tbl.value152()
		end)
	end

	local close = clone:FindFirstChild("Close", true)

	if close and close:IsA("GuiButton") then
		local textLabel = close:FindFirstChildWhichIsA("TextLabel", true)

		if textLabel then
			local zIndex = close.ZIndex + 1
			textLabel.Text = ">"
			textLabel.Visible = true
			textLabel.ZIndex = zIndex
		end

		close.Activated:Connect(function()
			fn31(false)
		end)
	end

	if rightButtons then
		local parent = rightButtons.Parent.Parent.Parent

		for _, descendant in ipairs(playerGui:GetDescendants()) do
			if descendant.Name == "StealPanelButton" then
				descendant:Destroy()
			end
		end

		local clone2 = rightButtons:Clone()
		clone2.Name = "StealPanelButton"
		clone2.Parent = parent

		for _, descendant in ipairs(clone2:GetDescendants()) do
			if descendant:IsA("GuiObject") then
				descendant.ZIndex = 100
			end
		end

		if clone2:IsA("GuiObject") then
			clone2.ZIndex = 100
		end

		local isGuiButton = clone2:IsA("GuiButton") and clone2 or clone2:FindFirstChildWhichIsA("GuiButton", true)

		if isGuiButton then
			isGuiButton.Activated:Connect(function()
				fn31(not clone.Visible)
			end)
		end

		local v5 = tbl
		tbl.value155 = clone2
		v5.value158 = rightButtons
	end

	local v5 = tbl
	tbl.value150 = clone
	v5.value151 = value151
	tbl.value152()

	fn2(screenGui.Destroying:Connect(function()
		if tbl.value155 then
			tbl.value155:Destroy()
			tbl.value155 = nil
		end

		if tbl.value150 == clone then
			local v6 = tbl
			tbl.value150 = nil
			v6.value151 = nil
		end
	end))
end

task.defer(tbl.value153)

fn(function()
	while tbl.value17() do
		if tbl.value150 then
			tbl.value152()
		else
			tbl.value153()
		end

		task.wait(2)
	end
end)

local tabSteal = tbl.value12.TabSteal

tabSteal:Slider({
	Title = "Egg Value Threshold (M/s)",
	Desc = "Only steals eggs at or above this earning; then runs the treadmill until one appears",
	Step = 1,
	Value = { Min = 0, Max = 1000, Default = 0 },
	Callback = function(arg)
		tbl.value14.EggValueThreshold = (tonumber(arg) or 0) * 1000000
		tbl.value14.AutoStealTreadmill = tbl.value14.EggValueThreshold > 0
	end,
})

tabSteal:Dropdown({
	Title = "Farm Method",
	Desc = "Speed slides along the ground, TP Walk hops in place to place jumps",
	Values = { "Speed", "TP Walk" },
	Value = tbl.value14.FarmMethod,
	Callback = function(arg)
		local v3 = tbl.value118(arg)[1]

		if v3 == "Speed" or v3 == "TP Walk" then
			tbl.value14.FarmMethod = v3
			tbl.value11.travelToken = tbl.value11.travelToken + 1
			tbl.value11.travelling = false
		end
	end,
})

tabSteal:Dropdown({
	Title = "Tween Speed",
	Desc = "Maximum 700 studs per second",
	Values = { "100", "200", "300", "400", "500", "600", "700" },
	Value = "700",
	Callback = function(arg)
		tbl.value10.TRAVEL_SPEED = math.min(tonumber(arg) or 700, 700)
	end,
})

tbl.value12.TabSteal:Toggle({
	Title = "Secret Egg Priority",
	Desc = "Drops current egg and immediately targets any Secret, Divine or Eternal that spawns",
	Value = true,
	Callback = function(secretPriority)
		tbl.value14.SecretPriority = secretPriority
	end,
})

tbl.value41.AntiTrap = tbl.value12.TabSteal:Toggle({
	Title = "Anti Trap",
	Desc = "Routes around traps other players drop and breaks the hold if one closes on you",
	Value = true,
	Callback = function(antiTrap)
		tbl.value14.AntiTrap = antiTrap

		task.spawn(function()
			tbl.value52()

			if antiTrap then
				tbl.value55()
			end
		end)
	end,
})

local areaFocus = tbl.value14.AreaFocus

tbl.value41.AreaFocus = tbl.value12.TabSteal:Dropdown({
	Title = "Focus Area",
	Desc = "Pick as many areas as you want, leave it empty for every area",
	Values = tbl.value37(),
	Value = areaFocus,
	Multi = true,
	AllowNone = true,
	Callback = function(arg)
		tbl.value14.AreaFocus = tbl.value118(arg)
		tbl.value11.travelToken = tbl.value11.travelToken + 1
		tbl.value11.travelling = false
		tbl.value51()
		tbl.value40()
	end,
})

local tabSteal2 = tbl.value12.TabSteal

tabSteal2:Dropdown({
	Title = "Egg Rarity Filter",
	Desc = "Pick as many rarities as you want, leave it empty for every rarity",
	Values = tbl.value10.filterValues,
	Value = tbl.value14.RarityFilter,
	Multi = true,
	AllowNone = true,
	Callback = function(arg)
		tbl.value14.RarityFilter = tbl.value118(arg)
		tbl.value11.travelToken = tbl.value11.travelToken + 1
		tbl.value11.travelling = false
		tbl.value51()
		tbl.value42()
	end,
})

local tbl6 = {}
local tbl7 = {}
local v3 = nil
local fn31 = nil
local tbl8 = {}

local function fn32()
	local tbl9 = {}
	local tbl10 = {}
	local tbl11 = {}

	for _, v4 in ipairs(tbl.value49(true)) do
		local pet = v4.pet
		local v5 = Assets.Directory[v4.pet]

		if not tbl.value11.collectedUids[v4.uid] and type(v5) == "table" and type(v5.EarningRate) == "number" then
			local str2 = string.format("%s — $%s/s [%d]", v5.DisplayName or pet, tostring(math.floor(v5.EarningRate)):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", ""), #tbl9 + 1)
			local n = #tbl9 + 1
			local uid = v4.uid
			local uid2 = v4.uid
			tbl9[n] = str2
			tbl10[str2] = uid2
			tbl11[uid] = str2
		end
	end

	table.sort(tbl9, function(arg, arg2)
		local v4 = tonumber
		local str2 = arg:match("%$([%d,]+)/s"):gsub(",", "")
		local v5 = v4(str2)
		local v6 = tonumber
		local str3 = arg2:match("%$([%d,]+)/s"):gsub(",", "")
		return v5 > v6(str3)
	end)

	local tbl12 = {}

	for i, v4 in ipairs(tbl9) do
		local str2 = v4:gsub(" %[%d+%]$", " [" .. i .. "]")
		local v5 = tbl10[v4]
		tbl9[i] = str2
		tbl12[str2] = v5
		tbl11[v5] = str2
	end

	tbl6 = tbl9
	tbl7 = tbl12
	local tbl13 = {}
	local eggWanted = {}
	local flag = false
	local flag2 = false

	for k in pairs(tbl.value13.eggWanted) do
		if tbl11[k] then
			local n = #tbl13 + 1
			local v4 = tbl11[k]
			eggWanted[k] = true
			tbl13[n] = v4
			flag = flag or tbl8[k] ~= tbl11[k]
		else
			flag2 = true
		end
	end

	local value133 = tbl.value13
	tbl.value13.eggWanted = eggWanted
	value133.eggWantedCount = #tbl13
	tbl8 = {}

	for k in pairs(eggWanted) do
		tbl8[k] = tbl11[k]
	end

	if v3 then
		if flag2 or flag then
			for i, v4 in ipairs(tbl2) do
				if v4.Control == v3 then
					table.remove(tbl2, i)
					break
				end
			end

			v3:Destroy()
			fn31(tbl13)
		else
			v3:NewOptions(tbl9)
		end
	end
end

fn32()

fn31 = function(arg)
	v3 = tabSteal2:Dropdown({
		Title = "Pet Filter ($/s)",
		Desc = "Pick pets by hatch income, leave empty for every pet",
		Values = tbl6,
		Value = arg or {},
		Multi = true,
		AllowNone = true,
		Callback = function(arg2)
			local tbl9 = {}

			for _, v4 in ipairs(tbl.value118(arg2)) do
				tbl9[#tbl9 + 1] = tbl7[v4]
			end

			local value133 = tbl.value13
			local value134 = tbl.value13
			local v4, v5 = tbl.value39(tbl9)
			value133.eggWanted = v4
			value134.eggWantedCount = v5
			tbl.value11.travelToken = tbl.value11.travelToken + 1
			tbl.value11.travelling = false
			tbl.value51()
		end,
	})

	for _, descendant in ipairs(v3.Control.Instance:GetDescendants()) do
		if descendant:IsA("GuiButton") then
			fn2(descendant.MouseButton1Click:Connect(function()
				task.defer(function()
					local v4 = nil

					for _, child in ipairs(value1._Root:GetChildren()) do
						if child.Name == "DropdownPopup" then
							v4 = child
						end
					end

					if not v4 or tbl.value11.petPickerPopup == v4 then
						return
					end
					local value113 = tbl.value11
					tbl.value11.petPickerPopup = v4
					value113.petPickerUntil = math.huge

					fn2(v4.Destroying:Connect(function()
						if tbl.value11.petPickerPopup == v4 then
							local value114 = tbl.value11
							local value115 = tbl.value11
							tbl.value11.petPickerPopup = nil
							value114.petPickerUntil = 0
							value115.petRefreshQueued = true
						end
					end))
				end)
			end))
		end
	end
end

fn31()

if EggState then
	for _, v4 in ipairs({ EggState.FieldRefreshed, EggState.FieldShifted, EggState.FieldGone, EggState.CarryChanged }) do
		fn2(v4:Connect(function()
			tbl.value11.petRefreshQueued = true
		end))
	end
end

local n = tick() + 10

fn(function()
	while tbl.value17() do
		if tick() >= (tbl.value11.petPickerUntil or 0) and (tbl.value11.petRefreshQueued or tick() >= n) then
			tbl.value11.petRefreshQueued = false
			n = tick() + 10
			fn32()
		end

		task.wait(0.25)
	end
end)

tbl.value12.TabHop:Section({ Title = "Server Hop" })

tbl.value41.AutoHop = tbl.value12.TabHop:Toggle({
	Title = "Enable Auto Server Hop",
	Desc = "Rotates through public servers until the hop limit is spent",
	Value = false,
	Callback = function(autoHop)
		tbl.value14.AutoHop = autoHop

		if autoHop then
			tbl.value18("Server Hop", tbl.value14.HopCount .. " of " .. tbl.value14.MaxHops .. " hops used.")
		end
	end,
})

local tabHop = tbl.value12.TabHop

tabHop:Toggle({
	Title = "Hop 1-2 Players",
	Desc = "Only joins servers with one or two players",
	Value = tbl.value14.LowPlayerHop,
	Callback = function(lowPlayerHop)
		tbl.value14.LowPlayerHop = lowPlayerHop
	end,
})

tabHop:Slider({
	Title = "Max Hops",
	Desc = "Hops allowed before the toggle switches itself off",
	Step = 1,
	Value = { Min = 1, Max = 100, Default = tbl.value14.MaxHops },
	Callback = function(maxHops)
		tbl.value14.MaxHops = maxHops
	end,
})

tbl.value12.TabHop:Slider({
	Title = "Check Delay",
	Desc = "Seconds between hops",
	Step = 1,
	Value = { Min = 5, Max = 120, Default = tbl.value14.HopDelay },
	Callback = function(hopDelay)
		tbl.value14.HopDelay = hopDelay
	end,
})

tbl.value12.TabHop:Button({
	Title = "Server Hop Now",
	Callback = function()
		task.spawn(function()
			tbl.value18("Server Hop", not tbl.value115() and "No open server answered." or "Teleporting.")
		end)
	end,
})

tbl.value12.TabHop:Button({
	Title = "Recall to Spawn",
	Callback = function()
		task.spawn(function()
			local value18 = tbl.value18
			local v4 = tbl.value116()
			local flag

			if v4 then
				flag = fn11(v4, 8)
			else
				flag = false
			end

			value18("Recall", not flag and "No spawn point found." or "Back at spawn.")
		end)
	end,
})

tbl.value12.TabHatch:Section({ Title = "Hatch & ESP" })

tbl.value41.AutoHatch = tbl.value12.TabHatch:Toggle({
	Title = "Enable Auto Hatch",
	Desc = "Keeps your base empty so Auto Steal always has room to plant the next egg",
	Value = false,
	Callback = function(autoHatch)
		tbl.value14.AutoHatch = autoHatch
	end,
})

tbl.value12.TabHatch:Button({
	Title = "Hatch Once",
	Callback = function()
		task.spawn(function()
			tbl.value18("Hatch", "Hatched " .. hatchAll(true) .. " eggs.")
		end)
	end,
})

tbl.value41.EggESP = tbl.value12.TabHatch:Toggle({
	Title = "Enable Egg ESP",
	Desc = "Outlines nearby field eggs and shows their income",
	Value = false,
	Callback = function(eggESP)
		tbl.value14.EggESP = eggESP

		if not eggESP then
			tbl.value91()
		end
	end,
})

tbl.value41.FpsBoost = tbl.value12.TabHatch:Toggle({
	Title = "FPS Boost",
	Desc = "Cheapest rendering settings and hides shared client pet renders",
	Value = false,
	Callback = function(fpsBoost)
		tbl.value14.FpsBoost = fpsBoost

		task.spawn(function()
			if fpsBoost then
				tbl.value99()
				tbl.value18("FPS Boost", "Effects off and pets hidden.")
				return
			end

			tbl.value100()
			tbl.value18("FPS Boost", "Everything restored.")
		end)
	end,
})

tbl.value12.TabSell:Section({ Title = "Equip & Sell" })

tbl.value12.TabSell:Toggle({
	Title = "Enable Auto Equip Best",
	Desc = "Keeps your strongest pets worn",
	Value = false,
	Callback = function(autoEquipBest)
		tbl.value14.AutoEquipBest = autoEquipBest
	end,
})

tbl.value12.TabSell:Button({
	Title = "Equip Best Now",
	Callback = function()
		tbl.value18("Pets", not tbl.value27(tbl.value25.WearBest) and "The server refused." or "Equipped the best pets.")
	end,
})

tbl.value12.TabSell:Button({
	Title = "Sell Inventory Now",
	Callback = function()
		task.spawn(function()
			tbl.value18("Pets", tbl.value102(true))
		end)
	end,
})

tbl.value12.TabClaim:Section({ Title = "Claim & Upgrade" })

tbl.value12.TabClaim:Toggle({
	Title = "Enable Auto Claim",
	Desc = "Collects base earnings and finished quest rewards",
	Value = false,
	Callback = function(autoClaim)
		tbl.value14.AutoClaim = autoClaim
	end,
})

tbl.value12.TabClaim:Slider({
	Title = "Claim Interval",
	Desc = "Seconds between claims",
	Step = 1,
	Value = { Min = 5, Max = 300, Default = tbl.value14.ClaimInterval },
	Callback = function(claimInterval)
		tbl.value14.ClaimInterval = claimInterval
	end,
})

tbl.value12.TabClaim:Button({
	Title = "Claim Now",
	Callback = function()
		task.spawn(function()
			tbl.value18("Claim", "Fired " .. tbl.value103(true) .. " claims.")
		end)
	end,
})

tbl.value12.TabClaim:Toggle({
	Title = "Enable Auto Upgrade",
	Desc = "Raises the base tier and buys whatever upgrade is in reach",
	Value = false,
	Callback = function(autoUpgrade)
		tbl.value14.AutoUpgrade = autoUpgrade
	end,
})

tbl.value12.TabClaim:Slider({
	Title = "Upgrade Interval",
	Desc = "Seconds between upgrade attempts",
	Step = 1,
	Value = { Min = 5, Max = 300, Default = tbl.value14.UpgradeInterval },
	Callback = function(upgradeInterval)
		tbl.value14.UpgradeInterval = upgradeInterval
	end,
})

tbl.value12.TabClaim:Button({
	Title = "Upgrade Now",
	Callback = function()
		task.spawn(function()
			tbl.value18("Upgrade", "Fired " .. tbl.value104(true) .. " upgrades.")
		end)
	end,
})

tbl.value12.TabTread:Section({ Title = "Treadmill" })

tbl.value12.TabTread:Toggle({
	Title = "Anti Treadmill",
	Desc = "Leaves the treadmill immediately when it assigns you",
	Value = false,
	Callback = function(antiTreadmill)
		tbl.value14.AntiTreadmill = antiTreadmill
	end,
})

tbl.value12.TabTread:Toggle({
	Title = "Enable Auto Treadmill",
	Desc = "Sits on the treadmill itself, or walks the belt when it has no seat",
	Value = false,
	Callback = function(autoTreadmill)
		tbl.value14.AutoTreadmill = autoTreadmill

		if autoTreadmill and not tbl.value109() then
			tbl.value18("Treadmill", "No treadmill found on this server.")
		end
	end,
})

tbl.value12.TabTread:Toggle({
	Title = "Auto-Upgrade Treadmill",
	Desc = "Raises the belt tier while you run on it",
	Value = false,
	Callback = function(autoUpgradeTreadmill)
		tbl.value14.AutoUpgradeTreadmill = autoUpgradeTreadmill
	end,
})

tbl.value12.TabTread:Button({
	Title = "Go to Treadmill",
	Callback = function()
		task.spawn(function()
			local v4 = tbl.value109()
			if not v4 then
				tbl.value18("Treadmill", "No treadmill found on this server.")
				return
			end
			tbl.value18("Treadmill", not fn11(v4.Position, 6) and "Could not reach it." or "Arrived.")
		end)
	end,
})

pcall(function()
	tbl.value12.Window:SelectTab(1)
end)

task.spawn(function()
	if not tbl.value23() then
		tbl.value9.CharacterAdded:Wait()
		task.wait(0.7)
	end

	tbl.value49(true)

	if #tbl.value13.areaOrder > 0 then
		tbl.value36()
		tbl.value40()
		tbl.value44("AreaFocus", tbl.value37())
	end
end)

if not tbl.value24 then
	return
end
