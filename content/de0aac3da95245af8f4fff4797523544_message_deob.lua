if not game:IsLoaded() then
	game.Loaded:Wait()
end

local tbl = { [2753915549] = true, [85211729168715] = true }
local tbl2 = { [4442272183] = true, [79091703265657] = true }
local tbl3 = { [7449423635] = true, [100117331123089] = true }
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")
local SoundService = game:GetService("SoundService")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")
local HttpService = game:GetService("HttpService")
local CollectionService = game:GetService("CollectionService")
local TeleportService = game:GetService("TeleportService")
local localPlayer = Players.LocalPlayer
local placeId = game.PlaceId

if not (tbl[placeId] or tbl2[placeId] or tbl3[placeId]) then
	localPlayer:Kick("You have been permanently banned.")
	return
end

local genv = type(getgenv) == "function" and getgenv() or _G
local kaitun6V4 = type(genv.Kaitun6V4) == "table" and genv.Kaitun6V4 or {}
kaitun6V4.HostUrl = type(kaitun6V4.HostUrl) == "string" and kaitun6V4.HostUrl ~= "" and kaitun6V4.HostUrl or "https://nightnextgen.duckdns.org"
kaitun6V4.HostUrl = string.gsub(kaitun6V4.HostUrl, "/+$", "")
kaitun6V4.GroupId = type(kaitun6V4.GroupId) == "string" and kaitun6V4.GroupId ~= "" and kaitun6V4.GroupId

if not string.match(kaitun6V4.GroupId, "^[%w_-]+$") or #kaitun6V4.GroupId > 64 then
	warn("GroupId may only contain letters, digits, _ or - and must be at most 64 characters")
	return
end

kaitun6V4.Webhook = type(kaitun6V4.Webhook) == "table" and kaitun6V4.Webhook or {}
kaitun6V4.Webhook.Enabled = kaitun6V4.Webhook.Enabled == true
kaitun6V4.Webhook.Url = type(kaitun6V4.Webhook.Url) == "string" and string.match(kaitun6V4.Webhook.Url, "^%s*(.-)%s*$") or ""

if kaitun6V4.Webhook.Enabled and kaitun6V4.Webhook.Url == "" then
	warn("Config.Webhook is enabled but Url is empty webhook disabled")
	kaitun6V4.Webhook.Enabled = false
end

kaitun6V4.SyncToken = type(kaitun6V4.SyncToken) == "string" and kaitun6V4.SyncToken ~= "" and kaitun6V4.SyncToken

if kaitun6V4.SyncToken == "" then
	warn("SyncToken is missing. Ask the host owner for the token " .. "of group " .. kaitun6V4.GroupId .. ".")
	return
end

kaitun6V4.Account = type(kaitun6V4.Account) == "table" and kaitun6V4.Account or {}
kaitun6V4.Help = type(kaitun6V4.Help) == "table" and kaitun6V4.Help or {}
kaitun6V4.Race = type(kaitun6V4.Race) == "table" and kaitun6V4.Race or {}
genv.Kaitun6V4 = kaitun6V4
local Players2 = game:GetService("Players")
local RunService2 = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Workspace2 = game:GetService("Workspace")
local localPlayer2 = Players2.LocalPlayer

if not localPlayer2 then
	Players2:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer2 = Players2.LocalPlayer
end

local genv2 = type(getgenv) == "function" and getgenv() or _G
local kaitun6V42 = type(genv2.Kaitun6V4) == "table" and genv2.Kaitun6V4 or {}
kaitun6V42.Status = type(kaitun6V42.Status) == "table" and kaitun6V42.Status or {}
local tbl4 = {}
local colorIslandGui = nil

local tbl5 = {
	SleepWidth = 56,
	SleepDelay = 16,
	DormantWidth = 132,
	CompactWidth = 544,
	ExpandedWidth = 544,
	BarHeight = 56,
	CardHeight = 272,
	TopOffset = 16,
	MinimumScale = 0.34,
	MaximumScale = 0.52,
	HoldDuration = 1.8,
	SuccessHold = 2.6,
	ErrorHold = 3,
	CardHold = 9,
	LogLimit = 60,
	QueueLimit = 12,
	ReaderMinWidth = 280,
	ReaderMaxWidth = 860,
	ReaderMinHeight = 240,
	ReaderMaxHeight = 560,
	ReaderWidthRatio = 0.92,
	ReaderHeightRatio = 0.8,
	ReaderNarrowUnder = 520,
	ReaderRowHeight = 30,
	ReaderRowHeightNarrow = 34,
}

local tbl6 = {
	Shell = Color3.fromRGB(0, 0, 0),
	ShellTop = Color3.fromRGB(26, 26, 30),
	ShellBottom = Color3.fromRGB(4, 4, 6),
	Title = Color3.fromRGB(244, 244, 248),
	Body = Color3.fromRGB(206, 206, 214),
	Muted = Color3.fromRGB(132, 132, 142),
	Hairline = Color3.fromRGB(255, 255, 255),
	White = Color3.fromRGB(255, 255, 255),
	Black = Color3.fromRGB(0, 0, 0),
}

local tbl7 = {
	Info = { Color = Color3.fromRGB(94, 200, 255), Glyph = "Dot", Live = "Pulse", Priority = 2 },
	Debug = { Color = Color3.fromRGB(142, 142, 152), Glyph = "Dot", Live = "Pulse", Priority = 1 },
	Working = { Color = Color3.fromRGB(48, 209, 122), Glyph = "Spinner", Live = "Equalizer", Priority = 1 },
	Travel = { Color = Color3.fromRGB(58, 140, 255), Glyph = "Spinner", Live = "Stream", Priority = 1 },
	Trial = { Color = Color3.fromRGB(186, 104, 255), Glyph = "Spinner", Live = "Equalizer", Priority = 1 },
	Combat = { Color = Color3.fromRGB(255, 148, 48), Glyph = "Spinner", Live = "Equalizer", Priority = 1 },
	Waiting = { Color = Color3.fromRGB(255, 206, 42), Glyph = "Breath", Live = "Pulse", Priority = 2 },
	Warning = { Color = Color3.fromRGB(255, 206, 42), Glyph = "Bang", Live = "Pulse", Priority = 3 },
	Success = { Color = Color3.fromRGB(48, 209, 122), Glyph = "Check", Live = "Pulse", Priority = 4 },
	Error = { Color = Color3.fromRGB(255, 82, 74), Glyph = "Cross", Live = "Pulse", Priority = 5 },
}

local function fn(arg, arg2, arg3)
	return { Value = arg, Target = arg, Velocity = 0, Stiffness = arg2, Damping = arg3 }
end

local function fn2(arg, arg2)
	local n = math.min(arg2, 0.1)

	while n > 0 do
		local n2 = math.min(0.0041666666666666666, n)
		arg.Velocity = arg.Velocity + ((arg.Target - arg.Value) * arg.Stiffness + -arg.Velocity * arg.Damping) * n2
		arg.Value = arg.Value + arg.Velocity * n2
		n -= n2
	end
end

local function createUICorner(parent, cornerRadius)
	local uiCorner = Instance.new("UICorner")
	uiCorner.CornerRadius = cornerRadius
	uiCorner.Parent = parent
	return uiCorner
end

local function createFrame(parent, name, zIndex)
	local frame = Instance.new("Frame")
	frame.Name = name
	frame.BackgroundColor3 = tbl6.White
	frame.BorderSizePixel = 0
	frame.ZIndex = zIndex or 2
	frame.Parent = parent
	return frame
end

local function createTextLabel(parent, name, font, textSize, textColor3, textXAlignment, zIndex)
	local textLabel = Instance.new("TextLabel")
	textLabel.Name = name
	textLabel.AutoLocalize = false
	textLabel.BackgroundTransparency = 1
	textLabel.Font = font
	textLabel.Text = ""
	textLabel.TextSize = textSize
	textLabel.TextColor3 = textColor3
	textLabel.TextXAlignment = textXAlignment
	textLabel.TextYAlignment = Enum.TextYAlignment.Center
	textLabel.TextTruncate = Enum.TextTruncate.AtEnd
	textLabel.ZIndex = zIndex or 4
	textLabel.Parent = parent
	return textLabel
end

local function fn3(arg, arg2, arg3)
	return arg:Lerp(arg2, arg3)
end

local function fn4(arg)
	local n = math.max(math.floor(arg), 0)
	local n2 = math.floor(n / 3600)
	local n3 = math.floor(n % 3600 / 60)
	local n4 = n % 60
	if n2 > 0 then
		return string.format("%d:%02d:%02d", n2, n3, n4)
	end
	return string.format("%02d:%02d", n3, n4)
end

local function fn5(arg, arg2, arg3)
	return string.format("%d %s", arg, arg == 1 and arg2 or arg3)
end

local function fn6()
	local ok, result = pcall(function()
		return DateTime.now():FormatLocalTime("HH:mm:ss", "en-us")
	end)

	if ok and typeof(result) == "string" then
		return result
	end
	return "--:--:--"
end

tbl4.Build = function()
	local tbl8 = {
		AccentColor = Color3.fromRGB(58, 140, 255),
		AnimationSpeed = 1,
		ReduceMotion = false,
		Transparency = 0,
	}

	for k, statu in pairs(kaitun6V42.Status) do
		tbl8[k] = statu
	end

	local flag = tbl8.ReduceMotion == true
	local n = 1

	if typeof(tbl8.AnimationSpeed) == "number" then
		n = math.clamp(tbl8.AnimationSpeed, 0.25, 3)
	end

	local backgroundTransparency = 0

	if typeof(tbl8.Transparency) == "number" then
		backgroundTransparency = math.clamp(tbl8.Transparency, 0, 0.5)
	end

	local accentColor = typeof(tbl8.AccentColor) == "Color3" and tbl8.AccentColor or Color3.fromRGB(58, 140, 255)
	local playerGui = localPlayer2:WaitForChild("PlayerGui")
	local colorIslandGui2 = playerGui:FindFirstChild("ColorIslandGui")

	if colorIslandGui2 then
		colorIslandGui2:Destroy()
	end

	local tbl9 = {}

	local tbl10 = {
		Tier = "Dormant",
		Accent = accentColor,
		Glyph = "Dot",
		Live = "Pulse",
		Destroyed = false,
		HoldToken = 0,
		CardToken = 0,
		Pinned = false,
		Clock = 0,
		SessionStart = os.clock(),
		SessionEnd = nil,
		Complete = false,
		Title = "Idle",
		Detail = "",
		Retries = 0,
		Events = 0,
		Issues = 0,
		Progress = nil,
		CurrentPriority = -1,
		ReaderOpen = false,
		ReaderWidth = tbl5.ReaderMaxWidth,
		ReaderHeight = tbl5.ReaderMaxHeight,
		ReaderRowHeight = tbl5.ReaderRowHeight,
		ReaderNarrow = false,
		ReaderOriginX = 0,
		ReaderOriginY = 0,
		ReaderOriginWidth = 80,
		ReaderTargetX = 0,
		ReaderTargetY = 0,
	}

	local tbl11 = {
		Width = fn(tbl5.DormantWidth, 200, 26),
		Height = fn(tbl5.BarHeight, 200, 26),
		Radius = fn(tbl5.BarHeight / 2, 220, 30),
		TitleAlpha = fn(0, 260, 30),
		CardAlpha = fn(0, 240, 30),
		Press = fn(1, 420, 26),
		Bloom = fn(0, 160, 26),
		Progress = fn(0, 180, 28),
		Reader = fn(0, 240, 24),
	}

	local tbl12 = {}
	local tbl13 = {}
	local tbl14 = {}
	local flag2 = false

	local function fn7(arg)
		table.insert(tbl14, arg)
		return arg
	end

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "ColorIslandGui"
	screenGui.DisplayOrder = 999
	screenGui.IgnoreGuiInset = true
	screenGui.AutoLocalize = false
	screenGui.ResetOnSpawn = false
	screenGui.ScreenInsets = Enum.ScreenInsets.None
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local frame = Instance.new("Frame")
	frame.Name = "Anchor"
	frame.AnchorPoint = Vector2.new(0.5, 0)
	frame.Position = UDim2.new(0.5, 0, 0, tbl5.TopOffset)
	frame.Size = UDim2.fromOffset(tbl5.CompactWidth, tbl5.BarHeight)
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.ZIndex = 1
	frame.Parent = screenGui
	tbl9.Scale = Instance.new("UIScale")
	tbl9.Scale.Name = "ResponsiveScale"
	tbl9.Scale.Scale = tbl5.MaximumScale
	tbl9.Scale.Parent = frame
	tbl9.Bloom = {}
	tbl9.BloomCorners = {}

	for i = 1, 5 do
		local v = createFrame(frame, "Bloom" .. i, 1)
		v.AnchorPoint = Vector2.new(0.5, 0.5)
		v.Position = UDim2.new(0.5, 0, 0, tbl5.BarHeight / 2)
		v.BackgroundTransparency = 1
		tbl9.BloomCorners[i] = createUICorner(v, UDim.new(0, 30))
		tbl9.Bloom[i] = v
	end

	tbl9.Shell = createFrame(frame, "Shell", 2)
	tbl9.Shell.AnchorPoint = Vector2.new(0.5, 0)
	tbl9.Shell.Position = UDim2.fromScale(0.5, 0)
	tbl9.Shell.BackgroundColor3 = tbl6.Shell
	tbl9.Shell.BackgroundTransparency = backgroundTransparency
	tbl9.Shell.ClipsDescendants = true
	tbl9.ShellCorner = createUICorner(tbl9.Shell, UDim.new(1, 0))
	local uiGradient = Instance.new("UIGradient")
	uiGradient.Name = "Depth"
	local colorSequence = ColorSequence.new
	local tbl15 = {}
	local v = ColorSequenceKeypoint.new(0, tbl6.ShellTop)
	local v2 = ColorSequenceKeypoint.new(0.5, tbl6.ShellBottom)
	local new = ColorSequenceKeypoint.new
	local shell = tbl6.Shell
	tbl15[1] = v
	tbl15[2] = v2

	do
		local values = table.pack(new(1, shell))
		table.move(values, 1, values.n, 3, tbl15)
	end

	uiGradient.Color = colorSequence(tbl15)
	uiGradient.Rotation = 90
	uiGradient.Parent = tbl9.Shell
	tbl9.Stroke = Instance.new("UIStroke")
	tbl9.Stroke.Name = "Edge"
	tbl9.Stroke.Color = tbl6.White
	tbl9.Stroke.Transparency = 0.88
	tbl9.Stroke.Thickness = 1
	tbl9.Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	tbl9.Stroke.Parent = tbl9.Shell
	tbl9.Wash = createFrame(tbl9.Shell, "Wash", 3)
	tbl9.Wash.Size = UDim2.fromScale(1, 1)
	tbl9.Wash.BackgroundTransparency = 1
	tbl9.WashCorner = createUICorner(tbl9.Wash, UDim.new(0, 28))
	tbl9.Hairline = createFrame(tbl9.Shell, "Hairline", 4)
	tbl9.Hairline.AnchorPoint = Vector2.new(0.5, 0)
	tbl9.Hairline.Position = UDim2.new(0.5, 0, 0, 2)
	tbl9.Hairline.Size = UDim2.new(0.62, 0, 0, 1)
	tbl9.Hairline.BackgroundTransparency = 0.55
	local uiGradient2 = Instance.new("UIGradient")
	uiGradient2.Name = "Fade"
	local numberSequence = NumberSequence.new
	local tbl16 = {}
	local v3 = NumberSequenceKeypoint.new(0, 1)
	local v4 = NumberSequenceKeypoint.new(0.5, 0)
	local new2 = NumberSequenceKeypoint.new
	tbl16[1] = v3
	tbl16[2] = v4

	do
		local values = table.pack(new2(1, 1))
		table.move(values, 1, values.n, 3, tbl16)
	end

	uiGradient2.Transparency = numberSequence(tbl16)
	uiGradient2.Parent = tbl9.Hairline
	tbl9.Content = Instance.new("Frame")
	tbl9.Content.Name = "Content"
	tbl9.Content.Size = UDim2.fromScale(1, 1)
	tbl9.Content.BackgroundTransparency = 1
	tbl9.Content.BorderSizePixel = 0
	tbl9.Content.ZIndex = 5
	tbl9.Content.Parent = tbl9.Shell
	tbl9.Header = Instance.new("Frame")
	tbl9.Header.Name = "Header"
	tbl9.Header.Size = UDim2.new(1, 0, 0, tbl5.BarHeight)
	tbl9.Header.BackgroundTransparency = 1
	tbl9.Header.BorderSizePixel = 0
	tbl9.Header.ZIndex = 5
	tbl9.Header.Parent = tbl9.Content
	tbl9.Slot = Instance.new("Frame")
	tbl9.Slot.Name = "IconSlot"
	tbl9.Slot.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.Slot.Position = UDim2.fromOffset(32, tbl5.BarHeight / 2)
	tbl9.Slot.Size = UDim2.fromOffset(30, 30)
	tbl9.Slot.BackgroundTransparency = 1
	tbl9.Slot.BorderSizePixel = 0
	tbl9.Slot.ZIndex = 6
	tbl9.Slot.Parent = tbl9.Header
	tbl9.Halo = createFrame(tbl9.Slot, "Halo", 6)
	tbl9.Halo.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.Halo.Position = UDim2.fromScale(0.5, 0.5)
	tbl9.Halo.Size = UDim2.fromOffset(30, 30)
	tbl9.Halo.BackgroundTransparency = 0.78
	createUICorner(tbl9.Halo, UDim.new(1, 0))
	tbl9.GlyphDot = createFrame(tbl9.Slot, "GlyphDot", 7)
	tbl9.GlyphDot.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.GlyphDot.Position = UDim2.fromScale(0.5, 0.5)
	tbl9.GlyphDot.Size = UDim2.fromOffset(12, 12)
	createUICorner(tbl9.GlyphDot, UDim.new(1, 0))
	tbl9.GlyphSpin = Instance.new("Frame")
	tbl9.GlyphSpin.Name = "GlyphSpin"
	tbl9.GlyphSpin.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.GlyphSpin.Position = UDim2.fromScale(0.5, 0.5)
	tbl9.GlyphSpin.Size = UDim2.fromOffset(20, 20)
	tbl9.GlyphSpin.BackgroundTransparency = 1
	tbl9.GlyphSpin.BorderSizePixel = 0
	tbl9.GlyphSpin.ZIndex = 7
	tbl9.GlyphSpin.Parent = tbl9.Slot
	tbl9.SpinRing = createFrame(tbl9.GlyphSpin, "Ring", 7)
	tbl9.SpinRing.Size = UDim2.fromScale(1, 1)
	tbl9.SpinRing.BackgroundTransparency = 1
	createUICorner(tbl9.SpinRing, UDim.new(1, 0))
	local uiStroke = Instance.new("UIStroke")
	uiStroke.Name = "RingStroke"
	uiStroke.Thickness = 2
	uiStroke.Transparency = 0.72
	uiStroke.Parent = tbl9.SpinRing
	tbl9.SpinStroke = uiStroke
	tbl9.SpinHead = createFrame(tbl9.GlyphSpin, "Head", 8)
	tbl9.SpinHead.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.SpinHead.Position = UDim2.fromScale(0.5, 0)
	tbl9.SpinHead.Size = UDim2.fromOffset(6, 6)
	createUICorner(tbl9.SpinHead, UDim.new(1, 0))
	tbl9.GlyphCheck = Instance.new("Frame")
	tbl9.GlyphCheck.Name = "GlyphCheck"
	tbl9.GlyphCheck.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.GlyphCheck.Position = UDim2.fromScale(0.5, 0.5)
	tbl9.GlyphCheck.Size = UDim2.fromOffset(20, 20)
	tbl9.GlyphCheck.BackgroundTransparency = 1
	tbl9.GlyphCheck.BorderSizePixel = 0
	tbl9.GlyphCheck.ZIndex = 7
	tbl9.GlyphCheck.Parent = tbl9.Slot
	tbl9.CheckShort = createFrame(tbl9.GlyphCheck, "Short", 8)
	tbl9.CheckShort.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.CheckShort.Position = UDim2.fromOffset(6, 12)
	tbl9.CheckShort.Size = UDim2.fromOffset(8, 2.5)
	tbl9.CheckShort.Rotation = 45
	createUICorner(tbl9.CheckShort, UDim.new(1, 0))
	tbl9.CheckLong = createFrame(tbl9.GlyphCheck, "Long", 8)
	tbl9.CheckLong.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.CheckLong.Position = UDim2.fromOffset(12, 9)
	tbl9.CheckLong.Size = UDim2.fromOffset(15, 2.5)
	tbl9.CheckLong.Rotation = -45
	createUICorner(tbl9.CheckLong, UDim.new(1, 0))
	tbl9.GlyphCross = Instance.new("Frame")
	tbl9.GlyphCross.Name = "GlyphCross"
	tbl9.GlyphCross.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.GlyphCross.Position = UDim2.fromScale(0.5, 0.5)
	tbl9.GlyphCross.Size = UDim2.fromOffset(20, 20)
	tbl9.GlyphCross.BackgroundTransparency = 1
	tbl9.GlyphCross.BorderSizePixel = 0
	tbl9.GlyphCross.ZIndex = 7
	tbl9.GlyphCross.Parent = tbl9.Slot

	for i = 1, 2 do
		local v5 = createFrame(tbl9.GlyphCross, "Stroke" .. i, 8)
		v5.AnchorPoint = Vector2.new(0.5, 0.5)
		v5.Position = UDim2.fromScale(0.5, 0.5)
		v5.Size = UDim2.fromOffset(15, 2.5)
		v5.Rotation = i == 1 and 45 or -45
		createUICorner(v5, UDim.new(1, 0))
	end

	tbl9.GlyphBang = Instance.new("Frame")
	tbl9.GlyphBang.Name = "GlyphBang"
	tbl9.GlyphBang.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.GlyphBang.Position = UDim2.fromScale(0.5, 0.5)
	tbl9.GlyphBang.Size = UDim2.fromOffset(20, 20)
	tbl9.GlyphBang.BackgroundTransparency = 1
	tbl9.GlyphBang.BorderSizePixel = 0
	tbl9.GlyphBang.ZIndex = 7
	tbl9.GlyphBang.Parent = tbl9.Slot
	tbl9.BangStem = createFrame(tbl9.GlyphBang, "Stem", 8)
	tbl9.BangStem.AnchorPoint = Vector2.new(0.5, 0)
	tbl9.BangStem.Position = UDim2.fromOffset(10, 3)
	tbl9.BangStem.Size = UDim2.fromOffset(2.5, 9)
	createUICorner(tbl9.BangStem, UDim.new(1, 0))
	tbl9.BangDot = createFrame(tbl9.GlyphBang, "Tip", 8)
	tbl9.BangDot.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.BangDot.Position = UDim2.fromOffset(10, 16)
	tbl9.BangDot.Size = UDim2.fromOffset(2.5, 2.5)
	createUICorner(tbl9.BangDot, UDim.new(1, 0))

	tbl9.Glyphs = {
		Dot = tbl9.GlyphDot,
		Breath = tbl9.GlyphDot,
		Spinner = tbl9.GlyphSpin,
		Check = tbl9.GlyphCheck,
		Cross = tbl9.GlyphCross,
		Bang = tbl9.GlyphBang,
	}

	tbl9.TitleClip = Instance.new("CanvasGroup")
	tbl9.TitleClip.Name = "TitleClip"
	tbl9.TitleClip.Position = UDim2.fromOffset(58, 10)
	tbl9.TitleClip.Size = UDim2.new(1, -150, 0, 22)
	tbl9.TitleClip.BackgroundTransparency = 1
	tbl9.TitleClip.GroupTransparency = 1
	tbl9.TitleClip.BorderSizePixel = 0
	tbl9.TitleClip.ClipsDescendants = true
	tbl9.TitleClip.ZIndex = 6
	tbl9.TitleClip.Parent = tbl9.Header
	tbl9.TitleA = createTextLabel(tbl9.TitleClip, "TitleA", Enum.Font.GothamBold, 17, tbl6.Title, Enum.TextXAlignment.Left, 6)
	tbl9.TitleA.Size = UDim2.fromScale(1, 1)
	tbl9.TitleB = createTextLabel(tbl9.TitleClip, "TitleB", Enum.Font.GothamBold, 17, tbl6.Title, Enum.TextXAlignment.Left, 6)
	tbl9.TitleB.Size = UDim2.fromScale(1, 1)
	tbl9.TitleB.TextTransparency = 1
	tbl9.ActiveTitle = tbl9.TitleA
	tbl9.Detail = createTextLabel(tbl9.Header, "Detail", Enum.Font.GothamMedium, 13, tbl6.Muted, Enum.TextXAlignment.Left, 6)
	tbl9.Detail.Position = UDim2.fromOffset(58, 31)
	tbl9.Detail.Size = UDim2.new(1, -150, 0, 15)
	tbl9.Trail = Instance.new("Frame")
	tbl9.Trail.Name = "Trail"
	tbl9.Trail.AnchorPoint = Vector2.new(1, 0.5)
	tbl9.Trail.Position = UDim2.new(1, -22, 0, tbl5.BarHeight / 2)
	tbl9.Trail.Size = UDim2.fromOffset(58, 30)
	tbl9.Trail.BackgroundTransparency = 1
	tbl9.Trail.BorderSizePixel = 0
	tbl9.Trail.ZIndex = 6
	tbl9.Trail.Parent = tbl9.Header
	tbl9.Bars = {}

	for i = 1, 4 do
		local v5 = createFrame(tbl9.Trail, "Bar" .. i, 7)
		v5.AnchorPoint = Vector2.new(0.5, 0.5)
		v5.Position = UDim2.new(1, -6 - (4 - i) * 9, 0.5, 0)
		v5.Size = UDim2.fromOffset(3.5, 10)
		createUICorner(v5, UDim.new(1, 0))
		tbl9.Bars[i] = v5
	end

	tbl9.Pulse = createFrame(tbl9.Trail, "Pulse", 7)
	tbl9.Pulse.AnchorPoint = Vector2.new(1, 0.5)
	tbl9.Pulse.Position = UDim2.new(1, 0, 0.5, 0)
	tbl9.Pulse.Size = UDim2.fromOffset(8, 8)
	tbl9.Pulse.BackgroundTransparency = 1
	createUICorner(tbl9.Pulse, UDim.new(1, 0))
	tbl9.Pips = {}

	for i = 1, 3 do
		local v5 = createFrame(tbl9.Header, "Pip" .. i, 7)
		v5.AnchorPoint = Vector2.new(0.5, 0.5)
		v5.Position = UDim2.new(1, -22 - (3 - i) * 7, 0, 12)
		v5.Size = UDim2.fromOffset(3.5, 3.5)
		v5.BackgroundTransparency = 1
		createUICorner(v5, UDim.new(1, 0))
		tbl9.Pips[i] = v5
	end

	tbl9.Track = createFrame(tbl9.Header, "Track", 6)
	tbl9.Track.Position = UDim2.fromOffset(58, 48)
	tbl9.Track.Size = UDim2.new(1, -80, 0, 2)
	tbl9.Track.BackgroundColor3 = Color3.fromRGB(52, 52, 58)
	tbl9.Track.BackgroundTransparency = 1
	tbl9.Track.ClipsDescendants = true
	createUICorner(tbl9.Track, UDim.new(1, 0))
	tbl9.Fill = createFrame(tbl9.Track, "Fill", 7)
	tbl9.Fill.Position = UDim2.fromScale(0, 0)
	tbl9.Fill.Size = UDim2.fromScale(0, 1)
	tbl9.Fill.BackgroundTransparency = 1
	createUICorner(tbl9.Fill, UDim.new(1, 0))
	tbl9.Comet = createFrame(tbl9.Track, "Comet", 7)
	tbl9.Comet.Position = UDim2.fromScale(-0.35, 0)
	tbl9.Comet.Size = UDim2.fromScale(0.35, 1)
	tbl9.Comet.BackgroundTransparency = 1
	createUICorner(tbl9.Comet, UDim.new(1, 0))
	local uiGradient3 = Instance.new("UIGradient")
	uiGradient3.Name = "Fade"
	local numberSequence2 = NumberSequence.new
	local tbl17 = {}
	local v5 = NumberSequenceKeypoint.new(0, 1)
	local v6 = NumberSequenceKeypoint.new(0.5, 0)
	local new3 = NumberSequenceKeypoint.new
	tbl17[1] = v5
	tbl17[2] = v6

	do
		local values = table.pack(new3(1, 1))
		table.move(values, 1, values.n, 3, tbl17)
	end

	uiGradient3.Transparency = numberSequence2(tbl17)
	uiGradient3.Parent = tbl9.Comet
	tbl9.Card = Instance.new("CanvasGroup")
	tbl9.Card.Name = "Card"
	tbl9.Card.Position = UDim2.fromOffset(26, tbl5.BarHeight + 8)
	tbl9.Card.Size = UDim2.new(1, -52, 0, tbl5.CardHeight - tbl5.BarHeight - 24)
	tbl9.Card.BackgroundTransparency = 1
	tbl9.Card.GroupTransparency = 1
	tbl9.Card.BorderSizePixel = 0
	tbl9.Card.Visible = false
	tbl9.Card.ZIndex = 6
	tbl9.Card.Parent = tbl9.Content
	local rule = createFrame(tbl9.Card, "Rule", 6)
	rule.Size = UDim2.new(1, 0, 0, 1)
	rule.BackgroundTransparency = 0.9
	tbl9.Rows = {}

	for i = 1, 3 do
		local frame2 = Instance.new("Frame")
		frame2.Name = "Row" .. i
		frame2.Position = UDim2.fromOffset(0, 12 + (i - 1) * 32)
		frame2.Size = UDim2.new(1, 0, 0, 28)
		frame2.BackgroundTransparency = 1
		frame2.BorderSizePixel = 0
		frame2.Visible = false
		frame2.ZIndex = 6
		frame2.Parent = tbl9.Card
		local marker = createFrame(frame2, "Marker", 7)
		marker.AnchorPoint = Vector2.new(0.5, 0.5)
		marker.Position = UDim2.fromOffset(4, 14)
		marker.Size = UDim2.fromOffset(6, 6)
		createUICorner(marker, UDim.new(1, 0))
		local message = createTextLabel(frame2, "Message", Enum.Font.GothamMedium, 14, tbl6.Body, Enum.TextXAlignment.Left, 7)
		message.Position = UDim2.fromOffset(20, 0)
		message.Size = UDim2.new(1, -96, 1, 0)
		local stamp = createTextLabel(frame2, "Stamp", Enum.Font.Gotham, 12, tbl6.Muted, Enum.TextXAlignment.Right, 7)
		stamp.Position = UDim2.new(1, -72, 0, 0)
		stamp.Size = UDim2.fromOffset(72, 28)
		tbl9.Rows[i] = { Frame = frame2, Marker = marker, Message = message, Stamp = stamp }
	end

	tbl9.Empty = createTextLabel(tbl9.Card, "Empty", Enum.Font.GothamMedium, 14, tbl6.Muted, Enum.TextXAlignment.Center, 7)
	tbl9.Empty.Position = UDim2.fromOffset(0, 30)
	tbl9.Empty.Size = UDim2.new(1, 0, 0, 28)
	tbl9.Empty.Text = "No activity yet"
	tbl9.Stats = createTextLabel(tbl9.Card, "Stats", Enum.Font.Gotham, 12, tbl6.Muted, Enum.TextXAlignment.Left, 7)
	tbl9.Stats.Position = UDim2.fromOffset(2, 112)
	tbl9.Stats.Size = UDim2.new(1, -4, 0, 16)

	local function createTextButton(name, anchorPoint, position, text)
		local textButton = Instance.new("TextButton")
		textButton.Name = name
		textButton.AutoLocalize = false
		textButton.AnchorPoint = anchorPoint
		textButton.Position = position
		textButton.Size = UDim2.fromOffset(150, 30)
		textButton.BackgroundColor3 = tbl6.White
		textButton.BackgroundTransparency = 0.9
		textButton.AutoButtonColor = false
		textButton.Font = Enum.Font.GothamMedium
		textButton.Text = text
		textButton.TextSize = 13
		textButton.TextColor3 = tbl6.Body
		textButton.BorderSizePixel = 0
		textButton.ZIndex = 8
		textButton.Parent = tbl9.Card
		createUICorner(textButton, UDim.new(1, 0))
		return textButton
	end

	tbl9.Pin = createTextButton("Pin", Vector2.new(0, 1), UDim2.new(0, 0, 1, 0), "Keep open")
	tbl9.Open = createTextButton("Open", Vector2.new(0.5, 1), UDim2.new(0.5, 0, 1, 0), "Read full log")
	tbl9.Clear = createTextButton("Clear", Vector2.new(1, 1), UDim2.new(1, 0, 1, 0), "Clear")
	tbl9.ReaderRoot = Instance.new("Frame")
	tbl9.ReaderRoot.Name = "ReaderRoot"
	tbl9.ReaderRoot.Size = UDim2.fromScale(1, 1)
	tbl9.ReaderRoot.BackgroundTransparency = 1
	tbl9.ReaderRoot.BorderSizePixel = 0
	tbl9.ReaderRoot.Visible = false
	tbl9.ReaderRoot.ZIndex = 50
	tbl9.ReaderRoot.Parent = screenGui
	tbl9.ReaderDim = Instance.new("TextButton")
	tbl9.ReaderDim.Name = "Dim"
	tbl9.ReaderDim.AutoLocalize = false
	tbl9.ReaderDim.Size = UDim2.fromScale(1, 1)
	tbl9.ReaderDim.BackgroundColor3 = tbl6.Black
	tbl9.ReaderDim.BackgroundTransparency = 1
	tbl9.ReaderDim.AutoButtonColor = false
	tbl9.ReaderDim.Text = ""
	tbl9.ReaderDim.BorderSizePixel = 0
	tbl9.ReaderDim.ZIndex = 50
	tbl9.ReaderDim.Parent = tbl9.ReaderRoot
	tbl9.Reader = Instance.new("CanvasGroup")
	tbl9.Reader.Name = "Reader"
	tbl9.Reader.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.Reader.Position = UDim2.fromScale(0.5, 0.5)
	tbl9.Reader.Size = UDim2.fromOffset(tbl10.ReaderWidth, tbl10.ReaderHeight)
	tbl9.Reader.BackgroundColor3 = Color3.fromRGB(11, 11, 13)
	tbl9.Reader.GroupTransparency = 1
	tbl9.Reader.BorderSizePixel = 0
	tbl9.Reader.ZIndex = 51
	tbl9.Reader.Parent = tbl9.ReaderRoot
	createUICorner(tbl9.Reader, UDim.new(0, 26))
	tbl9.ReaderScale = Instance.new("UIScale")
	tbl9.ReaderScale.Name = "ReaderScale"
	tbl9.ReaderScale.Scale = 1
	tbl9.ReaderScale.Parent = tbl9.Reader
	local uiStroke2 = Instance.new("UIStroke")
	uiStroke2.Color = tbl6.White
	uiStroke2.Transparency = 0.9
	uiStroke2.Thickness = 1
	uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke2.Parent = tbl9.Reader
	tbl9.ReaderTitle = createTextLabel(tbl9.Reader, "Title", Enum.Font.GothamBold, 20, tbl6.Title, Enum.TextXAlignment.Left, 52)
	tbl9.ReaderTitle.Position = UDim2.fromOffset(28, 22)
	tbl9.ReaderTitle.Size = UDim2.new(1, -140, 0, 26)
	tbl9.ReaderTitle.Text = "Log"
	tbl9.ReaderCount = createTextLabel(tbl9.Reader, "Count", Enum.Font.GothamMedium, 13, tbl6.Muted, Enum.TextXAlignment.Left, 52)
	tbl9.ReaderCount.Position = UDim2.fromOffset(28, 48)
	tbl9.ReaderCount.Size = UDim2.new(1, -140, 0, 18)
	tbl9.ReaderClose = Instance.new("TextButton")
	tbl9.ReaderClose.Name = "Close"
	tbl9.ReaderClose.AutoLocalize = false
	tbl9.ReaderClose.AnchorPoint = Vector2.new(1, 0)
	tbl9.ReaderClose.Position = UDim2.new(1, -24, 0, 24)
	tbl9.ReaderClose.Size = UDim2.fromOffset(88, 32)
	tbl9.ReaderClose.BackgroundColor3 = tbl6.White
	tbl9.ReaderClose.BackgroundTransparency = 0.9
	tbl9.ReaderClose.AutoButtonColor = false
	tbl9.ReaderClose.Font = Enum.Font.GothamMedium
	tbl9.ReaderClose.Text = "Close"
	tbl9.ReaderClose.TextSize = 13
	tbl9.ReaderClose.TextColor3 = tbl6.Body
	tbl9.ReaderClose.BorderSizePixel = 0
	tbl9.ReaderClose.ZIndex = 53
	tbl9.ReaderClose.Parent = tbl9.Reader
	createUICorner(tbl9.ReaderClose, UDim.new(1, 0))
	tbl9.ReaderRule = createFrame(tbl9.Reader, "Rule", 52)
	tbl9.ReaderRule.Position = UDim2.fromOffset(28, 76)
	tbl9.ReaderRule.Size = UDim2.new(1, -56, 0, 1)
	tbl9.ReaderRule.BackgroundTransparency = 0.9
	tbl9.ReaderList = Instance.new("ScrollingFrame")
	tbl9.ReaderList.Name = "List"
	tbl9.ReaderList.Position = UDim2.fromOffset(24, 88)
	tbl9.ReaderList.Size = UDim2.new(1, -48, 1, -128)
	tbl9.ReaderList.BackgroundTransparency = 1
	tbl9.ReaderList.BorderSizePixel = 0
	tbl9.ReaderList.ScrollBarThickness = 3
	tbl9.ReaderList.ScrollBarImageColor3 = tbl6.White
	tbl9.ReaderList.ScrollBarImageTransparency = 0.7
	tbl9.ReaderList.CanvasSize = UDim2.new()
	tbl9.ReaderList.ZIndex = 52
	tbl9.ReaderList.Parent = tbl9.Reader
	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.FillDirection = Enum.FillDirection.Vertical
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Padding = UDim.new(0, 2)
	uiListLayout.Parent = tbl9.ReaderList
	tbl9.ReaderFoot = createTextLabel(tbl9.Reader, "Foot", Enum.Font.Gotham, 12, tbl6.Muted, Enum.TextXAlignment.Left, 52)
	tbl9.ReaderFoot.AnchorPoint = Vector2.new(0, 1)
	tbl9.ReaderFoot.Position = UDim2.new(0, 28, 1, -16)
	tbl9.ReaderFoot.Size = UDim2.new(1, -56, 0, 16)
	tbl9.ReaderEmpty = createTextLabel(tbl9.Reader, "Empty", Enum.Font.GothamMedium, 15, tbl6.Muted, Enum.TextXAlignment.Center, 52)
	tbl9.ReaderEmpty.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl9.ReaderEmpty.Position = UDim2.fromScale(0.5, 0.5)
	tbl9.ReaderEmpty.Size = UDim2.new(1, 0, 0, 24)
	tbl9.ReaderEmpty.Text = "No activity yet"
	tbl9.ReaderRows = {}
	tbl9.Tap = Instance.new("TextButton")
	tbl9.Tap.Name = "Tap"
	tbl9.Tap.AutoLocalize = false
	tbl9.Tap.Size = UDim2.new(1, 0, 0, tbl5.BarHeight)
	tbl9.Tap.BackgroundTransparency = 1
	tbl9.Tap.Text = ""
	tbl9.Tap.AutoButtonColor = false
	tbl9.Tap.ZIndex = 9
	tbl9.Tap.Parent = tbl9.Shell
	local tbl18 = {}

	for _, v7 in ipairs({
		"UpdateStatus",
		"AddLog",
		"UpdateCurrentStep",
		"UpdateRetry",
		"UpdateRecovery",
		"CompleteSession",
		"ResetSession",
		"UpdateTheme",
		"UpdateProgress",
		"DestroyUI",
	}) do
		local bindableEvent = Instance.new("BindableEvent")
		bindableEvent.Name = v7
		bindableEvent.Parent = screenGui
		tbl18[v7] = bindableEvent
	end

	screenGui.Parent = playerGui

	local function fn8(arg)
		if typeof(arg) == "string" and tbl7[arg] then
			return arg
		end
		return "Working"
	end

	local function fn9(arg)
		if arg == "Sleep" then
			return tbl5.SleepWidth, tbl5.BarHeight, tbl5.BarHeight / 2, 0, 0
		end

		if arg == "Dormant" then
			return tbl5.DormantWidth, tbl5.BarHeight, tbl5.BarHeight / 2, 0, 0
		end

		if arg == "Compact" then
			return tbl5.CompactWidth, tbl5.BarHeight, tbl5.BarHeight / 2, 1, 0
		end
		return tbl5.ExpandedWidth, tbl5.CardHeight, 28, 1, 1
	end

	local function fn10(arg)
		local damping = arg and 24 or 34
		tbl11.Width.Damping = damping
		tbl11.Height.Damping = damping
	end

	local function fn11(tier, arg)
		if tbl10.Destroyed then
			return
		end
		local v7, v8, v9, v10, v11 = fn9(tier)
		tbl10.Tier = tier
		fn10(v7 > tbl11.Width.Value or v8 > tbl11.Height.Value)
		tbl11.Width.Target = v7
		tbl11.Height.Target = v8
		tbl11.Radius.Target = v9
		tbl11.TitleAlpha.Target = v10
		tbl11.CardAlpha.Target = v11

		if v11 > 0 then
			tbl9.Card.Visible = true
		end

		if arg or flag then
			for _, v12 in pairs(tbl11) do
				v12.Value = v12.Target
				v12.Velocity = 0
			end
		end
	end

	local function fn12(arg)
		tbl10.HoldToken = tbl10.HoldToken + 1
		local holdToken = tbl10.HoldToken

		local function fn13()
			return not tbl10.Destroyed and holdToken == tbl10.HoldToken and tbl10.Tier ~= "Expanded" and not tbl10.Pinned
		end

		task.delay(arg / n, function()
			if not fn13() then
				return
			end
			fn11("Dormant")

			task.delay(tbl5.SleepDelay / n, function()
				if fn13() then
					fn11("Sleep")
				end
			end)
		end)
	end

	local function fn13()
		tbl10.CardToken = tbl10.CardToken + 1
		local cardToken = tbl10.CardToken

		task.delay(tbl5.CardHold / n, function()
			if tbl10.Destroyed or cardToken ~= tbl10.CardToken or tbl10.Tier ~= "Expanded" or tbl10.Pinned then
				return
			end
			fn11("Dormant")
		end)
	end

	local function fn14()
		tbl10.CardToken = tbl10.CardToken + 1
	end

	local function fn15(accent)
		tbl10.Accent = accent
		tbl9.Halo.BackgroundColor3 = accent
		tbl9.GlyphDot.BackgroundColor3 = accent
		tbl9.SpinStroke.Color = accent
		tbl9.SpinHead.BackgroundColor3 = fn3(accent, tbl6.White, 0.5)
		tbl9.CheckShort.BackgroundColor3 = accent
		tbl9.CheckLong.BackgroundColor3 = accent
		tbl9.BangStem.BackgroundColor3 = accent
		tbl9.BangDot.BackgroundColor3 = accent
		tbl9.Wash.BackgroundColor3 = accent
		tbl9.Pulse.BackgroundColor3 = accent
		tbl9.Fill.BackgroundColor3 = fn3(accent, tbl6.White, 0.2)
		tbl9.Comet.BackgroundColor3 = fn3(accent, tbl6.White, 0.35)
		tbl9.Pin.TextColor3 = fn3(accent, tbl6.White, 0.5)

		for _, child in ipairs(tbl9.GlyphCross:GetChildren()) do
			if child:IsA("Frame") then
				child.BackgroundColor3 = accent
			end
		end

		for _, bar in ipairs(tbl9.Bars) do
			bar.BackgroundColor3 = accent
		end

		for _, v7 in ipairs(tbl9.Bloom) do
			v7.BackgroundColor3 = accent
		end
	end

	local function fn16(glyph)
		tbl10.Glyph = glyph

		for _, glyph2 in pairs(tbl9.Glyphs) do
			glyph2.Visible = false
		end
		;(tbl9.Glyphs[glyph] or tbl9.GlyphDot).Visible = true
	end

	local function fn17(text)
		local activeTitle = tbl9.ActiveTitle
		local titleB = activeTitle == tbl9.TitleA and tbl9.TitleB or tbl9.TitleA
		titleB.Text = text
		tbl9.ActiveTitle = titleB

		if flag then
			titleB.Position = UDim2.fromOffset(0, 0)
			titleB.TextTransparency = 0
			activeTitle.TextTransparency = 1
			return
		end

		titleB.Position = UDim2.fromOffset(0, 14)
		titleB.TextTransparency = 1
		TweenService:Create(titleB, TweenInfo.new(0.26 / n, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.fromOffset(0, 0), TextTransparency = 0 }):Play()
		local v7
		TweenService:Create(activeTitle, v7, { Position = UDim2.fromOffset(0, -14), TextTransparency = 1 }):Play()
	end

	local function fn18()
		local n2 = math.min(#tbl13, 3)

		for i, pip in ipairs(tbl9.Pips) do
			pip.BackgroundColor3 = tbl10.Accent
			pip.BackgroundTransparency = i <= n2 and 0.25 or 1
		end
	end

	local function fn19()
		local n2 = #tbl12

		for i, row in ipairs(tbl9.Rows) do
			local v7 = tbl12[n2 - i + 1]

			if v7 then
				local message = v7.Message

				if v7.Count > 1 then
					message ..= "  (" .. tostring(v7.Count) .. ")"
				end

				row.Marker.BackgroundColor3 = v7.Colour
				row.Message.Text = message
				row.Stamp.Text = v7.Stamp
				row.Frame.Visible = true
			else
				row.Frame.Visible = false
			end
		end

		tbl9.Empty.Visible = n2 == 0
		local sessionEnd = tbl10.SessionEnd or os.clock()
		local retries = tbl10.Retries
		tbl9.Stats.Text = string.format("Elapsed %s   |   %s   |   %s   |   %s", fn4(sessionEnd - tbl10.SessionStart), fn5(tbl10.Events, "event", "events"), fn5(tbl10.Issues, "issue", "issues"), fn5(retries, "retry", "retries"))
	end

	local function fn20(arg)
		local readerNarrow = tbl10.ReaderNarrow
		local readerRowHeight = tbl10.ReaderRowHeight
		arg.Frame.Size = UDim2.new(1, -8, 0, readerRowHeight)
		arg.Marker.Position = UDim2.fromOffset(readerNarrow and 14 or 16, readerRowHeight / 2)
		arg.Stamp.Position = UDim2.fromOffset(readerNarrow and 26 or 32, 0)
		arg.Stamp.Size = UDim2.fromOffset(readerNarrow and 62 or 74, readerRowHeight)
		arg.Stamp.TextSize = readerNarrow and 12 or 13
		arg.Kind.Visible = not readerNarrow
		arg.Kind.Position = UDim2.fromOffset(110, 0)
		arg.Kind.Size = UDim2.fromOffset(74, readerRowHeight)
		arg.Message.Position = UDim2.fromOffset(readerNarrow and 94 or 190, 0)
		arg.Message.Size = UDim2.new(1, readerNarrow and -104 or -206, 0, readerRowHeight)
		arg.Message.TextSize = readerNarrow and 13 or 14
	end

	local function fn21()
		local readerNarrow = tbl10.ReaderNarrow
		tbl9.ReaderTitle.Position = UDim2.fromOffset(readerNarrow and 18 or 28, readerNarrow and 15 or 22)
		tbl9.ReaderTitle.Size = UDim2.new(1, readerNarrow and -110 or -140, 0, 26)
		tbl9.ReaderTitle.TextSize = readerNarrow and 17 or 20
		tbl9.ReaderCount.Position = UDim2.fromOffset(readerNarrow and 18 or 28, readerNarrow and 38 or 48)
		tbl9.ReaderCount.Size = UDim2.new(1, readerNarrow and -110 or -140, 0, 18)
		tbl9.ReaderClose.Position = UDim2.new(1, readerNarrow and -16 or -24, 0, readerNarrow and 16 or 24)
		tbl9.ReaderClose.Size = UDim2.fromOffset(readerNarrow and 70 or 88, readerNarrow and 28 or 32)
		tbl9.ReaderRule.Position = UDim2.fromOffset(readerNarrow and 18 or 28, readerNarrow and 62 or 76)
		tbl9.ReaderRule.Size = UDim2.new(1, readerNarrow and -36 or -56, 0, 1)
		tbl9.ReaderList.Position = UDim2.fromOffset(readerNarrow and 14 or 24, readerNarrow and 72 or 88)
		tbl9.ReaderList.Size = UDim2.new(1, readerNarrow and -28 or -48, 1, readerNarrow and -104 or -128)
		tbl9.ReaderFoot.Position = UDim2.new(0, readerNarrow and 18 or 28, 1, readerNarrow and -12 or -16)
		tbl9.ReaderFoot.Size = UDim2.new(1, readerNarrow and -36 or -56, 0, 16)
		tbl9.ReaderFoot.TextSize = readerNarrow and 11 or 12

		for _, readerRow in ipairs(tbl9.ReaderRows) do
			fn20(readerRow)
		end
	end

	local function fn22(layoutOrder)
		local v7 = tbl9.ReaderRows[layoutOrder]
		if v7 then
			return v7
		end
		local frame2 = Instance.new("Frame")
		frame2.Name = "Entry" .. layoutOrder
		frame2.BackgroundColor3 = tbl6.White
		frame2.BackgroundTransparency = 0.97
		frame2.BorderSizePixel = 0
		frame2.LayoutOrder = layoutOrder
		frame2.ZIndex = 52
		frame2.Parent = tbl9.ReaderList
		createUICorner(frame2, UDim.new(0, 8))
		local marker = createFrame(frame2, "Marker", 53)
		marker.AnchorPoint = Vector2.new(0.5, 0.5)
		marker.Position = UDim2.fromOffset(16, tbl5.ReaderRowHeight / 2)
		marker.Size = UDim2.fromOffset(7, 7)
		createUICorner(marker, UDim.new(1, 0))
		local stamp = createTextLabel(frame2, "Stamp", Enum.Font.Gotham, 13, tbl6.Muted, Enum.TextXAlignment.Left, 53)
		stamp.Position = UDim2.fromOffset(32, 0)
		stamp.Size = UDim2.fromOffset(74, tbl5.ReaderRowHeight)
		local kind = createTextLabel(frame2, "Kind", Enum.Font.GothamMedium, 13, tbl6.Muted, Enum.TextXAlignment.Left, 53)
		kind.Position = UDim2.fromOffset(110, 0)
		kind.Size = UDim2.fromOffset(74, tbl5.ReaderRowHeight)
		local message = createTextLabel(frame2, "Message", Enum.Font.GothamMedium, 14, tbl6.Body, Enum.TextXAlignment.Left, 53)
		message.Position = UDim2.fromOffset(190, 0)
		message.Size = UDim2.new(1, -206, 0, tbl5.ReaderRowHeight)
		local tbl19 = { Frame = frame2, Marker = marker, Stamp = stamp, Kind = kind, Message = message }
		tbl9.ReaderRows[layoutOrder] = tbl19
		fn20(tbl19)
		return tbl19
	end

	local function fn23()
		local n2 = #tbl12

		for i = 1, n2 do
			local v7 = tbl12[n2 - i + 1]
			local v8 = fn22(i)
			local message = v7.Message

			if v7.Count > 1 then
				message ..= "  (" .. tostring(v7.Count) .. ")"
			end

			v8.Marker.BackgroundColor3 = v7.Colour
			v8.Stamp.Text = v7.Stamp
			v8.Kind.Text = v7.Kind
			v8.Kind.TextColor3 = v7.Colour
			v8.Message.Text = message
			v8.Frame.Visible = true
		end

		for i = n2 + 1, #tbl9.ReaderRows do
			tbl9.ReaderRows[i].Frame.Visible = false
		end

		tbl9.ReaderList.CanvasSize = UDim2.fromOffset(0, n2 * (tbl10.ReaderRowHeight + 2))
		tbl9.ReaderEmpty.Visible = n2 == 0
		tbl9.ReaderCount.Text = fn5(n2, "entry", "entries")
		local sessionEnd = tbl10.SessionEnd or os.clock()
		local retries = tbl10.Retries
		tbl9.ReaderFoot.Text = string.format("Elapsed %s   |   %s   |   %s   |   %s", fn4(sessionEnd - tbl10.SessionStart), fn5(tbl10.Events, "event", "events"), fn5(tbl10.Issues, "issue", "issues"), fn5(retries, "retry", "retries"))
	end

	local function fn24(readerOpen)
		if tbl10.Destroyed or tbl10.ReaderOpen == readerOpen then
			return
		end
		tbl10.ReaderOpen = readerOpen

		if readerOpen then
			local absolutePosition = tbl9.Open.AbsolutePosition
			local absoluteSize = tbl9.Open.AbsoluteSize
			tbl10.ReaderOriginX = absolutePosition.X + absoluteSize.X / 2
			tbl10.ReaderOriginY = absolutePosition.Y + absoluteSize.Y / 2
			tbl10.ReaderOriginWidth = math.max(absoluteSize.X, 8)
			fn23()
			tbl9.ReaderRoot.Visible = true
			tbl9.ReaderList.CanvasPosition = Vector2.new(0, 0)
			tbl11.Reader.Target = 1
			tbl10.Pinned = false
			tbl9.Pin.Text = "Keep open"
			fn14()
			fn11("Sleep")
		else
			tbl11.Reader.Target = 0
			fn12(0.25)
		end
	end

	local function fn25(arg)
		if flag then
			return
		end
		tbl9.Wash.BackgroundTransparency = (arg == "Error" or arg == "Success") and 0.82 or 0.92
		TweenService:Create(tbl9.Wash, TweenInfo.new(0.5 / n, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
		tbl11.Bloom.Value = 1
		tbl11.Bloom.Velocity = 0
		tbl11.Bloom.Target = 0
	end

	local function fn26(arg)
		local working = tbl7[arg.Kind] or tbl7.Working
		fn15(working.Color)
		fn16(working.Glyph)
		tbl10.Live = working.Live
		tbl10.Title = arg.Message
		tbl10.Detail = arg.Detail or ""
		fn17(arg.Message)
		tbl9.Detail.Text = tbl10.Detail
		fn25(arg.Kind)
		fn18()

		if tbl10.Tier == "Expanded" then
			fn19()
			fn13()
		else
			fn11("Compact")
			local holdDuration = tbl5.HoldDuration

			if arg.Kind == "Success" then
				holdDuration = tbl5.SuccessHold
			elseif arg.Kind == "Error" then
				holdDuration = tbl5.ErrorHold
			end

			fn12(holdDuration)
		end
	end

	local function fn27()
		if flag2 or tbl10.Destroyed then
			return
		end
		flag2 = true

		task.spawn(function()
			while not tbl10.Destroyed and #tbl13 > 0 do
				local n2 = -1
				local n3 = 1

				for i, v7 in ipairs(tbl13) do
					if n2 < v7.Priority then
						n2 = v7.Priority
						n3 = i
					end
				end

				local v7 = table.remove(tbl13, n3)
				tbl10.CurrentPriority = v7.Priority
				fn26(v7)
				local n4 = 0.45 / n
				local n5 = os.clock() + n4

				while true do
					if os.clock() < n5 and not tbl10.Destroyed then
						local flag3 = false

						for _, v8 in ipairs(tbl13) do
							if v7.Priority < v8.Priority then
								flag3 = true
								break
							else
								flag3 = false
							end
						end

						if not flag3 then
							task.wait(0.05)
							continue
						end
					end

					break
				end
			end

			tbl10.CurrentPriority = -1
			flag2 = false
			fn18()
		end)
	end

	local function fn28(arg, arg2, arg3)
		table.insert(tbl13, { Message = arg, Kind = arg2, Detail = arg3, Priority = (tbl7[arg2] or tbl7.Working).Priority })

		while tbl5.QueueLimit < #tbl13 do
			local huge = math.huge
			local n2 = 1

			for i, v7 in ipairs(tbl13) do
				if v7.Priority < huge then
					huge = v7.Priority
					n2 = i
				end
			end

			table.remove(tbl13, n2)
		end

		fn18()
		fn27()
	end

	local function fn29(arg, arg2, arg3)
		if tbl10.Destroyed or typeof(arg) ~= "string" or arg == "" then
			return
		end
		local v7 = fn8(arg2)
		local color = tbl7[v7].Color
		local v8 = tbl12[#tbl12]

		if v8 and v8.Message == arg and v8.Kind == v7 then
			v8.Count = v8.Count + 1
			v8.Stamp = fn6()
		else
			table.insert(tbl12, { Message = arg, Kind = v7, Colour = color, Stamp = fn6(), Count = 1 })
		end

		tbl10.Events = tbl10.Events + 1

		if v7 == "Error" or v7 == "Warning" then
			tbl10.Issues = tbl10.Issues + 1
		end

		while #tbl12 > tbl5.LogLimit do
			table.remove(tbl12, 1)
		end

		if tbl10.Tier == "Expanded" then
			fn19()
		end

		if tbl10.ReaderOpen then
			fn23()
		end

		fn28(arg, v7, arg3)
	end

	local function fn30(deltaTime)
		if tbl10.Destroyed then
			return
		end
		tbl10.Clock = tbl10.Clock + deltaTime * n

		for _, v7 in pairs(tbl11) do
			fn2(v7, deltaTime)
		end

		local value = tbl11.Width.Value
		local value2 = tbl11.Height.Value
		local n2 = math.max(tbl11.Radius.Value, 1)
		local max = math.max
		tbl9.Shell.Size = UDim2.fromOffset(math.max(value, 1), max(value2, 1))
		tbl9.ShellCorner.CornerRadius = UDim.new(0, n2)
		tbl9.WashCorner.CornerRadius = UDim.new(0, n2)
		tbl9.Scale.Scale = (tbl10.ResponsiveScale or tbl5.MaximumScale) * tbl11.Press.Value
		tbl9.TitleClip.Size = UDim2.fromOffset(math.max(value - 150, 0), 22)
		tbl9.Detail.Size = UDim2.fromOffset(math.max(value - 150, 0), 15)
		tbl9.Track.Size = UDim2.fromOffset(math.max(value - 80, 0), 2)
		local n3 = math.clamp(tbl11.TitleAlpha.Value, 0, 1)
		tbl9.TitleClip.Visible = n3 > 0.02
		tbl9.TitleClip.GroupTransparency = 1 - n3
		tbl9.Detail.TextTransparency = 1 - n3
		tbl9.Detail.Visible = tbl10.Detail ~= "" and n3 > 0.02
		tbl9.Track.BackgroundTransparency = 1 - n3 * 0.65
		local n4 = math.clamp(tbl11.CardAlpha.Value, 0, 1)
		tbl9.Card.GroupTransparency = 1 - n4
		tbl9.Card.Visible = n4 > 0.02
		local n5 = math.clamp(tbl11.Reader.Value, 0, 1)
		tbl9.ReaderRoot.Visible = n5 > 0.01
		tbl9.Reader.GroupTransparency = 1 - n5
		tbl9.ReaderDim.BackgroundTransparency = 1 - n5 * 0.55
		tbl9.Reader.Size = UDim2.fromOffset(tbl10.ReaderWidth, tbl10.ReaderHeight)
		local n6 = n5 * n5 * (3 - 2 * n5)
		local n7 = math.clamp(tbl10.ReaderOriginWidth / math.max(tbl10.ReaderWidth, 1), 0.05, 0.6)
		tbl9.ReaderScale.Scale = n7 + (1 - n7) * n6
		tbl9.Reader.Position = UDim2.fromOffset(tbl10.ReaderOriginX + (tbl10.ReaderTargetX - tbl10.ReaderOriginX) * n6, tbl10.ReaderOriginY + (tbl10.ReaderTargetY - tbl10.ReaderOriginY) * n6)
		local n8 = 0.5 + 0.5 * math.sin(tbl10.Clock * 1.6)
		local n9 = math.clamp(tbl11.Bloom.Value, 0, 1)

		for i, v7 in ipairs(tbl9.Bloom) do
			local n10 = i * 5
			v7.Position = UDim2.new(0.5, 0, 0, value2 / 2)
			v7.Size = UDim2.fromOffset(value + n10, value2 + n10)
			v7.BackgroundTransparency = math.clamp(0.965 - i * 0.004 - n9 * 0.05 - n8 * 0.006, 0, 1)
			tbl9.BloomCorners[i].CornerRadius = UDim.new(0, n2 + n10 / 2)
		end

		if tbl10.Glyph == "Spinner" then
			tbl9.GlyphSpin.Rotation = tbl10.Clock * 220 % 360
		elseif tbl10.Glyph == "Breath" or tbl10.Glyph == "Dot" then
			local n10 = 11 + n8 * 3
			tbl9.GlyphDot.Size = UDim2.fromOffset(n10, n10)
		end

		tbl9.Halo.BackgroundTransparency = 0.82 - n8 * 0.08
		local flag3 = tbl10.Live == "Equalizer" or tbl10.Live == "Stream"

		for i, bar in ipairs(tbl9.Bars) do
			local flag4 = flag3 and n3 > 0.02
			bar.BackgroundTransparency = flag4 and 0 or 1

			if flag4 then
				if tbl10.Live == "Stream" then
					bar.Size = UDim2.fromOffset(3.5, 6 + 10 * math.abs(math.sin((tbl10.Clock * 2.2 + i * 0.25) % 1 * 3.1415926535897931)))
				else
					bar.Size = UDim2.fromOffset(3.5, 7 + 9 * (0.5 + 0.5 * math.sin(tbl10.Clock * 5.5 + i * 1.1)))
				end
			end
		end

		local n10 = tbl5.BarHeight / 2
		tbl9.Slot.Position = UDim2.fromOffset(32 + (value / 2 - 32) * math.clamp((tbl5.DormantWidth - value) / (tbl5.DormantWidth - tbl5.SleepWidth), 0, 1), n10)

		if n3 < 0.98 and value > 108 then
			local n11 = 7 + n8 * 3
			tbl9.Pulse.Size = UDim2.fromOffset(n11, n11)
			tbl9.Pulse.BackgroundTransparency = math.clamp(n3 + 0.12 + n8 * 0.28, 0, 1)
		else
			tbl9.Pulse.BackgroundTransparency = 1
		end

		if tbl10.Progress then
			tbl9.Fill.Size = UDim2.fromScale(math.clamp(tbl11.Progress.Value, 0, 1), 1)
			tbl9.Fill.BackgroundTransparency = 1 - n3 * 0.9
			tbl9.Comet.BackgroundTransparency = 1
		else
			tbl9.Fill.BackgroundTransparency = 1

			if n3 > 0.02 and not flag then
				tbl9.Comet.Position = UDim2.fromScale(tbl10.Clock * 0.55 % 1.35 - 0.35, 0)
				tbl9.Comet.BackgroundTransparency = 0.1
			else
				tbl9.Comet.BackgroundTransparency = 1
			end
		end
	end

	local function fn31()
		local currentCamera = Workspace2.CurrentCamera
		if not currentCamera then
			tbl10.ResponsiveScale = tbl5.MaximumScale
			return
		end
		local compactWidth = tbl5.CompactWidth
		local minimumScale = tbl5.MinimumScale
		local maximumScale = tbl5.MaximumScale
		tbl10.ResponsiveScale = math.clamp(math.max(currentCamera.ViewportSize.X - 28, 1) / compactWidth, minimumScale, maximumScale)
		local readerMinWidth = tbl5.ReaderMinWidth
		local readerMaxWidth = tbl5.ReaderMaxWidth
		tbl10.ReaderWidth = math.clamp(math.floor(currentCamera.ViewportSize.X * tbl5.ReaderWidthRatio), readerMinWidth, readerMaxWidth)
		local readerMinHeight = tbl5.ReaderMinHeight
		local readerMaxHeight = tbl5.ReaderMaxHeight
		tbl10.ReaderHeight = math.clamp(math.floor(currentCamera.ViewportSize.Y * tbl5.ReaderHeightRatio), readerMinHeight, readerMaxHeight)
		tbl10.ReaderTargetX = currentCamera.ViewportSize.X / 2
		tbl10.ReaderTargetY = currentCamera.ViewportSize.Y / 2
		local readerNarrow = tbl10.ReaderWidth < tbl5.ReaderNarrowUnder

		if readerNarrow ~= tbl10.ReaderNarrow then
			tbl10.ReaderNarrow = readerNarrow
			tbl10.ReaderRowHeight = readerNarrow and tbl5.ReaderRowHeightNarrow or tbl5.ReaderRowHeight
			fn21()

			if tbl10.ReaderOpen then
				fn23()
			end
		end
	end

	local function fn32()
		if flag then
			return
		end
		tbl11.Press.Value = 0.955
		tbl11.Press.Velocity = 0
		tbl11.Press.Target = 1
	end

	fn7(tbl9.Tap.Activated:Connect(function()
		fn32()

		if tbl10.Tier == "Expanded" then
			tbl10.Pinned = false
			tbl9.Pin.Text = "Keep open"
			fn14()
			fn11("Dormant")
			return
		end

		fn19()
		fn11("Expanded")
		fn13()
	end))

	fn7(tbl9.Pin.Activated:Connect(function()
		fn32()
		tbl10.Pinned = not tbl10.Pinned
		tbl9.Pin.Text = tbl10.Pinned and "Pinned" or "Keep open"

		if tbl10.Pinned then
			fn14()
		else
			fn13()
		end
	end))

	fn7(tbl9.Open.Activated:Connect(function()
		fn32()
		fn24(true)
	end))

	fn7(tbl9.ReaderClose.Activated:Connect(function()
		fn24(false)
	end))

	fn7(tbl9.ReaderDim.Activated:Connect(function()
		fn24(false)
	end))

	fn7(tbl9.Clear.Activated:Connect(function()
		fn32()
		fn13()
		tbl12 = {}
		tbl10.Events = 0
		tbl10.Issues = 0
		fn19()

		if tbl10.ReaderOpen then
			fn23()
		end
	end))

	fn7(tbl18.AddLog.Event:Connect(function(arg, arg2)
		fn29(tostring(arg), arg2)
	end))

	fn7(tbl18.UpdateStatus.Event:Connect(function(arg, arg2)
		fn29(tostring(arg), arg2)
	end))

	fn7(tbl18.UpdateCurrentStep.Event:Connect(function(detail)
		if typeof(detail) == "string" and detail ~= "" then
			tbl10.Detail = detail
			tbl9.Detail.Text = detail
		end
	end))

	fn7(tbl18.UpdateRetry.Event:Connect(function(arg, arg2)
		local n2 = tonumber(arg) or 0
		tbl10.Retries = math.max(tbl10.Retries, n2)
		local str = string.format("Retry %d", n2)

		if tonumber(arg2) then
			str = string.format("Retry %d in %ds", n2, tonumber(arg2))
		end

		fn29(str, "Warning")
	end))

	fn7(tbl18.UpdateRecovery.Event:Connect(function(arg, arg2)
		local str = tostring(arg)

		if typeof(arg2) == "string" and arg2 ~= "" then
			str ..= " -> " .. arg2
		end

		fn29(str, "Warning")
	end))

	fn7(tbl18.CompleteSession.Event:Connect(function()
		if tbl10.Complete then
			return
		end
		tbl10.Complete = true
		tbl10.SessionEnd = os.clock()
		fn29("Session complete", "Success")
	end))

	fn7(tbl18.ResetSession.Event:Connect(function()
		tbl12 = {}
		tbl13 = {}
		tbl10.Events = 0
		tbl10.Issues = 0
		tbl10.Retries = 0
		tbl10.Complete = false
		tbl10.SessionStart = os.clock()
		tbl10.SessionEnd = nil
		tbl10.Pinned = false
		tbl9.Pin.Text = "Keep open"
		fn24(false)
		fn19()
		fn11("Dormant")
		fn29("New session", "Info")
	end))

	fn7(tbl18.UpdateProgress.Event:Connect(function(arg)
		if typeof(arg) ~= "number" then
			tbl10.Progress = nil
			return
		end
		local value = math.clamp(arg, 0, 1)

		if not tbl10.Progress then
			tbl11.Progress.Value = value
			tbl11.Progress.Velocity = 0
		end

		tbl10.Progress = value
		tbl11.Progress.Target = value
	end))

	fn7(tbl18.UpdateTheme.Event:Connect(function(arg)
		if typeof(arg) == "Color3" then
			accentColor = arg
			fn15(arg)
		end
	end))

	local function fn33()
		if tbl10.Destroyed then
			return
		end
		tbl10.Destroyed = true
		tbl10.HoldToken = tbl10.HoldToken + 1

		for _, v7 in ipairs(tbl14) do
			pcall(function()
				v7:Disconnect()
			end)
		end

		tbl14 = {}
	end

	fn7(tbl18.DestroyUI.Event:Connect(function()
		fn33()
		screenGui:Destroy()
	end))

	fn7(screenGui.Destroying:Connect(fn33))
	fn7(RunService2.RenderStepped:Connect(fn30))
	fn7(Workspace2:GetPropertyChangedSignal("CurrentCamera"):Connect(fn31))
	fn31()
	fn21()
	fn15(accentColor)
	fn16("Dot")
	fn19()
	fn18()
	fn11("Dormant", true)
	tbl9.TitleA.Text = "Idle"
	tbl9.TitleA.TextTransparency = 1
	local currentCamera = Workspace2.CurrentCamera

	if currentCamera then
		fn7(currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(fn31))
	end
end

tbl4.Start = function()
	if colorIslandGui and colorIslandGui.Parent then
		return true, nil
	end
	local ok, result = pcall(tbl4.Build)
	if not ok then
		return false, "ColorIsland failed to load: " .. tostring(result)
	end
	local playerGui = localPlayer2:FindFirstChild("PlayerGui")
	colorIslandGui = playerGui and playerGui:FindFirstChild("ColorIslandGui")
	if not colorIslandGui then
		return false, "ColorIsland was not created"
	end
	return true, nil
end

tbl4.Fire = function(arg, ...)
	if not colorIslandGui or not colorIslandGui.Parent then
		return false
	end
	local v = colorIslandGui:FindFirstChild(arg)
	if not v or not v:IsA("BindableEvent") then
		return false
	end
	return pcall(v.Fire, v, ...)
end

tbl4.Log = function(arg, arg2)
	return tbl4.Fire("AddLog", tostring(arg), arg2)
end

tbl4.Step = function(arg)
	return tbl4.Fire("UpdateCurrentStep", tostring(arg))
end

tbl4.Progress = function(arg)
	return tbl4.Fire("UpdateProgress", arg)
end

tbl4.Retry = function(arg, arg2)
	return tbl4.Fire("UpdateRetry", arg, arg2)
end

tbl4.Recovery = function(arg, arg2)
	return tbl4.Fire("UpdateRecovery", tostring(arg), arg2)
end

tbl4.Theme = function(arg)
	return tbl4.Fire("UpdateTheme", arg)
end

tbl4.Reset = function()
	return tbl4.Fire("ResetSession")
end

tbl4.Complete = function()
	return tbl4.Fire("CompleteSession")
end

tbl4.Destroy = function()
	return tbl4.Fire("DestroyUI")
end

local v = tbl4
local n = 100
local n2 = 0.0001
local n3 = 0.5
local v2 = nil
local tbl8 = {}
local index = {}
local index2 = {}
index.__index = index
index2.__index = index2

tbl8.IsFiniteNumber = function(arg)
	return typeof(arg) == "number" and arg == arg and arg > -math.huge and arg < math.huge
end

tbl8.IsFiniteVector3 = function(arg)
	return typeof(arg) == "Vector3" and tbl8.IsFiniteNumber(arg.X) and tbl8.IsFiniteNumber(arg.Y) and tbl8.IsFiniteNumber(arg.Z)
end

tbl8.IsFiniteCFrame = function(arg)
	if typeof(arg) ~= "CFrame" then
		return false
	end
	return tbl8.IsFiniteVector3(arg.Position) and tbl8.IsFiniteVector3(arg.RightVector) and tbl8.IsFiniteVector3(arg.UpVector) and tbl8.IsFiniteVector3(arg.LookVector)
end

tbl8.FindModelRoot = function(arg, arg2)
	if not arg or not arg:IsA("Model") then
		return nil
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	if humanoidRootPart and humanoidRootPart:IsA("BasePart") and humanoidRootPart:IsDescendantOf(arg) then
		return humanoidRootPart
	end

	if arg2 then
		local ok, result = pcall(function()
			return arg2.RootPart
		end)

		if ok and result and result:IsA("BasePart") and result:IsDescendantOf(arg) then
			return result
		end
	end

	local primaryPart = arg.PrimaryPart
	if primaryPart and primaryPart:IsA("BasePart") and primaryPart:IsDescendantOf(arg) then
		return primaryPart
	end
	return arg:FindFirstChildWhichIsA("BasePart", true)
end

tbl8.GetLocalCharacter = function()
	local character = localPlayer and localPlayer.Character
	if not character or not character.Parent then
		return nil, nil, nil, "Local character is unavailable"
	end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid or not humanoid:IsDescendantOf(character) then
		return nil, nil, nil, "Local humanoid is unavailable"
	end

	if humanoid.Health <= 0 then
		return nil, nil, nil, "Local humanoid is dead"
	end
	local v3 = tbl8.FindModelRoot(character, humanoid)
	if not v3 then
		return nil, nil, nil, "Local HumanoidRootPart is unavailable"
	end
	return character, humanoid, v3, nil
end

tbl8.CreateTargetState = function(arg)
	local kind = typeof(arg)

	if kind == "CFrame" then
		if not tbl8.IsFiniteCFrame(arg) then
			return nil, "Target CFrame is invalid"
		end
		return { Kind = "CFrame", Value = arg, IsCharacterTarget = false }
	end

	if kind == "Vector3" then
		if not tbl8.IsFiniteVector3(arg) then
			return nil, "Target Vector3 is invalid"
		end
		return { Kind = "Vector3", Value = arg, IsCharacterTarget = false }
	end

	if kind ~= "Instance" then
		return nil, "Target must be a CFrame, Vector3, BasePart, Attachment, Model, or Player"
	end

	if arg:IsA("Player") then
		if not arg.Parent then
			return nil, "Target player has left the game"
		end
		local character = arg.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		local v3 = character and tbl8.FindModelRoot(character, humanoid)
		if not character or not character.Parent then
			return nil, "Target player character is unavailable"
		end

		if not humanoid or not humanoid:IsDescendantOf(character) then
			return nil, "Target player humanoid is unavailable"
		end

		if not v3 then
			return nil, "Target player has no usable root part"
		end
		return { Kind = "Player", Instance = arg, Character = character, Humanoid = humanoid, IsCharacterTarget = true }
	end

	if arg:IsA("Attachment") then
		if not arg.Parent then
			return nil, "Target attachment has been removed"
		end
		return { Kind = "Attachment", Instance = arg, IsCharacterTarget = false }
	end

	if arg:IsA("BasePart") then
		if not arg.Parent then
			return nil, "Target part has been removed"
		end
		return { Kind = "BasePart", Instance = arg, IsCharacterTarget = false }
	end

	if arg:IsA("Model") then
		if not arg.Parent then
			return nil, "Target model has been removed"
		end
		local humanoid = arg:FindFirstChildOfClass("Humanoid")

		if humanoid then
			if not tbl8.FindModelRoot(arg, humanoid) then
				return nil, "Target mob has no usable root part"
			end

			return {
				Kind = "CharacterModel",
				Instance = arg,
				Character = arg,
				Humanoid = humanoid,
				IsCharacterTarget = true,
			}
		end

		local ok, result = pcall(function()
			return arg:GetPivot()
		end)

		if not ok or not tbl8.IsFiniteCFrame(result) then
			return nil, "Target model has no valid pivot"
		end
		return { Kind = "Model", Instance = arg, IsCharacterTarget = false }
	end

	return nil, "Unsupported target instance"
end

tbl8.RefreshPlayerTarget = function(arg)
	local instance = arg.Instance
	if not instance.Parent then
		return false, "Target player has left the game"
	end
	local character = instance.Character
	if not character or not character.Parent then
		return false, "Target player character is unavailable"
	end

	if character ~= arg.Character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then
			return false, "Target player humanoid is not ready yet"
		end

		if not tbl8.FindModelRoot(character, humanoid) then
			return false, "Target player root part is not ready yet"
		end
		arg.Character = character
		arg.Humanoid = humanoid
	end

	return true, nil
end

tbl8.ResolveTargetFrame = function(arg)
	local kind = arg.Kind
	if kind == "CFrame" then
		return arg.Value, true, nil, nil
	end

	if kind == "Vector3" then
		return CFrame.new(arg.Value), false, nil, nil
	end

	if kind == "Player" then
		local v3, v4 = tbl8.RefreshPlayerTarget(arg)
		if not v3 then
			return nil, false, "Lost", v4
		end
		local character = arg.Character
		local humanoid = arg.Humanoid
		if not humanoid.Parent or not humanoid:IsDescendantOf(character) then
			return nil, false, "Lost", "Target player humanoid has been removed"
		end

		if humanoid.Health <= 0 then
			return nil, false, "Dead", "Target player is dead"
		end
		local v5 = tbl8.FindModelRoot(character, humanoid)
		if not v5 then
			return nil, false, "Lost", "Target player root part is unavailable"
		end
		local cFrame = v5.CFrame
		if not tbl8.IsFiniteCFrame(cFrame) then
			return nil, false, "Lost", "Target player CFrame is invalid"
		end
		return cFrame, true, nil, nil
	end

	if kind == "CharacterModel" then
		local character = arg.Character
		local humanoid = arg.Humanoid
		if not character.Parent then
			return nil, false, "Lost", "Target mob has been removed"
		end

		if not humanoid.Parent or not humanoid:IsDescendantOf(character) then
			return nil, false, "Lost", "Target mob humanoid has been removed"
		end

		if humanoid.Health <= 0 then
			return nil, false, "Dead", "Target mob is dead"
		end
		local v3 = tbl8.FindModelRoot(character, humanoid)
		if not v3 then
			return nil, false, "Lost", "Target mob root part is unavailable"
		end
		local cFrame = v3.CFrame
		if not tbl8.IsFiniteCFrame(cFrame) then
			return nil, false, "Lost", "Target mob CFrame is invalid"
		end
		return cFrame, true, nil, nil
	end

	if kind == "Attachment" then
		local instance = arg.Instance
		if not instance.Parent then
			return nil, false, "Lost", "Target attachment has been removed"
		end
		local worldCFrame = instance.WorldCFrame
		if not tbl8.IsFiniteCFrame(worldCFrame) then
			return nil, false, "Lost", "Target attachment CFrame is invalid"
		end
		return worldCFrame, true, nil, nil
	end

	if kind == "BasePart" then
		local instance = arg.Instance
		if not instance.Parent then
			return nil, false, "Lost", "Target part has been removed"
		end
		local cFrame = instance.CFrame
		if not tbl8.IsFiniteCFrame(cFrame) then
			return nil, false, "Lost", "Target part CFrame is invalid"
		end
		return cFrame, true, nil, nil
	end

	if kind == "Model" then
		local instance = arg.Instance
		if not instance.Parent then
			return nil, false, "Lost", "Target model has been removed"
		end

		local ok, result = pcall(function()
			return instance:GetPivot()
		end)

		if not ok or not tbl8.IsFiniteCFrame(result) then
			return nil, false, "Lost", "Target model pivot is invalid"
		end
		return result, true, nil, nil
	end

	return nil, false, "Lost", "Target state is unsupported"
end

tbl8.ResolveOffset = function(arg, arg2)
	if arg == nil then
		if arg2 then
			return CFrame.new(0, 15, 0), nil
		end
		return CFrame.identity, nil
	end

	if typeof(arg) == "Vector3" then
		if not tbl8.IsFiniteVector3(arg) then
			return nil, "Offset Vector3 is invalid"
		end
		return CFrame.new(arg), nil
	end

	if tbl8.IsFiniteCFrame(arg) then
		return arg, nil
	end
	return nil, "Offset must be a finite CFrame or Vector3"
end

tbl8.GetHorizontalDirection = function(arg, arg2)
	if tbl8.IsFiniteVector3(arg) then
		local vector = Vector3.new(arg.X, 0, arg.Z)
		local magnitude = vector.Magnitude
		if tbl8.IsFiniteNumber(magnitude) and magnitude > n2 then
			return vector / magnitude
		end
	end

	if tbl8.IsFiniteVector3(arg2) then
		local vector = Vector3.new(arg2.X, 0, arg2.Z)
		local magnitude = vector.Magnitude
		if tbl8.IsFiniteNumber(magnitude) and magnitude > n2 then
			return vector / magnitude
		end
	end

	return Vector3.new(0, 0, -1)
end

tbl8.BuildDestination = function(arg, arg2, arg3)
	if not tbl8.IsFiniteCFrame(arg2) then
		return nil, "Target CFrame is invalid"
	end
	local targetDirection = arg.TargetDirection

	if arg3 then
		targetDirection = tbl8.GetHorizontalDirection(arg2.LookVector, arg.TargetDirection)
		arg.TargetDirection = targetDirection
	end

	local offsetCFrame = arg.OffsetCFrame
	local n4 = CFrame.lookAlong(arg2.Position, targetDirection, Vector3.new(0, 1, 0)) * offsetCFrame
	local cframe = CFrame.lookAlong(n4.Position, tbl8.GetHorizontalDirection(n4.LookVector, targetDirection), Vector3.new(0, 1, 0))
	if not tbl8.IsFiniteCFrame(cframe) then
		return nil, "Calculated destination is invalid"
	end
	return cframe, nil
end

tbl8.GetCurrentUprightCFrame = function(arg)
	local ok, result = pcall(function()
		return arg.Character:GetPivot()
	end)

	if not ok or not tbl8.IsFiniteCFrame(result) then
		return nil, "Local character pivot is invalid"
	end
	local v3 = tbl8.GetHorizontalDirection(result.LookVector, arg.CharacterDirection)
	arg.CharacterDirection = v3
	return CFrame.lookAlong(result.Position, v3, Vector3.new(0, 1, 0)), nil
end

tbl8.ValidateLocalJob = function(arg)
	if localPlayer.Character ~= arg.Character then
		return false, "Local character has respawned"
	end

	if not arg.Character.Parent then
		return false, "Local character has been removed"
	end

	if not arg.Humanoid.Parent or not arg.Humanoid:IsDescendantOf(arg.Character) or arg.Humanoid.Health <= 0 then
		return false, "Local humanoid is unavailable or dead"
	end
	local v3 = tbl8.FindModelRoot(arg.Character, arg.Humanoid)
	if not v3 then
		return false, "Local root part is unavailable"
	end
	arg.RootPart = v3
	return true, nil
end

tbl8.StopVelocity = function(arg)
	if not arg or not arg.Parent then
		return false
	end

	return (pcall(function()
		arg.AssemblyLinearVelocity = Vector3.zero
		arg.AssemblyAngularVelocity = Vector3.zero
	end))
end

tbl8.ClearArray = function(arg)
	if type(arg) ~= "table" then
		return
	end

	for i = #arg, 1, -1 do
		arg[i] = nil
	end
end

tbl8.RebuildNoclipCache = function(arg)
	local ok, result = pcall(function()
		return arg.Character:GetDescendants()
	end)

	if not ok then
		return
	end
	local noclipParts = arg.NoclipParts
	tbl8.ClearArray(noclipParts)

	for _, v3 in ipairs(result) do
		if v3:IsA("BasePart") then
			if arg.CollisionStates[v3] == nil then
				local ok2, result2 = pcall(function()
					return v3.CanCollide
				end)

				if ok2 then
					arg.CollisionStates[v3] = result2
				end
			end

			noclipParts[#noclipParts + 1] = v3
		end
	end
end

tbl8.ApplyNoclip = function(arg, arg2)
	if tbl8.IsFiniteNumber(arg2) and arg2 > 0 then
		arg.NoclipClock = arg.NoclipClock + arg2
	end

	if arg.NoclipDirty or arg.NoclipClock >= n3 then
		arg.NoclipDirty = false
		arg.NoclipClock = 0
		tbl8.RebuildNoclipCache(arg)
	end

	local noclipParts = arg.NoclipParts

	for i = #noclipParts, 1, -1 do
		local v3 = noclipParts[i]

		if not v3.Parent then
			table.remove(noclipParts, i)
		elseif v3.CanCollide then
			v3.CanCollide = false
		end
	end
end

tbl8.EnforceUprightState = function(arg)
	local humanoid = arg.Humanoid

	if arg.KeepSeated then
		local ok, result = pcall(function()
			return humanoid.Sit
		end)

		if ok and result then
			return
		end
	end

	pcall(function()
		if humanoid.Sit then
			humanoid.Sit = false
		end

		if humanoid.PlatformStand then
			humanoid.PlatformStand = false
		end
	end)

	pcall(function()
		local state = humanoid:GetState()

		if state == Enum.HumanoidStateType.Physics or state == Enum.HumanoidStateType.FallingDown or state == Enum.HumanoidStateType.Ragdoll or state == Enum.HumanoidStateType.Seated or state == Enum.HumanoidStateType.PlatformStanding then
			humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
		end
	end)
end

tbl8.ApplyCharacterCFrame = function(arg, arg2)
	if not tbl8.IsFiniteCFrame(arg2) then
		return false, "Refused to apply an invalid character CFrame"
	end

	local ok, result = pcall(function()
		arg.Character:PivotTo(arg2)
	end)

	if not ok then
		return false, "Failed to move the local character: " .. tostring(result)
	end
	tbl8.StopVelocity(arg.RootPart)
	return true, nil
end

tbl8.PrepareCharacter = function(arg)
	local ok, originalAutoRotate = pcall(function()
		return arg.Humanoid.AutoRotate
	end)

	if ok then
		arg.OriginalAutoRotate = originalAutoRotate

		arg.AutoRotateChanged = pcall(function()
			arg.Humanoid.AutoRotate = false
		end)
	end

	local ok2, descendantConnection = pcall(function()
		return arg.Character.DescendantAdded:Connect(function()
			arg.NoclipDirty = true
		end)
	end)

	if ok2 then
		arg.DescendantConnection = descendantConnection
	end

	arg.NoclipDirty = true
	tbl8.ApplyNoclip(arg, 0)
	tbl8.EnforceUprightState(arg)
	tbl8.StopVelocity(arg.RootPart)
end

tbl8.TryReacquireLocalCharacter = function(arg)
	local character = localPlayer.Character
	if not character or not character.Parent then
		return false
	end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid or not humanoid:IsDescendantOf(character) or humanoid.Health <= 0 then
		return false
	end
	local v3 = tbl8.FindModelRoot(character, humanoid)
	if not v3 then
		return false
	end

	if character == arg.Character then
		arg.Humanoid = humanoid
		arg.RootPart = v3
		arg.NoclipDirty = true
		tbl8.ApplyNoclip(arg, 0)
		tbl8.EnforceUprightState(arg)
		return true
	end

	tbl8.ReleaseCharacterBindings(arg)
	arg.Character = character
	arg.Humanoid = humanoid
	arg.RootPart = v3
	arg.CollisionStates = {}
	arg.NoclipClock = 0
	arg.NoclipDirty = true
	arg.OriginalAutoRotate = nil
	arg.AutoRotateChanged = false
	tbl8.PrepareCharacter(arg)

	local ok, result = pcall(function()
		return character:GetPivot()
	end)

	if ok and tbl8.IsFiniteCFrame(result) then
		arg.CharacterDirection = tbl8.GetHorizontalDirection(result.LookVector, arg.CharacterDirection)
	end

	return true
end

tbl8.ReleaseCharacterBindings = function(arg)
	if arg.DescendantConnection then
		pcall(function()
			arg.DescendantConnection:Disconnect()
		end)

		arg.DescendantConnection = nil
	end

	tbl8.ClearArray(arg.NoclipParts)
end

tbl8.Cleanup = function(arg, state, arg2)
	if not arg or arg.Cleaned then
		return false
	end
	arg.Cleaned = true
	arg.Running = false
	arg.State = state or "Stopped"
	arg.Reason = arg2 or arg.Reason or arg.State

	if v2 == arg then
		v2 = nil
	end

	if genv.Kaitun6V4ActiveTween == arg then
		genv.Kaitun6V4ActiveTween = nil
	end

	tbl8.ReleaseCharacterBindings(arg)

	for k, collisionState in pairs(arg.CollisionStates) do
		if k and k.Parent then
			pcall(function()
				k.CanCollide = collisionState
			end)
		end
	end

	arg.CollisionStates = {}

	if arg.AutoRotateChanged and arg.Humanoid and arg.Humanoid.Parent then
		pcall(function()
			arg.Humanoid.AutoRotate = arg.OriginalAutoRotate
		end)
	end

	tbl8.StopVelocity(arg.RootPart)
	return true
end

tbl8.EnterHolding = function(arg, holdKind, reason, holdCFrame)
	if arg.Cleaned then
		return false, "Tween has already been cleaned"
	end

	if not tbl8.IsFiniteCFrame(holdCFrame) then
		return false, "Hold CFrame is invalid"
	end
	arg.State = "Holding"
	arg.HoldKind = holdKind or "Lost"
	arg.Reason = reason or "Target became unavailable"
	arg.HoldCFrame = holdCFrame
	return tbl8.ApplyCharacterCFrame(arg, holdCFrame)
end

tbl8.TryResumeFromHolding = function(arg)
	local targetState = arg.TargetState
	if targetState.Kind ~= "Player" then
		return false
	end

	if not tbl8.RefreshPlayerTarget(targetState) then
		return false
	end
	local character = targetState.Character
	local humanoid = targetState.Humanoid
	if not humanoid.Parent or not humanoid:IsDescendantOf(character) or humanoid.Health <= 0 then
		return false
	end

	if not tbl8.FindModelRoot(character, humanoid) then
		return false
	end
	arg.State = "Moving"
	arg.HoldKind = nil
	arg.HoldCFrame = nil
	arg.Reason = nil
	return true
end

tbl8.Fail = function(arg, arg2)
	tbl8.Cleanup(arg, "Failed", arg2 or "Tween failed")
	return false
end

tbl8.StopJob = function(arg, arg2)
	if not arg or arg.Cleaned then
		return false, arg and arg.Reason or "Tween is not running"
	end
	tbl8.Cleanup(arg, "Stopped", arg2 or "Stopped")
	return true, arg.Reason
end

tbl8.StopActiveJob = function(arg)
	local v3 = v2
	local flag = v2

	if v3 then
		flag = not v3.Cleaned
	end

	if flag then
		tbl8.StopJob(v3, arg or "Replaced by a new Tween")
	end

	local kaitun6V4ActiveTween = genv.Kaitun6V4ActiveTween

	if kaitun6V4ActiveTween ~= v3 and type(kaitun6V4ActiveTween) == "table" then
		local stop = kaitun6V4ActiveTween.Stop

		if type(stop) == "function" then
			pcall(stop, kaitun6V4ActiveTween)
		end
	end
end

tbl8.Step = function(arg, arg2)
	local v3, v4 = tbl8.ValidateLocalJob(arg)

	if not v3 and not tbl8.TryReacquireLocalCharacter(arg) then
		arg.State = "Respawning"
		arg.Reason = v4
		arg.HoldKind = nil
		arg.HoldCFrame = nil
		return
	end

	if not tbl8.IsFiniteNumber(arg2) or arg2 < 0 then
		tbl8.Fail(arg, "Heartbeat delta time is invalid")
		return
	end
	local v5, v6 = tbl8.GetCurrentUprightCFrame(arg)
	if not v5 then
		tbl8.Fail(arg, v6)
		return
	end
	tbl8.ApplyNoclip(arg, arg2)
	tbl8.EnforceUprightState(arg)

	if arg.State == "Holding" and not tbl8.TryResumeFromHolding(arg) then
		local v7, v8 = tbl8.ApplyCharacterCFrame(arg, arg.HoldCFrame)

		if not v7 then
			tbl8.Fail(arg, v8)
		end

		return
	end

	local v7, v8, v9, v10 = tbl8.ResolveTargetFrame(arg.TargetState)

	if v9 or not v7 then
		local v11, v12 = tbl8.EnterHolding(arg, v9 or "Lost", v10 or "Target CFrame is unavailable", v5)

		if not v11 then
			tbl8.Fail(arg, v12)
		end

		return
	end

	local v11, v12 = tbl8.BuildDestination(arg, v7, v8)
	if not v11 then
		tbl8.Fail(arg, v12)
		return
	end
	local magnitude = (v11.Position - v5.Position).Magnitude
	if not tbl8.IsFiniteNumber(magnitude) then
		tbl8.Fail(arg, "Calculated Tween distance is invalid")
		return
	end
	local speed = arg.Speed

	if magnitude < n then
		speed = 1000
	end

	local n4 = speed * arg2
	local cframe

	if magnitude <= n4 then
		arg.State = arg.TargetState.IsCharacterTarget and "Tracking" or "Arrived"
		cframe = v11
	else
		local n5 = math.clamp(n4 / magnitude, 0, 1)
		local v13 = v5:Lerp(v11, n5)
		cframe = CFrame.lookAlong(v13.Position, tbl8.GetHorizontalDirection(v13.LookVector, arg.CharacterDirection), Vector3.new(0, 1, 0))
		arg.State = "Moving"
	end

	if not tbl8.IsFiniteCFrame(cframe) then
		tbl8.Fail(arg, "Calculated character CFrame is invalid")
		return
	end
	local v13, v14 = tbl8.ApplyCharacterCFrame(arg, cframe)
	if not v13 then
		tbl8.Fail(arg, v14)
		return
	end
	arg.CharacterDirection = tbl8.GetHorizontalDirection(cframe.LookVector, arg.CharacterDirection)
	arg.LastDestination = v11
	arg.Reason = nil
end

tbl8.Follow = function(arg)
	while true do
		if v2 == arg and not arg.Cleaned then
			local result = RunService.Heartbeat:Wait()
			if not (v2 ~= arg or arg.Cleaned) then
				tbl8.Step(arg, result)
				continue
			end
		end

		break
	end
end

tbl8.FollowProtected = function(arg)
	local ok, result = pcall(tbl8.Follow, arg)

	if not ok and not arg.Cleaned then
		tbl8.Fail(arg, "Tween worker error: " .. tostring(result))
	end
end

tbl8.CreateJob = function(arg, arg2, arg3, arg4)
	local v3, v4, v5, v6 = tbl8.GetLocalCharacter()
	if not v3 then
		return nil, v6
	end

	if arg2 == nil then
		arg2 = 150
	end

	if not tbl8.IsFiniteNumber(arg2) or arg2 <= 0 then
		return nil, "Speed must be a finite number greater than zero"
	end
	local n4 = math.min(arg2, 150)
	local v7, v8 = tbl8.CreateTargetState(arg)
	if not v7 then
		return nil, v8
	end
	local v9, v10 = tbl8.ResolveOffset(arg3, v7.IsCharacterTarget)
	if not v9 then
		return nil, v10
	end

	local ok, result = pcall(function()
		return v3:GetPivot()
	end)

	if not ok or not tbl8.IsFiniteCFrame(result) then
		return nil, "Local character pivot is invalid"
	end
	local v11 = tbl8.GetHorizontalDirection(result.LookVector, Vector3.new(0, 0, -1))
	local cframe = CFrame.lookAlong(result.Position, v11, Vector3.new(0, 1, 0))
	local v12, v13, v14, str = tbl8.ResolveTargetFrame(v7)
	if not v12 and not v14 then
		str = str or "Target CFrame is unavailable"
		return nil, str
	end

	local kaitun6V4ActiveTween = setmetatable({
		Character = v3,
		Humanoid = v4,
		RootPart = v5,
		TargetState = v7,
		OffsetCFrame = v9,
		Speed = n4,
		KeepSeated = arg4 == true,
		State = "Starting",
		Reason = nil,
		Running = true,
		Cleaned = false,
		HoldKind = nil,
		HoldCFrame = nil,
		LastDestination = nil,
		CharacterDirection = v11,
		TargetDirection = v11,
		CollisionStates = {},
		NoclipParts = {},
		NoclipClock = 0,
		NoclipDirty = true,
		DescendantConnection = nil,
		OriginalAutoRotate = nil,
		AutoRotateChanged = false,
	}, index)

	local v15 = nil

	if v12 then
		local v16
		v15, v16 = tbl8.BuildDestination(kaitun6V4ActiveTween, v12, v13)
		if not v15 then
			return nil, v16
		end
	end

	tbl8.StopActiveJob("Replaced by a new Tween")
	v2 = kaitun6V4ActiveTween
	genv.Kaitun6V4ActiveTween = kaitun6V4ActiveTween
	tbl8.PrepareCharacter(kaitun6V4ActiveTween)
	local v16, v17

	if v14 or not v15 then
		v16, v17 = tbl8.EnterHolding(kaitun6V4ActiveTween, v14 or "Lost", str or "Target CFrame is unavailable", cframe)
	else
		kaitun6V4ActiveTween.State = "Moving"
		v16, v17 = tbl8.ApplyCharacterCFrame(kaitun6V4ActiveTween, cframe)
	end

	if not v16 then
		tbl8.Fail(kaitun6V4ActiveTween, v17)
		return nil, v17
	end
	kaitun6V4ActiveTween.LastDestination = v15
	task.spawn(tbl8.FollowProtected, kaitun6V4ActiveTween)
	return kaitun6V4ActiveTween, nil
end

index.Stop = function(arg)
	if type(arg) ~= "table" or getmetatable(arg) ~= index then
		return false, "Stop must be called with a Tween controller"
	end
	local ok, result, result2 = pcall(tbl8.StopJob, arg, "Stopped")
	if not ok then
		return false, "Tween Stop error: " .. tostring(result)
	end
	return result, result2
end

index.IsRunning = function(arg)
	return type(arg) == "table" and getmetatable(arg) == index and arg.Running and not arg.Cleaned and v2 == arg
end

index.GetReason = function(arg)
	if type(arg) ~= "table" or getmetatable(arg) ~= index then
		return "Invalid Tween controller"
	end
	return arg.Reason
end

index.GetState = function(arg)
	if type(arg) ~= "table" or getmetatable(arg) ~= index then
		return "Invalid"
	end
	return arg.State
end

index2.Stop = function(arg)
	return false, type(arg) == "table" and arg.Reason or "Tween never started"
end

index2.IsRunning = function()
	return false
end

index2.GetState = function()
	return "Failed"
end

index2.GetReason = function(arg)
	return type(arg) == "table" and arg.Reason or "Tween never started"
end

tbl8.CreateNullController = function(arg)
	return setmetatable({ State = "Failed", Reason = arg or "Tween never started", Running = false, Cleaned = true }, index2)
end

Tween = function(arg, arg2, arg3, arg4)
	local v3 = v2
	local ok, result, result2 = pcall(tbl8.CreateJob, arg, arg2, arg3, arg4)

	if not ok then
		if v2 and v2 ~= v3 then
			pcall(tbl8.Fail, v2, "Unexpected Tween creation error")
		end

		local str = "Tween error: " .. tostring(result)
		return tbl8.CreateNullController(str), str
	end

	if not result then
		result2 = result2 or "Tween could not start"
		return tbl8.CreateNullController(result2), result2
	end
	return result, nil
end

tbl8.StopActiveJob("Tween controller reloaded")
local tbl9

tbl9 = {
	Disconnect = function(arg)
		if not arg then
			return false
		end

		return pcall(function()
			arg:Disconnect()
		end)
	end,
	DisconnectAll = function(arg)
		if type(arg) ~= "table" then
			return
		end

		for _, v3 in ipairs(arg) do
			tbl9.Disconnect(v3)
		end

		tbl8.ClearArray(arg)
	end,
	StopRuntime = function(arg)
		if type(arg) ~= "table" then
			return false
		end
		arg.Active = false
		tbl9.Disconnect(arg.Connection)
		arg.Connection = nil
		tbl9.DisconnectAll(arg.WatcherConnections)
		return true
	end,
	ClaimSharedRuntime = function(arg, arg2)
		local v3 = genv[arg]
		local flag = type(v3) == "table" and v3 ~= arg2
		local flag2 = false

		if flag then
			flag2 = tbl9.StopRuntime(v3)
		end

		genv[arg] = arg2
		return flag2
	end,
}

local tbl10

tbl10 = {
	GetRemote = function()
		local remotes = ReplicatedStorage:FindFirstChild("Remotes")
		if not remotes then
			return nil, "Remotes folder is unavailable"
		end
		local commF = remotes:FindFirstChild("CommF_")
		if not commF or not commF:IsA("RemoteFunction") then
			return nil, "CommF_ RemoteFunction is unavailable"
		end
		return commF, nil
	end,
	Invoke = function(...)
		local v3, v4 = tbl10.GetRemote()
		if not v3 then
			return nil, v4
		end
		local v5 = table.pack(...)

		local ok, result = pcall(function()
			return v3:InvokeServer(table.unpack(v5, 1, v5.n))
		end)

		if not ok then
			return nil, "CommF_ invocation failed: " .. tostring(result)
		end
		return result, nil
	end,
	InvokeMany = function(...)
		local v3, v4 = tbl10.GetRemote()
		if not v3 then
			return nil, v4
		end
		local v5 = table.pack(...)

		local ok, result = pcall(function()
			return table.pack(v3:InvokeServer(table.unpack(v5, 1, v5.n)))
		end)

		if not ok then
			return nil, "CommF_ invocation failed: " .. tostring(result)
		end
		return result, nil
	end,
}

local n4 = 120

local tbl11 = {
	TravelToSecondSea = function()
		if tbl2[game.PlaceId] then
			return true, "The player is already in the Second Sea"
		end
		local TravelDressrosa, v3 = tbl10.Invoke("TravelDressrosa")
		if v3 then
			return false, "Traveling to the Second Sea failed: " .. tostring(v3)
		end
		return false, "Requested travel to the Second Sea"
	end,
	TravelToThirdSea = function()
		local n5 = os.clock() + n4
		local v3

		while not tbl3[game.PlaceId] do
			if n5 <= os.clock() then
				if v3 then
					return false, "Travel to the Third Sea timed out: " .. tostring(v3)
				end
				return false, "Travel to the Third Sea timed out"
			end

			local TravelZou, v4 = tbl10.Invoke("TravelZou")

			if v4 then
				warn(tostring(v4))
				v3 = v4
			elseif type(TravelZou) == "string" and TravelZou ~= "" then
				warn(tostring(TravelZou))
				v3 = TravelZou
			end

			task.wait(5)
		end

		return true, "The player is in the Third Sea"
	end,
}

local n5 = 5
local tbl12

tbl12 = {
	APIServerRetryDelay = 2,
	APITeleportResultTimeout = 15,
	APITeleportPollDelay = 0.1,
	APIServerMaxPlayers = 11,
	APIServerSecretKey = "NightHubSerectKey_0001",
	GroupJoinRetryDelay = 1.5,
	GroupJoinResultTimeout = 15,
	GroupJoinPollDelay = 0.1,
	APIModuleUrl = "https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/IDK.luau",
	APIModule = nil,
	APIServerNameMap = {
		FullMoon = "Fullmoon",
		["Cake Prince"] = "CakePrince",
		["Dough King"] = "DoughKing",
		["rip_indra True Form"] = "RipIndra",
		MysticIsland = "Mirage",
		["Cursed Captain"] = "CursedCaptain",
	},
	IsHttpGetAvailable = function()
		local ok, result = pcall(function()
			return game.HttpGet
		end)

		return ok and type(result) == "function"
	end,
	GetServerBrowser = function()
		local serverBrowser = ReplicatedStorage:FindFirstChild("__ServerBrowser")
		if not serverBrowser or not serverBrowser:IsA("RemoteFunction") then
			return nil, "__ServerBrowser RemoteFunction is unavailable"
		end
		return serverBrowser, nil
	end,
	RequestPublicServers = function(arg, arg2, arg3)
		if not tbl12.IsHttpGetAvailable() then
			return nil, nil, "game:HttpGet is unavailable"
		end

		if arg2 ~= "Desc" then
			arg2 = "Asc"
		end

		local str = "https://games.roblox.com/v1/games/" .. tostring(placeId) .. "/servers/Public?sortOrder=" .. arg2 .. "&limit=100"

		if arg3 == true then
			str ..= "&excludeFullGames=true"
		end

		if type(arg) == "string" and arg ~= "" then
			str ..= "&cursor=" .. HttpService:UrlEncode(arg)
		end

		local result

		while true do
			local ok

			ok, result = pcall(function()
				return HttpService:JSONDecode(game:HttpGet(str))
			end)

			if not ok then
				return nil, nil, "Failed to request public servers: " .. tostring(result)
			else
				if type(result) == "table" and type(result.data) == "table" then
					break
				end
				task.wait(5)
			end
		end

		return result.data, result.nextPageCursor, nil
	end,
	TryBrowserTeleport = function(arg, arg2)
		local flooded = nil
		local v3 = nil

		local connection = TeleportService.TeleportInitFailed:Connect(function(arg3, arg4, arg5, arg6, arg7)
			if arg3 ~= localPlayer or arg6 ~= placeId then
				return
			end
			local isTeleportOptions = arg7 and arg7:IsA("TeleportOptions")
			local serverInstanceId = nil

			if isTeleportOptions then
				serverInstanceId = arg7.ServerInstanceId
			end

			if type(serverInstanceId) == "string" and serverInstanceId ~= "" and serverInstanceId ~= arg2 then
				return
			end
			flooded = arg4
			v3 = arg5
		end)

		local ok, result = pcall(function()
			arg:InvokeServer("teleport", arg2)
		end)

		if not ok then
			connection:Disconnect()
			return false, tostring(result)
		end
		local n6 = os.clock() + n5

		while true do
			if flooded == nil and os.clock() < n6 then
				local v4, v5 = tbl12.GetServerFullPrompt()

				if v4 then
					flooded = Enum.TeleportResult.Flooded
					v3 = v5
					break
				else
					task.wait(tbl12.APITeleportPollDelay)
					continue
				end
			end

			break
		end

		connection:Disconnect()
		if flooded ~= nil then
			local v4 = v3 or flooded
			return false, v4(v4)
		end
		return false, "Teleport request to server " .. arg2 .. " was not confirmed"
	end,
	HopNormalServer = function()
		local v3, v4 = tbl12.GetServerBrowser()
		if not v3 then
			return false, v4
		end
		local tbl13 = {}
		local str = ""
		local str2

		for i = 1, 10 do
			local v5, v6
			v5, str, v6 = tbl12.RequestPublicServers(str, "Desc", true)
			if not v5 then
				return false, v6
			end

			for _, v7 in ipairs(v5) do
				if type(v7) == "table" and type(v7.id) == "string" and type(v7.playing) == "number" and type(v7.maxPlayers) == "number" and v7.id ~= game.JobId and v7.playing >= 8 and v7.playing < v7.maxPlayers and not tbl13[v7.id] then
					tbl13[v7.id] = true
					local v8, v9 = tbl12.TryBrowserTeleport(v3, v7.id)
					str2 = tostring(v9)
				end
			end

			if type(str) ~= "string" or str == "" or str == "null" then
				break
			end
		end

		if str2 then
			return false, "Failed to teleport to a normal server: " .. str2
		end
		return false, "No public server with at least " .. tostring(8) .. " player(s) and an open slot was found"
	end,
	RejoinServer = function()
		local jobId = game.JobId
		if type(jobId) ~= "string" or jobId == "" then
			return false, "The current JobId is unavailable"
		end
		local v3, v4 = tbl12.GetServerBrowser()
		if not v3 then
			return false, v4
		end
		local v5, v6 = tbl12.TryBrowserTeleport(v3, jobId)
		return false, "Failed to rejoin server " .. jobId .. ": " .. tostring(v6)
	end,
	GetAPIModule = function()
		if type(tbl12.APIModule) == "table" and type(tbl12.APIModule.HopApi) == "function" then
			return tbl12.APIModule, nil
		end

		if not tbl12.IsHttpGetAvailable() then
			return nil, "game:HttpGet is unavailable"
		end

		if type(loadstring) ~= "function" then
			return nil, "loadstring is unavailable"
		end

		local ok, apiModule = pcall(function()
			local response = game:HttpGet(tbl12.APIModuleUrl)
			local chunk, v3 = loadstring(response)

			if type(chunk) ~= "function" then
				error("Failed to compile HopApi module: " .. tostring(v3))
			end

			return chunk()
		end)

		if not ok then
			return nil, "Failed to load HopApi module: " .. tostring(apiModule)
		end

		if type(apiModule) ~= "table" or type(apiModule.HopApi) ~= "function" then
			return nil, "HopApi module did not return a HopApi function"
		end
		tbl12.APIModule = apiModule
		return apiModule, nil
	end,
	APIServer = function(arg, arg2)
		if type(arg) ~= "string" or arg == "" then
			return false, "NameBoss must be a non-empty string"
		end

		if arg2 == nil then
			arg2 = tbl12.APIServerMaxPlayers
		end

		if not tbl8.IsFiniteNumber(arg2) or arg2 < 1 then
			return false, "MaxPlayers must be a finite number greater than zero"
		end
		local n6 = math.floor(arg2)
		local v3, v4 = tbl12.GetAPIModule()
		if not v3 then
			return false, v4
		end
		local jobId = game.JobId
		local v5 = nil
		local v6 = nil

		local connection = TeleportService.TeleportInitFailed:Connect(function(arg3, arg4, arg5, arg6)
			if arg3 == localPlayer and arg6 == placeId then
				v5 = arg4
				v6 = arg5
			end
		end)

		local v7 = tbl12.APIServerNameMap[arg] or arg
		local tbl13 = { v7, n6 }

		if type(tbl12.APIServerSecretKey) == "string" and tbl12.APIServerSecretKey ~= "" then
			tbl13 = { tbl12.APIServerSecretKey, v7, n6 }
		end

		local ok, result, result2 = pcall(function()
			return v3.HopApi(table.unpack(tbl13, 1, #tbl13))
		end)

		if not ok then
			connection:Disconnect()
			return false, "HopApi failed: " .. tostring(result)
		end

		if result == true then
			local now = os.clock()

			while true do
				local flag = game.JobId == jobId and v5 == nil

				if flag then
					local apiTeleportResultTimeout = tbl12.APITeleportResultTimeout
					flag = os.clock() - now < apiTeleportResultTimeout
				end

				if flag then
					task.wait(tbl12.APITeleportPollDelay)
					continue
				end
				break
			end

			connection:Disconnect()
			if game.JobId ~= jobId then
				result2 = result2 or "HopApi completed the teleport"
				return true, result2
			end

			if v5 == Enum.TeleportResult.Flooded then
				local v8 = v6 or v5
				return false, "HopApi server is full getting another server: " .. v8(v8)
			end

			if v5 ~= nil then
				local v8 = v6 or v5
				return false, "HopApi teleport failed getting another server: " .. v8(v8)
			end
			return false, "HopApi teleport was not confirmed getting another server"
		end

		connection:Disconnect()
		return false, result2 or "HopApi found no matching server"
	end,
	RetryAPIServer = function(arg, arg2, arg3)
		while true do
			if type(arg2) == "function" then
				local ok, result = pcall(arg2)
				if ok and result ~= true then
					break
				end
			end

			local v3, v4 = tbl12.APIServer(arg, arg3)
			if v3 then
				return true, v4
			end
			task.wait(tbl12.APIServerRetryDelay)
		end

		return false, nil
	end,
	GetServerFullPrompt = function()
		local ok, result, result2 = pcall(function()
			local robloxPromptGui = game:GetService("CoreGui"):FindFirstChild("RobloxPromptGui")
			robloxPromptGui = robloxPromptGui and robloxPromptGui:FindFirstChild("promptOverlay")
			if not robloxPromptGui then
				return false, nil
			end

			for _, descendant in ipairs(robloxPromptGui:GetDescendants()) do
				if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
					local str = tostring(descendant.Text or "")
					if string.find(str, "772", 1, true) then
						return true, str
					end
				end
			end

			return false, nil
		end)

		if not ok then
			return false, nil
		end
		return result == true, result2
	end,
	JoinServer = function(arg, arg2, arg3)
		if type(arg) ~= "string" or arg == "" then
			return false, "JobId must be a non-empty string"
		end

		if arg == game.JobId then
			return true, "Already in server " .. arg
		end
		local v3, v4 = tbl12.GetServerBrowser()
		if not v3 then
			return false, v4
		end
		local jobId = game.JobId
		local flooded = nil
		local str = nil

		local connection = TeleportService.TeleportInitFailed:Connect(function(arg4, arg5, arg6, arg7, arg8)
			if arg4 ~= localPlayer then
				return
			end
			local isTeleportOptions = arg8 and arg8:IsA("TeleportOptions")
			local serverInstanceId = nil

			if isTeleportOptions then
				serverInstanceId = arg8.ServerInstanceId
			end

			if type(serverInstanceId) == "string" and serverInstanceId ~= "" and serverInstanceId ~= arg then
				return
			end
			flooded = arg5
			str = arg6
		end)

		local function fn7()
			if connection.Connected then
				connection:Disconnect()
			end
		end

		local n6 = 0
		local v5

		while game.JobId == jobId do
			if type(arg2) == "function" then
				local ok, result = pcall(arg2, arg)
				if not ok or result ~= true then
					fn7()
					return false, "The host cancelled or changed server " .. arg
				end
			end

			n6 += 1
			flooded = nil
			str = nil

			local ok, result = pcall(function()
				v3:InvokeServer("teleport", arg)
			end)

			if not ok then
				str = tostring(result)
			end

			if n6 == 1 or n6 % 10 == 0 then
				warn("Joining group server " .. arg .. " (attempt " .. tostring(n6) .. ")")
			end

			local now = os.clock()
			local exitTo = nil

			while true do
				local flag = ok and game.JobId == jobId and flooded == nil

				if flag then
					local groupJoinResultTimeout = tbl12.GroupJoinResultTimeout
					flag = os.clock() - now < groupJoinResultTimeout
				end

				if flag then
					local v6
					v6, v5 = tbl12.GetServerFullPrompt()

					if v6 then
						exitTo = 2
						break
					elseif type(arg2) ~= "function" then
						task.wait(tbl12.GroupJoinPollDelay)
						continue
					else
						local ok2, result2 = pcall(arg2, arg)
						if not (not ok2 or result2 ~= true) then
							task.wait(tbl12.GroupJoinPollDelay)
							continue
						end
					end
				else
					exitTo = 1
					break
				end

				break
			end

			if exitTo ~= 1 then
				if exitTo ~= 2 then
					fn7()
					return false, "The host cancelled or changed server " .. arg
				end
				flooded = Enum.TeleportResult.Flooded
				str = v5
			end

			if flooded == Enum.TeleportResult.Flooded then
				local flag = false
				local result2 = nil

				if type(arg3) == "function" then
					local ok2, result3
					ok2, result3, result2 = pcall(arg3, arg, str)

					if ok2 then
						flag = result3 == true
					else
						result2 = result3
					end
				end

				fn7()
				if flag then
					return false, "Group server " .. arg .. " is full helper 1 is finding another Full Moon"
				end
				return false, "Group server " .. arg .. " is full" .. (result2 and ": " .. tostring(result2) or "")
			end

			if flooded == Enum.TeleportResult.GameNotFound or flooded == Enum.TeleportResult.GameEnded or flooded == Enum.TeleportResult.Unauthorized then
				fn7()
				local v6 = str or flooded
				return false, "Cannot join group server " .. arg .. ": " .. v6(v6)
			end

			if game.JobId == jobId then
				task.wait(tbl12.GroupJoinRetryDelay)
			end
		end

		fn7()
		return true, "Joined group server " .. arg
	end,
}

local str = "Marines"
local str2 = "Pirates"
local tbl13

tbl13 = {
	JoinSettleDelay = 5,
	IsOnTeam = function(arg)
		local team = localPlayer.Team
		return team ~= nil and team.Name == arg
	end,
	HopAfterTimeout = function(arg)
		local v3, v4 = tbl12.HopNormalServer()
		if not v3 then
			return false, arg .. " (server hop failed: " .. tostring(v4) .. ")"
		end
		return false, arg .. " (" .. tostring(v4) .. ")"
	end,
	Join = function(arg, arg2)
		if arg == nil then
			arg = "Marines"
		end

		if tbl13.IsOnTeam(arg) then
			return true, nil
		end

		if arg2 == nil then
			arg2 = 10
		end

		if not tbl8.IsFiniteNumber(arg2) or arg2 <= 0 then
			return false, "Timeout must be a finite number greater than zero"
		end
		local v3, v4 = tbl10.GetRemote()
		if not v3 then
			return false, v4
		end
		local n6 = os.clock() + arg2
		local v5 = nil

		while true do
			local SetTeam, v6 = tbl10.Invoke("SetTeam", arg)
			v5 = v6 or v5
			if tbl13.IsOnTeam(arg) then
				task.wait(tbl13.JoinSettleDelay)
				return true, nil
			end
			task.wait(0.5)
			if not (n6 <= os.clock()) then
				continue
			end
			break
		end

		if tbl13.IsOnTeam(arg) then
			task.wait(tbl13.JoinSettleDelay)
			return true, nil
		end

		if v5 then
			return tbl13.HopAfterTimeout("Failed to join the " .. arg .. " team: " .. v5)
		end
		return tbl13.HopAfterTimeout("Timed out while joining the " .. arg .. " team")
	end,
}

local n6 = 3
local tbl14

tbl14 = {
	IsEnabled = function(arg)
		return arg ~= nil and (arg:FindFirstChild("HasBuso") ~= nil or arg:FindFirstChild("Buso") ~= nil)
	end,
	Enable = function()
		local character = localPlayer.Character
		if not character then
			return false, "Local character is unavailable"
		end

		if tbl14.IsEnabled(character) then
			return true, nil
		end
		local Buso, v3 = tbl10.Invoke("Buso")
		if v3 then
			return false, v3
		end
		local now = os.clock()

		while os.clock() - now < n6 do
			if tbl14.IsEnabled(localPlayer.Character) then
				return true, nil
			end
			task.wait(0.1)
		end

		return false, "The Buso remote completed, but the character received no Buso marker"
	end,
}

local tbl15

tbl15 = {
	SetAim = function(kaitun6V4AimPosition)
		genv.Kaitun6V4AimPosition = kaitun6V4AimPosition
	end,
	HookAim = function()
		if genv.Kaitun6V4AimHooked then
			return true, nil
		end

		if type(getrawmetatable) ~= "function" or type(setreadonly) ~= "function" or type(newcclosure) ~= "function" or type(getnamecallmethod) ~= "function" then
			return false, "Skill aim hooks are unavailable"
		end
		local v3 = nil

		local ok, result = pcall(function()
			v3 = getrawmetatable(game)
			local namecall = v3.__namecall
			setreadonly(v3, false)

			v3.__namecall = newcclosure(function(...)
				local v4 = table.pack(...)
				local v5 = table.pack(...)
				local kaitun6V4AimPosition = genv.Kaitun6V4AimPosition

				if kaitun6V4AimPosition and getnamecallmethod() == "FireServer" and typeof(v5[1]) == "Instance" and v5[1].Name == "RemoteEvent" and type(v5[2]) ~= "boolean" then
					if typeof(v5[2]) == "CFrame" then
						v5[2] = CFrame.new(kaitun6V4AimPosition)
					else
						v5[2] = kaitun6V4AimPosition
					end

					return namecall(table.unpack(v5, 1, v5.n))
				end

				return namecall(table.unpack(v4, 1, v4.n))
			end)
		end)

		if v3 then
			pcall(setreadonly, v3, true)
		end

		if not ok then
			return false, "Failed to hook the skill aim: " .. tostring(result)
		end
		genv.Kaitun6V4AimHooked = true
		return true, nil
	end,
	PressKey = function(arg)
		local ok, result = pcall(function()
			VirtualInputManager:SendKeyEvent(true, arg, false, game)
			task.wait()
			VirtualInputManager:SendKeyEvent(false, arg, false, game)
		end)

		if not ok then
			return false, "Failed to press " .. tostring(arg) .. ": " .. tostring(result)
		end
		return true, nil
	end,
	CastKeys = function(arg, arg2)
		for _, v3 in ipairs(arg) do
			local v4, v5 = tbl15.PressKey(v3)
			if not v4 then
				return false, v5
			end
			task.wait(arg2)
		end

		return true, nil
	end,
}

local n7 = 60
local n8 = 0.08
local tbl16 = { "Util", "Common", "Remotes", "Assets", "FX" }
local v3 = nil
local v4 = nil
local v5 = nil
local n9 = 0
local tbl17 = { Active = false, Connection = nil, WatcherConnections = {} }
local tbl18

tbl18 = {
	GetNet = function()
		local modules = ReplicatedStorage:FindFirstChild("Modules")
		return modules and modules:FindFirstChild("Net")
	end,
	TrackRemote = function(arg)
		if not arg:IsA("RemoteEvent") then
			return
		end
		local attribute = arg:GetAttribute("Id")
		if attribute == nil then
			return
		end
		v3 = arg
		v4 = attribute
	end,
	ScrambleName = function(arg)
		local n10 = math.floor(Workspace:GetServerTimeNow() / 10 % 10) + 1

		return (string.gsub(arg, ".", function(arg2)
			return string.char(bit32.bxor(string.byte(arg2), n10))
		end))
	end,
	GetLocalAttacker = function()
		local v6, v7, v8, v9 = tbl8.GetLocalCharacter()
		if not v6 then
			return nil, nil, v9
		end

		if not v6:FindFirstChildWhichIsA("Tool") then
			return nil, nil, "Local character has no equipped Tool"
		end
		return v6, v8, nil
	end,
	ResolveHitPart = function(arg, arg2)
		local head = arg:FindFirstChild("Head")
		if head and head:IsA("BasePart") then
			return head
		end
		return arg2
	end,
	CollectMobTargets = function(arg, arg2)
		local enemies = Workspace:FindFirstChild("Enemies")
		if not enemies then
			return nil, nil, "Enemies folder is unavailable"
		end
		local position = arg.Position
		local tbl19 = {}

		for _, child in ipairs(enemies:GetChildren()) do
			if not arg2 or child.Name == arg2 then
				local humanoid = child:FindFirstChildWhichIsA("Humanoid")
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

				if humanoid and humanoid.Health > 0 and humanoidRootPart and humanoidRootPart:IsA("BasePart") and (humanoidRootPart.Position - position).Magnitude <= n7 then
					tbl19[#tbl19 + 1] = { Mob = child, HitPart = tbl18.ResolveHitPart(child, humanoidRootPart), Health = humanoid.Health }
				end
			end
		end

		table.sort(tbl19, function(arg3, arg4)
			return arg3.Health < arg4.Health
		end)

		local tbl20 = {}
		local hitPart = nil

		for i = 1, 2 do
			for _, v6 in ipairs(tbl19) do
				hitPart = hitPart or v6.HitPart
				tbl20[#tbl20 + 1] = { v6.Mob, v6.HitPart }
			end
		end

		if not hitPart then
			if arg2 then
				return nil, tbl20, "No living target named " .. tostring(arg2) .. " is within attack range"
			end
			return nil, tbl20, "No living target is within attack range"
		end

		return hitPart, tbl20, nil
	end,
	FireScrambledHit = function(arg, arg2)
		if not v3 or not v4 or not v5 then
			return true, nil
		end

		if not v3.Parent then
			return true, nil
		end

		local ok, result = pcall(function()
			local v6 = v3

			if type(cloneref) == "function" then
				v6 = cloneref(v3)
			end

			v6:FireServer(tbl18.ScrambleName("RE/RegisterHit"), bit32.bxor(v4 + 909090, v5 * 2), arg, arg2)
		end)

		if not ok then
			return false, "Failed to fire scrambled hit remote: " .. tostring(result)
		end
		return true, nil
	end,
	FireAttackRemotes = function(arg, arg2)
		local v6 = tbl18.GetNet()
		if not v6 then
			return false, "Net module is unavailable"
		end
		local reRegisterAttack = v6:FindFirstChild("RE/RegisterAttack")
		local reRegisterHit = v6:FindFirstChild("RE/RegisterHit")
		if not reRegisterAttack then
			return false, "RegisterAttack remote is unavailable"
		end

		if not reRegisterHit then
			return false, "RegisterHit remote is unavailable"
		end

		local ok, result = pcall(function()
			reRegisterAttack:FireServer(0.08)
			reRegisterHit:FireServer(arg, arg2)
		end)

		if not ok then
			return false, "Failed to fire attack remotes: " .. tostring(result)
		end
		return tbl18.FireScrambledHit(arg, arg2)
	end,
	IsOnCooldown = function()
		return n8 > 0 and os.clock() - n9 < n8
	end,
	IsTransientError = function(arg)
		if arg == "Attack is on cooldown" then
			return true
		end
		return type(arg) == "string" and string.find(arg, "No living target", 1, true) ~= nil
	end,
	WatchRemotes = function()
		tbl9.DisconnectAll(tbl17.WatcherConnections)
		local watcherConnections = tbl17.WatcherConnections

		for _, v6 in ipairs(tbl16) do
			local v7 = ReplicatedStorage:FindFirstChild(v6)

			if v7 then
				for _, child in ipairs(v7:GetChildren()) do
					tbl18.TrackRemote(child)
				end

				local ok, result = pcall(function()
					return v7.ChildAdded:Connect(tbl18.TrackRemote)
				end)

				if ok then
					watcherConnections[#watcherConnections + 1] = result
				end
			end
		end

		return true, nil
	end,
	RefreshSeed = function()
		local v6 = tbl18.GetNet()
		local seed = v6 and v6:FindFirstChild("seed")
		if not seed then
			return false, "Seed remote is unavailable"
		end

		local ok, result = pcall(function()
			return seed:InvokeServer()
		end)

		if not ok then
			return false, "Failed to invoke the seed remote: " .. tostring(result)
		end
		v5 = result
		return true, nil
	end,
	Attack = function(arg)
		if tbl18.IsOnCooldown() then
			return false, "Attack is on cooldown"
		end
		local v6, v7, v8 = tbl18.GetLocalAttacker()
		if not v7 then
			return false, v8
		end
		local v9, v10, v11 = tbl18.CollectMobTargets(v7, arg)
		if not v9 then
			return false, v11
		end
		n9 = os.clock()
		return tbl18.FireAttackRemotes(v9, v10)
	end,
	AttackPlayer = function(arg)
		if tbl18.IsOnCooldown() then
			return false, "Attack is on cooldown"
		end

		if typeof(arg) ~= "Instance" or not arg:IsA("Player") or arg == localPlayer then
			return false, "Target player is invalid"
		end
		local v6, v7, v8 = tbl18.GetLocalAttacker()
		if not v7 then
			return false, v8
		end
		local character = arg.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		if not character or not humanoid or humanoid.Health <= 0 or not humanoidRootPart or not humanoidRootPart:IsA("BasePart") then
			return false, "Target player character is unavailable or dead"
		end

		if n7 < (humanoidRootPart.Position - v7.Position).Magnitude then
			return false, "Target player is outside attack range"
		end
		local v9 = tbl18.ResolveHitPart(character, humanoidRootPart)
		local tbl19 = {}

		for i = 1, 2 do
			tbl19[#tbl19 + 1] = { character, v9 }
		end

		n9 = os.clock()
		return tbl18.FireAttackRemotes(v9, tbl19)
	end,
	Start = function(arg)
		if arg ~= nil and type(arg) ~= "string" then
			return false, "MobName must be a string or nil"
		end
		tbl18.Stop()

		local ok, connection = pcall(function()
			return RunService.Heartbeat:Connect(function()
				if not tbl17.Active then
					return
				end
				tbl18.Attack(arg)
			end)
		end)

		if not ok then
			return false, "Failed to start the attack loop: " .. tostring(connection)
		end
		tbl17.Active = true
		tbl17.Connection = connection
		return true, nil
	end,
	Stop = function()
		tbl17.Active = false
		tbl9.Disconnect(tbl17.Connection)
		tbl17.Connection = nil
		return true, nil
	end,
	IsRunning = function()
		return tbl17.Active and tbl17.Connection ~= nil
	end,
}

tbl9.ClaimSharedRuntime("Kaitun6V4AttackRuntime", tbl17)
local flag = type(isnetworkowner) == "function" and isnetworkowner or nil
local tbl19

tbl19 = {
	ResolveAnchor = function(arg, arg2)
		local v6, v7 = tbl8.CreateTargetState(arg)
		if not v6 then
			return nil, v7
		end
		local n10, v8, v9, v10 = tbl8.ResolveTargetFrame(v6)
		if v9 or not n10 then
			return nil, v10 or "Target CFrame is unavailable"
		end

		if not v8 then
			local rotation = arg2.Rotation
			n10 = CFrame.new(n10.Position) * rotation
		end

		return n10, nil
	end,
	HasNetworkOwnership = function(arg)
		if not flag then
			return false, "The isnetworkowner function is unavailable"
		end

		if not arg or not arg:IsA("BasePart") or not arg.Parent then
			return false, "Mob HumanoidRootPart is unavailable"
		end
		local ok, result = pcall(flag, arg)
		if not ok then
			return false, "The isnetworkowner check failed: " .. tostring(result)
		end
		return result == true, nil
	end,
	ResolveTargetModel = function(arg)
		if typeof(arg) == "Instance" and arg:IsA("Model") then
			return arg
		end
		return nil
	end,
	PullMob = function(arg, cFrame)
		return pcall(function()
			arg.CanCollide = false
			arg.CFrame = cFrame
			arg.AssemblyLinearVelocity = Vector3.zero
			arg.AssemblyAngularVelocity = Vector3.zero
		end)
	end,
	Gather = function(arg, arg2, arg3)
		if arg2 ~= nil and type(arg2) ~= "string" then
			return 0, "MobName must be a string or nil"
		end

		if arg3 == nil then
			arg3 = 350
		end

		if not tbl8.IsFiniteNumber(arg3) or arg3 <= 0 then
			return 0, "Range must be a finite number greater than zero"
		end

		if not flag then
			return 0, "isnetworkowner is unavailable"
		end
		local v6, v7, v8, v9 = tbl8.GetLocalCharacter()
		if not v6 or not v8 then
			return 0, v9
		end

		local ok, result = pcall(function()
			return v6:GetPivot()
		end)

		if not ok or not tbl8.IsFiniteCFrame(result) then
			return 0, "Local character pivot is invalid"
		end
		local v10, v11 = tbl19.ResolveAnchor(arg, result)
		if not v10 then
			return 0, v11
		end
		local enemies = Workspace:FindFirstChild("Enemies")
		if not enemies then
			return 0, "Enemies folder is unavailable"
		end
		local v12 = tbl19.ResolveTargetModel(arg)
		local position = v8.Position
		local n10 = 0
		local str3 = nil

		for _, child in ipairs(enemies:GetChildren()) do
			if child ~= v12 and (not arg2 or child.Name == arg2) then
				local humanoid = child:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

				if humanoid and humanoid.Health > 0 and humanoidRootPart and humanoidRootPart:IsA("BasePart") and (humanoidRootPart.Position - position).Magnitude <= arg3 then
					local v13, v14 = tbl19.HasNetworkOwnership(humanoidRootPart)

					if v13 then
						local v15, v16 = tbl19.PullMob(humanoidRootPart, v10)

						if v15 then
							n10 += 1
						else
							str3 = "Failed to gather " .. child.Name .. ": " .. tostring(v16)
						end
					else
						str3 = v14 or str3
					end
				end
			end
		end

		return n10, str3
	end,
}

local flag2 = type(firetouchinterest) == "function" and firetouchinterest or nil
local tbl20

tbl20 = {
	GetAliveRoot = function()
		local v6, v7, v8, v9 = tbl8.GetLocalCharacter()
		if not v6 or not v8 then
			return nil, nil, v9
		end
		return v6, v8, nil
	end,
	WaitForAliveRoot = function()
		local v6, v7

		while true do
			v6, v7 = tbl20.GetAliveRoot()

			if v6 then
				break
			else
				task.wait(0.1)
			end
		end

		return v6, v7
	end,
	GetHealthRatio = function()
		local character = localPlayer.Character
		character = character and character:FindFirstChildOfClass("Humanoid")
		if not character or character.MaxHealth <= 0 then
			return 1
		end
		return character.Health / character.MaxHealth
	end,
	WaitForRespawnIfDead = function()
		if tbl20.GetAliveRoot() then
			return false
		end
		tbl20.WaitForAliveRoot()
		return true
	end,
	PreventSit = function(arg)
		arg = arg and arg:FindFirstChildOfClass("Humanoid")

		if arg and arg.Sit then
			arg.Sit = false
			arg:ChangeState(Enum.HumanoidStateType.GettingUp)
		end
	end,
	HasItem = function(arg)
		if type(arg) ~= "string" or arg == "" then
			return false
		end
		local backpack = localPlayer:FindFirstChild("Backpack")
		if backpack and backpack:FindFirstChild(arg) then
			return true
		end
		local character = localPlayer.Character
		return character ~= nil and character:FindFirstChild(arg) ~= nil
	end,
	IsMeleeTool = function(arg)
		if typeof(arg) ~= "Instance" or not arg:IsA("Tool") then
			return false
		end
		return arg:GetAttribute("WeaponType") == "Melee" or arg.ToolTip == "Melee"
	end,
	TryEquipTool = function(arg, arg2, arg3, arg4, arg5)
		for i = 1, 10 do
			if not arg.Parent or arg2.Health <= 0 then
				return nil, "Local character became unavailable while equipping " .. arg4
			end

			if not arg3.Parent then
				return nil, "The selected " .. arg4 .. " tool became unavailable"
			end

			local ok, result = pcall(function()
				arg2:EquipTool(arg3)
			end)

			if not ok then
				return nil, "Failed to equip " .. arg4 .. ": " .. tostring(result)
			end
			RunService.Heartbeat:Wait()
			local tool = arg:FindFirstChildOfClass("Tool")
			if arg5(tool) then
				return tool, nil
			end
		end

		return nil, "Humanoid:EquipTool did not move " .. arg4 .. " into Character"
	end,
	EquipMelee = function()
		local character = localPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if not character or not humanoid or humanoid.Health <= 0 then
			return nil, "Local humanoid is unavailable or dead"
		end
		local tool = character:FindFirstChildOfClass("Tool")
		if tbl20.IsMeleeTool(tool) then
			return tool, nil
		end
		local backpack = localPlayer:FindFirstChild("Backpack")

		if backpack then
			for _, child in ipairs(backpack:GetChildren()) do
				if tbl20.IsMeleeTool(child) then
					return tbl20.TryEquipTool(character, humanoid, child, "Melee", tbl20.IsMeleeTool)
				end
			end
		end

		return nil, "No Melee tool was found in the Backpack or Character"
	end,
	EquipItem = function(arg)
		if type(arg) ~= "string" or arg == "" then
			return nil, "Item name must be a non-empty string"
		end
		local v6 = tbl20.WaitForAliveRoot()
		local humanoid = v6:FindFirstChildOfClass("Humanoid")
		if not humanoid or humanoid.Health <= 0 then
			return nil, "Local humanoid is unavailable or dead"
		end
		local v7 = v6:FindFirstChild(arg)
		if v7 and v7:IsA("Tool") then
			return v7, nil
		end
		local backpack = localPlayer:FindFirstChild("Backpack")
		backpack = backpack and backpack:FindFirstChild(arg)
		if not backpack or not backpack:IsA("Tool") then
			return nil, arg .. " was not found in Backpack or Character"
		end

		return tbl20.TryEquipTool(v6, humanoid, backpack, arg, function(arg2)
			return typeof(arg2) == "Instance" and arg2:IsA("Tool") and arg2.Name == arg
		end)
	end,
}

local n10 = 2000
local n11 = 1500
local cframe = CFrame.new(0, 5, 0)
local flag3 = false

local tbl21 = {
	{
		Vector3.new(61163.85, 5.337033, 1819.784),
		Vector3.new(3863.9893, 5.457043, -1929.5609),
		Vector3.new(-4625.7827, 930.5339, -1702.791),
		Vector3.new(-7923.1855, 5565.5625, -378.75677),
	},
	{
		Vector3.new(-315.51932, 331.89066, 614.8649),
		Vector3.new(2288.1086, 15.181684, 842.8977),
		Vector3.new(861.2258, 130.80856, 32849.61),
		Vector3.new(-6493.257, 116.21698, -111.39042),
	},
	{
		Vector3.new(-12548.324, 341.781, -7487.3125),
		Vector3.new(-5037.7803, 314.54593, -3145.043),
		Vector3.new(5650.301, 1082.4382, -349.40088),
	},
}

local tbl22 = {
	["Flower 1"] = true,
	["Flower 2"] = true,
	["Flower 3"] = true,
	["Fist of Darkness"] = true,
	["Core Brain"] = true,
	Microchip = true,
	["Hellfire Torch"] = true,
}

local tbl23

tbl23 = {
	GetSeaIndex = function()
		if tbl[placeId] then
			return 1
		end

		if tbl2[placeId] then
			return 2
		end

		if tbl3[placeId] then
			return 3
		end
		return nil
	end,
	HorizontalDistance = function(arg, arg2)
		local x = arg2.X
		return (Vector3.new(arg.X, 0, arg.Z) - Vector3.new(x, 0, arg2.Z)).Magnitude
	end,
	ResolveTargetCFrame = function(arg)
		local character = localPlayer.Character
		if not character or not character.Parent then
			return nil, "Local character is unavailable"
		end

		local ok, result = pcall(function()
			return character:GetPivot()
		end)

		if not ok or not tbl8.IsFiniteCFrame(result) then
			return nil, "Local character pivot is invalid"
		end
		return tbl19.ResolveAnchor(arg, result)
	end,
	IsWeaponTool = function(arg)
		if typeof(arg) ~= "Instance" or not arg:IsA("Tool") then
			return false
		end
		local attribute = arg:GetAttribute("WeaponType")
		local toolTip = arg.ToolTip
		return attribute == "Melee" or attribute == "Sword" or attribute == "Gun" or toolTip == "Melee" or toolTip == "Sword" or toolTip == "Gun"
	end,
	IsProtectedTool = function(arg, arg2)
		if not arg:IsA("Tool") then
			return false
		end

		if string.find(string.lower(arg.Name), "fruit", 1, true) then
			return true
		end

		if tbl22[arg.Name] == true then
			return true
		end
		return arg2 and arg.Name ~= "Tool" and not tbl23.IsWeaponTool(arg) and arg.ToolTip == "" and arg:FindFirstChildOfClass("RemoteFunction") == nil
	end,
	HasProtectedTool = function()
		local tbl24 = { Instance = localPlayer.Character, Name = "Character", ProtectUnknown = false }

		for _, v6 in ipairs({ { Instance = localPlayer:FindFirstChild("Backpack"), Name = "Backpack", ProtectUnknown = true }, tbl24 }) do
			local instance = v6.Instance

			if instance then
				for _, child in ipairs(instance:GetChildren()) do
					if tbl23.IsProtectedTool(child, v6.ProtectUnknown) then
						return true, child.Name, v6.Name
					end
				end
			end
		end

		return false, nil, nil
	end,
	CanReset = function()
		local v6, v7, v8 = tbl23.HasProtectedTool()
		if v6 then
			return false, "Reset is disabled while carrying protected tool " .. tostring(v7) .. " (" .. tostring(v8) .. ")"
		end
		return true, nil
	end,
	RequestBestEntrance = function(arg, arg2)
		local v6 = tbl23.GetSeaIndex()
		v6 = v6 and tbl21[v6]
		if not v6 then
			return false, nil, "No entrance table exists for the current sea"
		end
		local v7 = tbl23.HorizontalDistance(arg.Position, arg2)
		if v7 < n10 then
			return true, nil, nil
		end
		local v8 = nil

		for _, v9 in ipairs(v6) do
			local v10 = tbl23.HorizontalDistance(v9, arg2)

			if v10 < v7 then
				v7 = v10
				v8 = v9
			end
		end

		if not v8 then
			return true, nil, nil
		end
		tbl8.StopActiveJob("Using requestEntrance")
		local requestEntrance, v9 = tbl10.Invoke("requestEntrance", v8)
		if v9 then
			return false, nil, v9
		end
		task.wait(0.25)
		return true, v8, nil
	end,
	GetNearestSpawn = function(arg)
		local worldOrigin = Workspace:FindFirstChild("_WorldOrigin")
		worldOrigin = worldOrigin and worldOrigin:FindFirstChild("PlayerSpawns")
		local team = localPlayer.Team
		if not team then
			return nil, nil, "The player has not joined a team"
		end
		worldOrigin = worldOrigin and worldOrigin:FindFirstChild(team.Name)
		if not worldOrigin then
			return nil, nil, "No spawn folder exists for the " .. team.Name .. " team"
		end
		local n12 = 2000
		local v6 = nil
		local v7 = nil

		for _, child in ipairs(worldOrigin:GetChildren()) do
			local ok, result = pcall(function()
				return child:GetPivot()
			end)

			if ok and tbl8.IsFiniteCFrame(result) then
				local v8 = tbl23.HorizontalDistance(result.Position, arg)

				if v8 <= n12 then
					v6 = child
					n12 = v8
					v7 = result
				end
			end
		end

		if not v6 then
			return nil, nil, "No suitable spawn exists near the target"
		end
		return v6, v7, nil
	end,
	ClaimSpawn = function(arg, arg2, arg3, arg4, arg5)
		if not tbl8.IsFiniteCFrame(arg3) then
			return false, "Spawn CFrame is invalid"
		end
		local v6, v7 = Tween(arg3 * cframe, 300)
		if v7 then
			return false, "Failed to Tween toward " .. arg2 .. " while claiming it: " .. tostring(v7)
		end

		while true do
			if not arg4.Parent or not arg5.Parent or arg5.Health <= 0 then
				v6:Stop()
				return false, "Character died before the spawn point was accepted", true
			end

			if not v6:IsRunning() then
				return false, v6:GetReason() or "Tween stopped before the spawn point was accepted"
			end
			local SetLastSpawnPoint, v8 = tbl10.Invoke("SetLastSpawnPoint", arg2)
			if v8 then
				v6:Stop()
				return false, v8
			end
			task.wait()
			if arg.Value ~= arg2 then
				continue
			end
			break
		end

		v6:Stop()
		return true, nil
	end,
	WaitForAliveCharacter = function(arg)
		local v6, v7, v8

		while true do
			v6, v7, v8 = tbl8.GetLocalCharacter()
			if not (v6 and v7 and v8 and v6 ~= arg) then
				task.wait(0.1)
				continue
			end
			break
		end

		return v6, v8, v7
	end,
	RunResetTeleport = function(arg)
		local v6, v7 = tbl23.ResolveTargetCFrame(arg)
		if not v6 then
			return false, v7
		end
		local v8, v9, v10 = tbl23.WaitForAliveCharacter(nil)
		local v11, str3, v12 = tbl23.RequestBestEntrance(v9, v6.Position)
		if not v11 then
			return false, v12
		end
		local v13, v14, v15 = tbl23.WaitForAliveCharacter(nil)

		if tbl23.HorizontalDistance(v14.Position, v6.Position) < n10 then
			if str3 then
				return true, "Target is close enough after requestEntrance to continue with Tween"
			end
			return true, "Target is close enough to continue with Tween"
		end

		local v16, v17 = tbl23.CanReset()
		if not v16 then
			warn(tostring(v17))
			return true, v17 .. " continue with Tween"
		end
		local v18, v19, v20 = tbl23.GetNearestSpawn(v6.Position)

		if not v18 then
			str3 = str3 and " after requestEntrance" or ""
			local str4 = v20 .. str3
			warn(tostring(str4))
			return true, str4 .. " continue with Tween"
		end

		local data = localPlayer:WaitForChild("Data", 10)
		data = data and data:WaitForChild("LastSpawnPoint", 10)
		if not data then
			return false, "Data.LastSpawnPoint did not load in time"
		end
		str3 = str3 and " using requestEntrance" or ""
		local result

		while true do
			local v21, v22, v23 = tbl23.ClaimSpawn(data, v18.Name, v19, v13, v15)
			if not v21 and not v23 then
				return false, v22
			end

			if v23 then
				warn(tostring(v22))
			else
				local ok

				ok, result = pcall(function()
					v15.Health = 0
				end)

				if not ok then
					break
				end
			end

			local v24, v25, v26 = tbl23.WaitForAliveCharacter(v13)
			if tbl23.HorizontalDistance(v25.Position, v19.Position) <= n11 then
				return true, string.format("Respawned at %s%s", v18.Name, str3)
			end
			v15 = v26
			v13 = v24
		end

		return false, "Failed to reset the character: " .. tostring(result)
	end,
	ResetTeleport = function(arg)
		if flag3 then
			return false, "ResetTeleport is already running"
		end
		flag3 = true
		local ok, result, result2 = pcall(tbl23.RunResetTeleport, arg)
		flag3 = false
		if not ok then
			return false, "ResetTeleport error: " .. tostring(result)
		end
		return result, result2
	end,
	StopJob = function(arg)
		if arg and arg:IsRunning() then
			arg:Stop()
		end
	end,
	Travel = function(arg, arg2, arg3)
		local v6, v7 = tbl23.ResolveTargetCFrame(arg)
		if not v6 then
			return tbl8.CreateNullController(v7), v7
		end
		local v8, v9 = tbl8.ResolveOffset(arg3)
		if not v8 then
			return tbl8.CreateNullController(v9), v9
		end
		local v10, v11 = tbl23.ResetTeleport(v6 * v8)
		if not v10 then
			return tbl8.CreateNullController(v11), v11
		end
		tbl20.WaitForAliveRoot()
		return Tween(arg, arg2, arg3)
	end,
	MoveToPosition = function(arg, arg2)
		if typeof(arg) ~= "Vector3" then
			return false, "Move position must be a Vector3"
		end

		if arg2 == nil then
			arg2 = 10
		end

		if not tbl8.IsFiniteNumber(arg2) or arg2 <= 0 then
			return false, "Tolerance must be a finite number greater than zero"
		end
		local v6, v7 = tbl23.Travel(arg)
		if v7 then
			return false, v7
		end

		while true do
			local v8
			v8, v8 = tbl20.WaitForAliveRoot()

			if (v8.Position - arg).Magnitude <= arg2 then
				tbl23.StopJob(v6)
				return true, nil
			else
				if not v6:IsRunning() then
					break
				end
				task.wait(0.25)
			end
		end

		return false, v6:GetReason() or "Tween stopped before reaching the position"
	end,
	MoveToPart = function(arg, arg2)
		if typeof(arg) ~= "Instance" or not arg:IsA("BasePart") or not arg.Parent then
			return false, "Target part is unavailable"
		end

		if arg2 == nil then
			arg2 = 10
		end

		local v6, v7 = tbl23.Travel(arg)
		if v7 then
			return false, v7
		end

		while true do
			if not arg.Parent then
				tbl23.StopJob(v6)
				return false, "Target part was removed while moving"
			else
				local v8, v9, v10 = tbl20.GetAliveRoot()
				if not v8 or not v9 then
					tbl23.StopJob(v6)
					return false, v10
				end

				if (v9.Position - arg.Position).Magnitude <= arg2 then
					tbl23.StopJob(v6)
					return true, nil
				end

				if not v6:IsRunning() then
					break
				end
				task.wait(0.25)
			end
		end

		return false, v6:GetReason() or "Tween stopped before reaching the target part"
	end,
}

local n12 = 0.6
local n13 = 0.4
local str3 = "4H"

local tbl24 = {
	"Dressrosa",
	"GhostShipInterior",
	"CircleIsland",
	"GraveIsland",
	"GreenBit",
	"ForgottenIsland",
	"SnowMountain",
	"IceCastle",
	"DarkbeardArena",
	"Mini1",
	"Mini2",
}

local tbl25

tbl25 = {
	IsCollectable = function(arg)
		return arg ~= nil and arg.Parent ~= nil and not arg:GetAttribute("IsDisabled") and arg:FindFirstChild("TouchInterest", true) ~= nil
	end,
	GetPosition = function(arg)
		if not arg or not arg.Parent then
			return nil
		end

		if arg:IsA("BasePart") then
			return arg.Position
		end

		local ok, result = pcall(function()
			return arg:GetPivot()
		end)

		if not ok or not tbl8.IsFiniteCFrame(result) then
			return nil
		end
		return result.Position
	end,
	FindMap = function(arg)
		local map = Workspace:FindFirstChild("Map")
		return map and map:FindFirstChild(arg)
	end,
	GetMapPosition = function(arg)
		local v6 = tbl25.FindMap(arg)
		if not v6 then
			return nil
		end

		local ok, result = pcall(function()
			return v6:GetPivot()
		end)

		if ok and tbl8.IsFiniteCFrame(result) then
			return result.Position
		end
		local basePart = v6:FindFirstChildWhichIsA("BasePart", true)
		return basePart and basePart.Position or nil
	end,
	ScanMap = function(arg)
		local tbl26 = {}
		local v6 = tbl25.FindMap(arg)
		if not v6 then
			return tbl26
		end

		for _, v7 in ipairs(CollectionService:GetTagged("_ChestTagged")) do
			if v7:IsDescendantOf(v6) and tbl25.IsCollectable(v7) then
				tbl26[#tbl26 + 1] = v7
			end
		end

		return tbl26
	end,
	FindNearest = function(arg, arg2, arg3)
		local huge = math.huge
		local v6 = nil
		local v7 = nil

		for _, v8 in ipairs(arg) do
			if v8.Parent and not arg3[v8] then
				local v9 = tbl25.GetPosition(v8)

				if v9 then
					local magnitude = (v9 - arg2.Position).Magnitude

					if magnitude < huge then
						huge = magnitude
						v6 = v8
						v7 = v9
					end
				end
			end
		end

		return v6, v7
	end,
	Touch = function(arg, arg2)
		if not flag2 then
			return false, "The firetouchinterest function is unavailable"
		end
		local flag4 = false

		local ok, result = pcall(function()
			for _, descendant in ipairs(arg:GetDescendants()) do
				if descendant:IsA("TouchTransmitter") then
					local parent = descendant.Parent

					if parent and parent:IsA("BasePart") then
						flag2(arg2, parent, 0)
						flag2(arg2, parent, 1)
						flag4 = true
					end
				end
			end
		end)

		if not ok then
			return false, "Failed to touch chest: " .. tostring(result)
		end

		if not flag4 then
			return false, "Chest has no usable TouchInterest"
		end
		return true, nil
	end,
	Collect = function(arg, arg2)
		if not tbl25.IsCollectable(arg) then
			return false, "Chest is no longer collectable"
		end
		local v6, v7 = tbl23.MoveToPosition(arg2, 10)
		if not v6 then
			return false, v7
		end
		local n14 = os.clock() + n12
		local n15 = 0
		local v8 = nil

		while true do
			local v9 = task.wait()
			local v10, v11 = tbl20.WaitForAliveRoot()
			tbl20.PreventSit(v10)
			n15 = math.min(n15 + v9, 0.4)
			local n16 = n15 / n13 * 3.1415926535897931 * 2
			v10:PivotTo(CFrame.new(arg2) * CFrame.Angles(n16, 0, 0))
			tbl8.StopVelocity(v11)
			local v12, v13 = tbl25.Touch(arg, v11)

			if not v12 then
				v8 = v13
			end

			if not (not tbl25.IsCollectable(arg) or os.clock() >= n14) then
				continue
			end
			break
		end

		local v9, v10 = tbl20.GetAliveRoot()

		if v9 and v10 then
			v9:PivotTo(CFrame.new(v10.Position))
		end

		if tbl25.IsCollectable(arg) then
			return false, v8 or "Chest did not open"
		end
		return true, nil
	end,
	FarmMap = function(arg, arg2, arg3, arg4)
		if not arg4 and #tbl25.ScanMap(arg) == 0 then
			return arg3
		end

		if arg4 then
			local v6 = tbl25.GetMapPosition(arg)

			if v6 then
				if not tbl23.MoveToPosition(v6, 100) then
					return arg3
				end
				task.wait(1)
			end
		end

		local tbl26 = {}

		while not arg2(arg3) do
			local v6, v7 = tbl20.WaitForAliveRoot()
			local v8, v9 = tbl25.FindNearest(tbl25.ScanMap(arg), v7, tbl26)

			if v8 then
				tbl26[v8] = true

				if tbl25.Collect(v8, v9) then
					arg3 += 1
				end

				task.wait(0.15)
				continue
			end

			break
		end

		return arg3
	end,
	Farm = function(arg, arg2)
		if type(arg) ~= "function" then
			return false, "Chest stop condition must be a function", 0
		end

		if arg2 == nil then
			arg2 = true
		end

		local n14 = 0

		while not arg(n14) do
			tbl20.WaitForAliveRoot()
			local v6 = n14

			for _, v7 in ipairs(tbl24) do
				if not arg(v6) then
					v6 = tbl25.FarmMap(v7, arg, v6, false)
					continue
				end
				break
			end

			if v6 == n14 then
				for _, v7 in ipairs(tbl24) do
					if not arg(v6) then
						v6 = tbl25.FarmMap(v7, arg, v6, true)
						continue
					end
					break
				end
			end

			if v6 == n14 and not arg(v6) then
				if not arg2 then
					task.wait(5)
					n14 = v6
					continue
				end

				local v7, v8 = tbl12.APIServer("4H")
				if not v7 then
					return false, "No chest was collected: " .. tostring(v8), v6
				end
				return false, "Hopping to a " .. str3 .. " server for more chests", v6
			end

			n14 = v6
		end

		return true, nil, n14
	end,
}

local n14 = 10
local n15 = 120
local n16 = 300
local n17 = 3
local n18 = 5
local n19 = 1
local tbl26

tbl26 = {
	CakeMirrorBosses = { ["Cake Prince"] = true, ["Dough King"] = true },
	CakeMirrorIslandRange = 2000,
	CakeMirrorApproachDistance = 250,
	CakeMirrorTeleportDistance = 50,
	CakeMirrorTimeout = 2,
	CakeMirrorSettleDelay = 1,
	CakeMirrorStreamTimeout = 20,
	CakeMirrorStreamPoll = 0.5,
	CakeIslandLocation = "Sea of Treats",
	IsAliveBoss = function(arg, arg2)
		if typeof(arg) ~= "Instance" or not arg:IsA("Model") or arg.Name ~= arg2 then
			return false
		end
		local humanoid = arg:FindFirstChildOfClass("Humanoid")
		return humanoid ~= nil and humanoid.Health > 0
	end,
	Exists = function(arg)
		for _, child in ipairs(ReplicatedStorage:GetChildren()) do
			if tbl26.IsAliveBoss(child, arg) then
				return true
			end
		end

		local enemies = Workspace:FindFirstChild("Enemies")
		if not enemies then
			return false
		end

		for _, child in ipairs(enemies:GetChildren()) do
			if tbl26.IsAliveBoss(child, arg) then
				return true
			end
		end

		return false
	end,
	Find = function(arg)
		local enemies = Workspace:FindFirstChild("Enemies")
		if not enemies then
			return nil, nil, nil
		end

		for _, child in ipairs(enemies:GetChildren()) do
			if tbl26.IsAliveBoss(child, arg) then
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
				local humanoid = child:FindFirstChildOfClass("Humanoid")
				if humanoidRootPart and humanoidRootPart:IsA("BasePart") and humanoid then
					return child, humanoidRootPart, humanoid
				end
			end
		end

		return nil, nil, nil
	end,
	CheckAbort = function(arg, arg2)
		if not arg or os.clock() < arg2 then
			return nil, arg2
		end
		return arg(), os.clock() + n17
	end,
	GetCakeLoaf = function()
		local map = Workspace:FindFirstChild("Map")
		return map and map:FindFirstChild("CakeLoaf")
	end,
	GetCakeMirror = function()
		local bigMirror = tbl26.GetCakeLoaf()
		bigMirror = bigMirror and bigMirror:FindFirstChild("BigMirror")
		bigMirror = bigMirror and bigMirror:FindFirstChild("Main")
		if not bigMirror or not bigMirror:IsA("BasePart") or not bigMirror:FindFirstChild("TouchInterest") then
			return nil
		end
		return bigMirror
	end,
	GetCakeIslandPositions = function()
		local worldOrigin = Workspace:FindFirstChild("_WorldOrigin")
		worldOrigin = worldOrigin and worldOrigin:FindFirstChild("Locations")
		local tbl27 = {}
		if not worldOrigin then
			return tbl27
		end

		for _, child in ipairs(worldOrigin:GetChildren()) do
			if child.Name == tbl26.CakeIslandLocation and child:IsA("BasePart") then
				table.insert(tbl27, child.Position)
			end
		end

		return tbl27
	end,
	WaitForCakeMirror = function()
		local cakeMirrorStreamTimeout = tbl26.CakeMirrorStreamTimeout
		local n20 = os.clock() + cakeMirrorStreamTimeout

		while true do
			local v6 = tbl26.GetCakeMirror()

			if v6 then
				return v6
			else
				task.wait(tbl26.CakeMirrorStreamPoll)
				if os.clock() >= n20 then
					break
				end
			end
		end

		return nil
	end,
	ReachCakeMirror = function()
		local v6
		v6, v6 = tbl20.GetAliveRoot()
		if not v6 then
			return nil
		end
		local v7 = tbl26.GetCakeIslandPositions()
		local position = v6.Position

		table.sort(v7, function(arg, arg2)
			return (arg - position).Magnitude < (arg2 - position).Magnitude
		end)

		for _, v8 in ipairs(v7) do
			if tbl23.ResetTeleport(v8) then
				tbl20.WaitForAliveRoot()
				local v9 = tbl26.WaitForCakeMirror()
				if v9 then
					return v9
				end
			end
		end

		return nil
	end,
	FireCakeMirror = function(arg)
		local v6
		v6, v6 = tbl20.GetAliveRoot()
		if not v6 or not arg.Parent then
			return false
		end
		local position = v6.Position

		if not pcall(function()
			flag2(v6, arg, 0)
			task.wait()
			flag2(v6, arg, 1)
		end) then
			return false
		end

		local cakeMirrorTimeout = tbl26.CakeMirrorTimeout
		local n20 = os.clock() + cakeMirrorTimeout

		repeat
			local v7, v8 = tbl20.GetAliveRoot()

			if not v7 or not v8 then
				tbl20.WaitForAliveRoot()
				task.wait(tbl26.CakeMirrorSettleDelay)
				return false
			end

			if tbl26.CakeMirrorTeleportDistance <= (v8.Position - position).Magnitude then
				task.wait(tbl26.CakeMirrorSettleDelay)
				return true
			end
			task.wait(0.25)
		until os.clock() >= n20

		return false
	end,
	UseCakeMirror = function(arg)
		if not tbl26.CakeMirrorBosses[arg] or not flag2 then
			return false
		end
		local v6 = tbl26.GetCakeMirror() or tbl26.ReachCakeMirror()
		if not v6 then
			return false
		end
		local v7, v8 = tbl20.GetAliveRoot()
		if not v7 or not v8 then
			return false
		end

		if (v8.Position - v6.Position).Magnitude > tbl26.CakeMirrorIslandRange then
			if not tbl23.ResetTeleport(v6.Position) then
				return false
			end
			local v9
			v9, v8 = tbl20.WaitForAliveRoot()
			if not v6.Parent then
				return false
			end
		end

		if tbl26.CakeMirrorIslandRange < (v8.Position - v6.Position).Magnitude then
			return false
		end

		if tbl26.FireCakeMirror(v6) then
			return true
		end
		local v9, v10 = tbl20.GetAliveRoot()
		if not v9 or not v10 or not v6.Parent then
			return false
		end

		if tbl26.CakeMirrorApproachDistance < (v10.Position - v6.Position).Magnitude then
			if not tbl23.MoveToPart(v6, tbl26.CakeMirrorApproachDistance) then
				return false
			end
			tbl20.WaitForAliveRoot()
			if not v6.Parent then
				return false
			end
		end

		return tbl26.FireCakeMirror(v6)
	end,
	TravelToSpawn = function(arg, arg2, arg3)
		local v6, v7 = tbl23.Travel(arg2)
		if v7 then
			return false, "Failed to travel to " .. arg .. ": " .. tostring(v7)
		end
		local n20 = os.clock() + n15
		local n21 = 0

		while true do
			if tbl26.Find(arg) then
				tbl23.StopJob(v6)
				return true, nil
			else
				local v8, v9 = tbl20.GetAliveRoot()

				if not v8 or not v9 then
					tbl23.StopJob(v6)
					tbl20.WaitForAliveRoot()
					return true, nil
				end

				local v10, v11 = tbl26.CheckAbort(arg3, n21)
				if v10 then
					tbl23.StopJob(v6)
					return false, nil, v10
				end

				if (v9.Position - arg2).Magnitude <= n14 then
					tbl23.StopJob(v6)
					return true, nil
				end

				if n20 <= os.clock() then
					tbl23.StopJob(v6)
					return false, "Timed out while traveling to " .. arg
				end

				if not v6:IsRunning() then
					break
				end
				task.wait(0.25)
				n21 = v11
			end
		end

		return false, v6:GetReason() or "Tween stopped while traveling to " .. arg
	end,
	Strike = function(arg, arg2)
		local v6, v7 = tbl20.EquipMelee()
		if not v6 then
			return false, "Failed to equip Melee for " .. arg .. ": " .. tostring(v7)
		end
		local v8, v9 = tbl14.Enable()
		if not v8 then
			return false, "Failed to enable Buso for " .. arg .. ": " .. tostring(v9)
		end
		local v10, v11 = tbl18.Attack(arg)
		if not v10 and not tbl18.IsTransientError(v11) and arg2.Health > 0 then
			return false, "Failed to attack " .. arg .. ": " .. tostring(v11)
		end
		return true, nil
	end,
	Fight = function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
		local cframe2 = arg7 or CFrame.new(0, 15, 0)
		local v6, v7

		if arg6 then
			v6, v7 = Tween(arg2, 300, cframe2)
		else
			v6, v7 = tbl23.Travel(arg2, 300, cframe2)
		end

		if v7 then
			return false, "Failed to follow " .. arg .. ": " .. tostring(v7)
		end
		local now = os.clock()
		local n20 = 0
		local position = nil

		while arg2.Parent and arg3.Parent and arg4.Parent and arg4.Health > 0 do
			local v8, v9 = tbl20.GetAliveRoot()

			if not v8 or not v9 then
				tbl23.StopJob(v6)
				tbl20.WaitForAliveRoot()
				return true, nil
			end

			local v10, v11 = tbl26.CheckAbort(arg5, n20)
			if v10 then
				tbl23.StopJob(v6)
				return false, nil, v10
			end
			local magnitude = (arg3.Position - v9.Position).Magnitude

			if not position or (v9.Position - position).Magnitude >= n19 then
				position = v9.Position
				now = os.clock()
			elseif arg6 and magnitude > n7 and os.clock() - now >= n18 then
				tbl23.StopJob(v6)
				return true, nil
			end

			if magnitude <= n7 then
				local v12, v13 = tbl26.Strike(arg, arg4)

				if not v12 then
					tbl23.StopJob(v6)
					if tbl20.WaitForRespawnIfDead() then
						return true, nil
					end
					return false, v13
				end
			end

			if not v6:IsRunning() and arg4.Health > 0 then
				if arg6 then
					return true, nil
				end
				return false, v6:GetReason() or "Tween stopped while fighting " .. arg
			end

			task.wait()
			n20 = v11
		end

		tbl23.StopJob(v6)
		return true, nil
	end,
	Kill = function(arg, arg2, arg3, arg4, arg5)
		if not tbl26.Exists(arg) then
			return false, arg .. " has not spawned"
		end
		local n20 = os.clock() + n16
		local v6 = nil

		while tbl26.Exists(arg) do
			if n20 <= os.clock() then
				return false, "Timed out while fighting " .. arg
			end
			local v7, v8 = tbl20.WaitForAliveRoot()
			local v9, v10, v11 = tbl26.Find(arg)
			local flag4 = tbl26.CakeMirrorBosses[arg] and v6 ~= v7 and (not v10 or (v10.Position - v8.Position).Magnitude > n7)

			if flag4 then
				local v12 = tbl26.UseCakeMirror(arg)
				local v13 = tbl20.WaitForAliveRoot()
				v9, v10, v11 = tbl26.Find(arg)

				if v12 then
					v6 = v13
				end
			end

			if flag4 then
				task.wait(0.25)
				continue
			end

			if not v9 then
				local v12, v13, v14 = tbl26.TravelToSpawn(arg, arg2, arg3)
				if v14 then
					return false, nil, v14
				end

				if not v12 then
					return false, v13
				end
				task.wait(0.25)
				continue
			end

			local v12, v13, v14 = tbl26.Fight(arg, v9, v10, v11, arg3, arg4, arg5)
			if v14 then
				return false, nil, v14
			end

			if not v12 then
				return false, v13
			end
		end

		return true, nil
	end,
}

local tbl27 = nil
local tbl28

tbl28 = {
	ReplicationTimeout = 20,
	ReplicationPollDelay = 0.5,
	ReplicationReady = false,
	GetModules = function()
		if tbl27 then
			return tbl27, nil
		end
		local itemId = ReplicatedStorage:FindFirstChild("ItemId", true)
		local itemReplication = ReplicatedStorage:FindFirstChild("ItemReplication", true)
		if not itemId or not itemReplication then
			return nil, "The ItemId or ItemReplication module is unavailable"
		end
		local ok, result = pcall(require, itemId)
		if not ok then
			return nil, "Failed to require ItemId: " .. tostring(result)
		end
		local ok2, result2 = pcall(require, itemReplication)
		if not ok2 then
			return nil, "Failed to require ItemReplication: " .. tostring(result2)
		end
		tbl27 = { Id = result, Replication = result2 }
		return tbl27, nil
	end,
	GetId = function(arg, arg2)
		local v6, v7 = tbl28.GetModules()
		if not v6 then
			return nil, v7
		end

		local ok, result = pcall(function()
			return v6.Id.getId(arg, arg2)
		end)

		if not ok or type(result) ~= "table" then
			return nil, "getId failed for " .. tostring(arg)
		end

		local ok2, result2 = pcall(function()
			return result:unwrapOr(nil)
		end)

		if not ok2 or type(result2) ~= "number" then
			return nil, "No item id for " .. tostring(arg) .. " of type " .. tostring(arg2)
		end
		return result2, nil
	end,
	HasAnyReplicatedItem = function()
		if tbl28.ReplicationReady then
			return true
		end
		local v6 = tbl28.GetModules()
		local isOwned = v6 and v6.Replication.IsOwned
		if not isOwned then
			return false
		end
		local ids = v6.Id._IDS

		if type(ids) == "table" and type(ids._ok) == "table" then
			ids = ids._ok
		end

		if type(ids) ~= "table" then
			return false
		end

		for _, v7 in pairs(ids) do
			local id = type(v7) == "table" and v7.Id or nil
			local itemId = type(id) == "table" and id.ItemId or nil

			if type(itemId) == "number" then
				local ok, result = pcall(function()
					return isOwned.readClient(itemId)
				end)

				if ok and result ~= nil then
					tbl28.ReplicationReady = true
					return true
				end
			end
		end

		return false
	end,
	Read = function(arg, arg2, arg3)
		local v6, v7 = tbl28.GetId(arg2, arg3)
		if not v6 then
			return nil, v7
		end
		local v8 = tbl28.GetModules()
		v8 = v8 and v8.Replication[arg]
		if not v8 then
			return nil, "ItemReplication." .. arg .. " is unavailable"
		end
		local replicationTimeout = tbl28.ReplicationTimeout
		local n20 = os.clock() + replicationTimeout

		while true do
			local ok, result = pcall(function()
				return v8.readClient(v6)
			end)

			if not ok then
				return nil, arg .. ".readClient failed for " .. tostring(arg2)
			else
				if result ~= nil then
					tbl28.ReplicationReady = true
					return result, nil
				end

				if tbl28.HasAnyReplicatedItem() then
					return nil, nil
				end

				if n20 <= os.clock() then
					break
				end
				task.wait(tbl28.ReplicationPollDelay)
			end
		end

		return nil, "The inventory has not replicated yet, so " .. arg .. " for " .. tostring(arg2) .. " could not be read"
	end,
	WaitForReplication = function()
		local replicationTimeout = tbl28.ReplicationTimeout
		local n20 = os.clock() + replicationTimeout

		while not tbl28.HasAnyReplicatedItem() do
			if os.clock() >= n20 then
				return false, "The inventory has not replicated yet"
			end
			task.wait(tbl28.ReplicationPollDelay)
		end

		return true, nil
	end,
	ListOwned = function(arg, arg2)
		local v6, v7 = tbl28.GetModules()
		if not v6 then
			return nil, v7
		end
		local v8, v9 = tbl28.WaitForReplication()
		if not v8 then
			return nil, v9
		end
		local ids = v6.Id._IDS

		if type(ids) == "table" and type(ids._ok) == "table" then
			ids = ids._ok
		end

		if type(ids) ~= "table" then
			return nil, "The ItemId table is unavailable"
		end
		local tbl29 = {}

		for _, v10 in pairs(ids) do
			local id = type(v10) == "table" and v10.Id or nil

			if type(id) == "table" and id.Type == arg and type(id.StorageKey) == "string" and (arg2 == nil or string.find(id.StorageKey, arg2) ~= nil) then
				local ok, result = pcall(function()
					return v6.Replication.IsOwned.readClient(id.ItemId)
				end)

				if ok and result == true then
					tbl29[#tbl29 + 1] = id.StorageKey
				end
			end
		end

		return tbl29, nil
	end,
	GetQuantity = function(arg, arg2)
		local Quantity, v6 = tbl28.Read("Quantity", arg, arg2)
		if v6 then
			return nil, v6
		end
		return tonumber(Quantity) or 0, nil
	end,
	IsOwned = function(arg, arg2)
		local IsOwned, v6 = tbl28.Read("IsOwned", arg, arg2)
		if v6 then
			return nil, v6
		end
		return IsOwned == true, nil
	end,
	ScanUniqueItem = function(arg)
		if type(arg) ~= "string" or arg == "" then
			return nil, "Item name must be a non-empty string"
		end

		if type(filtergc) == "function" then
			local ok, result = pcall(function()
				return filtergc("table", { Keys = { "Equipped", "Modifiers", "Grade" }, KeyValuePairs = { Name = arg } }, true) ~= nil
			end)

			if not ok then
				return nil, "Failed to filter for " .. arg .. ": " .. tostring(result)
			end
			return result == true, nil
		end

		if type(getgc) ~= "function" then
			return nil, "The executor has no filtergc or getgc function"
		end

		local ok, result = pcall(function()
			for _, v6 in ipairs(getgc(true)) do
				if type(v6) == "table" then
					local flag4 = false

					pcall(function()
						flag4 = rawget(v6, "Name") == arg and rawget(v6, "Equipped") ~= nil
					end)

					if flag4 then
						return true
					end
				end
			end

			return false
		end)

		if not ok then
			return nil, "Failed to scan for " .. arg .. ": " .. tostring(result)
		end
		return result == true, nil
	end,
}

local n20 = 10
local tbl29 = {}

local tbl30 = {
	{ ItemName = "Mirror Fractal", ItemType = "Material", BossName = "Dough King" },
	{ ItemName = "Valkyrie Helm", ItemType = "Accessory", BossName = "rip_indra True Form" },
}

local tbl31

tbl31 = {
	CheckItem = function(arg, arg2)
		if tbl20.HasItem(arg) then
			return true, nil
		end
		local v6, v7 = tbl28.IsOwned(arg, arg2)
		if v6 then
			return true, nil
		end

		if arg2 == "Accessory" then
			local v8, v9 = tbl28.ScanUniqueItem(arg)
			if v8 then
				return true, nil
			end

			if v6 == false or v8 == false then
				return false, nil
			end
			local v10 = tostring
			v7 = v7 or v9
			return nil, "Could not check " .. arg .. ": " .. v10(v7)
		end

		if v6 == false then
			return false, nil
		end
		return nil, "Could not check " .. arg .. ": " .. tostring(v7)
	end,
	HasItem = function(arg, arg2)
		if tbl29[arg] then
			return tbl31.CheckItem(arg, arg2)
		end
		local flag4 = false
		local v6 = nil

		for i = 1, 10 do
			local v7, v8 = tbl31.CheckItem(arg, arg2)
			if v7 then
				tbl29[arg] = nil
				return true, nil
			end

			if v7 == false then
				flag4 = true
			else
				v6 = v8 or v6
			end

			if i < n20 then
				task.wait(1)
			end
		end

		if flag4 then
			tbl29[arg] = true
			return false, nil
		end
		return nil, v6 or "Could not verify " .. tostring(arg)
	end,
	ResolveSpawn = function(arg)
		local v6, v7 = tbl26.Find(arg)
		if v7 then
			return v7.Position, nil
		end
		local humanoidRootPart = ReplicatedStorage:FindFirstChild(arg)
		humanoidRootPart = humanoidRootPart and humanoidRootPart:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
			return humanoidRootPart.Position, nil
		end
		return nil, "Could not resolve a spawn position for " .. arg
	end,
	Obtain = function(arg, arg2, arg3)
		local v6

		while true do
			local v7, v8 = tbl31.HasItem(arg, arg2)

			if v7 == nil then
				return false, v8
			else
				if v7 then
					return true, nil
				end

				if not tbl26.Exists(arg3) then
					local v9, v10 = tbl12.RetryAPIServer(arg3)
					if not v9 then
						return false, arg3 .. " is not in this server: " .. tostring(v10)
					end
					return false, "Hopping to a server that has " .. arg3
				end

				tbl20.WaitForAliveRoot()
				local v9, v10 = tbl31.ResolveSpawn(arg3)
				if not v9 then
					return false, v10
				end
				local v11
				v11, v6 = tbl26.Kill(arg3, v9)
				if not v11 and not tbl20.WaitForRespawnIfDead() then
					break
				end
				task.wait(5)
			end
		end

		return false, v6
	end,
	EnsureAll = function()
		for _, v6 in ipairs(tbl30) do
			local v7, v8 = tbl31.HasItem(v6.ItemName, v6.ItemType)
			if v7 == nil then
				return false, v8
			end

			if not v7 then
				if not tbl3[placeId] then
					return false, v6.ItemName .. " can only be farmed in the Third Sea", true
				end
				local str4 = v6.ItemName .. " is missing, killing " .. v6.BossName
				warn(str4)
				v.Log(str4, "Trial")
				local v9, v10 = tbl31.Obtain(v6.ItemName, v6.ItemType, v6.BossName)
				if not v9 then
					return false, v10
				end
			end
		end

		return true, nil
	end,
}

local n21 = 500000
local n22 = 10
local n23 = 300
local n24 = 1000
local n25 = 30
local vector = Vector3.new(923.213, 125.39765, 32852.832)
local v6 = nil

local tbl32 = {
	["Ship Deckhand"] = true,
	["Ship Engineer"] = true,
	["Ship Steward"] = true,
	["Ship Officer"] = true,
}

local tbl33

tbl33 = {
	HasAnyFlower = function()
		return tbl20.HasItem("Flower 1") or tbl20.HasItem("Flower 2") or tbl20.HasItem("Flower 3")
	end,
	IsRaceEvolved = function()
		local data = localPlayer:FindFirstChild("Data")
		data = data and data:FindFirstChild("Race")
		return data ~= nil and data:FindFirstChild("Evolved") ~= nil
	end,
	IsFlowerReady = function(arg)
		return tbl33.FindReadyFlower(arg) ~= nil
	end,
	FindReadyFlower = function(arg)
		local v7 = Workspace:FindFirstChild(arg)
		if v7 and v7:IsA("BasePart") and v7.Transparency ~= 1 then
			return v7
		end
		return nil
	end,
	TouchFlower = function(arg, arg2, arg3)
		local n26 = os.clock() + n22
		local flag4 = false

		while not tbl20.HasItem(arg3) and os.clock() < n26 do
			local v7, v8, v9 = tbl20.GetAliveRoot()
			if not v7 or not v8 then
				return false, v9, false
			end

			if arg.Parent and arg.Transparency ~= 1 then
				pcall(function()
					if flag2 then
						flag2(v8, arg, 0)
						flag2(v8, arg, 1)
					else
						v7:PivotTo(arg.CFrame)
					end
				end)
			else
				flag4 = true
			end

			task.wait(0.25)
		end

		if tbl20.HasItem(arg3) then
			return true, nil, false
		end
		return false, flag4 and arg2 .. " disappeared before " .. arg3 .. " reached the Backpack" or arg2 .. " did not grant " .. arg3 .. " within 10 seconds", true
	end,
	CollectFlower = function(arg, arg2)
		local n26 = os.clock() + n23
		local v7 = nil

		while not tbl20.HasItem(arg2) do
			if n26 <= os.clock() then
				if v7 then
					return false, arg .. " did not grant " .. arg2 .. " in time: " .. tostring(v7)
				end
				return false, arg .. " did not respawn in time to grant " .. arg2
			end

			local v8 = tbl33.FindReadyFlower(arg)
			if not v8 then
				task.wait(0.25)
				continue
			end
			local v9, v10 = tbl23.MoveToPart(v8)

			if not v9 then
				task.wait(0.25)
				v7 = v10
				continue
			end

			local v11, v12, v13 = tbl33.TouchFlower(v8, arg, arg2)

			if not v11 then
				if v13 then
					tbl8.StopActiveJob("The red or blue flower pickup timed out")
					local v14
					v14, v14 = tbl12.HopNormalServer()
					return false, v14 or v12
				end

				task.wait(0.25)
				v7 = v12
			end
		end

		return true, nil
	end,
	FindNearestMob = function(arg, arg2)
		local enemies = Workspace:FindFirstChild("Enemies")
		if not enemies then
			return nil, nil, nil
		end
		local huge = math.huge
		local v7 = nil
		local v8 = nil
		local v9 = nil

		for _, child in ipairs(enemies:GetChildren()) do
			if not arg2 or arg2[child.Name] then
				local humanoid = child:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

				if humanoid and humanoid.Health > 0 and humanoidRootPart and humanoidRootPart:IsA("BasePart") then
					local magnitude = (humanoidRootPart.Position - arg.Position).Magnitude

					if magnitude < huge then
						huge = magnitude
						v7 = child
						v8 = humanoidRootPart
						v9 = humanoid
					end
				end
			end
		end

		return v7, v8, v9
	end,
	IsInsideGhostShip = function(arg)
		return arg ~= nil and arg.Parent ~= nil and (arg.Position - vector).Magnitude <= n24
	end,
	UseGhostShipGate = function(arg, arg2)
		local requestEntrance, v7 = tbl10.Invoke("requestEntrance", arg)
		if v7 then
			return false, v7
		end
		local n26 = os.clock() + n25

		while true do
			local v8, v9, v10 = tbl20.GetAliveRoot()
			if not v8 or not v9 then
				return false, v10
			end

			if tbl33.IsInsideGhostShip(v9) == arg2 then
				return true, nil
			end

			if os.clock() >= n26 then
				break
			end
			task.wait(0.25)
		end

		if arg2 then
			return false, "Timed out while entering the Ghost Ship"
		end
		return false, "Timed out while leaving the Ghost Ship"
	end,
	EnterGhostShip = function()
		local v7, v8, v9 = tbl20.GetAliveRoot()
		if not v7 or not v8 then
			return false, v9
		end

		if tbl33.IsInsideGhostShip(v8) then
			return true, nil
		end
		return tbl33.UseGhostShipGate(Vector3.new(923.213, 125.39765, 32852.832), true)
	end,
	ExitGhostShip = function()
		local v7, v8, v9 = tbl20.GetAliveRoot()
		if not v7 or not v8 then
			return false, v9
		end

		if not tbl33.IsInsideGhostShip(v8) then
			return true, nil
		end
		return tbl33.UseGhostShipGate(Vector3.new(-6491.8643, 116.52766, -108.822334), false)
	end,
	AttackGhostShipMob = function(arg, arg2, arg3)
		local v7, v8 = tbl20.EquipMelee()
		if not v7 then
			return false, "Failed to equip Melee for " .. arg3 .. ": " .. tostring(v8)
		end
		local v9, v10 = tbl14.Enable()
		if not v9 then
			return false, "Failed to enable Buso for " .. arg3 .. ": " .. tostring(v10)
		end
		local v11, v12 = tbl19.Gather(arg, nil, 350)

		if v11 == 0 and v12 and v12 ~= v6 then
			v6 = v12
			warn("Failed to gather Ghost Ship mobs: " .. tostring(v12))
		end

		local v13, v14 = tbl18.Attack()
		if not v13 and not tbl18.IsTransientError(v14) and arg2.Health > 0 then
			return false, "Failed to farm " .. arg3 .. ": " .. tostring(v14)
		end
		return true, nil
	end,
	FarmGhostShipMob = function(arg, arg2, arg3, arg4, arg5)
		local v7, v8 = Tween(arg, 300, CFrame.new(0, 15, 0))
		if v8 then
			return false, "Failed to move to a Ghost Ship mob: " .. tostring(v8)
		end

		while arg.Parent and arg2.Parent and arg3.Parent and arg3.Health > 0 do
			local v9, v10 = arg4()
			if v10 then
				tbl23.StopJob(v7)
				return false, v10
			end

			if v9 then
				tbl23.StopJob(v7)
				return true, nil
			end
			local v11, v12 = tbl20.GetAliveRoot()

			if not v11 or not v12 then
				tbl23.StopJob(v7)
				tbl20.WaitForAliveRoot()
				return true, nil
			end

			if not tbl33.IsInsideGhostShip(v12) then
				tbl23.StopJob(v7)
				return true, nil
			end

			if (arg2.Position - v12.Position).Magnitude <= n7 then
				local v13, v14 = tbl33.AttackGhostShipMob(arg, arg3, arg5)

				if not v13 then
					tbl23.StopJob(v7)
					if tbl20.WaitForRespawnIfDead() then
						return true, nil
					end
					return false, v14
				end
			end

			if not v7:IsRunning() and arg3.Health > 0 then
				return false, v7:GetReason() or "Tween stopped while farming " .. arg5
			end
			task.wait()
		end

		tbl23.StopJob(v7)
		return true, nil
	end,
	FarmGhostShip = function(arg, arg2)
		local v7

		while true do
			local v8, v9 = arg()

			if v9 then
				return false, v9
			else
				if v8 then
					return true, nil
				end
				local v10, v11 = tbl20.GetAliveRoot()
				if not v10 or not v11 then
					tbl20.WaitForAliveRoot()
					return true, nil
				end

				if not tbl33.IsInsideGhostShip(v11) then
					local v12, v13 = tbl33.EnterGhostShip()

					if not v12 then
						if tbl20.WaitForRespawnIfDead() then
							return true, nil
						end
						return false, v13
					end

					task.wait(0.25)
					continue
				end

				local v12, v13, v14 = tbl33.FindNearestMob(v11, tbl32)
				if not v12 then
					task.wait(0.25)
					continue
				end
				local v15
				v15, v7 = tbl33.FarmGhostShipMob(v12, v13, v14, arg, arg2)
				if not v15 then
					break
				end
			end
		end

		return false, v7
	end,
	HasYellowFlower = function()
		return tbl20.HasItem("Flower 3"), nil
	end,
	CollectYellowFlower = function()
		local v7, v8 = tbl33.FarmGhostShip(tbl33.HasYellowFlower, "Flower 3")
		if not v7 then
			return false, v8
		end

		if not tbl20.HasItem("Flower 3") then
			return true, nil
		end
		local v9, v10 = tbl33.ExitGhostShip()

		if not v9 then
			if tbl20.WaitForRespawnIfDead() then
				return true, nil
			end
			return false, v10
		end

		return true, nil
	end,
	CollectNextFlower = function()
		if not tbl20.HasItem("Flower 1") and tbl33.IsFlowerReady("Flower1") then
			return tbl33.CollectFlower("Flower1", "Flower 1")
		end

		if not tbl20.HasItem("Flower 2") and tbl33.IsFlowerReady("Flower2") then
			return tbl33.CollectFlower("Flower2", "Flower 2")
		end

		if not tbl20.HasItem("Flower 3") then
			return tbl33.CollectYellowFlower()
		end

		if not tbl20.HasItem("Flower 1") then
			local v7
			v7, v7 = tbl12.HopNormalServer()
			return false, v7 or "Hopping to a low server for the blue flower"
		end

		return true, nil
	end,
	RunQuest = function()
		if not tbl2[placeId] then
			return false, "The Race V2 quest only works in the Second Sea"
		end
		tbl20.WaitForAliveRoot()
		local data = localPlayer:WaitForChild("Data", 10)
		local race = data and data:WaitForChild("Race", 10)
		data = data and data:WaitForChild("Beli", 10)
		if not race or not data then
			return false, "Player race or Beli data did not load in time"
		end

		if tbl33.IsRaceEvolved() then
			return true, "Race is already V2", false
		end

		if race.Value == "Draco" then
			return false, "Draco V2 cannot be upgraded through the Alchemist quest"
		end

		if data.Value < n21 then
			return false, string.format("%d Beli is required, currently %d", 500000, data.Value)
		end
		local Alchemist

		while true do
			if tbl33.IsRaceEvolved() then
				return true, "Race upgraded to V2", true
			else
				local v7
				Alchemist, v7 = tbl10.Invoke("Alchemist", "1")
				if v7 then
					return false, v7
				end

				if Alchemist == 0 then
					local Alchemist2, v8 = tbl10.Invoke("Alchemist", "2")
					if v8 then
						return false, v8
					end
				elseif Alchemist == 1 then
					local v8, v9 = tbl33.CollectNextFlower()
					if not v8 then
						return false, v9
					end
				else
					if Alchemist ~= 2 then
						break
					end
					local Alchemist2, v8 = tbl10.Invoke("Alchemist", "3")
					if v8 then
						return false, v8
					end
					task.wait(1)
				end

				task.wait(0.25)
			end
		end

		return false, "Unexpected Alchemist state: " .. tostring(Alchemist)
	end,
}

local n26 = 2000000
local n27 = 1000
local n28 = 3000

local tbl34 = {
	BossName = "Cake Prince",
	Reserve = 9250,
	ThirdSeaAction = "ThirdSea",
	ServerHopAction = "ServerHop",
	QuietServerAction = "QuietServer",
}

local tbl35 = {
	Human = "Full Power",
	Mink = "Godspeed",
	Fishman = "Warrior of the Sea",
	Skypiea = "Perfect Being",
	Cyborg = "War Machine",
	Ghoul = "Hell Hound",
}

local tbl36

tbl36 = {
	GetUpgradeData = function()
		local data = localPlayer:WaitForChild("Data", 10)
		local level = data and data:WaitForChild("Level", 10)
		local beli = data and data:WaitForChild("Beli", 10)
		local fragments = data and data:WaitForChild("Fragments", 10)
		data = data and data:WaitForChild("Race", 10)
		if not level or not beli or not fragments or not data then
			return nil, "Player Level, Beli, Fragments, or Race data did not load in time"
		end
		return { Level = level, Beli = beli, Fragments = fragments, Race = data }, nil
	end,
	IsV3 = function()
		local Wenlocktoad, v7 = tbl10.Invoke("Wenlocktoad")
		if v7 then
			return nil, v7
		end
		return Wenlocktoad ~= nil, nil
	end,
	GetTitles = function()
		local getTitles

		while true do
			local v7
			getTitles, v7 = tbl10.Invoke("getTitles")

			if v7 then
				return nil, v7
			else
				if type(getTitles) == "table" then
					return getTitles, nil
				end

				if getTitles ~= nil then
					break
				end
				task.wait(1)
			end
		end

		return nil, "The getTitles reply was unexpected: " .. tostring(getTitles)
	end,
	HasTitleNamed = function(arg, arg2)
		for _, v7 in next, arg, nil do
			if type(v7) == "table" and v7.Name == arg2 then
				return true
			end
		end

		return false
	end,
	HasV3Title = function(arg)
		local v7 = tbl35[arg]
		if not v7 then
			return nil, "No Race V3 title is configured for " .. tostring(arg)
		end
		local v8, v9 = tbl36.GetTitles()
		if not v8 then
			return nil, v9
		end
		return tbl36.HasTitleNamed(v8, v7), nil
	end,
	RerollOnce = function()
		local BlackbeardReward, v7 = tbl10.Invoke("BlackbeardReward", "Reroll", "1")
		if v7 then
			return false, "Failed to check race reroll: " .. tostring(v7)
		end
		local BlackbeardReward2, v8 = tbl10.Invoke("BlackbeardReward", "Reroll", "2")
		if v8 then
			return false, "Failed to reroll race: " .. tostring(v8)
		end
		task.wait(2.5)
		return true, nil
	end,
	EnsureRerollRace = function(arg, arg2)
		if type(arg) ~= "string" or arg == "" then
			return false, "Race name must be a non-empty string"
		end

		if type(arg2) ~= "table" or not arg2.Race or not arg2.Fragments then
			return false, "Race or Fragments data is unavailable"
		end

		while arg2.Race.Value ~= arg do
			if arg2.Fragments.Value < n28 then
				local value = arg2.Fragments.Value
				return false, string.format("%s is required, but the current race is %s and rerolling needs %d Fragments (currently %d)", arg, tostring(arg2.Race.Value), 3000, value)
			end
			local v7, v8 = tbl36.RerollOnce()
			if not v7 then
				return false, v8
			end
		end

		return true, nil
	end,
}

local fn7 = nil
local tbl37

tbl37 = {
	EnsureAmount = function(arg, arg2, arg3)
		if type(arg) ~= "table" or not arg.Fragments then
			return false, "Fragments data is unavailable"
		end
		local flag4 = false

		while arg.Fragments.Value < arg2 do
			if not tbl3[placeId] then
				return false, "Cake Prince fragment farming needs the Third Sea", tbl34.ThirdSeaAction
			end

			if not flag4 then
				flag4 = true

				if fn7 then
					fn7(true)
				end
			end

			if type(arg3) == "function" then
				arg3(string.format("Farming Cake Prince for Fragments: %d/%d", arg.Fragments.Value, arg2), "Working")
			end

			if not tbl26.Exists(tbl34.BossName) then
				local v7, v8 = tbl12.RetryAPIServer(tbl34.BossName)
				if not v7 then
					return false, tbl34.BossName .. " is not in this server: " .. tostring(v8)
				end
				return false, "Hopping through APIServer to find " .. tbl34.BossName, tbl34.ServerHopAction
			end

			tbl20.WaitForAliveRoot()
			local v7, v8 = tbl31.ResolveSpawn(tbl34.BossName)
			if not v7 then
				return false, v8
			end
			local v9, v10 = tbl26.Kill(tbl34.BossName, v7, nil, nil, CFrame.new(0, -50, 0))
			if not v9 and not tbl20.WaitForRespawnIfDead() then
				return false, v10
			end
			task.wait(5)
		end

		if flag4 and fn7 then
			fn7(false)
		end

		return true, nil, nil
	end,
	EnsureRace = function(arg, arg2, arg3)
		if type(arg) ~= "string" or arg == "" then
			return false, "Race name must be a non-empty string"
		end

		if type(arg2) ~= "table" or not arg2.Race or not arg2.Fragments then
			return false, "Race or Fragments data is unavailable"
		end

		while arg2.Race.Value ~= arg do
			local v7, v8, v9 = tbl37.EnsureAmount(arg2, 3000, arg3)
			if not v7 then
				return false, v8, v9
			end

			if type(arg3) == "function" then
				arg3("Rerolling " .. tostring(arg2.Race.Value) .. " to " .. arg, "Working")
			end

			local v10, v11 = tbl36.RerollOnce()
			if not v10 then
				return false, v11
			end
		end

		return true, nil, nil
	end,
}

tbl36.MeetsV3Requirements = function(arg, arg2)
	if type(arg2) ~= "table" or not arg2.Level or not arg2.Beli then
		return false, "Level or Beli data is unavailable"
	end

	if arg2.Level.Value < n27 then
		return false, string.format("Level %d is required for %s V3, currently %d", 1000, tostring(arg), arg2.Level.Value)
	end

	if arg2.Beli.Value < n26 then
		local value = arg2.Beli.Value
		return false, string.format("%d Beli is required for %s V3, currently %d", 2000000, tostring(arg), value)
	end
	return true, nil
end

local n29 = 2500
local n30 = 1000
local n31 = 10000
local n32 = 30
local flag4 = false
local flag5 = type(fireclickdetector) == "function" and fireclickdetector or nil
local flag6 = type(writefile) == "function" and type(readfile) == "function" and type(isfile) == "function"
local tbl38

tbl38 = {
	ReadFistAccounts = function()
		if not flag6 then
			return {}
		end
		local ok, result = pcall(isfile, "FistOfDarkness.txt")
		if not ok or not result then
			return {}
		end
		local ok2, result2 = pcall(readfile, "FistOfDarkness.txt")
		if not ok2 or type(result2) ~= "string" or result2 == "" then
			return {}
		end

		local ok3, result3 = pcall(function()
			return HttpService:JSONDecode(result2)
		end)

		if not ok3 or type(result3) ~= "table" then
			return {}
		end
		return result3
	end,
	HasInsertedFist = function()
		if flag4 then
			return true
		end

		if not flag6 then
			return false
		end
		return tbl38.ReadFistAccounts()[tostring(localPlayer.UserId)] == true
	end,
	MarkFistInserted = function()
		flag4 = true
		if not flag6 then
			return
		end
		local v7 = tbl38.ReadFistAccounts()
		v7[tostring(localPlayer.UserId)] = true

		pcall(function()
			writefile("FistOfDarkness.txt", HttpService:JSONEncode(v7))
		end)
	end,
	UseMachine = function()
		local map = Workspace:FindFirstChild("Map")
		map = map and map:FindFirstChild("CircleIsland")
		map = map and map:FindFirstChild("RaidSummon")
		map = map and map:FindFirstChild("Button")
		map = map and map:FindFirstChild("Main")
		map = map and map:FindFirstChildOfClass("ClickDetector")
		if not map then
			return false, "Cyborg machine ClickDetector was not found"
		end

		if not flag5 then
			return false, "The fireclickdetector function is unavailable"
		end
		local ok, result = pcall(flag5, map)
		if not ok then
			return false, "Failed to use the Cyborg machine: " .. tostring(result)
		end
		return true, nil
	end,
	GetOrderPosition = function()
		local enemies = Workspace:FindFirstChild("Enemies")
		local order = ReplicatedStorage:FindFirstChild("Order") or enemies and enemies:FindFirstChild("Order")
		if not order then
			return nil, "Order was not found"
		end

		local ok, result = pcall(function()
			return order:GetPivot()
		end)

		if not ok or not tbl8.IsFiniteCFrame(result) then
			return nil, "Order has no valid pivot"
		end
		return result.Position, nil
	end,
	FarmFistOfDarkness = function()
		if tbl20.HasItem("Fist of Darkness") then
			return true, nil
		end

		local v7, v8, v9 = tbl25.Farm(function(arg)
			return tbl20.HasItem("Fist of Darkness") or arg >= n32
		end)

		if not v7 then
			return false, v8
		end

		if tbl20.HasItem("Fist of Darkness") then
			return true, nil
		end
		local v10, v11 = tbl12.APIServer("4H")
		if not v10 then
			return false, string.format("%d chests were opened without a Fist of Darkness %s", v9, tostring(v11))
		end
		return false, string.format("Hopping to a %s server after %d chests without a Fist of Darkness", "4H", v9)
	end,
	InsertFistOfDarkness = function()
		local v7, v8 = tbl38.FarmFistOfDarkness()
		if not v7 then
			return false, v8
		end
		local v9, v10 = tbl20.EquipItem("Fist of Darkness")
		if not v9 then
			return false, v10
		end
		local v11, v12 = tbl38.UseMachine()
		if not v11 then
			return false, v12
		end
		task.wait(1)
		if tbl20.HasItem("Fist of Darkness") then
			return false, "The Cyborg machine did not accept the Fist of Darkness"
		end
		tbl38.MarkFistInserted()
		return true, nil
	end,
	LoadStoredFruit = function()
		local Moveset, v7 = tbl28.ListOwned("Moveset", "%-")
		if not Moveset then
			return false, v7
		end
		local v8 = Moveset[1]
		if not v8 then
			return false, "There is no stored Blox Fruit to show Arowe"
		end
		local LoadFruit, v9 = tbl10.Invoke("LoadFruit", v8)
		if v9 then
			return false, v9
		end
		return true, v8
	end,
	RunRaceStep = function(arg)
		local n33 = n29 + tbl34.Reserve
		local CyborgTrainer, v7 = tbl10.Invoke("CyborgTrainer", "Check")
		if v7 then
			return false, v7
		end

		if CyborgTrainer == true then
			if arg.Fragments.Value < n33 then
				return false, nil, n33
			end
			local CyborgTrainer2, v8 = tbl10.Invoke("CyborgTrainer", "Buy")
			return v8 == nil, v8
		end

		if tbl20.HasItem("Core Brain") then
			return tbl38.UseMachine()
		end

		if tbl26.Exists("Order") then
			local v8, v9 = tbl38.GetOrderPosition()
			if not v8 then
				return false, v9
			end
			return tbl26.Kill("Order", v8)
		end

		if tbl20.HasItem("Microchip") then
			return tbl38.UseMachine()
		end

		if not tbl38.HasInsertedFist() then
			return tbl38.InsertFistOfDarkness()
		end

		if n30 <= arg.Fragments.Value - n33 then
			local BlackbeardReward, v8 = tbl10.Invoke("BlackbeardReward", "Microchip", "2")
			return v8 == nil, v8
		end
		return false, nil, n33 + n31
	end,
	EnsureRace = function(arg, arg2)
		if type(arg) ~= "table" or not arg.Race or not arg.Fragments then
			return false, "Race or Fragments data is unavailable"
		end

		while arg.Race.Value ~= "Cyborg" do
			local v7, v8, v9 = tbl38.RunRaceStep(arg)

			if v9 then
				local v10, v11, v12 = tbl37.EnsureAmount(arg, v9, arg2)
				if not v10 then
					return false, v11, v12
				end
			elseif not v7 then
				return false, v8
			end

			task.wait(0.5)
		end

		tbl20.WaitForAliveRoot()
		return true, nil
	end,
}

local n33 = 15
local tbl39 = { "Z", "X", "C" }
local n34 = 0.15
local n35 = 0.3
local n36 = 0.5
local n37 = 2000
local n38 = 120
local n39 = 1
local tbl40 = { Active = false }
local n40 = 0
local v7 = nil
local safeZones = nil
local str4 = "GhostShipInterior"
local tbl41 = { "GhostShipInterior", "IndraIsland", "MiniSky", "RaidMap" }
local tbl42 = nil
local tbl43

tbl43 = {
	Enable = function()
		local character = localPlayer.Character
		local now = os.clock()
		local flag7 = character ~= v7
		if not flag7 and now - n40 < n39 then
			return true, nil
		end
		local EnablePvp, v8 = tbl10.Invoke("EnablePvp")
		if v8 then
			return false, v8
		end
		v7 = character
		n40 = os.clock()

		if flag7 then
			task.wait(1.5)
		end

		return true, nil
	end,
	IsEnabled = function()
		return localPlayer:GetAttribute("PvpDisabled") ~= true
	end,
	StartEnableWatchdog = function()
		if tbl40.Active then
			return true, nil
		end
		tbl40.Active = true

		task.spawn(function()
			while tbl40.Active do
				local v8
				v8, v8 = tbl20.GetAliveRoot()

				if v8 and not tbl43.IsEnabled() then
					pcall(tbl43.Enable)
				end

				task.wait(0.5)
			end
		end)

		return true, nil
	end,
	StopEnableWatchdog = function()
		tbl40.Active = false
		return true, nil
	end,
	GetPlayerRace = function(arg)
		arg = arg and arg:FindFirstChild("Data")
		arg = arg and arg:FindFirstChild("Race")
		if not arg or type(arg.Value) ~= "string" or arg.Value == "" then
			return nil
		end
		return arg.Value
	end,
	GetSafeZones = function()
		if safeZones and safeZones.Parent then
			return safeZones
		end
		local worldOrigin = Workspace:FindFirstChild("_WorldOrigin")
		safeZones = worldOrigin and worldOrigin:FindFirstChild("SafeZones") or nil
		return safeZones
	end,
	IsInTempSafeZone = function(arg)
		local characters = Workspace:FindFirstChild("Characters")
		if not characters then
			return false
		end

		for _, child in ipairs(characters:GetChildren()) do
			local tempSafeZone = child:FindFirstChild("TempSafeZone")
			local attribute = tempSafeZone and tempSafeZone:GetAttribute("Position")
			tempSafeZone = tempSafeZone and tempSafeZone:GetAttribute("Size")

			if typeof(attribute) == "Vector3" and type(tempSafeZone) == "number" then
				local n41 = arg.Position - attribute
				if Vector3.new(n41.X, 0, n41.Z).Magnitude <= tempSafeZone / 2 then
					return true
				end
			end
		end

		return false
	end,
	GetInstancedAreas = function()
		if tbl42 then
			for _, v8 in ipairs(tbl42) do
				if not v8.Model.Parent then
					tbl42 = nil
					break
				end
			end
		end

		if tbl42 then
			return tbl42
		end
		local map = Workspace:FindFirstChild("Map")
		if not map then
			return {}
		end
		tbl42 = {}

		for _, v8 in ipairs(tbl41) do
			local v9 = map:FindFirstChild(v8)

			if v9 and v9:IsA("Model") then
				local ok, result, result2 = pcall(function()
					return v9:GetBoundingBox()
				end)

				if ok and typeof(result) == "CFrame" then
					table.insert(tbl42, { Model = v9, Pivot = result, Half = result2 / 2 })
				end
			end
		end

		return tbl42
	end,
	GetInstancedArea = function(arg)
		if not arg then
			return nil
		end

		if tbl33.IsInsideGhostShip(arg) then
			return "GhostShipInterior"
		end

		for _, v8 in ipairs(tbl43.GetInstancedAreas()) do
			local v9 = v8.Pivot:PointToObjectSpace(arg.Position)
			local x = v8.Half.X
			local flag7 = math.abs(v9.X) <= x

			if flag7 then
				local y = v8.Half.Y
				flag7 = math.abs(v9.Y) <= y
			end

			if flag7 then
				local z = v8.Half.Z
				flag7 = math.abs(v9.Z) <= z
			end

			if flag7 then
				return v8.Model.Name
			end
		end

		return nil
	end,
	IsAreaMismatched = function(arg)
		local v8
		v8, v8 = tbl20.GetAliveRoot()
		return tbl43.GetInstancedArea(arg) ~= tbl43.GetInstancedArea(v8)
	end,
	IsInDifferentArea = function(arg)
		local v8
		v8, v8 = tbl20.GetAliveRoot()
		local v9 = tbl43.GetInstancedArea(arg)
		local v10 = tbl43.GetInstancedArea(v8)
		if v9 == v10 then
			return false
		end

		if v9 == nil and v10 == str4 then
			return false
		end
		return true
	end,
	MatchTargetArea = function(arg)
		arg = arg and arg.Character
		arg = arg and arg:FindFirstChild("HumanoidRootPart")
		local v8
		v8, v8 = tbl20.GetAliveRoot()
		if not arg or not v8 then
			return true, nil
		end
		local v9 = tbl43.GetInstancedArea(arg)
		local v10 = tbl43.GetInstancedArea(v8)
		if v9 == v10 then
			return true, nil
		end

		if v10 == str4 then
			return tbl33.ExitGhostShip()
		end
		return false, "The PvP target is in an unreachable area"
	end,
	IsInSafeZone = function(arg)
		arg = arg and arg.Character
		arg = arg and arg:FindFirstChild("HumanoidRootPart")
		if not arg then
			return false
		end
		local v8 = tbl43.GetSafeZones()

		if v8 then
			for _, child in ipairs(v8:GetChildren()) do
				if child:IsA("BasePart") then
					local specialMesh = child:FindFirstChildWhichIsA("SpecialMesh")
					if (arg.Position - child.Position).Magnitude <= (specialMesh and specialMesh.Scale.X / 2 or child.Size.X / 2) then
						return true
					end
				end
			end
		end

		return tbl43.IsInTempSafeZone(arg)
	end,
	GetTargetHumanoid = function(arg, arg2)
		if not arg.Parent or arg == localPlayer then
			return nil
		end

		if arg:GetAttribute("PvpDisabled") then
			return nil
		end

		if tbl43.IsInSafeZone(arg) then
			return nil
		end

		if arg2 and tbl43.GetPlayerRace(arg) ~= arg2 then
			return nil
		end
		local character = arg.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if not humanoid or humanoid.Health <= 0 then
			return nil
		end
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart and tbl33.IsInsideGhostShip(humanoidRootPart) then
			return nil
		end

		if humanoidRootPart and tbl43.IsInDifferentArea(humanoidRootPart) then
			return nil
		end
		return humanoid
	end,
	FindNextTarget = function(arg)
		for _, player in ipairs(Players:GetPlayers()) do
			if tbl43.GetTargetHumanoid(player, arg) then
				return player
			end
		end

		return nil
	end,
	StrikeTarget = function(arg, arg2)
		local v8, v9 = tbl20.EquipMelee()
		if not v8 then
			return false, "Failed to equip Melee for PvP: " .. tostring(v9)
		end
		local v10, v11 = tbl14.Enable()
		if not v10 then
			return false, "Failed to enable Buso for PvP: " .. tostring(v11)
		end
		local v12, v13 = tbl18.AttackPlayer(arg)
		if not v12 and not tbl18.IsTransientError(v13) then
			return false, v13
		end

		if arg2 then
			return true, nil
		end
		local v14, v15 = tbl15.CastKeys(tbl39, 0.1)
		if not v14 then
			return false, v15
		end
		return true, nil
	end,
	Retreat = function(arg)
		local v8
		v8, v8 = tbl20.WaitForAliveRoot()
		local vector2 = Vector3.new(v8.Position.X, v8.Position.Y + n37, v8.Position.Z)
		local v9 = arg and tbl43.GetTargetHumanoid(arg)
		local v10 = nil
		local v11 = nil

		if v9 then
			v11, v10 = tbl23.Travel(arg, 300, CFrame.new(0, 2000, 0))
		end

		if not v11 or v10 then
			v11, v10 = tbl23.Travel(vector2)
		end

		if v10 then
			return false, v10
		end
		local n41 = os.clock() + n38

		while tbl20.GetHealthRatio() < n36 do
			if not (n41 <= os.clock()) then
				if tbl20.GetAliveRoot() then
					task.wait(1)
					continue
				end
			end

			break
		end

		tbl23.StopJob(v11)
		return true, nil
	end,
	AttackTarget = function(arg, arg2)
		local v8 = tbl43.GetTargetHumanoid(arg, arg2)
		if not v8 then
			return false, nil
		end
		local v9, v10 = tbl43.MatchTargetArea(arg)
		if not v9 then
			return false, v10
		end
		tbl15.SetAim(nil)
		local v11, v12 = tbl23.Travel(arg, 300)
		if v12 then
			return false, v12
		end
		local health = v8.Health
		local n41 = os.clock() + n33
		local flag7 = false
		local flag8 = false
		local flag9 = false
		local v13

		while true do
			if v8.Health <= 0 then
				flag7 = true
				tbl23.StopJob(v11)
				tbl15.SetAim(nil)
				return flag7, nil
			else
				if v8.Health < health then
					flag7 = true
				end

				if v8.MaxHealth > 0 and v8.Health / v8.MaxHealth <= n34 then
					flag8 = true
				end

				local v14, v15 = tbl20.GetAliveRoot()

				if not v14 or not v15 then
					tbl23.StopJob(v11)
					tbl15.SetAim(nil)
					return flag7, nil
				end

				if tbl20.GetHealthRatio() < n35 then
					tbl23.StopJob(v11)
					tbl15.SetAim(nil)
					return flag7, nil
				end

				local humanoidRootPart = arg.Character and arg.Character:FindFirstChild("HumanoidRootPart")

				if not humanoidRootPart or not v8.Parent then
					tbl23.StopJob(v11)
					tbl15.SetAim(nil)
					return flag7, nil
				end

				if tbl43.IsInSafeZone(arg) or tbl43.IsAreaMismatched(humanoidRootPart) then
					tbl23.StopJob(v11)
					tbl15.SetAim(nil)
					return flag7, nil
				end

				if flag8 then
					tbl15.SetAim(nil)
				else
					tbl15.SetAim(humanoidRootPart.Position)
				end

				if (humanoidRootPart.Position - v15.Position).Magnitude <= n7 then
					local v16
					v16, v13 = tbl43.StrikeTarget(arg, flag8)
					flag9 = true
					if not v16 then
						break
					end
				end

				if not flag9 and os.clock() >= n41 then
					tbl23.StopJob(v11)
					tbl15.SetAim(nil)
					return flag7, nil
				end

				task.wait()
			end
		end

		tbl23.StopJob(v11)
		tbl15.SetAim(nil)
		return flag7, v13
	end,
	CountRacePlayers = function(arg)
		local n41 = 0
		local n42 = 0
		local n43 = 0

		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= localPlayer then
				n41 += 1
				local v8 = tbl43.GetPlayerRace(player)

				if v8 then
					n42 += 1

					if v8 == arg then
						n43 += 1
					end
				end
			end
		end

		return n43, n42, n41
	end,
	CountReachablePlayers = function()
		local n41 = 0

		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= localPlayer then
				local character = player.Character
				character = character and character:FindFirstChild("HumanoidRootPart")

				if not character or not tbl33.IsInsideGhostShip(character) then
					n41 += 1
				end
			end
		end

		return n41
	end,
	ShouldHopForRace = function(arg)
		local v8, v9, v10 = tbl43.CountRacePlayers(arg)
		if v10 == 0 then
			return true
		end
		return v9 > 0 and v8 == 0
	end,
	HopForMissingRace = function(arg)
		local v8, v9 = tbl12.HopNormalServer()
		if not v8 then
			return false, "No " .. arg .. " player is in this server: " .. tostring(v9)
		end
		return false, "Hopping to a low server to find a " .. arg .. " player"
	end,
	AttackPlayers = function(arg, arg2, arg3, arg4)
		tbl43.StartEnableWatchdog()
		local v8 = table.pack(xpcall(tbl43.AttackPlayersProtected, debug.traceback, arg, arg2, arg3, arg4))
		tbl43.StopEnableWatchdog()

		if not v8[1] then
			error(v8[2], 0)
		end

		return table.unpack(v8, 2, v8.n)
	end,
	AttackPlayersProtected = function(arg, arg2, arg3, arg4)
		local Pirates, v8 = tbl13.Join("Pirates")
		if not Pirates then
			return false, tostring(arg3) .. " PvP requires the " .. str2 .. " team: " .. tostring(v8)
		end
		tbl15.HookAim()
		local v9 = nil

		while true do
			tbl20.WaitForAliveRoot()

			if tbl20.GetHealthRatio() < n35 then
				tbl43.Retreat(v9)
			end

			local v10, v11 = tbl43.Enable()
			if not v10 then
				return false, tostring(arg3) .. " PvP could not be enabled: " .. tostring(v11)
			end
			local v12, v13 = arg()
			if v13 then
				return false, v13
			end

			if v12 then
				return true, nil
			end
			local v14

			if v9 and tbl43.GetTargetHumanoid(v9, arg2) then
				v14 = v9
			else
				v14 = tbl43.FindNextTarget(arg2)
			end

			if not v14 then
				if tbl43.CountReachablePlayers() == 0 then
					task.wait(5)
					if tbl43.CountReachablePlayers() == 0 then
						break
					end
				end

				if arg4 and tbl43.ShouldHopForRace(arg2) then
					return tbl43.HopForMissingRace(arg2)
				end
				task.wait(5)
				continue
			end

			local v15, v16 = tbl43.AttackTarget(v14, arg2)

			if v16 then
				warn(tostring(arg3) .. " PvP: " .. tostring(v16))
				v9 = v14
			else
				v9 = v14
			end
		end

		local v10, v11 = tbl12.HopNormalServer()
		if not v10 then
			return false, tostring(arg3) .. " PvP has nobody to fight in this server: " .. tostring(v11)
		end
		return false, "Hopping to a low server because " .. tostring(arg3) .. " PvP has nobody to fight in this one"
	end,
}

tbl9.ClaimSharedRuntime("Kaitun6V4PvpWatchdogRuntime", tbl40)
local n41 = 100
local n42 = 5
local str5 = "Cursed Captain"
local n43 = 5
local n44 = 0
local n45 = 0
local tbl44

tbl44 = {
	GetEctoplasm = function()
		return tbl28.GetQuantity("Ectoplasm", "Material")
	end,
	RefreshEctoplasm = function(arg)
		local now = os.clock()

		if arg or now - n45 >= n42 then
			local v8, v9 = tbl44.GetEctoplasm()
			if v8 == nil then
				return nil, v9
			end
			n44 = v8
			n45 = now
		end

		return n44, nil
	end,
	HasEnoughEctoplasm = function()
		local v8, v9 = tbl44.RefreshEctoplasm(false)
		if v8 == nil then
			return false, v9
		end
		return v8 >= n41, nil
	end,
	FarmEctoplasm = function()
		return tbl33.FarmGhostShip(tbl44.HasEnoughEctoplasm, "Ectoplasm")
	end,
	HasLeftGhostShip = function()
		local v8, v9 = tbl20.GetAliveRoot()
		if not v8 or not v9 then
			return nil
		end

		if tbl33.IsInsideGhostShip(v9) then
			return nil
		end
		return true
	end,
	FarmTorch = function()
		while not tbl20.HasItem("Hellfire Torch") do
			if not tbl26.Exists("Cursed Captain") then
				local v8, v9 = tbl12.RetryAPIServer("Cursed Captain")
				if not v8 then
					return false, str5 .. " is not in this server: " .. tostring(v9)
				end
				return false, "Hopping to a server that has " .. str5
			end

			tbl20.WaitForAliveRoot()
			local v8, v9 = tbl33.EnterGhostShip()

			if not v8 then
				if not tbl20.WaitForRespawnIfDead() then
					return false, v9
				end
			else
				local v10, v11, v12 = tbl26.Kill("Cursed Captain", Vector3.new(923.213, 125.39765, 32852.832), tbl44.HasLeftGhostShip, true)
				if not v10 and not v12 then
					return false, v11
				end
			end

			task.wait(5)
		end

		return true, nil
	end,
	RunRaceStep = function(arg)
		local Ectoplasm, v8 = tbl10.Invoke("Ectoplasm", "Change", 4)
		if v8 then
			return false, v8
		end
		task.wait(1)
		if arg.Race.Value == "Ghoul" then
			return true, nil
		end
		local v9, v10 = tbl44.RefreshEctoplasm(true)
		if v9 == nil then
			return false, v10
		end

		if v9 < n41 then
			return tbl44.FarmEctoplasm()
		end

		if not tbl20.HasItem("Hellfire Torch") then
			return tbl44.FarmTorch()
		end
		local Ectoplasm2, v11 = tbl10.Invoke("Ectoplasm", "Buy", 4)
		if v11 then
			return false, v11
		end
		task.wait(1)
		return true, nil, true
	end,
	EnsureRace = function(arg)
		if type(arg) ~= "table" or not arg.Race then
			return false, "Race data is unavailable"
		end
		local n46 = 0

		while arg.Race.Value ~= "Ghoul" do
			local v8, v9, v10 = tbl44.RunRaceStep(arg)
			if not v8 then
				return false, v9
			end

			if v10 then
				n46 += 1
				if not (n43 <= n46) then
					continue
				end
				return false, "The Ectoplasm shop did not change the race to Ghoul"
			end
		end

		tbl20.WaitForAliveRoot()
		return true, nil
	end,
}

local tbl45 = {
	BoatDealerPosition = Vector3.new(-12.414993, 8.977997, 2959.396),
	BoatDealerTolerance = 15,
	BoatName = "MarineBrigade",
	BoatSpawnDelay = 2,
	BoatSitTimeout = 15,
	BoatSitPollDelay = 0.25,
	BeastZonePosition = Vector3.new(-64.29892, 33.836834, 6347.8853),
	BeastPollDelay = 0.5,
	BeastHopTimeout = 600,
	BeastRange = 2000,
	BeastHoverHeight = 200,
	BeastOrbitRadius = 100,
	BeastOrbitSpeed = 6,
	BeastMoveTolerance = 50,
	OrbitTolerance = 20,
	EventEscapeHeight = 2000,
	RetreatHealthRatio = 0.3,
	ReturnHealthRatio = 0.5,
	TeacherPosition = Vector3.new(-2599.6218, 238.19833, -10315.998),
	KarateName = "Sharkman Karate",
	SkillKeys = { "Z", "X", "C" },
	SkillKeyDelay = 0.1,
	BuyDelay = 1,
	MobAttackHeight = 15,
	ArrivalTolerance = 3,
	MoveTimeout = 120,
	FleeMobNames = { PirateBrigade = true, PirateGrandBrigade = true },
	FleeSearchFolders = { "Enemies", "SeaBeasts", "Boats", "NPCs" },
	LastFleeName = nil,
	FarmMobNames = { Shark = true, Piranha = true },
}

local tbl46

tbl46 = {
	MoveDirect = function(arg, arg2, arg3)
		if typeof(arg) ~= "Vector3" then
			return false, "Fishman move position must be a Vector3"
		end

		if arg2 == nil then
			arg2 = tbl45.ArrivalTolerance
		end

		local v8, v9 = Tween(arg, nil, nil, arg3)
		if v9 then
			return false, v9
		end
		local moveTimeout = tbl45.MoveTimeout
		local n46 = os.clock() + moveTimeout

		while v8:IsRunning() do
			local v10
			v10, v10 = tbl20.WaitForAliveRoot()
			if (v10.Position - arg).Magnitude <= arg2 then
				tbl23.StopJob(v8)
				return true, nil
			end

			if n46 <= os.clock() then
				tbl23.StopJob(v8)
				return false, "Timed out while moving across the sea"
			end
			task.wait(0.25)
		end

		return false, v8:GetReason() or "Fishman movement stopped before reaching the target"
	end,
	IsSeaBeastAlive = function(arg)
		if not arg or not arg.Parent then
			return false
		end
		local health = arg:FindFirstChild("Health")
		return health ~= nil and health.Value > 0
	end,
	FindSeaBeast = function()
		local seaBeasts = Workspace:FindFirstChild("SeaBeasts")
		local v8, v9 = tbl20.GetAliveRoot()
		if not seaBeasts or not v8 or not v9 then
			return nil, nil
		end

		for _, child in ipairs(seaBeasts:GetChildren()) do
			local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
			if humanoidRootPart and humanoidRootPart:IsA("BasePart") and tbl46.IsSeaBeastAlive(child) and (humanoidRootPart.Position - v9.Position).Magnitude <= tbl45.BeastRange then
				return child, humanoidRootPart
			end
		end

		return nil, nil
	end,
	FindOwnedBoat = function()
		local boats = Workspace:FindFirstChild("Boats")
		if not boats then
			return nil
		end

		for _, child in ipairs(boats:GetChildren()) do
			local owner = child:FindFirstChild("Owner")
			local vehicleSeat = child:FindFirstChild("VehicleSeat")

			if owner then
				local name = localPlayer.Name
				owner = tostring(owner.Value) == name
			end

			if owner and vehicleSeat then
				return child
			end
		end

		return nil
	end,
	BuyBoat = function()
		local v8, v9 = tbl23.MoveToPosition(tbl45.BoatDealerPosition, tbl45.BoatDealerTolerance)
		if not v8 then
			return false, v9
		end
		local BuyBoat, v10 = tbl10.Invoke("BuyBoat", tbl45.BoatName)
		if v10 then
			return false, v10
		end
		task.wait(tbl45.BoatSpawnDelay)
		if not tbl46.FindOwnedBoat() then
			return false, "Could not buy the " .. tbl45.BoatName .. " boat"
		end
		return true, nil
	end,
	SitOnBoat = function(arg)
		local vehicleSeat = arg and arg:FindFirstChild("VehicleSeat")
		if not vehicleSeat or not vehicleSeat:IsA("VehicleSeat") then
			return false, "The boat has no VehicleSeat"
		end
		local v8, v9 = Tween(vehicleSeat, nil, CFrame.new(0, 1, 0), true)
		if v9 then
			return false, v9
		end
		local boatSitTimeout = tbl45.BoatSitTimeout
		local n46 = os.clock() + boatSitTimeout

		repeat
			if not arg.Parent or not vehicleSeat.Parent then
				tbl23.StopJob(v8)
				return false, "The boat disappeared"
			end
			local v10, v11 = tbl20.WaitForAliveRoot()
			local humanoid = v10:FindFirstChildOfClass("Humanoid")
			if not humanoid then
				tbl23.StopJob(v8)
				return false, "Local humanoid is unavailable while sitting down"
			end

			if vehicleSeat.Occupant == humanoid then
				tbl23.StopJob(v8)
				return true, nil
			end

			if (vehicleSeat.Position - v11.Position).Magnitude <= tbl45.BeastMoveTolerance then
				pcall(function()
					vehicleSeat:Sit(humanoid)
				end)
			end

			task.wait(tbl45.BoatSitPollDelay)
		until os.clock() >= n46

		tbl23.StopJob(v8)
		return false, "Could not sit on the boat"
	end,
	LeaveBoat = function()
		tbl20.PreventSit(localPlayer.Character)
	end,
	FindSeaMob = function(arg)
		local enemies = Workspace:FindFirstChild("Enemies")
		if not enemies then
			return nil, nil
		end

		for _, child in ipairs(enemies:GetChildren()) do
			if arg[child.Name] then
				local humanoid = child:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
				if humanoid and humanoid.Health > 0 and humanoidRootPart and humanoidRootPart:IsA("BasePart") then
					return child, humanoidRootPart
				end
			end
		end

		return nil, nil
	end,
	GetWaterHeight = function(arg)
		local map = Workspace:FindFirstChild("Map")
		map = map and map:FindFirstChild("WaterBase-Plane")
		if map and map:IsA("BasePart") then
			return map.Position.Y
		end
		return arg
	end,
	GetSkyPosition = function(arg)
		local eventEscapeHeight = tbl45.EventEscapeHeight
		local z = arg.Z
		return Vector3.new(arg.X, tbl46.GetWaterHeight(arg.Y) + eventEscapeHeight, z)
	end,
	EscapeToSky = function(arg)
		return tbl46.MoveDirect(arg, tbl45.BeastMoveTolerance)
	end,
	NormalizeName = function(arg)
		local v8 = string.gsub(tostring(arg), "[%s_%-]", "")
		return string.lower(v8)
	end,
	IsFleeEvent = function(arg)
		local v8 = tbl46.NormalizeName(arg.Name)

		for k in pairs(tbl45.FleeMobNames) do
			if v8 == tbl46.NormalizeName(k) then
				return true
			end
		end

		return false
	end,
	FindFleeEvent = function()
		for _, fleeSearchFolder in ipairs(tbl45.FleeSearchFolders) do
			local v8 = Workspace:FindFirstChild(fleeSearchFolder)

			if v8 then
				for _, child in ipairs(v8:GetChildren()) do
					if tbl46.IsFleeEvent(child) then
						return child
					end
				end
			end
		end

		for _, child in ipairs(Workspace:GetChildren()) do
			if tbl46.IsFleeEvent(child) then
				return child
			end
		end

		return nil
	end,
	ShouldRetreat = function(arg)
		local v8 = tbl46.FindFleeEvent()

		if v8 then
			if tbl45.LastFleeName ~= v8.Name then
				tbl45.LastFleeName = v8.Name
				warn("Fishman is escaping from " .. v8.Name)
			end

			return true
		end

		tbl45.LastFleeName = nil
		local v9 = tbl20.GetHealthRatio()
		if arg then
			return v9 < tbl45.ReturnHealthRatio
		end
		return v9 < tbl45.RetreatHealthRatio
	end,
	AttackSeaMob = function(arg, arg2)
		tbl46.LeaveBoat()
		local v8, v9 = Tween(arg, 300, CFrame.new(0, tbl45.MobAttackHeight, 0))
		if v9 then
			return false, v9
		end

		while arg.Parent and v8:IsRunning() do
			local humanoid = arg:FindFirstChildOfClass("Humanoid")
			local v10
			v10, v10 = tbl20.WaitForAliveRoot()
			if not humanoid or humanoid.Health <= 0 or not arg2.Parent then
				tbl23.StopJob(v8)
				return true, nil
			end

			if (arg2.Position - v10.Position).Magnitude <= n7 then
				local v11, v12 = tbl20.EquipMelee()
				if not v11 then
					tbl23.StopJob(v8)
					return false, v12
				end
				local v13, v14 = tbl14.Enable()
				if not v13 then
					tbl23.StopJob(v8)
					return false, v14
				end
				local v15, v16 = tbl18.Attack(arg.Name)
				if not v15 and not tbl18.IsTransientError(v16) then
					tbl23.StopJob(v8)
					return false, v16
				end
				return true, nil
			end

			task.wait(0.25)
		end

		tbl23.StopJob(v8)
		return true, nil
	end,
	RideToBeastZone = function()
		local v8 = tbl46.FindOwnedBoat()
		if not v8 then
			return tbl46.BuyBoat()
		end
		local v9, v10 = tbl46.SitOnBoat(v8)
		if not v9 then
			return false, v10
		end
		return tbl46.MoveDirect(tbl45.BeastZonePosition, tbl45.BeastMoveTolerance, true)
	end,
	LureSeaBeast = function()
		local beastHopTimeout = tbl45.BeastHopTimeout
		local n46 = os.clock() + beastHopTimeout
		local flag7 = false
		local v8

		while true do
			if tbl46.FindSeaBeast() then
				tbl8.StopActiveJob("A Sea Beast has appeared")
				return true, nil
			else
				if n46 <= os.clock() then
					local v9, v10 = tbl12.HopNormalServer()
					if not v9 then
						return false, "No Sea Beast appeared: " .. tostring(v10)
					end
					return false, "Hopping to a low server to find a Sea Beast"
				end

				tbl20.WaitForAliveRoot()
				flag7 = tbl46.ShouldRetreat(flag7)
				local v9, v10 = tbl46.FindSeaMob(tbl45.FarmMobNames)

				if flag7 then
					tbl46.LeaveBoat()
					local v11, v12 = tbl46.EscapeToSky(tbl46.GetSkyPosition(tbl45.BeastZonePosition))
					if not v11 then
						return false, v12
					end
				elseif v9 then
					local v11, v12 = tbl46.AttackSeaMob(v9, v10)
					if not v11 then
						return false, v12
					end
				else
					local v11
					v11, v8 = tbl46.RideToBeastZone()
					if not v11 then
						break
					end
				end

				task.wait(tbl45.BeastPollDelay)
			end
		end

		return false, v8
	end,
	BuySharkmanKarate = function()
		if tbl20.HasItem(tbl45.KarateName) then
			return true, nil
		end
		local v8, v9 = tbl23.MoveToPosition(tbl45.TeacherPosition, 10)
		if not v8 then
			return false, v9
		end
		local BuySharkmanKarate, v10 = tbl10.Invoke("BuySharkmanKarate", true)
		if v10 then
			return false, v10
		end
		local BuySharkmanKarate2, v11 = tbl10.Invoke("BuySharkmanKarate")
		if v11 then
			return false, v11
		end
		task.wait(tbl45.BuyDelay)
		if not tbl20.HasItem(tbl45.KarateName) then
			return false, "Sharkman Karate requires Fishman Karate mastery 400, a Water Key, and 5000 Fragments"
		end
		return true, nil
	end,
	GetSeaBeastOrbitPosition = function(arg)
		local beastOrbitSpeed = tbl45.BeastOrbitSpeed
		local n46 = os.clock() * beastOrbitSpeed
		local vector2 = Vector3.new
		local beastOrbitRadius = tbl45.BeastOrbitRadius
		local n47 = arg.Position.X + math.cos(n46) * beastOrbitRadius
		local beastHoverHeight = tbl45.BeastHoverHeight
		local n48 = tbl46.GetWaterHeight(arg.Position.Y) + beastHoverHeight
		local beastOrbitRadius2 = tbl45.BeastOrbitRadius
		return vector2(n47, n48, arg.Position.Z + math.sin(n46) * beastOrbitRadius2)
	end,
	CastSkills = function(arg)
		local v8, v9 = tbl20.WaitForAliveRoot()

		pcall(function()
			v8:PivotTo(CFrame.lookAt(v9.Position, arg.Position))
			tbl8.StopVelocity(v9)
		end)

		local v10, v11 = tbl20.EquipItem(tbl45.KarateName)
		if not v10 then
			return false, v11
		end
		local v12, v13 = tbl14.Enable()
		if not v12 then
			return false, v13
		end
		tbl15.SetAim(arg.Position)
		return tbl15.CastKeys(tbl45.SkillKeys, tbl45.SkillKeyDelay)
	end,
	FightSeaBeast = function(arg)
		local flag7 = false

		while tbl46.IsSeaBeastAlive(arg) do
			tbl20.WaitForAliveRoot()
			local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart or not humanoidRootPart:IsA("BasePart") then
				return false, "The Sea Beast has no HumanoidRootPart"
			end
			flag7 = tbl46.ShouldRetreat(flag7)

			if flag7 then
				tbl15.SetAim(nil)
				local v8, v9 = tbl46.EscapeToSky(tbl46.GetSkyPosition(humanoidRootPart.Position))
				if not v8 then
					return false, v9
				end
			else
				local orbitTolerance = tbl45.OrbitTolerance
				local v8, v9 = tbl46.MoveDirect(tbl46.GetSeaBeastOrbitPosition(humanoidRootPart), orbitTolerance)
				if not v8 then
					return false, v9
				end
				local v10, v11 = tbl46.CastSkills(humanoidRootPart)
				if not v10 then
					return false, v11
				end
			end

			task.wait()
		end

		return true, nil
	end,
	KillSeaBeast = function()
		local v8, v9 = tbl46.BuySharkmanKarate()
		if not v8 then
			return false, v9
		end
		local v10, v11 = tbl46.LureSeaBeast()
		if not v10 then
			return false, v11
		end
		tbl46.LeaveBoat()
		tbl15.HookAim()
		local v12 = tbl46.FindSeaBeast()
		if not v12 then
			return false, "The Sea Beast disappeared before the fight started"
		end
		local v13, v14 = tbl46.FightSeaBeast(v12)
		tbl15.SetAim(nil)
		return v13, v14
	end,
}

local n46 = 5
local n47 = 2
local tbl47 = {}
local tbl48 = {}

local tbl49 = {
	{ Name = "Diamond", Position = Vector3.new(-1576.71, 198.59, 13.72) },
	{ Name = "Jeremy", Position = Vector3.new(2006.92, 448.95, 853.98) },
	{ Name = "Orbitus", Position = Vector3.new(-2172.73, 103.32, -4015.02) },
}

local tbl50

tbl50 = {
	ValidateConfiguredRaces = function()
		if type(kaitun6V4.Race) ~= "table" then
			return nil, "Config.Race must be an array of race names"
		end

		if #kaitun6V4.Race == 0 then
			return nil, "Config.Race is empty"
		end

		for i, v8 in ipairs(kaitun6V4.Race) do
			if type(v8) ~= "string" or v8 == "" then
				return nil, "Config.Race[" .. tostring(i) .. "] must be a non-empty string"
			end

			if not tbl35[v8] then
				return nil, "Config.Race[" .. tostring(i) .. "] is not a known race: " .. v8
			end

			if not tbl48[v8] then
				return nil, "Race V3 quest is not implemented for " .. v8
			end
		end

		return kaitun6V4.Race, nil
	end,
	GetNextRace = function()
		local v8, v9 = tbl50.ValidateConfiguredRaces()
		if not v8 then
			return nil, false, v9
		end
		local v10, v11 = tbl36.GetTitles()
		if not v10 then
			return nil, false, "Failed to check the V3 titles: " .. tostring(v11)
		end

		for _, v12 in ipairs(v8) do
			local v13 = tbl35[v12]
			if not v13 then
				return nil, false, "No Race V3 title is configured for " .. tostring(v12)
			end

			if not tbl36.HasTitleNamed(v10, v13) then
				return v12, false, nil
			end
		end

		return nil, true, nil
	end,
	RunWenlocktoadQuest = function(arg, arg2, arg3)
		local Wenlocktoad

		while true do
			local v8, v9 = tbl36.IsV3()

			if v8 == nil then
				return false, v9
			else
				if v8 then
					return true, arg .. " upgraded to V3"
				end
				local v10
				Wenlocktoad, v10 = tbl10.Invoke("Wenlocktoad", "1")
				if v10 then
					return false, v10
				end

				if Wenlocktoad == 0 then
					local Wenlocktoad2, v11 = tbl10.Invoke("Wenlocktoad", "2")
					if v11 then
						return false, v11
					end

					if arg3 then
						arg3()
					end
				elseif Wenlocktoad == 1 then
					local v11, v12 = arg2()
					if not v11 then
						return false, v12
					end
				else
					if Wenlocktoad ~= 2 then
						break
					end
					local Wenlocktoad2, v11 = tbl10.Invoke("Wenlocktoad", "3")
					if v11 then
						return false, v11
					end
					task.wait(1)
				end

				task.wait(0.25)
			end
		end

		return false, "Unexpected Wenlocktoad state for " .. arg .. ": " .. tostring(Wenlocktoad)
	end,
	FarmMinkChests = function()
		local n48 = 0
		local v8, v9, v10

		v9, v10 = tbl25.Farm(function()
			local Wenlocktoad, v11 = tbl10.Invoke("Wenlocktoad", "1")

			if v11 then
				n48 += 1
				if n48 >= n46 then
					v8 = v11
					return true
				end
				warn(tostring(v11))
				return false
			end

			n48 = 0
			return Wenlocktoad ~= 1
		end, false)

		if v8 then
			return false, v8
		end

		if not v9 then
			return false, v10
		end
		return true, nil
	end,
	DoMink = function()
		if not tbl2[placeId] then
			return false, "The Mink V3 quest only works in the Second Sea"
		end
		tbl20.WaitForAliveRoot()
		local v8, v9 = tbl36.GetUpgradeData()
		if not v8 then
			return false, v9
		end
		local Mink, v10 = tbl36.HasV3Title("Mink")
		if Mink == nil then
			return false, "Failed to check the Mink V3 title: " .. tostring(v10)
		end

		if Mink then
			return true, "Mink V3 is already completed because the " .. tbl35.Mink .. " title was found"
		end
		local v11, v12 = tbl36.IsV3()
		if v11 == nil then
			return false, v12
		end

		if v11 and v8.Race.Value == "Mink" then
			return true, "Mink is already V3"
		end
		local Mink2, v13 = tbl36.EnsureRerollRace("Mink", v8)
		if not Mink2 then
			return false, v13
		end
		local v14, v15 = tbl33.RunQuest()
		if not v14 then
			return false, v15
		end
		local Mink3, v16 = tbl36.MeetsV3Requirements("Mink", v8)
		if not Mink3 then
			return false, v16
		end
		return tbl50.RunWenlocktoadQuest("Mink", tbl50.FarmMinkChests)
	end,
}

tbl48.Mink = tbl50.DoMink

tbl50.ResetKilledBosses = function()
	table.clear(tbl47)
end

tbl50.FindMissingHumanBosses = function()
	local v8 = nil

	for _, v9 in ipairs(tbl49) do
		if not tbl47[v9.Name] and not tbl26.Exists(v9.Name) then
			local tbl51 = v8 or {}
			tbl51[#tbl51 + 1] = v9.Name
			v8 = tbl51
		end
	end

	return v8
end

tbl50.KillHumanBoss = function(arg)
	local v8, v9, v10 = tbl26.Kill(arg.Name, arg.Position, tbl50.FindMissingHumanBosses)
	if v8 then
		return true, nil, nil
	end

	if v10 then
		return false, nil, v10
	end

	if not tbl26.Exists(arg.Name) then
		return false, nil, { arg.Name }
	end
	return false, "Failed to kill " .. arg.Name .. ": " .. tostring(v9), nil
end

tbl50.HopForMissingHumanBosses = function(arg)
	local str6 = table.concat(arg, ", ")
	local v8, v9 = tbl12.HopNormalServer()
	if not v8 then
		return false, "Missing Human V3 boss(es): " .. str6 .. " " .. tostring(v9)
	end
	return false, "Hopping to a low server because Human V3 boss(es) are missing: " .. str6
end

tbl50.ConfirmHumanBossCredit = function()
	local n48 = os.clock() + n47

	while true do
		local Wenlocktoad, v8 = tbl10.Invoke("Wenlocktoad", "1")

		if v8 then
			return false, v8
		else
			if Wenlocktoad ~= 1 then
				return true, nil
			end
			task.wait(0.25)
			if os.clock() >= n48 then
				break
			end
		end
	end

	tbl18.Stop()
	local v8, v9 = tbl12.HopNormalServer()
	if not v8 then
		return false, "A Human V3 boss kill was not credited: " .. tostring(v9)
	end
	return false, "A Human V3 boss kill was not credited hopping to a low server"
end

tbl50.HuntHumanBosses = function()
	local v8 = tbl50.FindMissingHumanBosses()
	if v8 then
		return tbl50.HopForMissingHumanBosses(v8)
	end

	for _, v9 in ipairs(tbl49) do
		if not tbl47[v9.Name] then
			local v10, v11, v12 = tbl50.KillHumanBoss(v9)
			if v10 then
				tbl47[v9.Name] = true
				continue
			end

			if v12 then
				return tbl50.HopForMissingHumanBosses(v12)
			end
			return false, v11
		end
	end

	return tbl50.ConfirmHumanBossCredit()
end

tbl50.DoHuman = function()
	if not tbl2[placeId] then
		return false, "The Human V3 quest only works in the Second Sea"
	end
	tbl20.WaitForAliveRoot()
	local v8, v9 = tbl36.GetUpgradeData()
	if not v8 then
		return false, v9
	end
	local Human, v10 = tbl36.HasV3Title("Human")
	if Human == nil then
		return false, "Failed to check the Human V3 title: " .. tostring(v10)
	end

	if Human then
		return true, "Human V3 is already completed because the " .. tbl35.Human .. " title was found"
	end
	local v11, v12 = tbl36.IsV3()
	if v11 == nil then
		return false, v12
	end

	if v11 and v8.Race.Value == "Human" then
		return true, "Human is already V3"
	end
	local Human2, v13 = tbl36.EnsureRerollRace("Human", v8)
	if not Human2 then
		return false, v13
	end
	local v14, v15 = tbl33.RunQuest()
	if not v14 then
		return false, "Failed to upgrade Human to V2: " .. tostring(v15)
	end
	local Human3, v16 = tbl36.MeetsV3Requirements("Human", v8)
	if not Human3 then
		return false, v16
	end
	return tbl50.RunWenlocktoadQuest("Human", tbl50.HuntHumanBosses, tbl50.ResetKilledBosses)
end

tbl48.Human = tbl50.DoHuman

tbl50.LoadCyborgFruit = function()
	local v8, v9 = tbl38.LoadStoredFruit()
	if not v8 then
		return false, v9
	end
	task.wait(1)
	return true, nil
end

tbl50.DoCyborg = function()
	if not tbl2[placeId] then
		return false, "The Cyborg V3 quest only works in the Second Sea"
	end
	tbl20.WaitForAliveRoot()
	local v8, v9 = tbl36.GetUpgradeData()
	if not v8 then
		return false, v9
	end
	local Cyborg, v10 = tbl36.HasV3Title("Cyborg")
	if Cyborg == nil then
		return false, "Failed to check the Cyborg V3 title: " .. tostring(v10)
	end

	if Cyborg then
		return true, "Cyborg V3 is already completed because the " .. tbl35.Cyborg .. " title was found"
	end
	local v11, v12 = tbl38.EnsureRace(v8)
	if not v11 then
		return false, v12
	end
	local v13, v14 = tbl33.RunQuest()
	if not v13 then
		return false, "Failed to upgrade Cyborg to V2: " .. tostring(v14)
	end
	local Cyborg2, v15 = tbl36.MeetsV3Requirements("Cyborg", v8)
	if not Cyborg2 then
		return false, v15
	end
	return tbl50.RunWenlocktoadQuest("Cyborg", tbl50.LoadCyborgFruit)
end

tbl48.Cyborg = tbl50.DoCyborg

tbl50.CreateStateWatcher = function()
	local n48 = 0

	return function()
		local Wenlocktoad, v8 = tbl10.Invoke("Wenlocktoad", "1")

		if v8 then
			n48 += 1
			if n48 >= n46 then
				return false, v8
			end
			warn(tostring(v8))
			return false, nil
		end

		n48 = 0
		return Wenlocktoad ~= 1, nil
	end
end

tbl50.HuntGhoulPlayers = function()
	return tbl43.AttackPlayers(tbl50.CreateStateWatcher(), nil, "Ghoul")
end

tbl50.HuntSkypieaPlayers = function()
	return tbl43.AttackPlayers(tbl50.CreateStateWatcher(), "Skypiea", "Skypiea", true)
end

tbl50.RunV2QuestThenHop = function()
	local v8, v9, v10 = tbl33.RunQuest()
	if not v8 or not v10 then
		return v8, v9
	end
	local v11, v12 = tbl12.HopNormalServer()
	if v11 then
		return false, "Race upgraded to V2, " .. tostring(v12)
	end
	warn("Could not hop after the V2 upgrade: " .. tostring(v12))
	return true, v9
end

tbl50.DoGhoul = function()
	if not tbl2[placeId] then
		return false, "The Ghoul V3 quest only works in the Second Sea"
	end
	tbl20.WaitForAliveRoot()
	local v8, v9 = tbl36.GetUpgradeData()
	if not v8 then
		return false, v9
	end
	local Ghoul, v10 = tbl36.HasV3Title("Ghoul")
	if Ghoul == nil then
		return false, "Failed to check the Ghoul V3 title: " .. tostring(v10)
	end

	if Ghoul then
		return true, "Ghoul V3 is already completed because the " .. tbl35.Ghoul .. " title was found"
	end
	local Ghoul2, v11 = tbl36.MeetsV3Requirements("Ghoul", v8)
	if not Ghoul2 then
		return false, v11
	end
	local v12, v13 = tbl44.EnsureRace(v8)
	if not v12 then
		return false, v13
	end
	local v14, v15 = tbl36.IsV3()
	if v14 == nil then
		return false, v15
	end

	if v14 then
		return true, "Ghoul is already V3"
	end
	local v16, v17 = tbl50.RunV2QuestThenHop()
	if not v16 then
		return false, "Failed to upgrade Ghoul to V2: " .. tostring(v17)
	end
	return tbl50.RunWenlocktoadQuest("Ghoul", tbl50.HuntGhoulPlayers)
end

tbl48.Ghoul = tbl50.DoGhoul

tbl50.DoFishman = function()
	if not tbl2[placeId] then
		return false, "The Fishman V3 quest only works in the Second Sea"
	end
	tbl20.WaitForAliveRoot()
	local v8, v9 = tbl36.GetUpgradeData()
	if not v8 then
		return false, v9
	end
	local Fishman, v10 = tbl36.HasV3Title("Fishman")
	if Fishman == nil then
		return false, "Failed to check the Fishman V3 title: " .. tostring(v10)
	end

	if Fishman then
		return true, "Fishman V3 is already completed because the " .. tbl35.Fishman .. " title was found"
	end
	local v11, v12 = tbl36.IsV3()
	if v11 == nil then
		return false, v12
	end

	if v11 and v8.Race.Value == "Fishman" then
		return true, "Fishman is already V3"
	end
	local Fishman2, v13 = tbl36.EnsureRerollRace("Fishman", v8)
	if not Fishman2 then
		return false, v13
	end
	local v14, v15 = tbl33.RunQuest()
	if not v14 then
		return false, "Failed to upgrade Fishman to V2: " .. tostring(v15)
	end
	local Fishman3, v16 = tbl36.MeetsV3Requirements("Fishman", v8)
	if not Fishman3 then
		return false, v16
	end
	return tbl50.RunWenlocktoadQuest("Fishman", tbl46.KillSeaBeast)
end

tbl48.Fishman = tbl50.DoFishman

tbl50.DoSkypiea = function()
	if not tbl2[placeId] then
		return false, "The Skypiea V3 quest only works in the Second Sea"
	end
	tbl20.WaitForAliveRoot()
	local v8, v9 = tbl36.GetUpgradeData()
	if not v8 then
		return false, v9
	end
	local Skypiea, v10 = tbl36.HasV3Title("Skypiea")
	if Skypiea == nil then
		return false, "Failed to check the Skypiea V3 title: " .. tostring(v10)
	end

	if Skypiea then
		return true, "Skypiea V3 is already completed because the " .. tbl35.Skypiea .. " title was found"
	end
	local v11, v12 = tbl36.IsV3()
	if v11 == nil then
		return false, v12
	end

	if v11 and v8.Race.Value == "Skypiea" then
		return true, "Skypiea is already V3"
	end
	local Skypiea2, v13 = tbl36.EnsureRerollRace("Skypiea", v8)
	if not Skypiea2 then
		return false, v13
	end
	local v14, v15 = tbl33.RunQuest()
	if not v14 then
		return false, "Failed to upgrade Skypiea to V2: " .. tostring(v15)
	end
	local Skypiea3, v16 = tbl36.MeetsV3Requirements("Skypiea", v8)
	if not Skypiea3 then
		return false, v16
	end
	return tbl50.RunWenlocktoadQuest("Skypiea", tbl50.HuntSkypieaPlayers)
end

tbl48.Skypiea = tbl50.DoSkypiea

local tbl51 = {
	SyncPath = "/Sync",
	SyncInterval = 0.75,
	StaleAfter = 10,
	WarnInterval = 30,
	LastSyncAt = -math.huge,
	LastWarnAt = -math.huge,
	LastResponse = nil,
	LastStatus = nil,
	RequestFunction = nil,
	RequestResolved = false,
	PendingCommandAck = nil,
	ProcessedCommands = {},
	LastError = nil,
	LastErrorAt = nil,
	LastErrorCount = 0,
}

local tbl52

tbl52 = {
	MoonStatusProvider = nil,
	CompletedRacesProvider = nil,
	CommandHandler = nil,
	SetLastError = function(arg)
		local match = (arg ~= nil and tostring(arg) or ""):match("^[^\n]*") or ""
		if match == "" then
			return false, "The reported error is empty"
		end

		if #match > 300 then
			match = match:sub(1, 300)
		end

		if tbl51.LastError == match then
			tbl51.LastErrorCount = tbl51.LastErrorCount + 1
		else
			tbl51.LastError = match
			tbl51.LastErrorCount = 1
		end

		tbl51.LastErrorAt = os.time()
		return true, nil
	end,
	ClearLastError = function()
		tbl51.LastError = nil
		tbl51.LastErrorAt = nil
		tbl51.LastErrorCount = 0
		return true, nil
	end,
	HandleCommand = function(arg)
		if type(arg) ~= "table" then
			return false, nil
		end
		local pendingCommandAck = tostring(arg.Id or "")
		if pendingCommandAck == "" then
			return false, "The host command ID is unavailable"
		end

		if tbl51.ProcessedCommands[pendingCommandAck] then
			tbl51.PendingCommandAck = pendingCommandAck
			return true, nil
		end

		if type(tbl52.CommandHandler) ~= "function" then
			return false, "The host command handler is unavailable"
		end
		local ok, result, result2 = pcall(tbl52.CommandHandler, arg)
		if not ok then
			return false, "The host command failed: " .. tostring(result)
		end

		if result ~= true then
			return false, result2 or "The host command was not handled"
		end
		tbl51.ProcessedCommands[pendingCommandAck] = true
		tbl51.PendingCommandAck = pendingCommandAck
		return true, nil
	end,
	GetRequest = function()
		if tbl51.RequestResolved then
			return tbl51.RequestFunction
		end
		tbl51.RequestResolved = true
		local tbl53 = {}
		local v8 = http_request
		local request_ = type(http) == "table" and http.request or nil
		local v9 = request
		local request_2 = type(syn) == "table" and syn.request or nil
		tbl53[1] = v8
		tbl53[2] = request_
		tbl53[3] = v9
		tbl53[4] = request_2

		for _, v10 in ipairs(tbl53) do
			if type(v10) == "function" then
				tbl51.RequestFunction = v10
				return v10
			end
		end

		return nil
	end,
	Post = function(arg, arg2)
		local v8 = tbl52.GetRequest()
		if not v8 then
			return nil, "The executor has no HTTP request function"
		end

		local ok, result = pcall(function()
			return HttpService:JSONEncode(arg2)
		end)

		if not ok then
			return nil, "Failed to encode the host request: " .. tostring(result)
		end

		local ok2, result2 = pcall(function()
			return v8({
				Url = kaitun6V4.HostUrl .. arg,
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json",
					Authorization = "Bearer " .. kaitun6V4.SyncToken,
					["X-Group-Id"] = kaitun6V4.GroupId,
				},
				Body = result,
			})
		end)

		if not ok2 then
			return nil, "The host is unreachable: " .. tostring(result2)
		end

		if type(result2) ~= "table" then
			return nil, "The host reply was unexpected"
		end
		local n48 = tonumber(result2.StatusCode) or 0

		if n48 ~= 200 then
			local reason = nil

			pcall(function()
				local data = HttpService:JSONDecode(result2.Body)

				if type(data) == "table" and type(data.Reason) == "string" and data.Reason ~= "" then
					reason = data.Reason
				end
			end)

			return nil, "The host replied with status " .. tostring(n48) .. (reason and ": " .. reason or "")
		end

		local ok3, result3 = pcall(function()
			return HttpService:JSONDecode(result2.Body)
		end)

		if not ok3 or type(result3) ~= "table" then
			return nil, "The host reply could not be decoded"
		end

		if result3.Ok ~= true then
			return nil, "The host refused the request: " .. tostring(result3.Reason)
		end
		return result3, nil
	end,
	GetRaceName = function()
		local data = localPlayer:FindFirstChild("Data")
		data = data and data:FindFirstChild("Race")
		if not data or type(data.Value) ~= "string" then
			return ""
		end
		return data.Value
	end,
	Sync = function(lastStatus, arg)
		if lastStatus == nil then
			lastStatus = tbl51.LastStatus
		end

		local tbl53 = {
			GroupId = kaitun6V4.GroupId,
			Webhook = { Enabled = kaitun6V4.Webhook.Enabled, Url = kaitun6V4.Webhook.Enabled and kaitun6V4.Webhook.Url or "" },
			Username = localPlayer.Name,
			Upgrader = kaitun6V4.Account[1],
			Upgraders = kaitun6V4.Account,
			Helpers = kaitun6V4.Help,
			Races = kaitun6V4.Race,
			JobId = game.JobId,
			PlaceId = placeId,
			Race = tbl52.GetRaceName(),
			AtDoor = false,
			InTrial = false,
			Kicked = false,
			FullMoon = false,
			MoonReady = false,
			MoonEligible = false,
			FullMoonEnded = false,
			TrialDone = false,
			Training = false,
			TrainingComplete = false,
			Preparing = false,
			PreparingComplete = false,
			ReadyForTrial = false,
			CompletedRaces = {},
			V4Done = false,
			CommandAck = tbl51.PendingCommandAck,
			LastError = tbl51.LastError or "",
			LastErrorAt = tbl51.LastErrorAt or 0,
			LastErrorCount = tbl51.LastErrorCount or 0,
		}

		if arg == true and type(tbl51.LastStatus) == "table" then
			for k, lastStatu in pairs(tbl51.LastStatus) do
				tbl53[k] = lastStatu
			end
		end

		if type(lastStatus) == "table" then
			for k, lastStatu in pairs(lastStatus) do
				tbl53[k] = lastStatu
			end
		end

		if type(tbl52.MoonStatusProvider) == "function" then
			local ok, result = pcall(tbl52.MoonStatusProvider)

			if ok and type(result) == "table" then
				tbl53.FullMoon = result.FullMoon == true
				tbl53.MoonReady = result.MoonReady == true
				tbl53.MoonEligible = result.MoonEligible == true
				tbl53.FullMoonEnded = tbl53.FullMoonEnded == true or result.FullMoonEnded == true
			end
		end

		if type(tbl52.CompletedRacesProvider) == "function" then
			local ok, completedRaces = pcall(tbl52.CompletedRacesProvider)

			if ok and type(completedRaces) == "table" then
				tbl53.CompletedRaces = completedRaces
			end
		end

		if arg ~= true then
			tbl51.LastStatus = lastStatus
		end

		local v8, v9 = tbl52.Post(tbl51.SyncPath, tbl53)

		if not v8 then
			local lastWarnAt = tbl51.LastWarnAt

			if os.clock() - lastWarnAt >= tbl51.WarnInterval then
				tbl51.LastWarnAt = os.clock()
				warn(tostring(v9))
			end

			return nil, v9
		end

		tbl51.LastSyncAt = os.clock()
		tbl51.LastResponse = v8
		local commandAck = tbl53.CommandAck

		if commandAck ~= nil and tbl51.PendingCommandAck == commandAck then
			tbl51.PendingCommandAck = nil
		end

		local v10, v11 = tbl52.HandleCommand(v8.Command)
		local flag7

		if v11 then
			local lastWarnAt = tbl51.LastWarnAt
			flag7 = os.clock() - lastWarnAt >= tbl51.WarnInterval
		else
			flag7 = v11
		end

		if flag7 then
			tbl51.LastWarnAt = os.clock()
			warn(tostring(v11))
		end

		return v8, nil
	end,
}

fn7 = function(arg)
	tbl52.Sync(arg and { Preparing = true } or { PreparingComplete = true })
end

tbl52.Refresh = function(arg)
	local lastResponse = tbl51.LastResponse

	if lastResponse then
		local lastSyncAt = tbl51.LastSyncAt
		lastResponse = os.clock() - lastSyncAt < tbl51.SyncInterval
	end

	if lastResponse then
		return tbl51.LastResponse, nil
	end
	return tbl52.Sync(arg)
end

tbl52.GetResponse = function()
	if not tbl51.LastResponse then
		return nil
	end
	local lastSyncAt = tbl51.LastSyncAt
	if tbl51.StaleAfter < os.clock() - lastSyncAt then
		return nil
	end
	return tbl51.LastResponse
end

tbl52.IsUpgrader = function()
	local v8 = tbl52.GetResponse()
	if not v8 then
		return nil
	end
	return v8.Role == "Upgrader"
end

tbl52.IsPrimaryHelper = function()
	local v8 = tbl52.GetResponse()
	if v8 and type(v8.MoonScout) == "string" then
		return v8.MoonScout == localPlayer.Name
	end
	local v9 = kaitun6V4.Help[1]
	return type(v9) == "string" and v9 ~= "" and localPlayer.Name == v9
end

tbl52.GetTargetRace = function()
	local v8 = tbl52.GetResponse()
	if not v8 or type(v8.TargetRace) ~= "string" then
		return nil
	end
	return v8.TargetRace
end

tbl52.GetRound = function()
	local v8 = tbl52.GetResponse()
	if not v8 or type(v8.Round) ~= "table" then
		return nil
	end
	return v8.Round
end

tbl52.ShouldMoonHop = function()
	local v8 = tbl52.GetResponse()
	return v8 ~= nil and v8.MoonHop == true
end

tbl52.GetAccounts = function()
	local v8 = tbl52.GetResponse()
	if not v8 or type(v8.Accounts) ~= "table" then
		return nil
	end
	return v8.Accounts
end

tbl52.GetManagedAccounts = function()
	local v8 = tbl52.GetResponse()
	if not v8 or type(v8.ManagedAccounts) ~= "table" then
		return tbl52.GetAccounts()
	end
	return v8.ManagedAccounts
end

tbl52.IsGroupAccount = function(arg)
	local v8 = tbl52.GetManagedAccounts()
	if not v8 then
		return nil
	end

	for _, v9 in ipairs(v8) do
		if v9 == arg then
			return true
		end
	end

	return false
end

tbl52.GetRelocateOrder = function()
	local v8 = tbl52.GetResponse()
	if not v8 or type(v8.Relocate) ~= "table" then
		return nil
	end
	return v8.Relocate
end

tbl52.ReportRelocateFlooded = function(arg)
	if type(arg) ~= "string" or arg == "" then
		return false, "The full group server JobId is invalid"
	end
	local v8, v9 = tbl52.Sync({ RelocateFloodedJobId = arg }, true)
	if not v8 then
		return false, v9
	end
	return true, nil
end

tbl52.IsAnyoneInTrial = function()
	local v8 = tbl52.GetResponse()
	return v8 ~= nil and v8.AnyInTrial == true
end

tbl52.StartHeartbeat = function()
	local kaitun6V4HostBeat = {}
	genv.Kaitun6V4HostBeat = kaitun6V4HostBeat

	task.spawn(function()
		while genv.Kaitun6V4HostBeat == kaitun6V4HostBeat do
			local lastSyncAt = tbl51.LastSyncAt

			if tbl51.SyncInterval <= os.clock() - lastSyncAt then
				tbl52.Sync(tbl51.LastStatus)
			end

			task.wait(tbl51.SyncInterval)
		end
	end)
end

local tbl53 = {
	HallwayEntrance = Vector3.new(28310.023, 14895.112, 109.45674),
	ExitNPCPosition = Vector3.new(28611.299, 14896.157, 105.40001),
	GreatTreePosition = Vector3.new(3028.8408, 2280.8928, -7324.783),
	LeverPosition = Vector3.new(28575.182, 14936.628, 72.31637),
	TrialEntrances = {
		Human = Vector3.new(29236.645, 14890.664, -206.42139),
		Mink = Vector3.new(29021.082, 14890.664, -379.87592),
		Fishman = Vector3.new(28224.113, 14890.664, -211.6206),
		Skypiea = Vector3.new(28968.242, 14919.313, 234.31606),
		Cyborg = Vector3.new(28492.775, 14895.664, -422.77484),
		Ghoul = Vector3.new(28673.205, 14890.365, 454.80374),
	},
	FullMoonTextureId = "http://www.roblox.com/asset/?id=9709149431",
	NextMoonTextureId = "http://www.roblox.com/asset/?id=9709149052",
	FullMoonLatched = false,
	FullMoonEndClockTime = 5,
	FullMoonStartClockTime = 18,
	NotificationCacheDuration = 0.2,
	NotificationTextObjects = {},
	NotificationUpdatedAt = -math.huge,
	NotificationContainer = nil,
	NotificationConnections = {},
	TrialFailureBaseline = nil,
	AllTrialsCompletedText = "all trials have been completed",
	TrialFailedText = "you failed your trial",
	FullMoonEndedWaitMessage = "The full moon ended while waiting at the trial door",
	UnspentGearTexts = { "you have unspent points", "go to the clock" },
	TrialLocationNames = {
		Human = "trial of strength",
		Mink = "trial of speed",
		Fishman = "trial of water",
		Skypiea = "trial of the king",
		Cyborg = "trial of the machine",
		Ghoul = "trial of carnage",
	},
	TrialMapNames = {
		Human = { "HumanTrial" },
		Mink = { "MinkTrial" },
		Fishman = { "FishmanTrial" },
		Skypiea = { "SkyTrial" },
		Cyborg = { "CyborgTrial" },
		Ghoul = { "GhoulTrial" },
	},
	TrialPollDelay = 0.1,
	TrialObjectTimeout = 10,
	TrialEntryTimeout = 15,
	HostActivationTimeout = 10,
	TrialRetryMessage = "The trial round is restarting",
	MoonHopAction = "MoonHop",
	MoonHopRequestedMessage = "The host requested helper 1 to find a Full Moon server",
	RoundCancelledWaitMessage = "The trial round was cancelled while waiting at the trial doors",
	PendingRetryRoundId = nil,
	RoundWaitTimeout = 300,
	RoundJoinGrace = 5,
	LastHandledRoundId = nil,
	DoorVerificationRange = 75,
	DoorVerificationTimeout = 30,
	ConsecutiveTrialResets = 0,
	ResetWarnThreshold = 3,
	PendingRetryReason = nil,
	QueuePollDelay = 2,
	QueueReportInterval = 30,
	MoonServerName = "FullMoon",
	MoonServerMaxPlayers = 9,
	RaceActivatedCharacter = nil,
	RaceActivatedAt = nil,
	RaceActivatedRoundId = nil,
	PvpArenaRadius = 500,
	PvpPollDelay = 0.2,
	PvpArenaTimeout = 60,
	PvpRoundTimeout = 300,
	HelperPvpResetDelay = 2.5,
	GearSelections = {
		[2] = { Slot = "Gear2", Branch = "Omega" },
		[3] = { Slot = "Gear3", Branch = "Omega" },
		[4] = { Slot = "Gear4", Branch = "Alpha" },
	},
	HelperGearSlot = "Gear3",
	HelperGearBranch = "Omega",
	HelperPreferredGearSlots = { "Gear3", "Gear2" },
	HelperWasFullBeforeTrial = false,
	GearConfirmTimeout = 15,
	GearPointWaitTimeout = 15,
	UpgradeStateWarmupTimeout = 2.5,
	UpgradeStatePollDelay = 0.25,
	CompletedTrialCount = 4,
	DoneFilePrefix = "6V4_",
	RecoveryScope = "",
	RecoveryPhase = "Startup",
	RecoveryEpoch = 0,
	RecoveryProgressAt = nil,
	ClockFailureGrace = 90,
	TrainingFarmPosition = Vector3.new(-9506.234, 172.13062, 6117.077),
	TrainingFarmTolerance = 80,
	TrainingMobHoverHeight = 15,
	TrainingGatherRange = 350,
	LastTrainingGatherWarning = nil,
	TrainingPlayerDangerRange = 500,
	TrainingPollDelay = 0.1,
	TrainingBuyRetryDelay = 2.5,
	TrainingBuyConfirmTimeout = 2.5,
	TrainingBuyConfirmPollDelay = 0.25,
	TrainingTimeout = 1800,
	TrainingMobHeightBand = 60,
	TrainingProgressEpsilon = 5,
	TrainingStallDelay = 6,
	TrainingSkipDuration = 20,
	TrainingSkippedMobs = {},
	BoneMobNames = {
		["Reborn Skeleton"] = true,
		["Living Zombie"] = true,
		["Demonic Soul"] = true,
		["Posessed Mummy"] = true,
	},
	TrialCompletionTimeout = 120,
	HelperMovementCompletionDelay = 5,
	TrialStartDistance = 250,
	TrialMobRange = 500,
	TrialMobAttackHeight = 15,
	TrialBeastRange = 1500,
	TrialBeastHoverHeight = 300,
	MinkCeilingOffset = -20,
	CyborgHoldHeight = 500,
	SkillKeys = { "Z", "X", "C" },
	SkillKeyDelay = 0.1,
	DoneStage = 4,
	TempleName = "Temple of Time",
	TempleRegionX = 20000,
	TempleEntranceSettleDelay = 1,
	GreatTreeTolerance = 30,
	MoveTolerance = 5,
	RetryDelay = 1,
	RaceDataTimeout = 10,
	FractalName = "Mirror Fractal",
	FractalType = "Material",
	MirageName = "MysticIsland",
	MirageHeight = 400,
	MirageActivationRange = 1000,
	MirageSafeTravelDistance = 2000,
	MirageAltitudeDropTolerance = 75,
	RecoveryHeight = 800,
	RetreatHealthRatio = 0.3,
	ReturnHealthRatio = 0.5,
	ResonatePollDelay = 0.25,
	MarkerAttachmentName = "Attachment",
	MarkerGlowName = "Glow",
	MarkerGlowRate = 20,
	MarkerGlowLifetime = NumberRange.new(0.5, 1),
	RaceMarkers = {
		Human = "Last Resort",
		Fishman = "Water Body",
		Skypiea = "Heavenly Blood",
		Mink = "Agility",
		Ghoul = "Heightened Senses",
		Cyborg = "Energy Core",
	},
	ResonanceText = "has resonated with the moon",
	GearConfirmDelay = 5,
	GearTouchDistance = 1,
}

local tbl54

tbl54 = {
	Report = function(arg, arg2)
		warn(tostring(arg))
		v.Log(arg, arg2 or "Working")
	end,
	MarkRecoveryProgress = function(arg)
		tbl53.RecoveryPhase = tostring(arg or "Progress")
		tbl53.RecoveryEpoch = (tonumber(tbl53.RecoveryEpoch) or 0) + 1
		tbl53.RecoveryProgressAt = os.clock()
	end,
	SetRecoveryScope = function(arg, arg2, arg3)
		local concat = table.concat
		local tbl55 = {}
		local str6 = tostring(localPlayer.UserId)
		local str7 = tostring(arg3 or "")
		local str8 = tostring(arg2 or "")
		local v8 = tostring
		arg = arg or ""
		local v9 = table.pack(v8(arg))
		tbl55[1] = str6
		tbl55[2] = str7
		tbl55[3] = str8

		do
			local values = table.pack(table.unpack(v9, 1, v9.n))
			table.move(values, 1, values.n, 4, tbl55)
		end

		local v10 = concat(tbl55, "|")
		if tbl53.RecoveryScope == v10 then
			return
		end
		tbl53.RecoveryScope = v10
		tbl54.MarkRecoveryProgress("ScopeChanged")
	end,
	MoveTo = function(arg, arg2, arg3)
		if typeof(arg) ~= "Vector3" then
			return false, "Race V4 move position must be a Vector3"
		end

		if arg2 == nil then
			arg2 = tbl53.MoveTolerance
		end

		local v8, v9 = Tween(arg)
		if v9 then
			return false, v9
		end

		while v8:IsRunning() do
			if arg3 then
				local v10, v11 = arg3()
				if v10 then
					tbl23.StopJob(v8)
					return false, v11 or "Race V4 movement was cancelled"
				end
			end

			local v10
			v10, v10 = tbl20.WaitForAliveRoot()
			if (v10.Position - arg).Magnitude <= arg2 then
				tbl23.StopJob(v8)
				return true, nil
			end
			task.wait(0.25)
		end

		return false, v8:GetReason() or "Movement stopped before reaching the Race V4 position"
	end,
	GetProgress = function()
		local RaceV4Progress, v8 = tbl10.Invoke("RaceV4Progress", "Check")
		if v8 then
			return nil, v8
		end
		local num = tonumber(RaceV4Progress)
		if not num then
			return nil, "RaceV4Progress Check returned an unexpected value " .. tostring(RaceV4Progress)
		end
		return num, nil
	end,
	LoadTemple = function()
		local map = Workspace:FindFirstChild("Map")
		if not map then
			return false, "Workspace.Map is unavailable"
		end

		if map:FindFirstChild(tbl53.TempleName) then
			return true, nil
		end
		local mapStash = ReplicatedStorage:FindFirstChild("MapStash")
		local v8 = mapStash and mapStash:FindFirstChild(tbl53.TempleName)
		if not v8 then
			return false, tbl53.TempleName .. " is unavailable in ReplicatedStorage.MapStash"
		end

		local ok, result = pcall(function()
			v8.Parent = map
		end)

		if not ok then
			return false, "Failed to load " .. tbl53.TempleName .. " from MapStash: " .. tostring(result)
		end

		if not map:FindFirstChild(tbl53.TempleName) then
			return false, tbl53.TempleName .. " did not appear in Workspace.Map"
		end
		return true, nil
	end,
	IsInTemple = function(arg)
		return arg ~= nil and arg.Position.X > tbl53.TempleRegionX
	end,
	RequestHallwayEntrance = function()
		local requestEntrance, v8 = tbl10.Invoke("requestEntrance", tbl53.HallwayEntrance)
		if v8 then
			return false, v8
		end
		return true, nil
	end,
	EnterTemple = function()
		local v8

		while true do
			local v9
			v9, v9 = tbl20.WaitForAliveRoot()

			if tbl54.IsInTemple(v9) then
				return true, nil
			else
				local v10
				v10, v8 = tbl54.RequestHallwayEntrance()
				if not v10 then
					break
				end
				task.wait(tbl53.RetryDelay)
			end
		end

		return false, v8
	end,
	LeaveTemple = function()
		local v8, v9 = tbl54.MoveTo(tbl53.ExitNPCPosition)
		if not v8 then
			return false, v9
		end
		local RaceV4Progress, v10 = tbl10.Invoke("RaceV4Progress", "TeleportBack")
		if v10 then
			return false, v10
		end
		return true, nil
	end,
	ReachGreatTree = function()
		local v8

		while true do
			local v9
			v9, v9 = tbl20.WaitForAliveRoot()

			if (v9.Position - tbl53.GreatTreePosition).Magnitude <= tbl53.GreatTreeTolerance then
				return true, nil
			else
				if tbl54.IsInTemple(v9) then
					local v10, v11 = tbl54.LeaveTemple()
					if not v10 then
						return false, v11
					end
				else
					local v10
					v10, v8 = tbl54.RequestHallwayEntrance()
					if not v10 then
						break
					end
				end

				task.wait(tbl53.RetryDelay)
			end
		end

		return false, v8
	end,
	CheckTempleDoor = function()
		local CheckTempleDoor, v8 = tbl10.Invoke("CheckTempleDoor")
		if v8 then
			return nil, v8
		end

		if type(CheckTempleDoor) ~= "boolean" then
			return nil, "CheckTempleDoor returned an unexpected value " .. tostring(CheckTempleDoor)
		end
		return CheckTempleDoor, nil
	end,
	GetMirage = function()
		local map = Workspace:FindFirstChild("Map")
		return map and map:FindFirstChild(tbl53.MirageName) or nil
	end,
	GetMirageTopPosition = function(arg, arg2)
		if not arg then
			return nil, "Mirage Island is unavailable while measuring its height"
		end
		local n48 = -math.huge
		local v8 = nil

		for _, descendant in ipairs(arg:GetDescendants()) do
			if descendant:IsA("BasePart") then
				local n49 = descendant.Position.Y + descendant.Size.Y / 2

				if n49 > n48 then
					n48 = n49
					v8 = descendant
				end
			end
		end

		if not v8 then
			return nil, "Mirage Island has no BasePart to measure"
		end
		return Vector3.new(v8.Position.X, n48 + (arg2 or 0), v8.Position.Z), nil
	end,
	FindBlueGear = function()
		local v8 = tbl54.GetMirage()
		if not v8 then
			return nil
		end

		for _, child in ipairs(v8:GetChildren()) do
			if child:IsA("MeshPart") and child.Name == "Part" then
				return child
			end
		end

		return nil
	end,
	HasMoonResonatedMessage = function()
		local playerGui = localPlayer:FindFirstChild("PlayerGui")
		if not playerGui then
			return false
		end

		for _, descendant in ipairs(playerGui:GetDescendants()) do
			if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
				local resonanceText = tbl53.ResonanceText
				if string.find(string.lower(descendant.Text), resonanceText, 1, true) then
					return true
				end
			end
		end

		return false
	end,
	HopForMirage = function()
		local v8, v9 = tbl12.RetryAPIServer(tbl53.MirageName)
		if not v8 then
			return false, "Mirage Island is not in this server: " .. tostring(v9)
		end
		return false, "Hopping to a server that has Mirage Island"
	end,
	MoveToMirage = function()
		local v8 = tbl54.GetMirage()
		if not v8 then
			return false, "Mirage Island is unavailable while moving to it"
		end

		local function fn8()
			if tbl54.GetMirage() then
				return false, nil
			end
			return true, "Mirage Island disappeared while moving to it"
		end

		local v9, v10 = tbl54.GetMirageTopPosition(v8, tbl53.MirageHeight)
		if not v9 then
			return false, v10
		end
		local v11, v12 = tbl20.WaitForAliveRoot()
		if not v12 then
			return false, "The character is unavailable while moving to Mirage Island"
		end
		local mirageSafeTravelDistance = tbl53.MirageSafeTravelDistance
		if Vector3.new(v9.X - v12.Position.X, 0, v9.Z - v12.Position.Z).Magnitude <= mirageSafeTravelDistance then
			return tbl54.MoveTo(v9, tbl53.MoveTolerance, fn8)
		end
		local n48 = math.max(v9.Y, v12.Position.Y)
		local moveTolerance = tbl53.MoveTolerance
		local v13, v14 = tbl54.MoveTo(Vector3.new(v12.Position.X, n48, v12.Position.Z), moveTolerance, fn8)
		if not v13 then
			return false, "Failed to reach the Mirage travel altitude: " .. tostring(v14)
		end
		local vector2 = Vector3.new(v9.X, n48, v9.Z)
		local v15

		while true do
			if not tbl54.GetMirage() then
				return false, "Mirage Island disappeared while moving to it"
			else
				local v16, v17 = tbl20.WaitForAliveRoot()
				if not v17 then
					return false, "The character disappeared while moving to Mirage Island"
				end
				local moveTolerance2 = tbl53.MoveTolerance
				if Vector3.new(vector2.X - v17.Position.X, 0, vector2.Z - v17.Position.Z).Magnitude <= moveTolerance2 then
					return tbl54.MoveTo(v9, tbl53.MoveTolerance, fn8)
				end

				if v17.Position.Y < n48 - tbl53.MirageAltitudeDropTolerance then
					local v18
					v18, v15 = tbl54.MoveTo(Vector3.new(v17.Position.X, n48, v17.Position.Z), tbl53.MoveTolerance, fn8)
					if not v18 then
						break
					end
				end

				local flag7 = false

				local v18, v19 = tbl54.MoveTo(vector2, tbl53.MoveTolerance, function()
					local v18, v19 = fn8()
					if v18 then
						return true, v19
					end
					local v20
					v20, v20 = tbl20.GetAliveRoot()
					if v20 and v20.Position.Y < n48 - tbl53.MirageAltitudeDropTolerance then
						flag7 = true
						return true, "Mirage travel altitude dropped"
					end
					return false, nil
				end)

				if v18 then
					return tbl54.MoveTo(v9, tbl53.MoveTolerance, fn8)
				end

				if not flag7 then
					return false, v19
				end
				task.wait(0.25)
			end
		end

		return false, "Failed to restore the Mirage travel altitude: " .. tostring(v15)
	end,
	FaceMoon = function(arg)
		local currentCamera = Workspace.CurrentCamera
		if not arg or not currentCamera then
			return false, "The character or camera is unavailable while facing the moon"
		end

		local ok, result = pcall(function()
			local moonDirection = Lighting:GetMoonDirection()
			currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, currentCamera.CFrame.Position + moonDirection)
			arg.CFrame = CFrame.new(arg.Position, arg.Position + moonDirection)
		end)

		if not ok then
			return false, "Failed to face the moon: " .. tostring(result)
		end
		return true, nil
	end,
	IsOnMirage = function()
		local v8 = tbl54.GetMirage()
		if not v8 then
			return false
		end
		local v9 = tbl54.GetMirageTopPosition(v8)
		local v10
		v10, v10 = tbl20.GetAliveRoot()
		if not v9 or not v10 then
			return false
		end
		return (v10.Position - v9).Magnitude <= tbl53.MirageActivationRange
	end,
	GetAbilityRootPart = function()
		local characters = Workspace:FindFirstChild("Characters")
		characters = characters and characters:FindFirstChild(localPlayer.Name) or localPlayer.Character
		return characters and characters:FindFirstChild("HumanoidRootPart") or nil
	end,
	GetMarkerName = function()
		local data = localPlayer:WaitForChild("Data", tbl53.RaceDataTimeout)
		data = data and data:WaitForChild("Race", tbl53.RaceDataTimeout)
		if not data or type(data.Value) ~= "string" or data.Value == "" then
			return nil, "Player race data is unavailable while building the race marker"
		end
		local v8 = tbl53.RaceMarkers[data.Value]
		if not v8 then
			return nil, "No race marker is configured for " .. data.Value
		end
		return v8, nil
	end,
	EnsureRaceMarker = function()
		local v8, v9 = tbl54.GetMarkerName()
		if not v8 then
			return false, v9
		end
		local v10 = tbl54.GetAbilityRootPart()
		if not v10 then
			return false, "The character root is unavailable while building the race marker"
		end

		if v10:FindFirstChild(v8) then
			return true, nil
		end

		local ok, result = pcall(function()
			local attachment = Instance.new("Attachment")
			attachment.Name = tbl53.MarkerAttachmentName
			local particleEmitter = Instance.new("ParticleEmitter")
			particleEmitter.Name = tbl53.MarkerGlowName
			particleEmitter.Rate = tbl53.MarkerGlowRate
			particleEmitter.Lifetime = tbl53.MarkerGlowLifetime
			particleEmitter.Parent = attachment
			attachment.Parent = v10
			local particleEmitter2 = Instance.new("ParticleEmitter")
			particleEmitter2.Name = v8
			particleEmitter2.Rate = tbl53.MarkerGlowRate
			particleEmitter2.Lifetime = tbl53.MarkerGlowLifetime
			particleEmitter2.Parent = v10
		end)

		if not ok then
			return false, "Failed to build the " .. v8 .. " marker: " .. tostring(result)
		end
		return true, nil
	end,
	RecoverHealthOnMirage = function()
		if tbl53.RetreatHealthRatio <= tbl20.GetHealthRatio() then
			return true, nil
		end
		local recoveryHeight = tbl53.RecoveryHeight
		local v8, v9 = tbl54.GetMirageTopPosition(tbl54.GetMirage(), recoveryHeight)
		if not v8 then
			return false, v9
		end
		local v10, v11 = Tween(v8)
		if v11 then
			return false, v11
		end

		while v10:IsRunning() do
			if not tbl54.GetMirage() then
				tbl23.StopJob(v10)
				return false, "Mirage Island disappeared while recovering health"
			end

			if not tbl20.GetAliveRoot() then
				tbl23.StopJob(v10)
				return false, "The character died while recovering health on Mirage Island"
			end
			local returnHealthRatio = tbl53.ReturnHealthRatio
			if tbl20.GetHealthRatio() >= returnHealthRatio then
				tbl23.StopJob(v10)
				return true, nil
			end
			task.wait(tbl53.ResonatePollDelay)
		end

		return false, v10:GetReason() or "Movement stopped while recovering health on Mirage Island"
	end,
	CollectBlueGear = function(arg)
		tbl54.Report("Collecting Blue Gear", "Trial")
		local v8

		while true do
			if not tbl54.GetMirage() then
				return false, nil
			else
				local v9, v10 = tbl54.CheckTempleDoor()
				if v9 == nil then
					return false, v10
				end

				if v9 then
					return true, nil
				end
				local v11, v12 = tbl54.RecoverHealthOnMirage()
				if not v11 then
					return false, v12
				end

				if not arg or not arg.Parent then
					local gearConfirmDelay = tbl53.GearConfirmDelay
					local n48 = os.clock() + gearConfirmDelay

					while true do
						if not tbl54.GetMirage() then
							return false, nil
						else
							local v13, v14 = tbl54.CheckTempleDoor()
							if v13 == nil then
								return false, v14
							end

							if v13 then
								return true, nil
							end
							task.wait(0.25)
							if os.clock() >= n48 then
								break
							end
						end
					end

					return false, "Blue Gear disappeared before the Temple door opened"
				end

				pcall(function()
					arg.Transparency = 0
				end)

				local v13

				v13, v8 = tbl54.MoveTo(arg.Position, tbl53.GearTouchDistance, function()
					if not tbl54.GetMirage() then
						return true, nil
					end

					if not arg.Parent then
						return true, "Blue Gear disappeared while moving to it"
					end
					return false, nil
				end)

				if not v13 then
					if arg.Parent and tbl54.GetMirage() then
						break
					end
					task.wait(0.25)
					continue
				end

				local v14, v15 = tbl20.WaitForAliveRoot()

				pcall(function()
					v14:PivotTo(arg.CFrame)
					tbl8.StopVelocity(v15)
				end)

				task.wait(0.25)
			end
		end

		return false, v8
	end,
	ResonateOnMirage = function()
		local flag7 = false

		while tbl54.GetMirage() do
			local v8, v9 = tbl54.CheckTempleDoor()
			if v8 == nil then
				return false, v9
			end

			if v8 then
				return true, nil
			end
			local v10, v11 = tbl54.RecoverHealthOnMirage()

			if not v10 then
				if not tbl54.GetMirage() then
					return false, nil
				end
				return false, v11
			end

			local v12 = tbl54.FindBlueGear()
			flag7 = flag7 or tbl54.HasMoonResonatedMessage() or v12 ~= nil and v12.Transparency < 1

			if v12 and flag7 then
				tbl54.Report("Blue Gear found collecting", "Success")
				local v13, v14 = tbl54.CollectBlueGear(v12)
				if v13 then
					return true, nil
				end

				if not tbl54.GetMirage() then
					return false, nil
				end
				return false, v14
			end

			if not tbl54.IsOnMirage() then
				local v13, v14 = tbl54.MoveToMirage()

				if not v13 then
					if not tbl54.GetMirage() then
						return false, nil
					end
					return false, v14
				end
			end

			local v13, v14 = tbl20.WaitForAliveRoot()
			local v15, v16 = tbl54.FaceMoon(v14)
			if not v15 then
				return false, v16
			end
			local v17, v18 = tbl54.EnsureRaceMarker()
			if not v17 then
				return false, v18
			end
			task.wait(tbl53.ResonatePollDelay)
		end

		return false, nil
	end,
	ObtainBlueGear = function()
		local v8

		while true do
			local v9, v10 = tbl54.CheckTempleDoor()

			if v9 == nil then
				return false, v10
			else
				if v9 then
					return true, nil
				end
				local v11, v12 = tbl31.HasItem(tbl53.FractalName, tbl53.FractalType)
				if v11 == nil then
					return false, v12
				end

				if not v11 then
					return false, tbl53.FractalName .. " is required before searching for the Blue Gear"
				end

				if not tbl54.GetMirage() then
					tbl54.Report("Finding Mirage Island", "Travel")
					return tbl54.HopForMirage()
				end
				tbl54.Report("Moving to Mirage Island", "Travel")
				local v13, v14 = tbl54.MoveToMirage()

				if not v13 then
					if tbl54.GetMirage() then
						return false, v14
					end
					task.wait(tbl53.RetryDelay)
					continue
				end

				tbl54.Report("Resonating Mirror Fractal")
				local v15
				v15, v8 = tbl54.ResonateOnMirage()
				if v15 then
					return true, nil
				end

				if v8 then
					break
				end
				task.wait(tbl53.RetryDelay)
			end
		end

		return false, v8
	end,
	GetLever = function()
		local map = Workspace:FindFirstChild("Map")
		map = map and map:FindFirstChild(tbl53.TempleName)
		map = map and map:FindFirstChild("Lever")
		map = map and map:FindFirstChild("Prompt")
		map = map and map:FindFirstChild("ProximityPrompt")
		if not map or not map:IsA("ProximityPrompt") then
			return nil, "Lever.Prompt.ProximityPrompt is unavailable"
		end
		return map, nil
	end,
	PullLever = function()
		local v8, v9 = tbl54.CheckTempleDoor()
		if v8 == nil then
			return false, v9
		end

		if not v8 then
			return false, "Blue Gear has not been collected"
		end
		local v10, v11 = tbl54.EnterTemple()
		if not v10 then
			return false, v11
		end
		tbl54.Report("Moving to the Temple lever", "Travel")
		local v12, v13 = tbl54.MoveTo(tbl53.LeverPosition)
		if not v12 then
			return false, v13
		end
		local v14, v15 = tbl54.GetLever()
		if not v14 then
			return false, v15
		end

		if type(fireproximityprompt) ~= "function" then
			return false, "The executor has no fireproximityprompt function"
		end
		local ok, result = pcall(fireproximityprompt, v14)
		if not ok then
			return false, "Failed to activate the Temple lever: " .. tostring(result)
		end
		task.wait(tbl53.RetryDelay)
		return true, "Blue Gear collected Temple lever activated"
	end,
	IsTransientTrialMovementError = function(arg)
		return type(arg) == "string" and string.find(arg, "Local character became unavailable while moving", 1, true) ~= nil
	end,
	GetTrialEntrance = function()
		local data = localPlayer:WaitForChild("Data", tbl53.RaceDataTimeout)
		data = data and data:WaitForChild("Race", tbl53.RaceDataTimeout)
		if not data or type(data.Value) ~= "string" or data.Value == "" then
			return nil, nil, "Player race data is unavailable before moving to the trial entrance"
		end
		local value = data.Value
		local v8 = tbl53.TrialEntrances[value]
		if not v8 then
			return nil, nil, "No trial entrance position is configured for " .. value
		end
		return value, v8, nil
	end,
	MoveToTrialEntrance = function()
		local v8, v9, v10 = tbl54.GetTrialEntrance()
		if not v8 then
			return false, v10
		end
		local v11

		while true do
			local v12
			v12, v12 = tbl20.WaitForAliveRoot()
			local v13 = tbl54.IsInTemple(v12)
			local v14, v15 = tbl54.EnterTemple()

			if not v14 then
				return false, v15
			else
				if not v13 then
					task.wait(tbl53.TempleEntranceSettleDelay)
				end

				local v16
				v16, v11 = tbl54.MoveTo(v9)
				if v16 then
					return true, "Moved to the " .. v8 .. " trial entrance"
				end

				if not tbl54.IsTransientTrialMovementError(v11) then
					break
				end
				tbl20.WaitForAliveRoot()
				task.wait(tbl53.RetryDelay)
			end
		end

		return false, v11
	end,
	GetTrialMap = function(arg)
		local map = Workspace:FindFirstChild("Map")
		local v8 = tbl53.TrialMapNames[arg]
		if not map or not v8 then
			return nil
		end

		for _, v9 in ipairs(v8) do
			local v10 = map:FindFirstChild(v9)
			if v10 then
				return v10
			end
		end

		return nil
	end,
	GetTrialPosition = function(arg)
		if not arg or not arg.Parent then
			return nil
		end

		if arg:IsA("BasePart") then
			return arg.Position
		end

		local ok, result = pcall(function()
			return arg:GetPivot()
		end)

		return ok and result.Position or nil
	end,
	GetPvpForcefield = function()
		local map = Workspace:FindFirstChild("Map")
		map = map and map:FindFirstChild(tbl53.TempleName)
		map = map and map:FindFirstChild("FFABorder")
		map = map and map:FindFirstChild("Forcefield")
		if not map or not map:IsA("BasePart") then
			return nil
		end
		return map
	end,
	IsPvpForcefieldOpen = function()
		local v8 = tbl54.GetPvpForcefield()
		if not v8 then
			return nil
		end
		return v8.Transparency == 0
	end,
	HasTrialCompletionSignal = function()
		if tbl54.HasAllTrialsCompleted() then
			return true
		end
		return tbl54.IsPvpForcefieldOpen() == true
	end,
	IsGuiVisible = function(arg, arg2)
		if not arg or not arg:IsA("GuiObject") or not arg.Visible then
			return false
		end
		local parent = arg.Parent

		while parent and parent ~= arg2 do
			if parent:IsA("GuiObject") and not parent.Visible then
				return false
			end

			if parent:IsA("LayerCollector") and not parent.Enabled then
				return false
			end
			parent = parent.Parent
		end

		return parent == arg2
	end,
	IsTrialCountdownVisible = function()
		local playerGui = localPlayer:FindFirstChild("PlayerGui")
		local main = playerGui and playerGui:FindFirstChild("Main")
		main = main and main:FindFirstChild("TopHUDList")
		main = main and main:FindFirstChild("RaidTimer")
		local flag7 = not playerGui or not main

		if not flag7 then
			flag7 = not (main:IsA("TextLabel") or main:IsA("TextButton") or main:IsA("TextBox"))
		end

		if flag7 then
			return false
		end
		local v8 = string.lower(tostring(main.Text))
		return string.find(v8, "time left", 1, true) ~= nil and string.match(v8, "%d+:%d%d") ~= nil and tbl54.IsGuiVisible(main, playerGui)
	end,
	GetTrialRetryRoundId = function(arg)
		local round = type(arg) == "table" and arg.Round
		if type(round) ~= "table" or round.RetryRequested ~= true then
			return nil
		end
		local str6 = tostring(round.RoundId or "")
		return str6 ~= "" and str6 or nil
	end,
	CheckTrialRetry = function(arg)
		local v8, v9 = tbl52.Refresh(arg)
		if not v8 then
			return nil, v9
		end
		local v10 = tbl54.GetTrialRetryRoundId(v8)
		if not v10 then
			return false, nil
		end
		tbl53.PendingRetryRoundId = v10
		return true, nil
	end,
	RequestTrialRetry = function(arg)
		local pendingRetryRoundId = tostring(arg or "")
		if pendingRetryRoundId == "" then
			return false, "The host trial round ID is unavailable"
		end
		local v8, v9 = tbl52.Sync({ TrialRetryRequest = pendingRetryRoundId })
		if not v8 then
			return false, v9
		end

		if tbl54.GetTrialRetryRoundId(v8) ~= pendingRetryRoundId then
			return false, "The host did not confirm the trial retry request"
		end
		tbl53.PendingRetryRoundId = pendingRetryRoundId
		return true, nil
	end,
	HasTrialStarted = function(arg, arg2)
		if not tbl54.GetTrialMap(arg) then
			return false
		end
		local v8
		v8, v8 = tbl20.GetAliveRoot()
		if not v8 or (v8.Position - arg2).Magnitude <= tbl53.TrialStartDistance then
			return false
		end
		return tbl54.IsTrialCountdownVisible()
	end,
	SyncAtDoor = function(arg)
		local v8 = tbl53.TrialEntrances[tbl52.GetRaceName()]
		local v9
		v9, v9 = tbl20.GetAliveRoot()
		local magnitude = v9 and v8 and (v9.Position - v8).Magnitude or nil

		local tbl55 = {
			AtDoor = magnitude ~= nil and magnitude <= tbl53.DoorVerificationRange,
			DoorDistance = magnitude,
			FullMoon = tbl54.IsFullMoon(),
			MoonReady = tbl54.IsMoonServerReady(),
			FullMoonEnded = tbl54.HasFullMoonEnded(),
		}

		if type(arg) == "table" then
			for k, v10 in pairs(arg) do
				tbl55[k] = v10
			end
		end

		local v10, v11 = tbl52.Sync(tbl55)
		return v10, v11, tbl55
	end,
	ReturnToTrialEntrance = function(arg)
		if type(arg) == "table" and arg.AtDoor == true then
			return true, nil
		end
		tbl54.Report("Moved away from trial door, returning", "Waiting")
		local v8, v9 = tbl54.MoveToTrialEntrance()
		if not v8 then
			return false, "Failed to return to the trial door: " .. tostring(v9)
		end
		return true, nil
	end,
	ActivateRace = function(arg)
		if tbl53.RaceActivatedCharacter == localPlayer.Character and (arg == nil or tbl53.RaceActivatedRoundId == tostring(arg)) then
			return true, nil
		end
		local remotes = ReplicatedStorage:FindFirstChild("Remotes")
		local commE = remotes and remotes:FindFirstChild("CommE")
		if not commE or not commE:IsA("RemoteEvent") then
			return false, "The CommE RemoteEvent is unavailable"
		end

		local ok, result = pcall(function()
			commE:FireServer("ActivateAbility")
		end)

		if not ok then
			return false, "Failed to activate the race: " .. tostring(result)
		end
		tbl53.RaceActivatedCharacter = localPlayer.Character
		tbl53.RaceActivatedAt = os.clock()
		tbl53.RaceActivatedRoundId = arg ~= nil and tostring(arg) or nil
		return true, nil
	end,
	IsRaceActive = function()
		if tbl53.RaceActivatedCharacter == nil or tbl53.RaceActivatedCharacter ~= localPlayer.Character then
			return false
		end
		local raceActivatedRoundId = tbl53.RaceActivatedRoundId
		if type(raceActivatedRoundId) ~= "string" or raceActivatedRoundId == "" then
			return true
		end
		local v8 = tbl52.GetRound()
		local flag7 = v8 ~= nil

		if flag7 then
			flag7 = tostring(v8.RoundId or "") == raceActivatedRoundId
		end

		return flag7
	end,
}

tbl52.CommandHandler = function(arg)
	if arg.Type ~= "ActivateV3" then
		return false, "Unsupported host command " .. tostring(arg.Type)
	end
	local v8 = tbl52.GetRound()
	local str6 = tostring(arg.RoundId or "")
	local flag7 = not v8 or str6 == ""

	if not flag7 then
		flag7 = tostring(v8.RoundId or "") ~= str6
	end

	if flag7 then
		return false, "Ignoring a stale ActivateV3 command"
	end
	tbl54.Report("Host command received activating V3", "Trial")
	return tbl54.ActivateRace(str6)
end

tbl52.IsBatchComplete = function()
	local v8 = tbl52.GetResponse()
	return v8 ~= nil and v8.BatchComplete == true
end

tbl54.RetryFullMoonAPIServer = function(arg)
	return tbl12.RetryAPIServer(tbl53.MoonServerName, arg, tbl53.MoonServerMaxPlayers)
end

tbl54.GetRoundTrialMaps = function(arg)
	if type(arg) ~= "table" or type(arg.Accounts) ~= "table" or type(arg.Members) ~= "table" then
		return nil
	end
	local tbl55 = {}
	local tbl56 = {}

	for _, account in ipairs(arg.Accounts) do
		tbl55[account] = true
	end

	local n48 = 0

	for _, member in ipairs(arg.Members) do
		if type(member) == "table" and tbl55[member.Username] and type(member.Race) == "string" then
			local v8 = tbl53.TrialMapNames[member.Race]

			if v8 then
				n48 += 1

				for _, v9 in ipairs(v8) do
					tbl56[v9] = true
				end
			end
		end
	end

	return n48 == #arg.Accounts and tbl56 or nil
end

tbl54.FindOtherTrialMaps = function(arg)
	if type(arg) ~= "table" then
		return nil
	end
	local map = Workspace:FindFirstChild("Map")
	if not map then
		return nil
	end
	local v8 = nil

	for _, child in ipairs(map:GetChildren()) do
		if not arg[child.Name] then
			for _, trialMapName in pairs(tbl53.TrialMapNames) do
				if table.find(trialMapName, child.Name) then
					local tbl55 = v8 or {}
					tbl55[#tbl55 + 1] = child.Name
					v8 = tbl55
					break
				end
			end
		end
	end

	if v8 then
		table.sort(v8)
	end

	return v8
end

tbl54.FollowRelocateOrder = function()
	local v8 = tbl52.GetRelocateOrder()
	if not v8 then
		return false, nil
	end

	if tbl54.IsRaceActive() then
		return false, nil
	end

	if v8.Scout == true then
		tbl54.Report("Finding another Full Moon server", "Travel")

		return tbl54.RetryFullMoonAPIServer(function()
			local v9 = tbl52.GetRelocateOrder()
			return v9 ~= nil and v9.Scout == true
		end)
	end

	if type(v8.JobId) == "string" and v8.JobId ~= "" then
		tbl54.Report("Joining group server " .. v8.JobId, "Travel")

		return tbl12.JoinServer(v8.JobId, function(arg)
			local v9 = tbl52.GetRelocateOrder()
			return v9 ~= nil and v9.JobId == arg
		end, function(arg)
			return tbl52.ReportRelocateFlooded(arg)
		end)
	end

	return false, nil
end

tbl54.HopForFullMoon = function()
	if not tbl52.IsPrimaryHelper() then
		return false, "Only helper 1 can search for Full Moon"
	end
	tbl54.Report("Finding a Full Moon server", "Travel")

	return tbl54.RetryFullMoonAPIServer(function()
		return tbl52.ShouldMoonHop()
	end)
end

tbl54.WaitForRound = function()
	local now = os.clock()

	while true do
		local roundWaitTimeout = tbl53.RoundWaitTimeout

		if os.clock() - now < roundWaitTimeout then
			local v8, v9, v10 = tbl54.SyncAtDoor()
			if not v8 then
				return nil, nil, v9
			end

			if v8.BatchComplete == true then
				return nil, nil, "All upgrader accounts finished all races"
			end

			if v8.Role == "Helper" and type(v8.TargetRace) == "string" and v8.TargetRace ~= tbl52.GetRaceName() then
				return nil, nil, "The host changed this helper's target race to " .. v8.TargetRace
			end

			if v8.MoonHop == true and tbl52.IsPrimaryHelper() then
				return nil, nil, tbl53.MoonHopRequestedMessage, tbl53.MoonHopAction
			end
			local v11, v12 = tbl54.FollowRelocateOrder()
			if v11 then
				return nil, nil, v12
			end

			if tbl54.HasFullMoonEnded() then
				return nil, nil, tbl53.FullMoonEndedWaitMessage
			end
			local flag7 = v10.AtDoor == true

			if not flag7 then
				local v13, v14 = tbl54.ReturnToTrialEntrance(v10)
				if not v13 then
					return nil, nil, v14
				end
			end

			if flag7 then
				local v13 = tbl52.GetRound()

				if v13 then
					local lastHandledRoundId = tostring(v13.RoundId or "")
					local n48 = tonumber(v13.StartAt) or 0
					local flag8 = lastHandledRoundId ~= "" and lastHandledRoundId == tbl53.LastHandledRoundId
					local flag9 = n48 > 0

					if flag9 then
						local n49 = n48 + tbl53.RoundJoinGrace
						flag9 = os.time() > n49
					end

					if not flag8 and not flag9 then
						tbl53.LastHandledRoundId = lastHandledRoundId
						return v13, v8.Role, nil
					end
					tbl54.Report(flag8 and "Previous trial closing" or "Stale round skipped", "Waiting")
				end

				local str6 = "Door " .. tostring(v8.AtDoorCount or 0) .. "/" .. tostring(v8.TotalCount)

				if type(v8.RoundBlock) == "string" and v8.RoundBlock ~= "" then
					str6 ..= " · " .. v8.RoundBlock
				end

				tbl54.Report(str6, "Trial")
			end

			task.wait(tbl51.SyncInterval)
		else
			break
		end
	end

	return nil, nil, "Timed out while waiting for the host to open a trial round"
end

tbl54.AreAllAccountsAtTrialDoors = function(arg)
	if type(arg) ~= "table" or type(arg.Accounts) ~= "table" or type(arg.Members) ~= "table" then
		return false, "the host account list is unavailable"
	end
	local tbl55 = {}

	for _, member in ipairs(arg.Members) do
		if type(member) == "table" and type(member.Username) == "string" then
			tbl55[member.Username] = member
		end
	end

	for _, account in ipairs(arg.Accounts) do
		local v8 = tbl55[account]
		if not v8 or v8.AtDoor ~= true then
			return false, tostring(account) .. " has not reported at its door"
		end
		local num = tonumber(v8.DoorDistance)

		if not num then
			local v9 = tbl53.TrialEntrances[v8.Race]
			if not v9 then
				return false, tostring(account) .. " has no configured trial entrance"
			end
			local v10 = Players:FindFirstChild(account)
			local v11, v12 = tbl54.GetPvpCharacter(v10)
			if not v12 then
				return false, tostring(account) .. " has no replicated character at its door"
			end
			num = (v12.Position - v9).Magnitude
		end

		if tbl53.DoorVerificationRange < num then
			return false, tostring(account) .. " is still " .. tostring(math.floor(num)) .. " studs from its door"
		end
	end

	return true, nil
end

tbl54.WaitForAllAccountsAtTrialDoors = function(arg)
	local now = os.clock()
	local activationPending = "not every account is at its trial door"

	while true do
		local doorVerificationTimeout = tbl53.DoorVerificationTimeout

		if os.clock() - now < doorVerificationTimeout then
			local v8, v9, v10 = tbl54.SyncAtDoor()
			if not v8 then
				return false, v9
			end

			if v8.MoonHop == true and tbl52.IsPrimaryHelper() then
				return false, tbl53.MoonHopRequestedMessage, tbl53.MoonHopAction
			end
			local round = v8.Round
			local flag7 = type(round) ~= "table"

			if not flag7 then
				flag7 = tostring(round.RoundId or "") ~= tostring(arg or "")
			end

			if flag7 then
				return false, tbl53.RoundCancelledWaitMessage
			end
			local flag8 = v10.AtDoor == true

			if not flag8 then
				local v11, v12 = tbl54.ReturnToTrialEntrance(v10)
				if not v11 then
					return false, v12
				end
			end

			if flag8 then
				local v11, v12 = tbl54.AreAllAccountsAtTrialDoors(v8)
				if v11 then
					return true, nil
				end
				activationPending = v12 or activationPending
				tbl54.Report("Activation pending: " .. activationPending, "Waiting")
			end

			task.wait(tbl51.SyncInterval)
		else
			break
		end
	end

	return false, "Timed out while waiting for every account at its trial door: " .. activationPending
end

tbl54.WaitForTrialStart = function()
	tbl53.TrialFailureBaseline = tbl54.CaptureTrialFailureBaseline()
	local v8, v9, v10, v11 = tbl54.WaitForRound()
	if not v8 then
		return false, v10, false, v11
	end
	tbl54.Report("Trial " .. tostring(v8.RoundId) .. " opened · " .. tostring(v9), "Trial")
	local v12, v13, v14 = tbl54.WaitForAllAccountsAtTrialDoors(v8.RoundId)

	if not v12 then
		if v14 == tbl53.MoonHopAction then
			return false, v13, false, v14
		end

		if v13 == tbl53.RoundCancelledWaitMessage then
			return false, v13, false
		end
		local v15, v16 = tbl54.RequestTrialRetry(v8.RoundId)

		if v15 then
			tbl53.PendingRetryReason = v13
		end

		return false, v15 and tbl53.TrialRetryMessage or v16 or v13, v15
	end

	tbl54.Report("All accounts ready, waiting for host activation", "Waiting")
	local now = os.clock()
	local v15 = nil
	local flag7 = false
	local exitTo = nil
	local v16

	while true do
		local hostActivationTimeout = tbl53.HostActivationTimeout

		if not (os.clock() - now < hostActivationTimeout) then
			exitTo = 1
			break
		else
			v15, v16 = tbl54.SyncAtDoor()

			if not v15 then
				exitTo = 2
				break
			else
				local round = v15.Round
				local flag8 = type(round) ~= "table"

				if not flag8 then
					flag8 = tostring(round.RoundId or "") ~= tostring(v8.RoundId or "")
				end

				if not flag8 then
					flag7 = tbl53.RaceActivatedCharacter == localPlayer.Character

					if flag7 then
						flag7 = tbl53.RaceActivatedRoundId == tostring(v8.RoundId or "")
					end

					if flag7 then
						exitTo = 1
						break
					else
						task.wait(tbl51.SyncInterval)
						continue
					end
				end
			end

			break
		end
	end

	if exitTo == 1 then
		local v17 = tbl54.GetRoundTrialMaps(v15)
		local pendingRetryReason = "The host did not activate V3 within " .. tostring(tbl53.HostActivationTimeout) .. " seconds"

		if not flag7 then
			local v18, v19 = tbl54.RequestTrialRetry(v8.RoundId)

			if v18 then
				tbl53.PendingRetryReason = pendingRetryReason
			end

			return false, v18 and tbl53.TrialRetryMessage or v19 or pendingRetryReason, v18
		end

		local raceActivatedAt = tbl53.RaceActivatedAt or os.clock()

		while true do
			local trialEntryTimeout = tbl53.TrialEntryTimeout

			if os.clock() - raceActivatedAt < trialEntryTimeout then
				local v18, v19 = tbl54.CheckTrialRetry({ AtDoor = true })
				if v18 == nil then
					return false, v19
				end

				if v18 then
					return false, tbl53.TrialRetryMessage, true
				end
				local v20 = tbl54.FindOtherTrialMaps(v17)

				if v20 then
					tbl53.PendingRetryReason = "Other trial island detected: " .. table.concat(v20, ", ")
					local v21, v22 = tbl54.RequestTrialRetry(v8.RoundId)
					return false, v21 and tbl53.TrialRetryMessage or v22, v21
				end

				if tbl54.IsTrialCountdownVisible() then
					return true, nil
				end
				task.wait(tbl53.TrialPollDelay)
			else
				break
			end
		end

		tbl53.PendingRetryReason = string.format("V3 activated but TrialTimer did not appear within %d seconds", tbl53.TrialEntryTimeout)
		local v18, v19 = tbl54.RequestTrialRetry(v8.RoundId)
		return false, v18 and tbl53.TrialRetryMessage or v19, v18
	end

	if exitTo == 2 then
		return false, v16
	end
	return false, "The trial round was cancelled before race activation"
end

tbl54.ResetForRetry = function()
	local v8, v9, v10 = tbl54.GetPvpCharacter(localPlayer)

	if v10 then
		pcall(function()
			v10.Health = 0
		end)
	end

	tbl20.WaitForRespawnIfDead()
	tbl20.WaitForAliveRoot()
	tbl53.RaceActivatedCharacter = nil
	tbl53.RaceActivatedAt = nil
	tbl53.RaceActivatedRoundId = nil
end

tbl54.ResetTrialRound = function()
	local str6 = tostring(tbl53.PendingRetryRoundId or "")
	if str6 == "" then
		return false, "The trial retry round ID is unavailable"
	end
	tbl53.ConsecutiveTrialResets = (tbl53.ConsecutiveTrialResets or 0) + 1
	tbl54.Report(tbl53.PendingRetryReason or "Trial timer missing resetting group", "Waiting")
	tbl53.PendingRetryReason = nil

	if tbl53.ResetWarnThreshold <= tbl53.ConsecutiveTrialResets then
		tbl54.Report(string.format("Trial reset %d times server may be contested", tbl53.ConsecutiveTrialResets), "Warning")
	end

	tbl8.StopActiveJob("Resetting the V4 trial round")
	tbl54.ResetForRetry()
	local v8, v9 = tbl52.Sync({ TrialRetryAck = str6 })
	if not v8 then
		return false, v9
	end
	tbl53.PendingRetryRoundId = nil
	return true, "The whole group reset and will retry the trial"
end

tbl54.EquipRaceMelee = function()
	local data = localPlayer:FindFirstChild("Data")
	data = data and data:FindFirstChild("Race")
	if (data and data.Value) ~= "Fishman" then
		return tbl20.EquipMelee()
	end

	if not tbl20.HasItem(tbl45.KarateName) then
		return nil, tbl45.KarateName .. " is unavailable for the Fishman V4 trial"
	end
	return tbl20.EquipItem(tbl45.KarateName)
end

tbl54.FindNearestTrialMob = function(arg)
	local enemies = Workspace:FindFirstChild("Enemies")
	if not enemies or not arg then
		return nil, nil
	end
	local huge = math.huge
	local v8 = nil
	local v9 = nil

	for _, child in ipairs(enemies:GetChildren()) do
		local humanoid = child:FindFirstChildOfClass("Humanoid")
		local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

		if humanoid and humanoid.Health > 0 and humanoidRootPart and humanoidRootPart:IsA("BasePart") then
			local magnitude = (humanoidRootPart.Position - arg.Position).Magnitude

			if magnitude <= tbl53.TrialMobRange and magnitude < huge then
				huge = magnitude
				v8 = child
				v9 = humanoid
			end
		end
	end

	return v8, v9
end

tbl54.CheckTrialProgress = function(arg, arg2)
	if tbl54.CheckTrialRetry({ InTrial = true }) then
		return false, tbl53.TrialRetryMessage
	end

	if tbl54.HasTrialCompletionSignal() then
		return true, nil
	end

	if tbl54.HasTrialFailed(tbl53.TrialFailureBaseline) then
		return false, "The " .. tostring(arg) .. " V4 trial failed"
	end

	if tbl53.TrialCompletionTimeout <= os.clock() - arg2 then
		return false, "Timed out while completing the " .. tostring(arg) .. " V4 trial"
	end
	return nil, nil
end

tbl54.FightTrialMob = function(arg, arg2, arg3, arg4, arg5)
	local cframe2 = CFrame.new(0, tbl53.TrialMobAttackHeight, 0)
	local v8, v9 = Tween(arg3, 300, cframe2)
	if v9 then
		return false, v9
	end
	local v10, v11 = tbl54.EquipRaceMelee()
	if not v10 then
		tbl8.StopJob(v8, "The V4 trial melee is unavailable")
		return false, v11
	end
	local v12, v13 = tbl14.Enable()
	if not v12 then
		tbl8.StopJob(v8, "The V4 trial Buso is unavailable")
		return false, v13
	end
	local v14

	while true do
		if arg2.Parent and arg3.Parent and arg4.Health > 0 then
			local v15, v16 = tbl54.CheckTrialProgress(arg, arg5)
			if v15 ~= nil then
				tbl8.StopJob(v8, "The V4 trial ended")
				return v15, v16
			end
			local v17
			v17, v17 = tbl20.WaitForAliveRoot()
			local humanoidRootPart = arg3:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart then
				tbl8.StopJob(v8, "The V4 trial mob is down")
				return nil, nil
			end

			if (humanoidRootPart.Position - v17.Position).Magnitude <= n7 then
				local v18, v19 = tbl18.Attack(arg3.Name)
				if not v18 and not tbl18.IsTransientError(v19) then
					tbl8.StopJob(v8, "The V4 trial attack failed")
					return false, v19
				end
			elseif not v8:IsRunning() then
				v8, v14 = Tween(arg3, 300, cframe2)
				if v14 then
					break
				end
			end

			task.wait()
			continue
		end

		tbl8.StopJob(v8, "The V4 trial mob is down")
		return nil, nil
	end

	return false, v14
end

tbl54.CompleteCombatTrial = function(arg)
	local now = os.clock()
	local v8, v9

	while true do
		local v10, v11 = tbl54.CheckTrialProgress(arg, now)

		if v10 ~= nil then
			return v10, v11
		else
			local v12 = tbl54.GetTrialMap(arg)
			local v13 = nil
			local v14 = nil

			if v12 then
				local v15, v16 = tbl20.WaitForAliveRoot()
				v13, v14 = tbl54.FindNearestTrialMob(v16)
			end

			if not v13 then
				task.wait(tbl53.TrialPollDelay)
				continue
			end
			v8, v9 = tbl54.FightTrialMob(arg, v12, v13, v14, now)
			if v8 == nil then
				continue
			end
			break
		end
	end

	return v8, v9
end

tbl54.GetMovementTrialDestination = function(arg, arg2)
	if arg == "Mink" then
		local ceiling = arg2:FindFirstChild("Ceiling")
		if not ceiling or not ceiling:IsA("BasePart") then
			return nil
		end
		return ceiling.CFrame * CFrame.new(0, tbl53.MinkCeilingOffset, 0)
	end

	if arg == "Skypiea" then
		local model = arg2:WaitForChild("Model", tbl53.TrialObjectTimeout)
		model = model and model:WaitForChild("FinishPart", tbl53.TrialObjectTimeout)
		if not model or not model:IsA("BasePart") then
			return nil
		end
		return model.CFrame
	end

	if arg == "Cyborg" then
		local floor = arg2:FindFirstChild("Floor")
		if not floor or not floor:IsA("BasePart") then
			return nil
		end
		return floor.CFrame * CFrame.new(0, tbl53.CyborgHoldHeight, 0)
	end

	return nil
end

tbl54.StopHold = function()
	tbl23.StopJob(tbl53.HoldJob)
	tbl53.HoldJob = nil
	tbl53.HoldDestination = nil
end

tbl54.HoldAt = function(holdDestination)
	if not tbl53.HoldJob or not tbl53.HoldJob:IsRunning() or tbl53.HoldDestination ~= holdDestination then
		tbl54.StopHold()
		local v8, v9 = Tween(holdDestination)
		if v9 then
			return false, "Failed to hold at the V4 trial position: " .. tostring(v9)
		end
		tbl53.HoldJob = v8
		tbl53.HoldDestination = holdDestination
	end

	local v8
	v8, v8 = tbl20.WaitForAliveRoot()
	return (v8.Position - holdDestination.Position).Magnitude <= tbl53.MoveTolerance, nil
end

tbl54.TouchFinishPart = function(arg)
	local model = arg:WaitForChild("Model", tbl53.TrialObjectTimeout)
	local finishPart = model and model:WaitForChild("FinishPart", tbl53.TrialObjectTimeout)
	if not finishPart or not finishPart:IsA("BasePart") then
		return false, "The Skypiea trial finish part is unavailable"
	end

	if not flag2 then
		return false, "The executor has no firetouchinterest function"
	end
	local v8
	v8, v8 = tbl20.WaitForAliveRoot()

	local ok, result = pcall(function()
		firetouchinterest(v8, finishPart, 0)
		task.wait()
		firetouchinterest(v8, finishPart, 1)
	end)

	if not ok then
		return false, "Failed to touch the Skypiea trial finish: " .. tostring(result)
	end
	return true, nil
end

tbl54.CompleteMovementTrial = function(arg, arg2)
	if arg2 == "Helper" and (arg == "Mink" or arg == "Skypiea") then
		local now = os.clock()
		tbl54.Report(arg .. " helper waiting 5s before finishing trial", "Waiting")

		while true do
			local helperMovementCompletionDelay = tbl53.HelperMovementCompletionDelay

			if os.clock() - now < helperMovementCompletionDelay then
				local v8, v9 = tbl54.CheckTrialRetry({ InTrial = true })
				if v8 == nil then
					return false, v9
				end

				if v8 then
					return false, tbl53.TrialRetryMessage
				end
				task.wait(tbl53.TrialPollDelay)
			else
				break
			end
		end
	end

	local v8, v9 = tbl54.RunMovementTrial(arg)
	tbl54.StopHold()
	return v8, v9
end

tbl54.RunMovementTrial = function(arg)
	local now = os.clock()
	local flag7 = false
	local v8

	while true do
		local v9, v10 = tbl54.CheckTrialProgress(arg, now)

		if v9 ~= nil then
			return v9, v10
		else
			local v11 = tbl54.GetTrialMap(arg)
			local v12 = v11 and tbl54.GetMovementTrialDestination(arg, v11)
			if not v12 then
				task.wait(tbl53.TrialPollDelay)
				continue
			end

			if arg == "Skypiea" then
				if not flag7 then
					local v13, v14 = tbl54.TouchFinishPart(v11)
					if not v13 then
						return false, v14
					end
					flag7 = true
				end
			elseif arg == "Mink" then
				if not flag7 then
					local v13
					flag7, v13 = tbl54.HoldAt(v12)
					if v13 then
						return false, v13
					end
				end
			else
				local v13
				v13, v8 = tbl54.HoldAt(v12)
				if v8 then
					break
				end
			end

			task.wait(tbl53.TrialPollDelay)
		end
	end

	return false, v8
end

tbl54.GetFishmanTrialSeaBeast = function(arg)
	local seaBeasts = Workspace:FindFirstChild("SeaBeasts")
	local worldOrigin = Workspace:FindFirstChild("_WorldOrigin")
	worldOrigin = worldOrigin and worldOrigin:FindFirstChild("Locations")
	worldOrigin = worldOrigin and worldOrigin:FindFirstChild("Trial of Water")
	worldOrigin = worldOrigin and worldOrigin.Position or tbl54.GetTrialPosition(arg)
	if not seaBeasts or not worldOrigin then
		return nil, nil
	end

	for _, child in ipairs(seaBeasts:GetChildren()) do
		local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart and humanoidRootPart:IsA("BasePart") and tbl46.IsSeaBeastAlive(child) and (humanoidRootPart.Position - worldOrigin).Magnitude <= tbl53.TrialBeastRange then
			return child, humanoidRootPart
		end
	end

	return nil, nil
end

tbl54.StrikeTrialBeast = function(arg)
	local v8, v9 = tbl54.EquipRaceMelee()
	if not v8 then
		return false, v9
	end
	local v10, v11 = tbl14.Enable()
	if not v10 then
		return false, v11
	end
	local flag7 = false

	local v12, v13 = tbl54.MoveTo(arg.Position + Vector3.new(0, tbl53.TrialBeastHoverHeight, 0), tbl53.MoveTolerance, function()
		if tbl46.IsSeaBeastAlive(arg.Parent) then
			return false, nil
		end
		flag7 = true
		return true, "The trial Sea Beast died while flying to it"
	end)

	if flag7 then
		return true, nil
	end

	if not v12 then
		return false, v13
	end
	tbl15.SetAim(arg.Position)
	return tbl15.CastKeys(tbl53.SkillKeys, tbl53.SkillKeyDelay)
end

tbl54.CompleteFishmanTrial = function()
	local now = os.clock()
	local v8, v9 = tbl15.HookAim()
	if not v8 then
		return false, v9
	end
	local v10

	while true do
		local Fishman, v11 = tbl54.CheckTrialProgress("Fishman", now)

		if Fishman ~= nil then
			tbl15.SetAim(nil)
			return Fishman, v11
		else
			local Fishman2 = tbl54.GetTrialMap("Fishman")
			local v12 = nil
			local v13 = nil

			if Fishman2 then
				v12, v13 = tbl54.GetFishmanTrialSeaBeast(Fishman2)
			end

			if not v12 then
				tbl15.SetAim(nil)
				task.wait(tbl53.TrialPollDelay)
				continue
			end

			local v14
			v14, v10 = tbl54.StrikeTrialBeast(v13)
			if not v14 then
				break
			end
			task.wait(tbl53.TrialPollDelay)
		end
	end

	tbl15.SetAim(nil)
	return false, v10
end

tbl54.IsPvpTimerVisible = function()
	local playerGui = localPlayer:FindFirstChild("PlayerGui")
	local main = playerGui and playerGui:FindFirstChild("Main")
	return tbl54.IsGuiVisible(main and main:FindFirstChild("Timer", true), playerGui)
end

tbl54.GetPvpCharacter = function(arg)
	if typeof(arg) ~= "Instance" or not arg:IsA("Player") or not arg.Parent then
		return nil, nil, nil
	end
	local character = arg.Character
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
	if not character or not character.Parent or not humanoid or humanoid.Health <= 0 or not humanoidRootPart or not humanoidRootPart:IsA("BasePart") then
		return nil, nil, nil
	end
	return character, humanoidRootPart, humanoid
end

tbl54.IsPlayerInPvpArena = function(arg, arg2)
	if typeof(arg2) ~= "Vector3" then
		return false
	end
	local v8, v9 = tbl54.GetPvpCharacter(arg)
	return v8 ~= nil and (v9.Position - arg2).Magnitude <= tbl53.PvpArenaRadius
end

tbl54.HasPvpOpponent = function(arg)
	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= localPlayer and tbl54.IsPlayerInPvpArena(player, arg) then
			return true
		end
	end

	return false
end

tbl54.WaitForPvpArena = function()
	local now = os.clock()

	while true do
		local pvpArenaTimeout = tbl53.PvpArenaTimeout

		if os.clock() - now < pvpArenaTimeout then
			if tbl54.CheckTrialRetry({ TrialDone = true }) then
				return nil, tbl53.TrialRetryMessage
			end
			local v8
			v8, v8 = tbl20.GetAliveRoot()

			if v8 then
				local position = v8.Position
				if tbl54.IsPvpTimerVisible() or tbl54.HasPvpOpponent(position) then
					return position, nil
				end
			end

			task.wait(tbl53.PvpPollDelay)
		else
			break
		end
	end

	return nil, "Timed out while waiting for the V4 PvP arena"
end

tbl54.IsPvpRoundActive = function(arg)
	local v8 = tbl54.IsPvpForcefieldOpen()
	if v8 ~= nil then
		return v8
	end
	return tbl54.IsPvpTimerVisible() or tbl54.HasPvpOpponent(arg)
end

tbl54.RunHelperPvp = function(arg)
	local v8, v9, v10 = tbl54.GetPvpCharacter(localPlayer)
	if not v10 then
		return true, "The helper was already down when PvP started"
	end

	if not tbl54.IsPlayerInPvpArena(localPlayer, arg) then
		return true, "The helper is outside the PvP arena"
	end
	local now = os.clock()

	while true do
		local helperPvpResetDelay = tbl53.HelperPvpResetDelay

		if os.clock() - now < helperPvpResetDelay then
			if tbl54.CheckTrialRetry({ TrialDone = true }) then
				return false, tbl53.TrialRetryMessage
			end
			task.wait(tbl53.PvpPollDelay)
		else
			break
		end
	end

	local v11, v12, v13 = tbl54.GetPvpCharacter(localPlayer)
	if not v13 then
		return true, "The helper went down during the PvP reset delay"
	end

	if not tbl54.IsPlayerInPvpArena(localPlayer, arg) then
		return true, "The helper left the PvP arena during the reset delay"
	end

	local ok, result = pcall(function()
		v13.Health = 0
	end)

	if not ok then
		return false, "Failed to reset the helper: " .. tostring(result)
	end
	return true, "The helper reset to end PvP early"
end

tbl54.WaitForPvpEnd = function(arg)
	local now = os.clock()
	tbl8.StopActiveJob("Standing still through the V4 PvP round")

	while tbl54.IsPvpRoundActive(arg) do
		if tbl54.CheckTrialRetry({ TrialDone = true }) then
			return false, tbl53.TrialRetryMessage
		end
		local pvpRoundTimeout = tbl53.PvpRoundTimeout
		if os.clock() - now >= pvpRoundTimeout then
			return false, "Timed out during the V4 PvP round"
		end
		tbl20.WaitForAliveRoot()
		task.wait(tbl53.PvpPollDelay)
	end

	return true, "The V4 PvP round ended"
end

tbl54.RunPvp = function(arg)
	local v8, v9 = tbl54.WaitForPvpArena()
	if not v8 then
		return false, v9
	end

	if arg ~= "Upgrader" then
		return tbl54.RunHelperPvp(v8)
	end
	return tbl54.WaitForPvpEnd(v8)
end

tbl54.GetRaceEvolutionState = function()
	local character = localPlayer.Character
	if not character then
		return nil, "Player character is unavailable while checking Race V4"
	end
	return character:FindFirstChild("RaceTransformed") ~= nil, nil
end

tbl54.ParseClockStatus = function(arg)
	if type(arg) == "string" then
		local ok, result = pcall(function()
			return HttpService:JSONDecode(arg)
		end)

		if ok then
			arg = result
		end
	end

	if type(arg) ~= "table" or type(arg.RaceDetails) ~= "table" then
		return nil
	end
	local raceDetails = arg.RaceDetails
	local gears = type(raceDetails.Gears) == "table" and raceDetails.Gears or {}
	local tbl55 = {}

	for i = 1, 3 do
		tbl55[i] = tostring(gears[i] or "")
	end

	return {
		HadPoint = arg.HadPoint == true,
		RaceLevel = tonumber(arg.RaceLevel) or 0,
		AlphaCount = tonumber(raceDetails.A) or 0,
		OmegaCount = tonumber(raceDetails.B) or 0,
		CompletedCount = tonumber(raceDetails.Completed) or tonumber(arg.Completed) or 0,
		GearSignature = table.concat(tbl55, "|"),
		GearSlots = tbl55,
	}
end

tbl54.GetClockProfileStatus = function()
	local remotes = ReplicatedStorage:FindFirstChild("Remotes")
	local getPlayerProfileOpened = remotes and remotes:FindFirstChild("GetPlayerProfileOpened")
	if not getPlayerProfileOpened or not getPlayerProfileOpened:IsA("RemoteFunction") then
		return nil
	end

	local ok, result = pcall(function()
		return getPlayerProfileOpened:InvokeServer()
	end)

	if not ok then
		return nil
	end
	return tbl54.ParseClockStatus(result)
end

tbl54.GetClockStatus = function()
	local TempleClock, v8 = tbl10.Invoke("TempleClock", "Check")
	if v8 then
		return nil, v8
	end
	local v9 = tbl54.ParseClockStatus(TempleClock)
	if v9 then
		return v9, nil
	end
	local v10 = tbl54.GetClockProfileStatus()
	if v10 then
		return v10, nil
	end
	return nil, "The Temple Clock status is not ready"
end

tbl54.GetDoneFileName = function()
	return tbl53.DoneFilePrefix .. tostring(localPlayer.UserId) .. ".txt"
end

tbl54.ReadDoneRaces = function()
	local tbl55 = {}
	if not flag6 then
		return tbl55
	end
	local v8 = tbl54.GetDoneFileName()

	local ok, result = pcall(function()
		if isfile(v8) then
			return readfile(v8)
		end
		return ""
	end)

	if not ok or type(result) ~= "string" then
		return tbl55
	end

	for match in string.gmatch(result, "[^,\r\n]+") do
		tbl55[match] = true
	end

	return tbl55
end

tbl54.GetDoneRaceNames = function()
	local tbl55 = {}

	for k in pairs(tbl54.ReadDoneRaces()) do
		tbl55[#tbl55 + 1] = k
	end

	table.sort(tbl55)
	return tbl55
end

tbl52.CompletedRacesProvider = function()
	return tbl54.GetDoneRaceNames()
end

tbl54.MarkRaceDone = function(arg)
	if not flag6 or type(arg) ~= "string" or arg == "" then
		return false, "The completed race list cannot be saved"
	end
	local v8 = tbl54.ReadDoneRaces()
	if v8[arg] then
		return true, nil
	end
	v8[arg] = true
	local tbl55 = {}

	for k in pairs(v8) do
		tbl55[#tbl55 + 1] = k
	end

	local ok, result = pcall(function()
		local concat = table.concat
		writefile(tbl54.GetDoneFileName(), concat(tbl55, ","))
	end)

	if not ok then
		return false, "Failed to save the completed race list: " .. tostring(result)
	end
	return true, nil
end

tbl54.PublishCompletedRace = function(arg)
	local v8, v9 = tbl54.MarkRaceDone(arg)

	if not v8 then
		tbl54.Report(v9, "Warning")
	end

	local v10, v11 = tbl52.Sync({ V4Done = true, TrainingComplete = true })
	if not v10 then
		return false, "Failed to publish the completed V4 race: " .. tostring(v11)
	end
	return true, nil
end

tbl54.GetNextV4Race = function()
	if type(kaitun6V4.Race) ~= "table" or #kaitun6V4.Race == 0 then
		return nil, false, "Config.Race must contain at least one race"
	end
	local v8 = tbl54.ReadDoneRaces()

	for _, v9 in ipairs(kaitun6V4.Race) do
		if not tbl53.TrialEntrances[v9] then
			return nil, false, "Race V4 is not configured for " .. tostring(v9)
		end

		if not v8[v9] then
			return v9, false, nil
		end
	end

	return nil, true, nil
end

tbl54.Shutdown = function()
	tbl54.Report("All configured races complete shutting down", "Success")
	tbl18.Stop()
	tbl8.StopActiveJob("All configured races reached V4")

	if not pcall(function()
		game:Shutdown()
	end) then
		pcall(function()
			localPlayer:Kick("All configured races reached V4")
		end)
	end

	return true, "All races complete client shut down"
end

tbl54.CompleteUpgraderRace = function()
	local v8 = tbl52.GetRaceName()
	local v9, v10 = tbl54.PublishCompletedRace(v8)
	if not v9 then
		return false, v10
	end
	tbl54.MarkRecoveryProgress("RaceComplete")
	local v11, v12, v13 = tbl54.GetNextV4Race()
	if v13 then
		return false, v13
	end

	if v12 then
		return tbl54.Shutdown()
	end
	tbl54.Report(v8 .. " reached V4", "Success")
	return false, v8 .. " reached V4 waiting for its batch before " .. tostring(v11)
end

tbl54.IsRaceV4Complete = function()
	local v8, v9 = tbl54.GetRaceEvolutionState()
	if v8 == nil then
		return nil, v9
	end

	if not v8 then
		return false, nil
	end
	local v10, v11 = tbl54.GetClockStatus()
	if not v10 then
		return nil, v11
	end
	return tbl54.IsFullClockStatus(v10), nil
end

tbl54.SpendPendingGear = function()
	local v8, v9 = tbl54.GetRaceEvolutionState()
	if v8 == nil then
		return false, v9
	end

	if not v8 then
		return true, nil
	end
	local v10, v11 = tbl54.GetClockStatus()
	if not v10 then
		return false, v11
	end

	if not v10.HadPoint then
		return true, nil
	end
	return tbl54.ChooseGear(true)
end

tbl54.NormalizeBranch = function(arg)
	if arg == "A" then
		return "Alpha"
	end

	if arg == "B" then
		return "Omega"
	end

	if arg == "Alpha" or arg == "Omega" then
		return arg
	end
	return nil
end

tbl54.GetInstalledGearCount = function(arg)
	if type(arg) ~= "table" then
		return 0
	end
	return math.max(0, (tonumber(arg.AlphaCount) or 0) + (tonumber(arg.OmegaCount) or 0))
end

tbl54.IsFullClockStatus = function(arg)
	return type(arg) == "table" and arg.HadPoint ~= true and arg.RaceLevel >= 2 and tbl54.GetInstalledGearCount(arg) >= 3 and arg.CompletedCount >= tbl53.CompletedTrialCount
end

tbl54.GetOppositeBranch = function(arg)
	local v8 = tbl54.NormalizeBranch(arg)
	if v8 == "Alpha" then
		return "Omega"
	end

	if v8 == "Omega" then
		return "Alpha"
	end
	return nil
end

tbl54.GetHelperGearChangeSelection = function(arg)
	for _, helperPreferredGearSlot in ipairs(tbl53.HelperPreferredGearSlots) do
		local num = tonumber(string.match(tostring(helperPreferredGearSlot), "^Gear(%d+)$"))

		if num and num >= 2 and num <= 3 then
			local v8 = tbl54.NormalizeBranch(arg.GearSlots[num - 1])
			local v9 = tbl54.GetOppositeBranch(v8)

			if v8 and v9 then
				local alphaCount = arg.AlphaCount
				local omegaCount = arg.OmegaCount
				local n48, n49

				if v8 == "Alpha" then
					n48 = alphaCount - 1
					n49 = omegaCount + 1
				else
					n49 = omegaCount - 1
					n48 = alphaCount + 1
				end

				if n48 <= 2 and n49 <= 2 then
					return "Gear" .. tostring(num), v9, v8
				end
			end
		end
	end

	return nil, nil, "Gear2 and Gear3 cannot be changed without exceeding the branch limit"
end

tbl54.GetGearSelection = function(arg, arg2)
	if arg.RaceLevel < 2 then
		return nil, nil, true
	end
	local v8 = tbl54.GetInstalledGearCount(arg)

	if not arg2 and v8 >= 3 then
		local v9, v10, v11 = tbl54.GetHelperGearChangeSelection(arg)
		if not v9 then
			return nil, nil, false, v11
		end
		return v9, v10, false, nil
	end

	local n48 = math.clamp(v8 + 2, 2, 4)
	local branch = tbl53.GearSelections[n48]
	local slot = branch and branch.Slot or "Gear" .. tostring(n48)
	branch = branch and branch.Branch or "Omega"

	if arg.AlphaCount >= 2 then
		branch = "Omega"
	elseif arg.OmegaCount >= 2 then
		branch = "Alpha"
	end

	return slot, branch, false, nil
end

tbl54.SpendGearPoint = function(arg, arg2)
	if arg == nil then
		return tbl10.Invoke("TempleClock", "SpendPoint")
	end
	local v8 = tbl54.NormalizeBranch(arg2)
	if not v8 then
		return nil, "The Temple Clock branch must be Alpha or Omega"
	end
	return tbl10.Invoke("TempleClock", "SpendPoint", tostring(arg), v8)
end

tbl54.HasClockProgressed = function(arg, arg2)
	if type(arg) ~= "table" or type(arg2) ~= "table" then
		return false
	end
	return arg.RaceLevel ~= arg2.RaceLevel or arg.AlphaCount ~= arg2.AlphaCount or arg.OmegaCount ~= arg2.OmegaCount or arg.CompletedCount ~= arg2.CompletedCount or arg.GearSignature ~= arg2.GearSignature or arg.HadPoint == true and arg2.HadPoint ~= true
end

tbl54.WaitForGearPoint = function()
	local now = os.clock()

	while true do
		local gearPointWaitTimeout = tbl53.GearPointWaitTimeout

		if os.clock() - now < gearPointWaitTimeout then
			local v8, v9 = tbl54.GetClockStatus()
			if not v8 then
				return nil, v9
			end

			if v8.HadPoint then
				return v8, nil
			end
			task.wait(tbl53.RetryDelay)
		else
			break
		end
	end

	return nil, nil
end

tbl54.ChooseGear = function(arg)
	local v8, v9 = tbl54.WaitForGearPoint()
	if v9 then
		return false, v9
	end

	if not v8 then
		return true, "There is no unspent Temple Clock point"
	end
	local v10, v11, v12, v13 = tbl54.GetGearSelection(v8, arg)
	if v13 then
		return false, v13
	end
	local v14, v15

	if v12 then
		v14 = nil
		v15 = nil
	else
		v14 = v11
		v15 = v10
	end

	local v16, v17 = tbl54.SpendGearPoint(v15, v14)
	if v17 then
		return false, v17
	end
	local now = os.clock()

	while true do
		local gearConfirmTimeout = tbl53.GearConfirmTimeout

		if os.clock() - now < gearConfirmTimeout then
			local v18 = tbl54.GetClockStatus()

			if v18 and tbl54.HasClockProgressed(v8, v18) then
				tbl54.MarkRecoveryProgress("GearChosen")
				if v12 then
					return true, "Spent the first Temple Clock point"
				end
				return true, "Spent a Temple Clock point on " .. tostring(v10) .. " " .. tostring(v11)
			end

			task.wait(tbl53.RetryDelay)
		else
			break
		end
	end

	return false, "The Temple Clock did not register the spent point"
end

tbl54.GetUpgradeRaceResults = function(arg)
	local now = os.clock()

	while true do
		local UpgradeRace, v8 = tbl10.InvokeMany("UpgradeRace", "Check")

		if not UpgradeRace then
			return nil, v8
		else
			if UpgradeRace.n > 0 and UpgradeRace[1] ~= nil then
				return UpgradeRace, nil
			end

			if not arg then
				return UpgradeRace, nil
			end
			task.wait(tbl53.UpgradeStatePollDelay)
			if not (tbl53.UpgradeStateWarmupTimeout <= os.clock() - now) then
				continue
			end
			break
		end
	end

	return nil, "UpgradeRace Check did not return the V4 state within " .. tostring(tbl53.UpgradeStateWarmupTimeout) .. "s"
end

tbl54.GetUpgradeStatus = function()
	local v8, v9 = tbl54.GetRaceEvolutionState()
	if v8 == nil then
		return nil, v9
	end
	local v10, v11 = tbl54.GetUpgradeRaceResults(v8)
	if not v10 then
		return nil, v11
	end

	if v10.n == 0 or v10[1] == nil then
		local v12, v13 = tbl54.GetProgress()
		if v12 == nil then
			return nil, v13
		end
		local flag7 = v12 >= tbl53.DoneStage

		return {
			Code = nil,
			Progress = v12,
			Cost = 0,
			CanTrial = flag7,
			NeedsTraining = false,
			NeedsPurchase = false,
			Complete = false,
			PreV4 = true,
			Remaining = nil,
			Detail = flag7 and "V3 ready for the first V4 trial" or "V4 prerequisite quest incomplete",
		}, nil
	end

	local num = tonumber(v10[1])
	local num2 = tonumber(v10[2])
	local n48 = tonumber(v10[3]) or 0
	if num == nil then
		return nil, "UpgradeRace Check returned an unexpected code"
	end

	local tbl55 = {
		Code = num,
		Progress = num2,
		Cost = n48,
		CanTrial = false,
		NeedsTraining = false,
		NeedsPurchase = false,
		Complete = false,
		PreV4 = false,
		Remaining = nil,
		Detail = "Unknown UpgradeRace state " .. tostring(num),
	}

	if num == 0 then
		tbl55.CanTrial = true
		tbl55.Detail = "Training complete next trial ready"
	elseif num == 1 then
		tbl55.NeedsTraining = true
		tbl55.Detail = "First V4 training stage required"
	elseif num == 2 then
		tbl55.NeedsPurchase = true
		tbl55.Detail = "First training upgrade ready"
	elseif num == 3 then
		tbl55.NeedsTraining = true
		tbl55.Detail = "Second V4 training stage required"
	elseif num == 4 then
		tbl55.NeedsPurchase = true
		tbl55.Detail = "Duration upgrade ready"
	elseif num == 5 then
		tbl55.Complete = true
		tbl55.Detail = "All V4 upgrades complete"
	elseif num == 6 then
		tbl55.Remaining = math.max(0, 3 - math.min(3, math.max(0, (num2 or 2) - 2)))
		tbl55.NeedsTraining = tbl55.Remaining > 0
		tbl55.Detail = tostring(tbl55.Remaining) .. " V4 training sessions left"
	elseif num == 7 then
		tbl55.NeedsPurchase = true
		tbl55.Detail = "Next training upgrade ready"
	elseif num == 8 then
		tbl55.Complete = true
		tbl55.Detail = "V4 gear complete optional mastery skipped"
	end

	return tbl55, nil
end

tbl54.BuyUpgrade = function(arg)
	local data = localPlayer:FindFirstChild("Data")
	data = data and data:FindFirstChild("Fragments")
	local n48 = data and tonumber(data.Value) or 0
	if arg.Cost > 0 and n48 < arg.Cost then
		return false, "The V4 upgrade needs " .. tostring(arg.Cost - n48) .. " more fragments"
	end
	local UpgradeRace, v8 = tbl10.Invoke("UpgradeRace", "Buy")
	if v8 then
		return false, v8
	end
	local now = os.clock()
	local v9 = nil
	local trainingBuyConfirmTimeout

	repeat
		task.wait(tbl53.TrainingBuyConfirmPollDelay)
		local v10, v11 = tbl54.GetUpgradeStatus()

		if v10 then
			if v10.NeedsPurchase ~= true or v10.Code ~= arg.Code or v10.Progress ~= arg.Progress or v10.Cost ~= arg.Cost then
				tbl54.MarkRecoveryProgress("PurchaseComplete")
				return true, nil
			end
		else
			v9 = v11
		end

		trainingBuyConfirmTimeout = tbl53.TrainingBuyConfirmTimeout
	until os.clock() - now >= trainingBuyConfirmTimeout

	data = data and tonumber(data.Value) or n48
	local str6 = data < n48 and " (fragments were deducted, but the upgrade state stayed unchanged)" or ""
	local str7 = v9 and ": " .. tostring(v9) or ""
	local character = localPlayer.Character
	local raceEnergy = character and character:FindFirstChild("RaceEnergy")
	character = character and character:FindFirstChild("RaceTransformed")
	return false, "The server did not confirm the V4 purchase" .. " (remote result: " .. tostring(UpgradeRace) .. ", energy: " .. tostring(raceEnergy and raceEnergy.Value) .. ", transformed: " .. tostring(character and character.Value) .. ")" .. str6 .. str7, data >= n48
end

tbl54.TransformForTraining = function(arg)
	local raceEnergy = arg:FindFirstChild("RaceEnergy")
	local raceTransformed = arg:FindFirstChild("RaceTransformed")
	if not raceEnergy or not raceTransformed then
		return false, "RaceEnergy or RaceTransformed is unavailable"
	end
	local num = tonumber(raceEnergy.Value)
	if not num then
		return false, "RaceEnergy returned an unexpected value"
	end

	if num < 1 or raceTransformed.Value == true then
		return true, nil
	end
	return tbl15.PressKey("Y")
end

tbl54.FindNearbyTrainingPlayer = function(arg)
	for _, player in ipairs(Players:GetPlayers()) do
		if player == localPlayer then
			continue
		end
		local v8, v9 = tbl54.GetPvpCharacter(player)
		if v9 and (v9.Position - arg.Position).Magnitude <= tbl53.TrainingPlayerDangerRange then
			return player
		end
	end

	return nil
end

tbl54.AttackTrainingMob = function(arg, arg2)
	local v8 = nil
	local v9 = nil

	for i = 1, 10 do
		v8, v9 = tbl20.EquipMelee()
		if not v8 then
			task.wait(0.1)
			continue
		end
		break
	end

	if not v8 then
		return false, "Failed to equip Melee for V4 training: " .. tostring(v9)
	end
	local v10, v11 = tbl14.Enable()
	if not v10 then
		return false, "Failed to enable Buso for V4 training: " .. tostring(v11)
	end
	local n48 = 0
	local v12 = nil

	for k in pairs(tbl53.BoneMobNames) do
		local v13, v14 = tbl19.Gather(arg, k, tbl53.TrainingGatherRange)
		n48 += v13
		v12 = v14 or v12
	end

	if n48 > 0 then
		tbl53.LastTrainingGatherWarning = nil
	elseif v12 and v12 ~= tbl53.LastTrainingGatherWarning then
		tbl53.LastTrainingGatherWarning = v12
		warn("Failed to gather V4 training mobs: " .. tostring(v12))
	end

	local v13, v14 = tbl18.Attack()
	if not v13 and not tbl18.IsTransientError(v14) and arg2.Health > 0 then
		return false, "Failed to attack V4 training mobs: " .. tostring(v14)
	end
	return true, nil
end

tbl54.SkipTrainingMob = function(arg)
	local now = os.clock()

	for k, trainingSkippedMob in pairs(tbl53.TrainingSkippedMobs) do
		if now >= trainingSkippedMob or not k.Parent then
			tbl53.TrainingSkippedMobs[k] = nil
		end
	end

	tbl53.TrainingSkippedMobs[arg] = now + tbl53.TrainingSkipDuration
end

tbl54.FindTrainingMob = function(arg)
	local enemies = Workspace:FindFirstChild("Enemies")
	if not enemies then
		return nil, nil, nil
	end
	local now = os.clock()
	local huge = math.huge
	local v8 = nil
	local v9 = nil
	local v10 = nil

	for _, child in ipairs(enemies:GetChildren()) do
		local v11 = tbl53.TrainingSkippedMobs[child]

		if tbl53.BoneMobNames[child.Name] and (not v11 or now >= v11) then
			local humanoid = child:FindFirstChildOfClass("Humanoid")
			local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
			local isBasePart = humanoid and humanoid.Health > 0 and humanoidRootPart and humanoidRootPart:IsA("BasePart")

			if isBasePart then
				local trainingMobHeightBand = tbl53.TrainingMobHeightBand
				isBasePart = math.abs(humanoidRootPart.Position.Y - arg.Position.Y) <= trainingMobHeightBand
			end

			if isBasePart then
				local magnitude = (humanoidRootPart.Position - arg.Position).Magnitude

				if magnitude < huge then
					huge = magnitude
					v8 = child
					v9 = humanoidRootPart
					v10 = humanoid
				end
			end
		end
	end

	return v8, v9, v10
end

tbl54.FarmBoneStep = function()
	local v8, v9 = tbl20.WaitForAliveRoot()
	local v10, v11 = tbl54.TransformForTraining(v8)
	if not v10 then
		return false, v11
	end
	local v12, v13, v14 = tbl54.FindTrainingMob(v9)

	if not v12 then
		if tbl53.TrainingFarmTolerance < (v9.Position - tbl53.TrainingFarmPosition).Magnitude then
			local v15, v16 = tbl23.Travel(tbl53.TrainingFarmPosition)
			if v16 then
				return false, v16
			end
		end

		return true, nil
	end

	local cframe2 = CFrame.new(0, tbl53.TrainingMobHoverHeight, 0)
	local v15, v16 = Tween(v12, 300, cframe2)
	if v16 then
		return false, v16
	end
	local now = os.clock()
	local huge = math.huge

	while true do
		if v12.Parent and v14.Parent and v14.Health > 0 then
			local v17, v18 = tbl20.GetAliveRoot()

			if not v17 or not v18 then
				tbl23.StopJob(v15)
				tbl20.WaitForAliveRoot()
				return true, nil
			end

			local humanoidRootPart = v12:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart or not humanoidRootPart:IsA("BasePart") then
				tbl23.StopJob(v15)
				return true, nil
			end
			local magnitude = (humanoidRootPart.Position - v18.Position).Magnitude

			if magnitude <= n7 then
				now = os.clock()
				local v19, v20 = tbl54.AttackTrainingMob(v12, v14)

				if not v19 then
					tbl23.StopJob(v15)
					if tbl20.WaitForRespawnIfDead() then
						return true, nil
					end
					return false, v20
				end
			elseif magnitude < huge - tbl53.TrainingProgressEpsilon then
				now = os.clock()
				huge = magnitude
			elseif tbl53.TrainingStallDelay <= os.clock() - now then
				break
			end

			if not v15:IsRunning() and v14.Health > 0 then
				return false, v15:GetReason() or "Tween stopped while farming V4 training mobs"
			end
			task.wait()
			continue
		end

		tbl23.StopJob(v15)
		return true, nil
	end

	tbl23.StopJob(v15)
	tbl54.SkipTrainingMob(v12)
	return true, nil
end

tbl54.TrainUntilReady = function()
	local now = os.clock()
	local v8, v9 = tbl52.Sync({ Training = true })
	local detail = nil
	if v9 then
		return false, "Failed to publish the V4 training state: " .. tostring(v9)
	end
	local v10

	while true do
		if tbl53.TrainingTimeout <= os.clock() - now then
			return false, "Timed out while training V4 on Bone Island"
		else
			local v11, v12 = tbl54.GetUpgradeStatus()
			if not v11 then
				return false, v12
			end

			if v11.CanTrial or v11.Complete then
				local v13, v14 = tbl52.Sync({ TrainingComplete = true })
				if v14 then
					return false, "Failed to release the V4 training state: " .. tostring(v14)
				end
				tbl54.MarkRecoveryProgress("TrainingComplete")
				return true, v11.Detail
			end

			if v11.NeedsPurchase then
				local v13, v14 = tbl36.GetUpgradeData()
				if not v13 then
					return false, v14
				end
				local ensureAmount = tbl37.EnsureAmount
				local max = math.max
				local n48 = tonumber(v11.Cost) or 0
				local report = tbl54.Report
				local v15, v16, v17 = ensureAmount(v13, max(0, n48), report)
				if not v15 then
					return false, v16, v17
				end
				tbl54.Report("Buying V4 upgrade (" .. tostring(v11.Cost) .. " fragments)", "Working")
				local v18, v19, v20 = tbl54.BuyUpgrade(v11)

				if not v18 then
					if not v20 then
						return false, v19
					end
					tbl54.Report(v19 .. " retrying in this server", "Warning")
				end

				task.wait(tbl53.TrainingBuyRetryDelay)
				continue
			end

			if v11.NeedsTraining then
				if v11.Detail ~= detail then
					tbl54.Report(v11.Detail, "Working")
					detail = v11.Detail
				end

				local v13
				v13, v13 = tbl20.WaitForAliveRoot()
				local v14 = tbl54.FindNearbyTrainingPlayer(v13)
				if v14 then
					tbl8.StopActiveJob("Leaving a crowded training server")
					return false, v14.Name .. " is training nearby, a quieter server is needed", tbl34.QuietServerAction
				end
				local v15
				v15, v10 = tbl54.FarmBoneStep()
				if not v15 then
					break
				end
				task.wait(tbl53.TrainingPollDelay)
				continue
			end

			task.wait(tbl53.TrainingBuyRetryDelay)
		end
	end

	return false, v10
end

tbl54.WaitForUpgradeTurn = function(arg, arg2)
	local n48 = -math.huge
	local v8

	while true do
		local v9
		v8, v9 = tbl52.Sync({ Preparing = false, ReadyForTrial = arg2, TrainingComplete = arg2 })

		if not v8 then
			return false, v9, nil
		else
			if v8.BatchComplete == true then
				return false, "All upgrader accounts finished all races", "BatchComplete"
			end
			local str6 = tostring(v8.TargetRace or "")
			if str6 ~= arg then
				return false, "The host changed this account's target from " .. arg .. " to " .. str6, "RaceChanged"
			end

			if v8.Role == "Upgrader" then
				return true, "The host promoted this account for the next " .. arg .. " trial", nil
			end

			if v8.Role ~= "QueuedUpgrader" then
				break
			end

			if tbl53.QueueReportInterval <= os.clock() - n48 then
				n48 = os.clock()
				tbl54.Report(arg2 and "Queued for the " .. arg .. " trial" or arg .. " complete here waiting for the batch", "Waiting")
			end

			task.wait(tbl53.QueuePollDelay)
		end
	end

	return false, "The host returned an unexpected queued role: " .. tostring(v8.Role), nil
end

tbl54.PrepareQueuedUpgrader = function(arg)
	if tbl54.ReadDoneRaces()[arg] then
		return tbl54.WaitForUpgradeTurn(arg, false)
	end
	local v8

	while true do
		local v9, v10 = tbl54.GetUpgradeStatus()

		if not v9 then
			return false, v10, nil
		else
			if v9.Complete then
				local v11, v12 = tbl54.PublishCompletedRace(arg)
				if not v11 then
					return false, v12, nil
				end
				tbl54.Report(arg .. " V4 complete on this account", "Success")
				return tbl54.WaitForUpgradeTurn(arg, false)
			end

			if v9.CanTrial then
				local v11, v12 = tbl54.SpendPendingGear()
				if not v11 and not (v12 == "The Temple Clock status is not ready") then
					return false, v12, nil
				end
				return tbl54.WaitForUpgradeTurn(arg, true)
			end

			if v9.PreV4 then
				return false, v9.Detail, nil
			end

			if not v9.NeedsTraining and not v9.NeedsPurchase then
				return false, v9.Detail, nil
			end
			local v11, v12
			v11, v8, v12 = tbl54.TrainUntilReady()
			if v12 == tbl34.ServerHopAction then
				return true, v8, "Hop"
			end

			if v12 == tbl34.ThirdSeaAction then
				return false, v8, tbl34.ThirdSeaAction
			end

			if v12 == tbl34.QuietServerAction then
				tbl54.Report(v8, "Warning")
				local v13, v14 = tbl12.HopNormalServer()
				return v13, v14, "Hop"
			end

			if not v11 then
				break
			end
			tbl54.Report(v8, "Success")
		end
	end

	return false, v8, nil
end

tbl54.PrepareHelperForTrial = function()
	local v8, v9 = tbl54.GetUpgradeStatus()
	if not v8 then
		return false, v9
	end
	tbl53.HelperWasFullBeforeTrial = false
	if v8.PreV4 then
		return v8.CanTrial, v8.Detail
	end
	local v10, v11 = tbl54.GetClockStatus()

	if v10 then
		tbl53.HelperWasFullBeforeTrial = tbl54.IsFullClockStatus(v10)
		if tbl53.HelperWasFullBeforeTrial then
			return true, "Full-V4 helper ready"
		end

		if v10.HadPoint then
			local v12, v13 = tbl54.ChooseGear(false)
			if not v12 then
				return false, v13
			end
			local v14, v15 = tbl54.GetClockStatus()
			if not v14 then
				return false, v15
			end
			tbl53.HelperWasFullBeforeTrial = tbl54.IsFullClockStatus(v14)
			if tbl53.HelperWasFullBeforeTrial then
				return true, "Full-V4 helper spent its pending gear point"
			end
			local v16
			v8, v16 = tbl54.GetUpgradeStatus()
			if not v8 then
				return false, v16
			end
		end
	elseif not (v8.CanTrial or v8.Complete or v8.NeedsTraining or v8.NeedsPurchase) then
		return false, v11
	end

	if v8.CanTrial or v8.Complete then
		tbl53.HelperWasFullBeforeTrial = v8.Complete
		return true, v8.Detail
	end
	local v12, v13, v14 = tbl54.TrainUntilReady()
	if v14 then
		return false, v13, v14
	end

	if not v12 then
		return false, v13
	end
	local v15, v16 = tbl54.GetUpgradeStatus()
	if not v15 then
		return false, v16
	end

	if v15.CanTrial or v15.Complete then
		tbl53.HelperWasFullBeforeTrial = v15.Complete
		return true, v15.Detail
	end
	return false, "Helper prepared trial not ready"
end

tbl54.ChoosePostTrialGear = function(arg)
	return tbl54.ChooseGear(arg)
end

tbl54.ShouldHelperTrainAfterTrial = function(arg)
	if arg == "Upgrader" then
		return true, nil, nil
	end

	if tbl53.HelperWasFullBeforeTrial then
		return false, nil, "Full-V4 helper ready for the next trial"
	end
	local v8, v9 = tbl54.GetUpgradeStatus()
	if not v8 then
		return nil, v9, nil
	end

	if v8.CanTrial or v8.Complete then
		return false, nil, v8.Detail
	end
	return true, nil, v8.Detail
end

tbl54.CompleteCurrentTrial = function(arg, arg2)
	if arg == "Human" or arg == "Ghoul" then
		return tbl54.CompleteCombatTrial(arg)
	end

	if arg == "Mink" or arg == "Skypiea" or arg == "Cyborg" then
		return tbl54.CompleteMovementTrial(arg, arg2)
	end

	if arg == "Fishman" then
		return tbl54.CompleteFishmanTrial()
	end
	return false, "No V4 trial handler is configured for " .. tostring(arg)
end

tbl54.GetMoonTextureId = function()
	local fantasySky = Lighting:FindFirstChild("FantasySky") or Lighting:FindFirstChild("Sky") or Lighting:FindFirstChildOfClass("Sky")
	return fantasySky and fantasySky.MoonTextureId or nil
end

tbl54.UpdateFullMoonLatch = function()
	local clockTime = Lighting.ClockTime
	if clockTime > 5 and clockTime < 18 then
		tbl53.FullMoonLatched = false
		return
	end
	local fullMoonTextureId = tbl53.FullMoonTextureId

	if tbl54.GetMoonTextureId() == fullMoonTextureId then
		tbl53.FullMoonLatched = true
	end
end

tbl54.IsFullMoon = function()
	tbl54.UpdateFullMoonLatch()
	return tbl53.FullMoonLatched
end

tbl54.GetMoonState = function()
	local v8 = tbl54.GetMoonTextureId()
	local clockTime = Lighting.ClockTime
	tbl54.UpdateFullMoonLatch()
	if tbl53.FullMoonLatched then
		return "FullMoon"
	end

	if v8 == tbl53.FullMoonTextureId then
		if clockTime <= 5 or clockTime >= 18 then
			return "FullMoon"
		end

		if clockTime < 12 then
			return "FakeMoon"
		end
		return "NearFullMoon"
	end

	if v8 == tbl53.NextMoonTextureId then
		return "NextNight"
	end
	return "BadMoon"
end

tbl54.IsMoonServerReady = function()
	return tbl54.GetMoonState() == "FullMoon"
end

tbl54.GetMoonMinutes = function()
	local v8 = tbl54.GetMoonState()
	local clockTime = Lighting.ClockTime

	if v8 == "FullMoon" then
		if clockTime <= 5 then
			return 5 - clockTime
		end
		return 30 - clockTime
	end

	if v8 == "FakeMoon" or v8 == "NearFullMoon" then
		return 18 - clockTime
	end

	if v8 == "NextNight" then
		if clockTime < 12 then
			return 18 - clockTime
		end
		return 42 - clockTime
	end

	return nil
end

tbl54.ShouldWaitForFullMoon = function()
	return tbl54.GetMoonState() == "NearFullMoon"
end

tbl54.InvalidateNotificationCache = function()
	tbl53.NotificationTextObjects = {}
	tbl53.NotificationUpdatedAt = -math.huge
end

tbl54.SetNotificationContainer = function(notificationContainer)
	if tbl53.NotificationContainer == notificationContainer then
		return
	end
	tbl9.DisconnectAll(tbl53.NotificationConnections)
	tbl53.NotificationContainer = notificationContainer
	tbl54.InvalidateNotificationCache()
	if not notificationContainer then
		return
	end
	table.insert(tbl53.NotificationConnections, notificationContainer.DescendantAdded:Connect(tbl54.InvalidateNotificationCache))
	table.insert(tbl53.NotificationConnections, notificationContainer.DescendantRemoving:Connect(tbl54.InvalidateNotificationCache))
end

tbl54.GetNotificationTextObjects = function()
	local playerGui = localPlayer:FindFirstChild("PlayerGui")
	playerGui = playerGui and playerGui:FindFirstChild("Notifications")
	tbl54.SetNotificationContainer(playerGui)
	if not playerGui then
		return nil, tbl53.NotificationTextObjects
	end
	local notificationUpdatedAt = tbl53.NotificationUpdatedAt

	if os.clock() - notificationUpdatedAt >= tbl53.NotificationCacheDuration then
		local notificationTextObjects = {}

		for _, descendant in ipairs(playerGui:GetDescendants()) do
			if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
				notificationTextObjects[#notificationTextObjects + 1] = descendant
			end
		end

		tbl53.NotificationTextObjects = notificationTextObjects
		tbl53.NotificationUpdatedAt = os.clock()
	end

	return playerGui, tbl53.NotificationTextObjects
end

tbl54.IsNotificationVisible = function(arg, arg2)
	while arg and arg ~= arg2 do
		if arg:IsA("GuiObject") and not arg.Visible then
			return false
		end

		if arg:IsA("LayerCollector") and not arg.Enabled then
			return false
		end
		arg = arg.Parent
	end

	return arg == arg2
end

tbl54.FindNotification = function(arg, arg2)
	local v8, v9 = tbl54.GetNotificationTextObjects()
	if not v8 or not arg then
		return nil, nil
	end

	for _, v10 in ipairs(v9) do
		local str6 = tostring(v10.Text)
		local v11 = string.lower(str6)
		local flag7 = true

		for _, v12 in ipairs(arg) do
			if not string.find(v11, v12, 1, true) then
				flag7 = false
				break
			end
		end

		flag7 = flag7 and tbl54.IsNotificationVisible(v10, v8)

		if flag7 then
			flag7 = not (arg2 and arg2[v10])
		end

		if flag7 then
			return v10, str6
		end
	end

	return nil, nil
end

tbl54.CaptureTrialFailureBaseline = function()
	local tbl55 = {}

	while true do
		local v8 = tbl54.FindNotification({ tbl53.TrialFailedText }, tbl55)

		if not v8 then
			break
		else
			tbl55[v8] = true
		end
	end

	return tbl55
end

tbl54.RefreshTrialFailureBaseline = function(arg)
	if type(arg) ~= "table" then
		return
	end
	local v8 = tbl54.GetNotificationTextObjects()

	for k in pairs(arg) do
		local str6 = k.Parent and tostring(k.Text) or ""
		local trialFailedText = tbl53.TrialFailedText
		local flag7 = string.find(string.lower(str6), trialFailedText, 1, true) ~= nil
		local v9 = v8 and tbl54.IsNotificationVisible(k, v8)

		if not flag7 or not v9 then
			arg[k] = nil
		end
	end
end

tbl54.GetTrialNotification = function(arg)
	local v8 = tbl53.TrialLocationNames[arg]
	if not v8 then
		return nil, nil
	end
	return tbl54.FindNotification({ v8 })
end

tbl54.WaitForTrialTitle = function(arg)
	if arg == "Skypiea" then
		return true, nil
	end
	local v8 = tbl53.TrialLocationNames[arg]
	if not v8 then
		return false, "No trial title is configured for " .. tostring(arg)
	end
	local now = os.clock()
	tbl54.Report("Waiting for " .. v8, "Waiting")

	while true do
		local trialCompletionTimeout = tbl53.TrialCompletionTimeout

		if os.clock() - now < trialCompletionTimeout then
			local v9, v10 = tbl54.CheckTrialRetry({ InTrial = true })
			if v9 == nil then
				return false, v10
			end

			if v9 then
				return false, tbl53.TrialRetryMessage
			end

			if tbl54.GetTrialNotification(arg) then
				return true, nil
			end
			task.wait(tbl53.TrialPollDelay)
		else
			break
		end
	end

	return false, "The " .. v8 .. " title did not appear"
end

tbl54.HasAllTrialsCompleted = function()
	return tbl54.FindNotification({ tbl53.AllTrialsCompletedText }) ~= nil
end

tbl54.HasTrialFailed = function(arg)
	tbl54.RefreshTrialFailureBaseline(arg)
	return tbl54.FindNotification({ tbl53.TrialFailedText }, arg) ~= nil
end

tbl54.HasFullMoonEnded = function()
	local clockTime = Lighting.ClockTime
	return clockTime >= tbl53.FullMoonEndClockTime and clockTime < tbl53.FullMoonStartClockTime
end

tbl52.MoonStatusProvider = function()
	local v8 = tbl54.HasFullMoonEnded()
	local tbl55 = {}
	local flag7 = not v8
	tbl55.FullMoon = flag7 and tbl54.IsFullMoon()
	tbl55.MoonReady = flag7 and tbl54.IsMoonServerReady()
	tbl55.MoonEligible = tbl3[placeId] == true
	tbl55.FullMoonEnded = v8
	return tbl55
end

tbl54.HasUnspentGear = function()
	return tbl54.FindNotification(tbl53.UnspentGearTexts) ~= nil
end

tbl54.CompleteSealedKing = function()
	local v8

	while true do
		local v9
		v8, v9 = tbl54.GetProgress()

		if v8 == nil then
			return false, v9
		else
			if v8 >= tbl53.DoneStage then
				return true, "Sealed King is complete"
			end

			if v8 == 1 then
				tbl54.Report("Starting the Sealed King quest", "Trial")
				local RaceV4Progress, v10 = tbl10.Invoke("RaceV4Progress", "Begin")
				if v10 then
					return false, v10
				end
			elseif v8 == 2 then
				tbl54.Report("Moving to Great Tree for Sealed King", "Travel")
				local v10, v11 = tbl54.ReachGreatTree()
				if not v10 then
					return false, v11
				end
				local RaceV4Progress, v12 = tbl10.Invoke("RaceV4Progress", "Teleport")
				if v12 then
					return false, v12
				end
			else
				if v8 ~= 3 then
					break
				end
				tbl54.Report("Continuing Sealed King dialogue")
				local v10, v11 = tbl54.ReachGreatTree()
				if not v10 then
					return false, v11
				end
				task.wait(tbl53.RetryDelay)
				local RaceV4Progress, v12 = tbl10.Invoke("RaceV4Progress", "Continue")
				if v12 then
					return false, v12
				end
			end

			task.wait(tbl53.RetryDelay)
		end
	end

	return false, "Unexpected Sealed King stage " .. tostring(v8)
end

tbl54.PrepareTemple = function()
	local v8, v9 = tbl54.CheckTempleDoor()
	if v8 == nil then
		return false, v9
	end

	if v8 then
		return true, "The Temple door is already unlocked"
	end

	if not tbl3[placeId] then
		return false, "The Temple lever can only be pulled in the Third Sea", true
	end
	local v10, v11 = tbl54.LoadTemple()
	if not v10 then
		return false, v11
	end
	local v12, v13 = tbl54.CompleteSealedKing()
	if not v12 then
		return false, v13
	end
	tbl54.Report(v13, "Success")
	local v14, v15 = tbl54.ObtainBlueGear()
	if not v14 then
		return false, v15
	end
	local v16, v17 = tbl54.PullLever()
	if not v16 then
		return false, v17
	end
	return true, v17
end

tbl54.PrepareRace = function(arg, arg2)
	local v8, v9 = tbl36.GetUpgradeData()
	if not v8 then
		return false, v9
	end
	local v10, v11 = tbl36.HasV3Title(arg)
	if v10 == nil then
		return false, v11
	end

	if (arg == "Ghoul" or arg == "Cyborg") and v8.Race.Value ~= arg and not tbl2[placeId] then
		return false, "Changing " .. tostring(v8.Race.Value) .. " to " .. arg .. " needs the Second Sea", "SecondSea"
	end
	local v12, v13, v14

	if arg == "Ghoul" then
		if v8.Race.Value ~= "Ghoul" then
			tbl54.Report("Changing " .. tostring(v8.Race.Value) .. " to Ghoul", "Working")
		end

		v12, v13 = tbl44.EnsureRace(v8)
		v14 = nil
	elseif arg == "Cyborg" then
		if v8.Race.Value ~= "Cyborg" then
			local v15, v16, v17 = tbl37.EnsureAmount(v8, n29 + tbl34.Reserve + n31, tbl54.Report)
			if not v15 then
				return false, v16, v17
			end
			tbl54.Report("Changing " .. tostring(v8.Race.Value) .. " to Cyborg", "Working")
		end

		v12, v13, v14 = tbl38.EnsureRace(v8, tbl54.Report)
	else
		v12, v13, v14 = tbl37.EnsureRace(arg, v8, tbl54.Report)
	end

	if not v12 then
		return false, v13, v14
	end

	if v10 then
		return true, nil
	end

	if arg2 ~= "Helper" then
		local v15, v16, v17 = tbl37.EnsureAmount(v8, tbl34.Reserve, tbl54.Report)
		if not v15 then
			return false, v16, v17
		end
	end

	local v15 = tbl48[arg]
	if not v15 then
		return false, "No V3 quest is implemented for " .. arg
	end

	if not tbl2[placeId] then
		return false, arg .. " is not V3 yet, the Second Sea is needed", "SecondSea"
	end
	tbl54.Report("Starting the " .. arg .. " V3 quest", "Trial")
	return v15()
end

tbl54.GetRole = function()
	local v8, v9 = tbl52.Sync({
		FullMoon = tbl54.IsFullMoon(),
		MoonReady = tbl54.IsMoonServerReady(),
		FullMoonEnded = tbl54.HasFullMoonEnded(),
	})

	if not v8 then
		return nil, nil, v9
	end
	tbl54.SetRecoveryScope(v8.Role, v8.TargetRace, v8.UpgraderUsername)
	return v8.Role, v8.TargetRace, nil
end

tbl54.RunTrialRound = function(arg)
	local v8, v9, v10 = tbl54.GetTrialEntrance()
	if not v8 then
		return false, v10
	end
	local v11, v12 = tbl54.MoveToTrialEntrance()
	if not v11 then
		return false, v12
	end
	tbl54.Report(v12, "Trial")
	local v13, v14, v15, v16 = tbl54.WaitForTrialStart(v8, v9)

	if not v13 then
		if v16 == tbl53.MoonHopAction then
			return tbl54.HopForFullMoon()
		end

		if v15 then
			return tbl54.ResetTrialRound()
		end
		return false, v14
	end

	local v17, v18 = tbl54.WaitForTrialTitle(v8)

	if not v17 then
		if v18 == tbl53.TrialRetryMessage then
			return tbl54.ResetTrialRound()
		end
		return false, v18
	end

	tbl54.Report(v8 .. " trial started", "Trial")
	local v19, v20 = tbl54.CompleteCurrentTrial(v8, arg)
	tbl53.RaceActivatedCharacter = nil
	tbl53.RaceActivatedAt = nil
	tbl53.RaceActivatedRoundId = nil

	if not v19 then
		if v20 == tbl53.TrialRetryMessage then
			return tbl54.ResetTrialRound()
		end
		return false, v20
	end

	tbl53.ConsecutiveTrialResets = 0
	tbl54.MarkRecoveryProgress("TrialComplete")
	tbl54.Report(v8 .. " trial complete", "Success")
	local v21, v22 = tbl52.Sync({ TrialDone = true })
	if not v21 then
		return false, v22
	end
	local v23 = tbl54.GetTrialRetryRoundId(v21)
	if v23 then
		tbl53.PendingRetryRoundId = v23
		return tbl54.ResetTrialRound()
	end
	local v24, v25 = tbl54.RunPvp(arg)

	if not v24 then
		if v25 == tbl53.TrialRetryMessage then
			return tbl54.ResetTrialRound()
		end
		return false, v25
	end

	tbl54.MarkRecoveryProgress("PvpComplete")
	tbl54.Report(v25, "Success")
	if tbl54.CheckTrialRetry({ TrialDone = true }) then
		return tbl54.ResetTrialRound()
	end
	tbl20.WaitForAliveRoot()
	local v26, v27 = tbl54.ChoosePostTrialGear(arg == "Upgrader")
	if not v26 then
		return false, v27
	end
	local v28, v29, v30 = tbl54.ShouldHelperTrainAfterTrial(arg)
	tbl53.HelperWasFullBeforeTrial = false
	if v28 == nil then
		return false, v29
	end

	if not v28 then
		tbl54.Report(v27, "Success")
		return true, v30, false
	end
	local v31, v32 = tbl52.Sync({ TrialDone = true, Training = true })
	if v32 then
		return false, "Failed to publish the V4 training state: " .. tostring(v32)
	end
	tbl54.Report(v27, "Success")
	tbl54.Report("Changing server for V4 training", "Travel")
	local v33, v34 = tbl12.HopNormalServer()
	return v33, v34, true
end

tbl54.Run = function(arg, arg2)
	while true do
		local v8, v9, v10 = tbl54.GetRole()

		if not v8 then
			return false, v10
		else
			if tbl52.IsBatchComplete() then
				return tbl54.Shutdown()
			end

			if v8 ~= arg then
				return false, "The host moved this account to the " .. tostring(v8) .. " role"
			end

			if v9 ~= arg2 then
				return false, "The host changed this account's target race from " .. tostring(arg2) .. " to " .. tostring(v9)
			end
			local v11, v12 = tbl54.FollowRelocateOrder()
			if v11 then
				return true, v12
			end

			if tbl52.ShouldMoonHop() then
				return tbl54.HopForFullMoon()
			end

			if arg ~= "Upgrader" then
				local v13, v14, v15 = tbl54.PrepareHelperForTrial()
				if v15 == tbl34.ServerHopAction then
					return true, v14
				end

				if v15 == tbl34.ThirdSeaAction then
					return tbl11.TravelToThirdSea()
				end

				if v15 == tbl34.QuietServerAction then
					tbl54.Report(v14, "Warning")
					return tbl12.HopNormalServer()
				end

				if not v13 then
					return false, v14
				end
				tbl54.Report(v14, "Success")
			else
				local v13, v14 = tbl54.GetUpgradeStatus()
				if not v13 then
					return false, v14
				end

				if v13.Complete then
					return tbl54.CompleteUpgraderRace()
				end

				if v13.PreV4 and not v13.CanTrial then
					return false, v13.Detail
				end

				if not v13.CanTrial then
					if not v13.NeedsTraining and not v13.NeedsPurchase then
						return false, v13.Detail
					end
					local v15, v16, v17 = tbl54.TrainUntilReady()
					if v17 == tbl34.ServerHopAction then
						return true, v16
					end

					if v17 == tbl34.ThirdSeaAction then
						return tbl11.TravelToThirdSea()
					end

					if v17 == tbl34.QuietServerAction then
						tbl54.Report(v16, "Warning")
						return tbl12.HopNormalServer()
					end

					if not v15 then
						return false, v16
					end
					tbl54.Report(v16, "Success")
					local v18
					v13, v18 = tbl54.GetUpgradeStatus()
					if not v13 then
						return false, v18
					end

					if v13.Complete then
						return tbl54.CompleteUpgraderRace()
					end

					if not v13.CanTrial then
						return false, "UpgradeRace did not confirm the next trial after training"
					end
				end

				local v15, v16 = tbl54.SpendPendingGear()
				local flag7 = v16 == "The Temple Clock status is not ready"
				local flag8 = not v15

				if flag8 then
					flag8 = not (v13.CanTrial and flag7)
				end

				if flag8 then
					return false, v16
				end

				if v13.CanTrial and flag7 then
					tbl54.Report("Next trial confirmed Temple Clock unavailable", "Success")
				else
					local v17, v18 = tbl54.IsRaceV4Complete()

					if v17 == nil then
						if not (v13.CanTrial and v18 == "The Temple Clock status is not ready") then
							return false, v18
						end
						tbl54.Report("Next trial confirmed without a clock check", "Success")
					elseif v17 then
						break
					end

					local v19, v20 = tbl54.GetUpgradeStatus()
					if not v19 then
						return false, v20
					end

					if v19.Complete then
						return tbl54.CompleteUpgraderRace()
					end
				end
			end

			local v13, v14, v15 = tbl54.RunTrialRound(arg)
			if not v13 then
				return false, v14
			end

			if v15 then
				return true, v14
			end
			tbl54.Report(v14, "Success")
			task.wait(tbl53.RetryDelay)
		end
	end

	return tbl54.CompleteUpgraderRace()
end

local tbl55 = { Connection = nil }
local tbl56

tbl56 = {
	SimulateInput = function()
		local currentCamera = Workspace.CurrentCamera
		if not currentCamera then
			return
		end
		local cFrame = currentCamera.CFrame
		VirtualUser:CaptureController()
		VirtualUser:Button2Down(Vector2.new(0, 0), cFrame)
		task.wait(1)
		VirtualUser:Button2Up(Vector2.new(0, 0), cFrame)
	end,
	Start = function()
		local connection = tbl55.Connection
		if connection and connection.Connected then
			return true, nil
		end

		local ok, connection2 = pcall(function()
			return localPlayer.Idled:Connect(function()
				pcall(tbl56.SimulateInput)
			end)
		end)

		if not ok then
			return false, "Failed to enable AntiAFK: " .. tostring(connection2)
		end
		tbl55.Connection = connection2
		return true, nil
	end,
}

tbl9.ClaimSharedRuntime("Kaitun6V4AntiAFKRuntime", tbl55)
local n48 = 5000
local tbl57 = { Connection = nil }
local tbl58

tbl58 = {
	IsDisposableEffect = function(arg)
		return arg:IsA("ForceField") or arg:IsA("Sparkles") or arg:IsA("Smoke") or arg:IsA("Fire") or arg:IsA("Beam")
	end,
	SimplifyTerrainAndLighting = function()
		pcall(function()
			local terrain = Workspace:FindFirstChildWhichIsA("Terrain")

			if terrain then
				terrain.WaterWaveSize = 0
				terrain.WaterWaveSpeed = 0
				terrain.WaterReflectance = 0
				terrain.WaterTransparency = 1
			end

			Lighting.GlobalShadows = false
			Lighting.FogEnd = 9e9
			Lighting.FogStart = 9e9
		end)

		pcall(function()
			for _, descendant in ipairs(Lighting:GetDescendants()) do
				if descendant:IsA("PostEffect") then
					descendant.Enabled = false
				end
			end
		end)
	end,
	ApplyGameSettings = function()
		pcall(function()
			local UserGameSettings = UserSettings():GetService("UserGameSettings")
			UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
			UserGameSettings.MasterVolume = 0

			if type(sethiddenproperty) == "function" then
				sethiddenproperty(UserGameSettings, "GraphicsQualityLevel", 1)
			end
		end)

		pcall(function()
			SoundService.Volume = 0
		end)
	end,
	SimplifyDescendant = function(arg)
		if arg:IsA("BasePart") then
			arg.CastShadow = false
			arg.Material = Enum.Material.Plastic
			arg.Reflectance = 0
		elseif arg:IsA("Decal") then
			arg.Transparency = 1
			arg.Texture = ""
		elseif arg:IsA("ParticleEmitter") then
			arg.Lifetime = NumberRange.new(0)
		elseif arg:IsA("Trail") then
			arg.Lifetime = 0
		end
	end,
	HandleNewDescendant = function(arg)
		if arg:IsA("BasePart") then
			pcall(function()
				arg.CastShadow = false
			end)

			return
		end

		if not tbl58.IsDisposableEffect(arg) then
			return
		end

		task.spawn(function()
			pcall(function()
				RunService.Heartbeat:Wait()
				arg:Destroy()
			end)
		end)
	end,
	WatchNewDescendants = function()
		tbl9.Disconnect(tbl57.Connection)
		tbl57.Connection = nil

		local ok, connection = pcall(function()
			return Workspace.DescendantAdded:Connect(tbl58.HandleNewDescendant)
		end)

		if not ok then
			return false, "Failed to watch new descendants: " .. tostring(connection)
		end
		tbl57.Connection = connection
		return true, nil
	end,
	SweepWorkspace = function()
		local ok, result = pcall(function()
			return Workspace:GetDescendants()
		end)

		if not ok then
			return false, "Failed to list Workspace descendants: " .. tostring(result)
		end

		for i, v8 in ipairs(result) do
			pcall(tbl58.SimplifyDescendant, v8)

			if i % n48 == 0 then
				task.wait()
			end
		end

		return true, nil
	end,
	Start = function()
		tbl58.SimplifyTerrainAndLighting()
		tbl58.ApplyGameSettings()
		tbl58.WatchNewDescendants()
		tbl58.SweepWorkspace()
		return true, nil
	end,
}

tbl9.ClaimSharedRuntime("Kaitun6V4ReduceLagRuntime", tbl57)
local n49 = 3
local n50 = 0
local n51 = 0
local v8 = nil
local tbl59

tbl59 = {
	Report = function(arg, arg2)
		warn(tostring(arg))
		v.Log(arg, arg2 or "Working")
	end,
	Summarize = function(arg)
		local match = tostring(arg):match("^[^\n]*")
		if not match or match == "" then
			return "Unknown failure"
		end
		return match
	end,
	GetFailureKey = function(arg)
		local concat = table.concat
		local tbl60 = {}
		local str6 = tostring(tbl53.RecoveryScope)
		local str7 = tostring(tbl53.RecoveryEpoch)
		local str8 = tostring(tbl53.RecoveryPhase)
		local summarize = tbl59.Summarize
		tbl60[1] = str6
		tbl60[2] = str7
		tbl60[3] = str8

		do
			local values = table.pack(summarize(arg))
			table.move(values, 1, values.n, 4, tbl60)
		end

		return concat(tbl60, "|")
	end,
	IsTransientClockFailure = function(arg)
		local num = tonumber(tbl53.RecoveryProgressAt)
		local flag7 = tbl59.Summarize(arg) == "The Temple Clock status is not ready" and num ~= nil

		if flag7 then
			local clockFailureGrace = tbl53.ClockFailureGrace
			flag7 = os.clock() - num <= clockFailureGrace
		end

		return flag7
	end,
	GetTransientFailureMessage = function(arg)
		if tbl59.IsTransientClockFailure(arg) then
			return "Progress saved · retrying clock"
		end
		local fullMoonEndedWaitMessage = tbl53.FullMoonEndedWaitMessage

		if tbl59.Summarize(arg) == fullMoonEndedWaitMessage then
			local moonBlock = tbl52.GetResponse()
			local moonScout = moonBlock and moonBlock.MoonScout
			moonBlock = moonBlock and moonBlock.MoonBlock
			if type(moonScout) == "string" and moonScout ~= "" then
				return "Moon ended · scout " .. moonScout
			end

			if type(moonBlock) == "string" and moonBlock ~= "" then
				return "Moon ended · no scout: " .. moonBlock
			end
			return "Moon ended · waiting for helper 1"
		end

		local roundCancelledWaitMessage = tbl53.RoundCancelledWaitMessage
		if tbl59.Summarize(arg) == roundCancelledWaitMessage then
			return "Round cancelled · waiting for host"
		end
		return nil
	end,
	Recover = function(arg)
		tbl8.StopActiveJob("Recovering after a Main failure")
		tbl18.Stop()
		tbl20.WaitForAliveRoot()
		local v9 = tbl59.GetTransientFailureMessage(arg)

		if v9 then
			n50 = 0
			v8 = nil
			return false, nil, v9
		end

		local v10 = tbl59.GetFailureKey(arg)

		if v10 ~= v8 then
			v8 = v10
			n50 = 1
			return false, nil
		end

		n50 += 1
		if n50 < n49 then
			return false, nil
		end
		n50 = 0
		v8 = nil
		return tbl12.RejoinServer()
	end,
	RunProtected = function()
		tbl59.Report("Loading remotes")
		tbl18.WatchRemotes()
		local v9, v10 = tbl18.RefreshSeed()

		if not v9 then
			tbl59.Report("Seed unavailable, continuing anyway: " .. tostring(v10), "Warning")
		end

		if not localPlayer.Team then
			tbl59.Report("Joining the " .. str .. " team")
			local Marines, v11 = tbl13.Join("Marines")
			if not Marines then
				return false, v11
			end
		else
			tbl59.Report("Waiting for team setup")
			task.wait(tbl13.JoinSettleDelay)
		end

		tbl59.Report("Loading Hop API")
		local v11, v12 = tbl12.GetAPIModule()

		if not v11 then
			tbl59.Report("Hop API unavailable: " .. tostring(v12), "Warning")
		end

		tbl59.Report("Requesting account role from host")
		local str6, v13, v14 = tbl54.GetRole()
		if not str6 then
			return false, v14
		end

		if tbl52.IsBatchComplete() then
			return tbl54.Shutdown()
		end

		if str6 == "QueuedUpgrader" then
			if type(v13) ~= "string" or v13 == "" then
				local v15, v16, v17 = tbl54.GetNextV4Race()
				if v17 then
					return false, v17
				end

				if v16 then
					return tbl54.Shutdown()
				end
				return false, "The host has not opened an upgrader race batch yet"
			end

			if tbl54.ReadDoneRaces()[v13] then
				local v15, v16, v17 = tbl54.WaitForUpgradeTurn(v13, false)
				if v17 == "BatchComplete" then
					return tbl54.Shutdown()
				end
				return false, v16
			end
		end

		if tbl52.ShouldMoonHop() then
			return tbl54.HopForFullMoon()
		end
		local v15, v16 = tbl54.FollowRelocateOrder()
		if v15 then
			return true, v16
		end

		if tbl3[placeId] then
			tbl59.Report("Loading Temple of Time", "Trial")
			local v17, v18 = tbl54.LoadTemple()
			if not v17 then
				return false, v18
			end
		end

		tbl59.Report("Checking V4 relics")
		local v17, v18, v19 = tbl31.EnsureAll()
		if v19 then
			tbl59.Report(tostring(v18) .. ", traveling to the Third Sea", "Travel")
			return tbl11.TravelToThirdSea()
		end

		if not v17 then
			return false, v18
		end
		tbl59.Report("Preparing Temple of Time", "Trial")
		local v20, v21, v22 = tbl54.PrepareTemple()
		if v22 then
			tbl59.Report(tostring(v21) .. ", traveling to the Third Sea", "Travel")
			return tbl11.TravelToThirdSea()
		end

		if not v20 then
			return false, v21
		end
		tbl59.Report(v21, "Success")
		if type(v13) ~= "string" or v13 == "" then
			return false, "The host has not assigned a target race yet"
		end
		tbl59.Report("Round: " .. v13 .. " · " .. str6, "Trial")
		local v23, v24, v25 = tbl54.PrepareRace(v13, str6)
		if v25 == tbl34.ServerHopAction then
			return true, v24
		end

		if v25 == tbl34.ThirdSeaAction then
			tbl59.Report(tostring(v24) .. ", traveling to the Third Sea", "Travel")
			return tbl11.TravelToThirdSea()
		end

		if v25 == "SecondSea" then
			tbl59.Report(tostring(v24) .. ", traveling to the Second Sea", "Travel")
			return tbl11.TravelToSecondSea()
		end

		if not v23 then
			return false, v24
		end

		if not tbl3[placeId] then
			tbl59.Report("Traveling to the Third Sea", "Travel")
			return tbl11.TravelToThirdSea()
		end

		if str6 == "QueuedUpgrader" then
			local v26, v27, v28 = tbl54.PrepareQueuedUpgrader(v13)
			if v28 == "BatchComplete" then
				return tbl54.Shutdown()
			end

			if v28 == "Hop" then
				return v26, v27
			end

			if v28 == tbl34.ThirdSeaAction then
				tbl59.Report(tostring(v27) .. ", traveling to the Third Sea", "Travel")
				return tbl11.TravelToThirdSea()
			end

			if not v26 then
				return false, v27
			end
			tbl59.Report(v27, "Success")
			str6 = "Upgrader"
		end

		tbl59.Report("Starting V4 quest", "Trial")
		return tbl54.Run(str6, v13)
	end,
	Run = function()
		local result

		while true do
			local ok, result2
			ok, result2, result = xpcall(tbl59.RunProtected, debug.traceback)

			if not (ok and result2) then
				ok = ok and tostring(result) or "Unexpected error:\n" .. tostring(result2)
				warn("Retrying after: " .. ok)
				tbl52.SetLastError(ok)
				n51 += 1
				local v9, v10, v11 = tbl59.Recover(ok)

				if v11 then
					tbl59.Report(v11, "Warning")
				else
					v.Recovery(tbl59.Summarize(ok), "Retrying in " .. tostring(5) .. "s")
				end

				v.Retry(n51, 5)

				if v9 then
					tbl59.Report("Repeated failure " .. tostring(v10), "Warning")
				elseif v10 then
					tbl59.Report("Server rejoin failed: " .. tostring(v10), "Warning")
				end

				task.wait(5)
				continue
			end

			break
		end

		return true, result
	end,
}

local v9, v10 = v.Start()

if not v9 then
	warn(tostring(v10))
end

tbl56.Start()
tbl52.StartHeartbeat()
task.spawn(tbl58.Start)
tbl59.Report("Finished: " .. tostring(select(2, tbl59.Run())), "Success")
v.Complete()
