--[[ 
    WD HELPER - Advanced HTTP & WebSocket Spy
    + Discord Webhook Detection Mode
    + JSON Decode Hook для перехвата зашифрованных данных
    ФИКСАЦИЯ: Полный UI рендеринг
]]

local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local IS_MOBILE = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
local SCREEN = workspace.CurrentCamera.ViewportSize
local SCALE = math.clamp(math.min(SCREEN.X, SCREEN.Y) / 600, 0.55, 1)

local MAX_LOGS = IS_MOBILE and 60 or 200

-- ═══════════════════════════════════════
-- ПОДГОТОВКА
-- ═══════════════════════════════════════
local originalRequest = nil
if getgenv().request then originalRequest = clonefunction(getgenv().request) end
if not originalRequest and syn and syn.request then originalRequest = clonefunction(syn.request) end
if not originalRequest and http and http.request then originalRequest = clonefunction(http.request) end
if not originalRequest and http_request then originalRequest = clonefunction(http_request) end

local originalHttpGet, originalHttpPost
pcall(function() originalHttpGet = clonefunction(game.HttpGet) end)
pcall(function() originalHttpPost = clonefunction(game.HttpPost) end)

local originalSocketConnect = nil
if syn and syn.websocket and syn.websocket.connect then 
    originalSocketConnect = clonefunction(syn.websocket.connect)
elseif WebSocket and WebSocket.connect then 
    originalSocketConnect = clonefunction(WebSocket.connect)
end

local originalJsonDecode = nil
pcall(function() 
    originalJsonDecode = clonefunction(HttpService.JSONDecode)
end)

-- ═══════════════════════════════════════
-- ВЕБХУК ДЕТЕКТ — паттерны
-- ═══════════════════════════════════════
local WEBHOOK_PATTERNS = {
    "discord%.com/api/webhooks",
    "discordapp%.com/api/webhooks",
    "canary%.discord%.com/api/webhooks",
    "ptb%.discord%.com/api/webhooks",
    "discord%.gg/api/webhooks",
    "hooks%.hyra%.io",
    "webhook%.lewisakura%.moe",
    "canary%.discord%.com",
}

local function IsWebhookURL(url)
    if not url then return false end
    local lower = string.lower(tostring(url))
    for _, pattern in ipairs(WEBHOOK_PATTERNS) do
        if string.find(lower, pattern) then
            return true
        end
    end
    return false
end

local function ExtractWebhookID(url)
    local id = string.match(tostring(url), "webhooks/(%d+)")
    return id or "unknown"
end

local function SafeJSONDecode(str)
    local ok, result = pcall(function()
        return HttpService:JSONDecode(str)
    end)
    if ok then return result end
    return nil
end

local function ParseWebhookBody(bodyStr)
    if not bodyStr or bodyStr == "" then return nil end
    local data = SafeJSONDecode(bodyStr)
    if not data then return nil end
    
    local info = {}
    
    if data.content and data.content ~= "" then
        table.insert(info, "📝 Content: " .. tostring(data.content))
    end
    if data.username then
        table.insert(info, "👤 Username: " .. tostring(data.username))
    end
    if data.avatar_url then
        table.insert(info, "🖼 Avatar: " .. tostring(data.avatar_url))
    end
    if data.tts then
        table.insert(info, "🔊 TTS: true")
    end
    
    if data.embeds and type(data.embeds) == "table" then
        for i, embed in ipairs(data.embeds) do
            table.insert(info, "")
            table.insert(info, "━━ Embed #" .. i .. " ━━")
            if embed.title then
                table.insert(info, "  Title: " .. tostring(embed.title))
            end
            if embed.description then
                local desc = tostring(embed.description)
                if #desc > 200 then desc = string.sub(desc, 1, 200) .. "..." end
                table.insert(info, "  Desc: " .. desc)
            end
            if embed.url then
                table.insert(info, "  URL: " .. tostring(embed.url))
            end
            if embed.color then
                table.insert(info, "  Color: #" .. string.format("%06X", embed.color))
            end
            if embed.author and embed.author.name then
                table.insert(info, "  Author: " .. tostring(embed.author.name))
            end
            if embed.footer and embed.footer.text then
                table.insert(info, "  Footer: " .. tostring(embed.footer.text))
            end
            if embed.thumbnail and embed.thumbnail.url then
                table.insert(info, "  Thumb: " .. tostring(embed.thumbnail.url))
            end
            if embed.image and embed.image.url then
                table.insert(info, "  Image: " .. tostring(embed.image.url))
            end
            if embed.fields and type(embed.fields) == "table" then
                for _, field in ipairs(embed.fields) do
                    local fname = tostring(field.name or "?")
                    local fval = tostring(field.value or "?")
                    if #fval > 100 then fval = string.sub(fval, 1, 100) .. "..." end
                    table.insert(info, "  [" .. fname .. "] " .. fval)
                end
            end
        end
    end
    
    if #info == 0 then return nil end
    return table.concat(info, "\n")
end

-- ═══════════════════════════════════════
-- ЦВЕТА
-- ═══════════════════════════════════════
local C = {
    sidebar     = Color3.fromRGB(8, 11, 20),
    sidebar_btn = Color3.fromRGB(14, 19, 32),
    sidebar_act = Color3.fromRGB(30, 95, 195),
    sidebar_hov = Color3.fromRGB(20, 28, 48),
    
    bg          = Color3.fromRGB(12, 16, 27),
    topbar      = Color3.fromRGB(10, 14, 24),
    card        = Color3.fromRGB(16, 22, 38),
    card_hover  = Color3.fromRGB(22, 30, 50),
    
    accent      = Color3.fromRGB(40, 110, 215),
    accent_l    = Color3.fromRGB(70, 145, 245),
    accent_d    = Color3.fromRGB(20, 55, 120),
    
    white       = Color3.fromRGB(222, 233, 250),
    soft        = Color3.fromRGB(150, 175, 212),
    dim         = Color3.fromRGB(75, 100, 140),
    dark        = Color3.fromRGB(45, 60, 90),
    
    border      = Color3.fromRGB(25, 40, 72),
    border_l    = Color3.fromRGB(40, 62, 108),
    
    red         = Color3.fromRGB(190, 60, 60),
    red_h       = Color3.fromRGB(220, 80, 80),
    green_d     = Color3.fromRGB(20, 75, 50),
    
    copy        = Color3.fromRGB(25, 60, 120),
    copy_h      = Color3.fromRGB(35, 80, 155),
    
    scroll      = Color3.fromRGB(40, 78, 148),
    toggle_bg   = Color3.fromRGB(30, 95, 195),
    
    wh_accent   = Color3.fromRGB(155, 90, 235),
    wh_accent_l = Color3.fromRGB(185, 120, 255),
    wh_accent_d = Color3.fromRGB(65, 30, 110),
    wh_card     = Color3.fromRGB(22, 16, 38),
    wh_card_h   = Color3.fromRGB(32, 22, 52),
    wh_border   = Color3.fromRGB(55, 30, 90),
    wh_border_l = Color3.fromRGB(80, 45, 130),
    wh_indicator= Color3.fromRGB(155, 90, 235),
    wh_sidebar  = Color3.fromRGB(65, 30, 120),
    
    encrypted   = Color3.fromRGB(255, 165, 0),
    encrypted_d = Color3.fromRGB(80, 50, 0),
    encrypted_l = Color3.fromRGB(255, 200, 100),
}

-- ═══════════════════════════════════════
-- GUI КОНТЕЙНЕР
-- ═══════════════════════════════════════
local ScreenGui = Instance.new("ScreenGui")
if gethui then
    ScreenGui.Parent = gethui()
elseif syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
    ScreenGui.Parent = CoreGui
else
    ScreenGui.Parent = CoreGui
end
ScreenGui.Name = "WD_SPY_" .. math.random(100000,999999)
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999

-- ═══════════════════════════════════════
-- УТИЛИТЫ
-- ═══════════════════════════════════════
local function Tween(obj, props, dur)
    if not obj or not obj.Parent then return end
    TweenService:Create(obj, TweenInfo.new(dur or 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), props):Play()
end

local function S(px)
    return math.floor(px * SCALE)
end

local function GetTextHeight(text, font, size, maxW)
    local ok, b = pcall(function()
        return TextService:GetTextSize(text, size, font, Vector2.new(maxW, 10000))
    end)
    if ok then return b.Y end
    local lines = 1
    for _ in string.gmatch(text, "\n") do lines = lines + 1 end
    return lines * (size + 2)
end

-- ═══════════════════════════════════════
-- РАЗМЕРЫ
-- ═══════════════════════════════════════
local SIDEBAR_W = S(IS_MOBILE and 48 or 52)
local TOPBAR_H  = S(IS_MOBILE and 44 or 40)
local BTN_SIZE  = S(IS_MOBILE and 38 or 36)
local BTN_PAD   = S(8)
local CARD_H    = S(IS_MOBILE and 50 or 44)

local WIN_W, WIN_H
if IS_MOBILE then
    WIN_W = math.floor(SCREEN.X * 0.92)
    WIN_H = math.floor(SCREEN.Y * 0.55)
else
    WIN_W = S(620)
    WIN_H = S(440)
end

-- ═══════════════════════════════════════
-- ГЛАВНЫЙ ФРЕЙМ (ПОЛНЫЙ РЕНДЕРИНГ)
-- ═══════════════════════════════════════
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = C.bg
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, WIN_W, 0, WIN_H)
Main.Active = true
Main.ClipsDescendants = true
Main.ZIndex = 2
Main.BorderSizePixel = 0

local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim.new(0, S(10))

local MainStroke = Instance.new("UIStroke")
MainStroke.Parent = Main
MainStroke.Color = C.border
MainStroke.Thickness = 1
MainStroke.Transparency = 0.2

-- ═══════════════════════════════════════
-- ПЕРЕТАСКИВАНИЕ
-- ═══════════════════════════════════════
local dragging = false
local dragStart, frameStart

local DragZone = Instance.new("Frame")
DragZone.Parent = Main
DragZone.BackgroundTransparency = 1
DragZone.Position = UDim2.new(0, SIDEBAR_W, 0, 0)
DragZone.Size = UDim2.new(1, -SIDEBAR_W, 0, TOPBAR_H)
DragZone.ZIndex = 15
DragZone.Active = true
DragZone.BorderSizePixel = 0

local function onDragStart(inputPos) dragging = true; dragStart = inputPos; frameStart = Main.Position end
local function onDragEnd() dragging = false end
local function onDragMove(inputPos)
    if not dragging then return end
    local d = inputPos - dragStart
    Main.Position = UDim2.new(frameStart.X.Scale, frameStart.X.Offset + d.X, frameStart.Y.Scale, frameStart.Y.Offset + d.Y)
end

DragZone.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        onDragStart(input.Position)
    end
end)
DragZone.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        onDragEnd()
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        onDragMove(input.Position)
    end
end)

-- ═══════════════════════════════════════
-- БОКОВАЯ ПАНЕЛЬ (ФИКС)
-- ═══════════════════════════════════════
local Sidebar = Instance.new("Frame")
Sidebar.Parent = Main
Sidebar.BackgroundColor3 = C.sidebar
Sidebar.Size = UDim2.new(0, SIDEBAR_W, 1, 0)
Sidebar.BorderSizePixel = 0
Sidebar.ZIndex = 8
Sidebar.Position = UDim2.new(0, 0, 0, 0)

local SideCorner = Instance.new("UICorner", Sidebar)
SideCorner.CornerRadius = UDim.new(0, S(10))

local SideLine = Instance.new("Frame")
SideLine.Parent = Main
SideLine.BackgroundColor3 = C.border
SideLine.BackgroundTransparency = 0.4
SideLine.Position = UDim2.new(0, SIDEBAR_W - 1, 0, 0)
SideLine.Size = UDim2.new(0, 1, 1, 0)
SideLine.BorderSizePixel = 0
SideLine.ZIndex = 9

local ActiveIndicator = Instance.new("Frame")
ActiveIndicator.Parent = Sidebar
ActiveIndicator.BackgroundColor3 = C.accent
ActiveIndicator.Size = UDim2.new(0, 3, 0, S(24))
ActiveIndicator.Position = UDim2.new(0, 0, 0, S(16))
ActiveIndicator.BorderSizePixel = 0
ActiveIndicator.ZIndex = 10

local IndicatorCorner = Instance.new("UICorner", ActiveIndicator)
IndicatorCorner.CornerRadius = UDim.new(0, 2)

-- ═══════════════════════════════════════
-- КНОПКИ САЙДБАРА
-- ═══════════════════════════════════════
local function MakeSideBtn(yPos, iconText, tooltip, iconColor)
    local yScaled = S(yPos)
    local btn = Instance.new("TextButton")
    btn.Parent = Sidebar
    btn.BackgroundColor3 = C.sidebar_btn
    btn.BackgroundTransparency = 1
    btn.Position = UDim2.new(0, BTN_PAD, 0, yScaled)
    btn.Size = UDim2.new(0, BTN_SIZE, 0, BTN_SIZE)
    btn.Text = ""
    btn.AutoButtonColor = false
    btn.ZIndex = 9
    btn.BorderSizePixel = 0

    local btnCorner = Instance.new("UICorner", btn)
    btnCorner.CornerRadius = UDim.new(0, S(8))

    local icon = Instance.new("TextLabel")
    icon.Parent = btn
    icon.BackgroundTransparency = 1
    icon.Size = UDim2.new(1, 0, 1, 0)
    icon.Font = Enum.Font.GothamBold
    icon.Text = iconText
    icon.TextColor3 = iconColor or C.dim
    icon.TextSize = S(12)
    icon.ZIndex = 10
    icon.BorderSizePixel = 0

    if not IS_MOBILE then
        local tip = Instance.new("TextLabel")
        tip.Parent = btn
        tip.BackgroundColor3 = C.card
        tip.Size = UDim2.new(0, 0, 0, S(24))
        tip.Position = UDim2.new(1, 8, 0.5, -S(12))
        tip.Font = Enum.Font.GothamMedium
        tip.Text = "  " .. tooltip .. "  "
        tip.TextColor3 = C.soft
        tip.TextSize = S(10)
        tip.AutomaticSize = Enum.AutomaticSize.X
        tip.Visible = false
        tip.ZIndex = 20
        tip.BorderSizePixel = 0
        
        local tipCorner = Instance.new("UICorner", tip)
        tipCorner.CornerRadius = UDim.new(0, 5)
        
        local tipStroke = Instance.new("UIStroke", tip)
        tipStroke.Color = C.border

        btn.MouseEnter:Connect(function()
            tip.Visible = true
            Tween(btn, {BackgroundTransparency = 0, BackgroundColor3 = C.sidebar_hov}, 0.15)
            Tween(icon, {TextColor3 = C.white}, 0.15)
        end)
        btn.MouseLeave:Connect(function()
            tip.Visible = false
            Tween(btn, {BackgroundTransparency = 1}, 0.15)
            Tween(icon, {TextColor3 = iconColor or C.dim}, 0.15)
        end)
    end

    return btn, icon, yScaled
end

local BtnAll, IconAll, yAll       = MakeSideBtn(10, "A", "All Logs")
local BtnHTTP, IconHTTP, yHTTP    = MakeSideBtn(54, "H", "HTTP Only")
local BtnWS, IconWS, yWS         = MakeSideBtn(98, "W", "WebSocket")
local BtnWH, IconWH, yWH         = MakeSideBtn(142, "D", "Discord WH", C.wh_accent)
local BtnENC, IconENC, yENC      = MakeSideBtn(186, "🔐", "Encrypted", C.encrypted)

local SideSep = Instance.new("Frame")
SideSep.Parent = Sidebar
SideSep.BackgroundColor3 = C.border
SideSep.BackgroundTransparency = 0.5
SideSep.Size = UDim2.new(0, S(24), 0, 1)
SideSep.Position = UDim2.new(0, S(14), 0, S(232))
SideSep.BorderSizePixel = 0
SideSep.ZIndex = 9

local BtnClear, IconClear   = MakeSideBtn(242, "X", "Clear Logs")
local BtnHide, IconHide     = MakeSideBtn(286, "-", "Hide")

local BtnClose, IconClose   = MakeSideBtn(0, "Q", "Close")
BtnClose.Position = UDim2.new(0, BTN_PAD, 1, -(BTN_SIZE + S(10)))

-- ═══════════════════════════════════════
-- КОНТЕНТ ФРЕЙМ
-- ═══════════════════════════════════════
local Content = Instance.new("Frame")
Content.Parent = Main
Content.BackgroundColor3 = C.bg
Content.BackgroundTransparency = 1
Content.Position = UDim2.new(0, SIDEBAR_W, 0, 0)
Content.Size = UDim2.new(1, -SIDEBAR_W, 1, 0)
Content.ZIndex = 3
Content.BorderSizePixel = 0

-- ═══════════════════════════════════════
-- ТОПБАР
-- ═══════════════════════════════════════
local TopBar = Instance.new("Frame")
TopBar.Parent = Content
TopBar.BackgroundColor3 = C.topbar
TopBar.Size = UDim2.new(1, 0, 0, TOPBAR_H)
TopBar.BorderSizePixel = 0
TopBar.ZIndex = 6
TopBar.Position = UDim2.new(0, 0, 0, 0)

local TopBarCorner = Instance.new("UICorner", TopBar)
TopBarCorner.CornerRadius = UDim.new(0, S(10))

local TopLine = Instance.new("Frame")
TopLine.Parent = Content
TopLine.BackgroundColor3 = C.border
TopLine.BackgroundTransparency = 0.4
TopLine.Position = UDim2.new(0, 0, 0, TOPBAR_H)
TopLine.Size = UDim2.new(1, 0, 0, 1)
TopLine.BorderSizePixel = 0
TopLine.ZIndex = 6

local Title = Instance.new("TextLabel")
Title.Parent = TopBar
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, S(120), 1, 0)
Title.Position = UDim2.new(0, S(14), 0, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "WD HELPER"
Title.TextColor3 = C.white
Title.TextSize = S(IS_MOBILE and 12 or 14)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 7
Title.BorderSizePixel = 0

local logCount = 0
local whCount = 0
local encCount = 0

local CountLabel = Instance.new("TextLabel")
CountLabel.Parent = TopBar
CountLabel.BackgroundTransparency = 1
CountLabel.Position = UDim2.new(1, S(-90), 0, 0)
CountLabel.Size = UDim2.new(0, S(78), 1, 0)
CountLabel.Font = Enum.Font.GothamMedium
CountLabel.Text = "0 logs"
CountLabel.TextColor3 = C.dim
CountLabel.TextSize = S(10)
CountLabel.TextXAlignment = Enum.TextXAlignment.Right
CountLabel.ZIndex = 7
CountLabel.BorderSizePixel = 0

local FilterLabel = Instance.new("TextLabel")
FilterLabel.Parent = TopBar
FilterLabel.BackgroundColor3 = C.accent_d
FilterLabel.BackgroundTransparency = 0.4
FilterLabel.Size = UDim2.new(0, S(36), 0, S(18))
FilterLabel.Position = UDim2.new(0, S(IS_MOBILE and 100 or 130), 0, S(11))
FilterLabel.Font = Enum.Font.GothamBold
FilterLabel.Text = "ALL"
FilterLabel.TextColor3 = C.accent_l
FilterLabel.TextSize = S(8)
FilterLabel.ZIndex = 7
FilterLabel.BorderSizePixel = 0

local FilterCorner = Instance.new("UICorner", FilterLabel)
FilterCorner.CornerRadius = UDim.new(0, 4)

local WHCountLabel = Instance.new("TextLabel")
WHCountLabel.Parent = TopBar
WHCountLabel.BackgroundColor3 = C.wh_accent_d
WHCountLabel.BackgroundTransparency = 0.4
WHCountLabel.Size = UDim2.new(0, S(IS_MOBILE and 50 or 56), 0, S(18))
WHCountLabel.Position = UDim2.new(0, S(IS_MOBILE and 140 or 172), 0, S(11))
WHCountLabel.Font = Enum.Font.GothamBold
WHCountLabel.Text = "0 WH"
WHCountLabel.TextColor3 = C.wh_accent_l
WHCountLabel.TextSize = S(8)
WHCountLabel.ZIndex = 7
WHCountLabel.Visible = true
WHCountLabel.BorderSizePixel = 0

local WHCorner = Instance.new("UICorner", WHCountLabel)
WHCorner.CornerRadius = UDim.new(0, 4)

local ENCCountLabel = Instance.new("TextLabel")
ENCCountLabel.Parent = TopBar
ENCCountLabel.BackgroundColor3 = C.encrypted_d
ENCCountLabel.BackgroundTransparency = 0.4
ENCCountLabel.Size = UDim2.new(0, S(IS_MOBILE and 54 or 60), 0, S(18))
ENCCountLabel.Position = UDim2.new(0, S(IS_MOBILE and 190 or 232), 0, S(11))
ENCCountLabel.Font = Enum.Font.GothamBold
ENCCountLabel.Text = "0 ENC"
ENCCountLabel.TextColor3 = C.encrypted_l
ENCCountLabel.TextSize = S(8)
ENCCountLabel.ZIndex = 7
ENCCountLabel.Visible = true
ENCCountLabel.BorderSizePixel = 0

local ENCCorner = Instance.new("UICorner", ENCCountLabel)
ENCCorner.CornerRadius = UDim.new(0, 4)

-- ═══════════════════════════════════════
-- СКРОЛЛ ФРЕЙМ
-- ═══════════════════════════════════════
local Scroll = Instance.new("ScrollingFrame")
Scroll.Parent = Content
Scroll.BackgroundColor3 = C.bg
Scroll.BackgroundTransparency = 1
Scroll.Position = UDim2.new(0, 0, 0, TOPBAR_H + 1)
Scroll.Size = UDim2.new(1, 0, 1, -(TOPBAR_H + 1))
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.ScrollBarThickness = IS_MOBILE and 2 or 3
Scroll.ScrollBarImageColor3 = C.scroll
Scroll.ScrollBarImageTransparency = 0.2
Scroll.BorderSizePixel = 0
Scroll.ZIndex = 3
Scroll.TopImage = "rbxassetid://5234388158"
Scroll.MidImage = "rbxassetid://5234388158"
Scroll.BottomImage = "rbxassetid://5234388158"
Scroll.ElasticBehavior = Enum.ElasticBehavior.Always

local SPad = Instance.new("UIPadding", Scroll)
SPad.PaddingLeft = UDim.new(0, S(8))
SPad.PaddingRight = UDim.new(0, S(8))
SPad.PaddingTop = UDim.new(0, S(6))
SPad.PaddingBottom = UDim.new(0, S(6))

local SLayout = Instance.new("UIListLayout", Scroll)
SLayout.SortOrder = Enum.SortOrder.LayoutOrder
SLayout.Padding = UDim.new(0, S(4))

local canvasUpdateQueued = false
SLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    if canvasUpdateQueued then return end
    canvasUpdateQueued = true
    task.defer(function()
        canvasUpdateQueued = false
        Scroll.CanvasSize = UDim2.new(0, 0, 0, SLayout.AbsoluteContentSize.Y + S(14))
    end)
end)

local EmptyState = Instance.new("Frame")
EmptyState.Name = "EmptyState"
EmptyState.Parent = Scroll
EmptyState.BackgroundTransparency = 1
EmptyState.Size = UDim2.new(1, 0, 0, S(200))
EmptyState.ZIndex = 4
EmptyState.BorderSizePixel = 0

local EmptyText = Instance.new("TextLabel")
EmptyText.Parent = EmptyState
EmptyText.BackgroundTransparency = 1
EmptyText.Size = UDim2.new(1, 0, 0, S(16))
EmptyText.AnchorPoint = Vector2.new(0.5, 0.5)
EmptyText.Position = UDim2.new(0.5, 0, 0.5, S(-6))
EmptyText.Font = Enum.Font.GothamMedium
EmptyText.Text = "Waiting for network activity"
EmptyText.TextColor3 = C.dim
EmptyText.TextSize = S(12)
EmptyText.ZIndex = 5
EmptyText.BorderSizePixel = 0

local EmptySub = Instance.new("TextLabel")
EmptySub.Parent = EmptyState
EmptySub.BackgroundTransparency = 1
EmptySub.Size = UDim2.new(1, 0, 0, S(12))
EmptySub.AnchorPoint = Vector2.new(0.5, 0)
EmptySub.Position = UDim2.new(0.5, 0, 0.5, S(8))
EmptySub.Font = Enum.Font.Gotham
EmptySub.Text = "Discord webhooks & encrypted data will be highlighted"
EmptySub.TextColor3 = C.dark
EmptySub.TextSize = S(10)
EmptySub.ZIndex = 5
EmptySub.BorderSizePixel = 0

-- ═══════════════════════════════════════
-- ТАБЫ
-- ═══════════════════════════════════════
local CurrentTab = "ALL"

local sideButtons = {
    {btn = BtnAll,  icon = IconAll,  tab = "ALL",  y = yAll,  label = "ALL",  color = C.accent,     activeColor = C.sidebar_act},
    {btn = BtnHTTP, icon = IconHTTP, tab = "HTTP", y = yHTTP, label = "HTTP", color = C.accent,     activeColor = C.sidebar_act},
    {btn = BtnWS,   icon = IconWS,   tab = "WS",   y = yWS,   label = "WS",   color = C.accent,     activeColor = C.sidebar_act},
    {btn = BtnWH,   icon = IconWH,   tab = "WH",   y = yWH,   label = "WH",   color = C.wh_accent,  activeColor = C.wh_sidebar},
    {btn = BtnENC,  icon = IconENC,  tab = "ENC",  y = yENC,  label = "ENC",  color = C.encrypted,  activeColor = C.encrypted_d},
}

local allLogEntries = {}

local function SetActiveTab(tabName)
    CurrentTab = tabName
    for _, s in pairs(sideButtons) do
        if s.tab == tabName then
            ActiveIndicator.BackgroundColor3 = s.color
            Tween(ActiveIndicator, {Position = UDim2.new(0, 0, 0, s.y + S(6))}, 0.25)
            
            local textColor = C.accent_l
            if s.tab == "WH" then textColor = C.wh_accent_l
            elseif s.tab == "ENC" then textColor = C.encrypted_l end
            
            Tween(s.icon, {TextColor3 = textColor}, 0.2)
            Tween(s.btn, {BackgroundTransparency = 0, BackgroundColor3 = s.activeColor}, 0.2)
            FilterLabel.Text = s.label
            
            if s.tab == "WH" then
                FilterLabel.BackgroundColor3 = C.wh_accent_d
                FilterLabel.TextColor3 = C.wh_accent_l
            elseif s.tab == "ENC" then
                FilterLabel.BackgroundColor3 = C.encrypted_d
                FilterLabel.TextColor3 = C.encrypted_l
            else
                FilterLabel.BackgroundColor3 = C.accent_d
                FilterLabel.TextColor3 = C.accent_l
            end
        else
            local dimColor = C.dim
            if s.tab == "WH" then dimColor = C.wh_accent
            elseif s.tab == "ENC" then dimColor = C.encrypted end
            
            Tween(s.icon, {TextColor3 = dimColor}, 0.2)
            Tween(s.btn, {BackgroundTransparency = 1}, 0.2)
        end
    end
    
    for _, f in pairs(Scroll:GetChildren()) do
        if f:IsA("Frame") and f.Name ~= "EmptyState" then
            local lt = f:GetAttribute("LogType")
            if CurrentTab == "ALL" then
                f.Visible = true
            elseif CurrentTab == "HTTP" and (lt == "GET" or lt == "POST" or lt == "REQ") then
                f.Visible = true
            elseif CurrentTab == "WS" and lt == "WS" then
                f.Visible = true
            elseif CurrentTab == "WH" and lt == "WH" then
                f.Visible = true
            elseif CurrentTab == "ENC" and lt == "ENC" then
                f.Visible = true
            else
                f.Visible = false
            end
        end
    end
end

BtnAll.BackgroundTransparency = 0
BtnAll.BackgroundColor3 = C.sidebar_act
IconAll.TextColor3 = C.accent_l

BtnAll.MouseButton1Click:Connect(function() SetActiveTab("ALL") end)
BtnHTTP.MouseButton1Click:Connect(function() SetActiveTab("HTTP") end)
BtnWS.MouseButton1Click:Connect(function() SetActiveTab("WS") end)
BtnWH.MouseButton1Click:Connect(function() SetActiveTab("WH") end)
BtnENC.MouseButton1Click:Connect(function() SetActiveTab("ENC") end)

IconClear.TextColor3 = C.red
BtnClear.MouseButton1Click:Connect(function()
    logCount = 0; whCount = 0; encCount = 0
    CountLabel.Text = "0 logs"
    WHCountLabel.Text = "0 WH"
    ENCCountLabel.Text = "0 ENC"
    allLogEntries = {}
    for _, v in pairs(Scroll:GetChildren()) do
        if v:IsA("Frame") and v.Name ~= "EmptyState" then v:Destroy() end
    end
    EmptyState.Visible = true
end)

-- ═══════════════════════════════════════
-- ПОКАЗ / СКРЫТИЕ
-- ═══════════════════════════════════════
local isHidden = false

local function HideUI()
    isHidden = true
    Main.Visible = false
end

local function ShowUI()
    isHidden = false
    Main.Visible = true
    Main.BackgroundTransparency = 0
    MainStroke.Transparency = 0.2
    for _, s in pairs(sideButtons) do
        if s.tab == CurrentTab then
            s.btn.BackgroundTransparency = 0
            s.btn.BackgroundColor3 = s.activeColor
        else
            s.btn.BackgroundTransparency = 1
        end
    end
end

BtnHide.MouseButton1Click:Connect(HideUI)
BtnClose.MouseButton1Click:Connect(HideUI)

if not IS_MOBILE then
    UserInputService.InputBegan:Connect(function(input, gp)
        if not gp and input.KeyCode == Enum.KeyCode.RightControl then
            if isHidden then ShowUI() else HideUI() end
        end
    end)
end

-- ═══════════════════════════════════════
-- ПЛАВАЮЩАЯ КНОПКА (МОБИЛКИ)
-- ═══════════════════════════════════════
if IS_MOBILE then
    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Parent = ScreenGui
    ToggleBtn.BackgroundColor3 = C.toggle_bg
    ToggleBtn.Size = UDim2.new(0, 44, 0, 44)
    ToggleBtn.Position = UDim2.new(0, 10, 0.5, -22)
    ToggleBtn.Text = "W"
    ToggleBtn.Font = Enum.Font.GothamBold
    ToggleBtn.TextColor3 = C.white
    ToggleBtn.TextSize = 16
    ToggleBtn.AutoButtonColor = false
    ToggleBtn.ZIndex = 100
    ToggleBtn.Active = true
    ToggleBtn.BorderSizePixel = 0
    
    local toggleCorner = Instance.new("UICorner", ToggleBtn)
    toggleCorner.CornerRadius = UDim.new(0.5, 0)
    
    local tStroke = Instance.new("UIStroke", ToggleBtn)
    tStroke.Color = C.accent_l; tStroke.Thickness = 1.5; tStroke.Transparency = 0.4

    local tDragging, tDragStart, tFrameStart, tMoved = false, nil, nil, false

    ToggleBtn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            tDragging = true; tMoved = false; tDragStart = input.Position; tFrameStart = ToggleBtn.Position
        end
    end)
    ToggleBtn.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            tDragging = false
            if not tMoved then if isHidden then ShowUI() else HideUI() end end
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if tDragging and input.UserInputType == Enum.UserInputType.Touch then
            local d = input.Position - tDragStart
            if d.Magnitude > 8 then tMoved = true end
            ToggleBtn.Position = UDim2.new(tFrameStart.X.Scale, tFrameStart.X.Offset + d.X, tFrameStart.Y.Scale, tFrameStart.Y.Offset + d.Y)
        end
    end)
end

-- ═══════════════════════════════════════
-- ДЕТЕКТ ШИФРОВАНИЯ
-- ═══════════════════════════════════════
local function DetectEncryption(str)
    if not str or type(str) ~= "string" or #str < 20 then return false end
    
    str = tostring(str)
    
    if string.match(str, "^[A-Za-z0-9+/]+={0,2}$") and #str > 30 then
        return true, "Base64"
    end
    
    if string.match(str, "^[0-9a-fA-F]+$") and #str > 32 then
        return true, "Hex"
    end
    
    if string.match(str, "^[a-f0-9]{32}$") or string.match(str, "^[a-f0-9]{40}$") or string.match(str, "^[a-f0-9]{64}$") then
        return true, "Hash"
    end
    
    return false
end

-- ═══════════════════════════════════════
-- ФУНКЦИЯ ЛОГИРОВАНИЯ
-- ═══════════════════════════════════════
local function AddLog(method, url, body, isEncrypted, encType)
    task.defer(function()
        pcall(function()
            logCount = logCount + 1
            if EmptyState.Visible then EmptyState.Visible = false end

            while #allLogEntries >= MAX_LOGS do
                local oldest = table.remove(allLogEntries, 1)
                if oldest and oldest.Parent then oldest:Destroy() end
            end

            local dm = string.upper(tostring(method))
            local fullUrl = tostring(url)
            local fullBody = (body and tostring(body) ~= "" and tostring(body) ~= "nil") and tostring(body) or nil

            local isWebhook = IsWebhookURL(fullUrl)
            local cat = "REQ"
            if dm == "GET" or dm == "POST" then cat = dm end
            if dm == "WS" then cat = "WS" end
            
            local hasEncryption = false
            local encryptionType = encType or "Unknown"
            if isEncrypted then
                hasEncryption = true
                cat = "ENC"
                encCount = encCount + 1
                ENCCountLabel.Text = encCount .. " ENC"
                ENCCountLabel.BackgroundTransparency = 0
                task.delay(0.5, function()
                    if ENCCountLabel and ENCCountLabel.Parent then
                        Tween(ENCCountLabel, {BackgroundTransparency = 0.4}, 0.3)
                    end
                end)
            elseif isWebhook then 
                cat = "WH" 
                whCount = whCount + 1
                WHCountLabel.Text = whCount .. " WH"
                WHCountLabel.BackgroundTransparency = 0
                task.delay(0.5, function()
                    if WHCountLabel and WHCountLabel.Parent then
                        Tween(WHCountLabel, {BackgroundTransparency = 0.4}, 0.3)
                    end
                end)
            end

            CountLabel.Text = logCount .. " log" .. (logCount ~= 1 and "s" or "")

            local parsedWH = nil
            local webhookID = nil
            if isWebhook then
                webhookID = ExtractWebhookID(fullUrl)
                if fullBody then
                    parsedWH = ParseWebhookBody(fullBody)
                end
            end

            local fullContent = "[" .. dm .. "] " .. fullUrl
            if isWebhook and webhookID then
                fullContent = "[WEBHOOK ID: " .. webhookID .. "]\n" .. fullContent
            end
            if hasEncryption then
                fullContent = fullContent .. "\n\n🔐 ENCRYPTED DATA (" .. encryptionType .. ")"
            end
            if fullBody then fullContent = fullContent .. "\n\nDATA:\n" .. fullBody end
            if parsedWH then fullContent = fullContent .. "\n\n━━ PARSED ━━\n" .. parsedWH end

            local collapsed = CARD_H
            local isExpanded = false

            local cardBG, cardHov, indColor, brdColor, brdColorL, methBG, methTxt
            
            if hasEncryption then
                cardBG = Color3.fromRGB(30, 20, 40)
                cardHov = Color3.fromRGB(40, 25, 55)
                indColor = C.encrypted
                brdColor = C.encrypted_d
                brdColorL = C.encrypted_l
                methBG = C.encrypted_d
                methTxt = C.encrypted_l
            elseif isWebhook then
                cardBG = C.wh_card
                cardHov = C.wh_card_h
                indColor = C.wh_indicator
                brdColor = C.wh_border
                brdColorL = C.wh_border_l
                methBG = C.wh_accent_d
                methTxt = C.wh_accent_l
            else
                cardBG = C.card
                cardHov = C.card_hover
                indColor = C.accent
                brdColor = C.border
                brdColorL = C.border_l
                methBG = C.accent_d
                methTxt = C.accent_l
            end

            local F = Instance.new("Frame")
            F.Name = "LogEntry"
            F.Parent = Scroll
            F.BackgroundColor3 = cardBG
            F.Size = UDim2.new(1, 0, 0, collapsed)
            F.BorderSizePixel = 0
            F.ClipsDescendants = true
            F:SetAttribute("LogType", cat)
            F.ZIndex = 3

            local FCorner = Instance.new("UICorner", F)
            FCorner.CornerRadius = UDim.new(0, S(8))

            local FS = Instance.new("UIStroke", F)
            FS.Color = brdColor
            FS.Thickness = (hasEncryption or isWebhook) and 1.5 or 1
            FS.Transparency = (hasEncryption or isWebhook) and 0.3 or 0.7

            table.insert(allLogEntries, F)

            local Ind = Instance.new("Frame")
            Ind.Parent = F
            Ind.Size = UDim2.new(0, (hasEncryption or isWebhook) and 4 or 3, 1, S(-8))
            Ind.Position = UDim2.new(0, S(4), 0, S(4))
            Ind.BorderSizePixel = 0
            Ind.BackgroundColor3 = indColor
            Ind.ZIndex = 4

            local IndCorner = Instance.new("UICorner", Ind)
            IndCorner.CornerRadius = UDim.new(0, 2)

            local methodText = hasEncryption and "🔐" or (isWebhook and "WH" or dm)
            local ML = Instance.new("TextLabel")
            ML.Parent = F
            ML.BackgroundColor3 = methBG
            ML.BackgroundTransparency = 0.4
            ML.Size = UDim2.new(0, S(hasEncryption and 32 or (isWebhook and 32 or 38)), 0, S(18))
            ML.Position = UDim2.new(0, S(14), 0, S(IS_MOBILE and 16 or 13))
            ML.Font = Enum.Font.GothamBold
            ML.Text = methodText
            ML.TextColor3 = methTxt
            ML.TextSize = S(9)
            ML.ZIndex = 4
            ML.BorderSizePixel = 0

            local MLCorner = Instance.new("UICorner", ML)
            MLCorner.CornerRadius = UDim.new(0, 4)

            local dBadgeW = 0
            if isWebhook then
                local DBadge = Instance.new("TextLabel")
                DBadge.Parent = F
                DBadge.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
                DBadge.BackgroundTransparency = 0.3
                DBadge.Size = UDim2.new(0, S(52), 0, S(18))
                DBadge.Position = UDim2.new(0, S(50), 0, S(IS_MOBILE and 16 or 13))
                DBadge.Font = Enum.Font.GothamBold
                DBadge.Text = "DISCORD"
                DBadge.TextColor3 = Color3.fromRGB(200, 210, 255)
                DBadge.TextSize = S(7)
                DBadge.ZIndex = 4
                DBadge.BorderSizePixel = 0

                local DBadgeCorner = Instance.new("UICorner", DBadge)
                DBadgeCorner.CornerRadius = UDim.new(0, 4)
                dBadgeW = S(58)
            elseif hasEncryption then
                local EBadge = Instance.new("TextLabel")
                EBadge.Parent = F
                EBadge.BackgroundColor3 = C.encrypted_d
                EBadge.BackgroundTransparency = 0.3
                EBadge.Size = UDim2.new(0, S(68), 0, S(18))
                EBadge.Position = UDim2.new(0, S(50), 0, S(IS_MOBILE and 16 or 13))
                EBadge.Font = Enum.Font.GothamBold
                EBadge.Text = encryptionType
                EBadge.TextColor3 = C.encrypted_l
                EBadge.TextSize = S(7)
                EBadge.ZIndex = 4
                EBadge.BorderSizePixel = 0

                local EBadgeCorner = Instance.new("UICorner", EBadge)
                EBadgeCorner.CornerRadius = UDim.new(0, 4)
                dBadgeW = S(74)
            end

            local urlOffset = S(isWebhook and 108 or (hasEncryption and 124 or 58))
            local UL = Instance.new("TextLabel")
            UL.Parent = F
            UL.BackgroundTransparency = 1
            UL.Size = UDim2.new(1, S(IS_MOBILE and -120 or -170) - dBadgeW, 0, S(18))
            UL.Position = UDim2.new(0, urlOffset, 0, S(IS_MOBILE and 16 or 13))
            UL.Font = Enum.Font.RobotoMono
            UL.TextColor3 = (isWebhook or hasEncryption) and C.wh_accent_l or C.soft
            UL.TextSize = S(IS_MOBILE and 9 or 10)
            UL.TextXAlignment = Enum.TextXAlignment.Left
            UL.TextTruncate = Enum.TextTruncate.AtEnd
            UL.ZIndex = 4
            UL.BorderSizePixel = 0
            
            if hasEncryption then
                UL.Text = "[" .. encryptionType .. "] " .. fullUrl
            elseif isWebhook and webhookID then
                UL.Text = "ID:" .. webhookID
            else
                UL.Text = fullUrl
            end

            local TL = Instance.new("TextLabel")
            TL.Parent = F
            TL.BackgroundTransparency = 1
            TL.Size = UDim2.new(0, S(50), 0, S(12))
            TL.Position = UDim2.new(1, S(-108), 0, S(4))
            TL.Font = Enum.Font.Gotham
            TL.Text = os.date("%H:%M:%S")
            TL.TextColor3 = C.dark
            TL.TextSize = S(8)
            TL.TextXAlignment = Enum.TextXAlignment.Right
            TL.ZIndex = 4
            TL.BorderSizePixel = 0

            local CB = Instance.new("TextButton")
            CB.Parent = F
            CB.BackgroundColor3 = (isWebhook or hasEncryption) and C.wh_accent_d or C.copy
            CB.Size = UDim2.new(0, S(IS_MOBILE and 42 or 38), 0, S(IS_MOBILE and 22 or 18))
            CB.Position = UDim2.new(1, S(-52), 0, S(IS_MOBILE and 14 or 13))
            CB.Font = Enum.Font.GothamMedium
            CB.Text = "Copy"
            CB.TextColor3 = C.soft
            CB.TextSize = S(IS_MOBILE and 9 or 8)
            CB.AutoButtonColor = false
            CB.ZIndex = 5
            CB.BorderSizePixel = 0

            local CBCorner = Instance.new("UICorner", CB)
            CBCorner.CornerRadius = UDim.new(0, 4)

            if not IS_MOBILE then
                CB.MouseEnter:Connect(function()
                    local color = C.copy_h
                    if isWebhook or hasEncryption then color = C.wh_accent end
                    Tween(CB, {BackgroundColor3 = color, TextColor3 = C.white})
                end)
                CB.MouseLeave:Connect(function()
                    local color = C.copy
                    if isWebhook or hasEncryption then color = C.wh_accent_d end
                    Tween(CB, {BackgroundColor3 = color, TextColor3 = C.soft})
                end)
            end

            CB.MouseButton1Click:Connect(function()
                pcall(function()
                    if setclipboard then setclipboard(fullContent)
                    elseif toclipboard then toclipboard(fullContent) end
                end)
                CB.Text = "Done"
                CB.BackgroundColor3 = C.green_d
                task.delay(1.2, function()
                    if CB and CB.Parent then
                        CB.Text = "Copy"
                        CB.BackgroundColor3 = (isWebhook or hasEncryption) and C.wh_accent_d or C.copy
                    end
                end)
            end)

            local maxW = math.floor((WIN_W - SIDEBAR_W - S(40)))

            local expandBody = fullUrl
            if isWebhook then
                expandBody = "Webhook URL: " .. fullUrl
                if webhookID then expandBody = expandBody .. "\nWebhook ID: " .. webhookID end
            elseif hasEncryption then
                expandBody = "Encryption Type: " .. encryptionType .. "\nURL: " .. fullUrl
            end

            local urlH = GetTextHeight(expandBody, Enum.Font.RobotoMono, S(10), maxW)
            urlH = math.max(S(14), math.min(urlH, S(200)))

            local exH = S(28) + urlH + S(8)

            local parsedH = 0
            if parsedWH then
                parsedH = GetTextHeight(parsedWH, Enum.Font.RobotoMono, S(10), maxW)
                parsedH = math.max(S(14), math.min(parsedH, S(400)))
                exH = exH + S(20) + parsedH + S(8)
            end

            if fullBody then
                local bH = GetTextHeight(fullBody, Enum.Font.RobotoMono, S(10), maxW)
                bH = math.max(S(14), math.min(bH, S(300)))
                exH = exH + S(16) + bH + S(8)
            end

            local expandedH = collapsed + exH

            local EC = Instance.new("Frame")
            EC.Parent = F
            EC.BackgroundTransparency = 1
            EC.Position = UDim2.new(0, 0, 0, collapsed)
            EC.Size = UDim2.new(1, 0, 0, exH)
            EC.ClipsDescendants = true
            EC.Visible = false
            EC.ZIndex = 4
            EC.BorderSizePixel = 0

            local ES = Instance.new("Frame")
            ES.Parent = EC
            ES.BackgroundColor3 = brdColor
            ES.BackgroundTransparency = 0.4
            ES.Size = UDim2.new(1, S(-20), 0, 1)
            ES.Position = UDim2.new(0, S(14), 0, 2)
            ES.BorderSizePixel = 0
            ES.ZIndex = 4

            local EUTag = Instance.new("TextLabel")
            EUTag.Parent = EC
            EUTag.BackgroundTransparency = 1
            EUTag.Size = UDim2.new(0, S(40), 0, S(10))
            EUTag.Position = UDim2.new(0, S(14), 0, S(8))
            EUTag.Font = Enum.Font.GothamBold
            local tagText = "URL"
            if isWebhook then tagText = "WEBHOOK"
            elseif hasEncryption then tagText = "ENCRYPTED" end
            EUTag.Text = tagText
            EUTag.TextColor3 = methTxt
            EUTag.TextSize = S(8)
            EUTag.TextXAlignment = Enum.TextXAlignment.Left
            EUTag.ZIndex = 4
            EUTag.BorderSizePixel = 0

            local EUText = Instance.new("TextBox")
            EUText.Parent = EC
            EUText.BackgroundTransparency = 1
            EUText.Size = UDim2.new(1, S(-20), 0, urlH)
            EUText.Position = UDim2.new(0, S(14), 0, S(20))
            EUText.Font = Enum.Font.RobotoMono
            EUText.TextColor3 = methTxt
            EUText.TextSize = S(10)
            EUText.TextXAlignment = Enum.TextXAlignment.Left
            EUText.TextYAlignment = Enum.TextYAlignment.Top
            EUText.TextWrapped = true
            EUText.MultiLine = true
            EUText.ClearTextOnFocus = false
            EUText.TextEditable = false
            EUText.Text = expandBody
            EUText.ZIndex = 4
            EUText.BorderSizePixel = 0

            local nextY = S(28) + urlH

            if parsedWH then
                local EPTag = Instance.new("TextLabel")
                EPTag.Parent = EC
                EPTag.BackgroundTransparency = 1
                EPTag.Size = UDim2.new(0, S(50), 0, S(10))
                EPTag.Position = UDim2.new(0, S(14), 0, nextY)
                EPTag.Font = Enum.Font.GothamBold
                EPTag.Text = "📋 PARSED"
                EPTag.TextColor3 = C.wh_accent
                EPTag.TextSize = S(8)
                EPTag.TextXAlignment = Enum.TextXAlignment.Left
                EPTag.ZIndex = 4
                EPTag.BorderSizePixel = 0

                local EPBg = Instance.new("Frame")
                EPBg.Parent = EC
                EPBg.BackgroundColor3 = C.wh_accent_d
                EPBg.BackgroundTransparency = 0.6
                EPBg.Size = UDim2.new(1, S(-24), 0, parsedH + S(8))
                EPBg.Position = UDim2.new(0, S(12), 0, nextY + S(14))
                EPBg.BorderSizePixel = 0
                EPBg.ZIndex = 4

                local EPBgCorner = Instance.new("UICorner", EPBg)
                EPBgCorner.CornerRadius = UDim.new(0, S(6))

                local EPText = Instance.new("TextBox")
                EPText.Parent = EC
                EPText.BackgroundTransparency = 1
                EPText.Size = UDim2.new(1, S(-28), 0, parsedH)
                EPText.Position = UDim2.new(0, S(18), 0, nextY + S(18))
                EPText.Font = Enum.Font.RobotoMono
                EPText.TextColor3 = C.wh_accent_l
                EPText.TextSize = S(10)
                EPText.TextXAlignment = Enum.TextXAlignment.Left
                EPText.TextYAlignment = Enum.TextYAlignment.Top
                EPText.TextWrapped = true
                EPText.MultiLine = true
                EPText.ClearTextOnFocus = false
                EPText.TextEditable = false
                EPText.Text = parsedWH
                EPText.ZIndex = 4
                EPText.BorderSizePixel = 0

                nextY = nextY + S(20) + parsedH + S(8)
            end

            if fullBody then
                local EBTag = Instance.new("TextLabel")
                EBTag.Parent = EC
                EBTag.BackgroundTransparency = 1
                EBTag.Size = UDim2.new(0, S(50), 0, S(10))
                EBTag.Position = UDim2.new(0, S(14), 0, nextY)
                EBTag.Font = Enum.Font.GothamBold
                EBTag.Text = hasEncryption and "ENCRYPTED DATA" or (isWebhook and "RAW BODY" or "DATA")
                EBTag.TextColor3 = C.dark
                EBTag.TextSize = S(8)
                EBTag.TextXAlignment = Enum.TextXAlignment.Left
                EBTag.ZIndex = 4
                EBTag.BorderSizePixel = 0

                local bH2 = GetTextHeight(fullBody, Enum.Font.RobotoMono, S(10), maxW)
                bH2 = math.max(S(14), math.min(bH2, S(300)))

                local EBText = Instance.new("TextBox")
                EBText.Parent = EC
                EBText.BackgroundTransparency = 1
                EBText.Size = UDim2.new(1, S(-20), 0, bH2)
                EBText.Position = UDim2.new(0, S(14), 0, nextY + S(14))
                EBText.Font = Enum.Font.RobotoMono
                EBText.TextColor3 = Color3.fromRGB(90, 130, 185)
                EBText.TextSize = S(10)
                EBText.TextXAlignment = Enum.TextXAlignment.Left
                EBText.TextYAlignment = Enum.TextYAlignment.Top
                EBText.TextWrapped = true
                EBText.MultiLine = true
                EBText.ClearTextOnFocus = false
                EBText.TextEditable = false
                EBText.Text = fullBody
                EBText.ZIndex = 4
                EBText.BorderSizePixel = 0
            end

            local Arrow = Instance.new("TextLabel")
            Arrow.Parent = F
            Arrow.BackgroundTransparency = 1
            Arrow.Size = UDim2.new(0, S(14), 0, S(14))
            Arrow.Position = UDim2.new(1, S(-122), 0, S(IS_MOBILE and 18 or 15))
            Arrow.Font = Enum.Font.GothamBold
            Arrow.Text = ">"
            Arrow.Rotation = 90
            Arrow.TextColor3 = methTxt
            Arrow.TextSize = S(9)
            Arrow.ZIndex = 5
            Arrow.BorderSizePixel = 0

            local CZ = Instance.new("TextButton")
            CZ.Parent = F
            CZ.BackgroundTransparency = 1
            CZ.Size = UDim2.new(1, S(-60), 0, collapsed)
            CZ.Text = ""
            CZ.ZIndex = 5
            CZ.AutoButtonColor = false
            CZ.BorderSizePixel = 0

            CZ.MouseButton1Click:Connect(function()
                isExpanded = not isExpanded
                if isExpanded then
                    EC.Visible = true
                    Tween(F, {Size = UDim2.new(1, 0, 0, expandedH)}, 0.25)
                    Arrow.Rotation = 270
                    Arrow.TextColor3 = C.accent_l
                else
                    Tween(F, {Size = UDim2.new(1, 0, 0, collapsed)}, 0.25)
                    Arrow.Rotation = 90
                    Arrow.TextColor3 = methTxt
                    task.delay(0.25, function()
                        if not isExpanded and EC.Parent then EC.Visible = false end
                    end)
                end
            end)

            if not IS_MOBILE then
                F.MouseEnter:Connect(function()
                    Tween(F, {BackgroundColor3 = cardHov}, 0.12)
                    Tween(FS, {Transparency = 0.15, Color = brdColorL}, 0.12)
                end)
                F.MouseLeave:Connect(function()
                    Tween(F, {BackgroundColor3 = cardBG}, 0.12)
                    Tween(FS, {Transparency = (hasEncryption or isWebhook) and 0.3 or 0.7, Color = brdColor}, 0.12)
                end)
            end

            if CurrentTab == "ALL" then
                F.Visible = true
            elseif CurrentTab == "HTTP" and (cat == "GET" or cat == "POST" or cat == "REQ") then
                F.Visible = true
            elseif CurrentTab == "WS" and cat == "WS" then
                F.Visible = true
            elseif CurrentTab == "WH" and cat == "WH" then
                F.Visible = true
            elseif CurrentTab == "ENC" and cat == "ENC" then
                F.Visible = true
            else
                F.Visible = false
            end

            if not IS_MOBILE then
                F.BackgroundTransparency = 1
                Ind.BackgroundTransparency = 1
                ML.TextTransparency = 1; ML.BackgroundTransparency = 1
                UL.TextTransparency = 1; TL.TextTransparency = 1
                Arrow.TextTransparency = 1
                CB.BackgroundTransparency = 1; CB.TextTransparency = 1
                FS.Transparency = 1

                Tween(F, {BackgroundTransparency = 0}, 0.3)
                Tween(Ind, {BackgroundTransparency = 0}, 0.3)
                Tween(ML, {TextTransparency = 0, BackgroundTransparency = 0.4}, 0.3)
                Tween(UL, {TextTransparency = 0}, 0.3)
                Tween(TL, {TextTransparency = 0}, 0.3)
                Tween(Arrow, {TextTransparency = 0}, 0.3)
                Tween(CB, {BackgroundTransparency = 0, TextTransparency = 0}, 0.3)
                Tween(FS, {Transparency = (hasEncryption or isWebhook) and 0.3 or 0.7}, 0.3)
            end

            if isWebhook then
                warn("[WD HELPER] ⚠ Discord Webhook detected! ID: " .. (webhookID or "?") .. " URL: " .. fullUrl)
            elseif hasEncryption then
                warn("[WD HELPER] 🔐 Encrypted data detected! Type: " .. encryptionType .. " URL: " .. fullUrl)
            end
        end)
    end)
end

-- ═══════════════════════════════════════
-- ХУКИ
-- ═══════════════════════════════════════
local function SafeHook(target, replacement)
    local ok, err = pcall(function()
        hookfunction(target, replacement)
    end)
    if not ok then
        warn("[WD HELPER] Hook failed: " .. tostring(err))
    end
end

if originalRequest then
    local hookedRequest = newcclosure(function(opt)
        if type(opt) == "table" then
            local u = opt.Url or opt.url or ""
            local m = opt.Method or opt.method or "GET"
            local b = opt.Body or opt.body
            
            local isEnc, encType = false, nil
            if b then
                isEnc, encType = DetectEncryption(tostring(b))
            end
            
            AddLog(m, u, b, isEnc, encType)
        end
        return originalRequest(opt)
    end)
    
    pcall(function() if getgenv().request then SafeHook(getgenv().request, hookedRequest) end end)
    pcall(function() if syn and syn.request then SafeHook(syn.request, hookedRequest) end end)
    pcall(function() if http and http.request then SafeHook(http.request, hookedRequest) end end)
    pcall(function() if http_request then SafeHook(http_request, hookedRequest) end end)
    pcall(function() if request then SafeHook(request, hookedRequest) end end)
end

local oldNC
oldNC = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local m = getnamecallmethod()
    local a = {...}
    
    if m == "HttpGet" or m == "HttpGetAsync" then
        local isEnc, encType = DetectEncryption(tostring(a[1]))
        AddLog("GET", a[1], nil, isEnc, encType)
        if originalHttpGet then return originalHttpGet(self, ...) end
        return oldNC(self, ...)
    elseif m == "HttpPost" or m == "HttpPostAsync" then
        local isEnc, encType = DetectEncryption(a[2] and tostring(a[2]) or "")
        AddLog("POST", a[1], a[2], isEnc, encType)
        if originalHttpPost then return originalHttpPost(self, ...) end
        return oldNC(self, ...)
    elseif m == "RequestAsync" then
        if type(a[1]) == "table" then
            local u = a[1].Url or ""
            local mt = a[1].Method or "GET"
            local b = a[1].Body
            local isEnc, encType = DetectEncryption(b and tostring(b) or "")
            AddLog(mt, u, b, isEnc, encType)
        end
        return oldNC(self, ...)
    end
    return oldNC(self, ...)
end))

if originalSocketConnect then
    local function hookedConnect(url)
        AddLog("WS", "Connect: " .. tostring(url), nil)
        local s = originalSocketConnect(url)
        if s and s.Send then
            local origSend = s.Send
            s.Send = function(x, msg)
                local isEnc, encType = DetectEncryption(tostring(msg))
                AddLog("WS", "[SEND] " .. tostring(msg), nil, isEnc, encType)
                return origSend(x, msg)
            end
        end
        if s and s.OnMessage then
            s.OnMessage:Connect(function(msg)
                local isEnc, encType = DetectEncryption(tostring(msg))
                AddLog("WS", "[RECV] " .. tostring(msg), nil, isEnc, encType)
            end)
        end
        return s
    end
    pcall(function()
        if syn and syn.websocket then SafeHook(syn.websocket.connect, newcclosure(hookedConnect)) end
    end)
    pcall(function()
        if WebSocket then SafeHook(WebSocket.connect, newcclosure(hookedConnect)) end
    end)
end

pcall(function()
    if fluxus and fluxus.request then
        local orig = clonefunction(fluxus.request)
        SafeHook(fluxus.request, newcclosure(function(opt)
            if type(opt) == "table" then
                local isEnc, encType = DetectEncryption(opt.Body and tostring(opt.Body) or "")
                AddLog(opt.Method or "GET", opt.Url or "", opt.Body, isEnc, encType)
            end
            return orig(opt)
        end))
    end
end)

pcall(function()
    if KRNL_LOADED and krnl and krnl.request then
        local orig = clonefunction(krnl.request)
        SafeHook(krnl.request, newcclosure(function(opt)
            if type(opt) == "table" then
                local isEnc, encType = DetectEncryption(opt.Body and tostring(opt.Body) or "")
                AddLog(opt.Method or "GET", opt.Url or "", opt.Body, isEnc, encType)
            end
            return orig(opt)
        end))
    end
end)

-- ═══════════════════════════════════════
-- НАЧАЛЬНАЯ АНИМАЦИЯ
-- ═══════════════════════════════════════
if IS_MOBILE then
    Main.BackgroundTransparency = 0
    MainStroke.Transparency = 0.2
else
    Main.BackgroundTransparency = 1
    MainStroke.Transparency = 1
    
    task.wait(0.15)
    Tween(Main, {BackgroundTransparency = 0}, 0.5)
    Tween(MainStroke, {Transparency = 0.2}, 0.5)
end

