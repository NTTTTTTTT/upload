-- NTT HUB Key v2 / v7.43
-- Functional source reconstruction from `obfuscated.lua (6).txt`.
--
-- This is intentionally a readable reconstruction, not a byte-for-byte
-- unminification.  The original's VM dispatcher, opaque predicates and
-- thousands of UI-property assignments were removed; every meaningful local
-- loader action below was lifted from the original code or from its VM in an
-- offline mocked environment.
--
-- Important limitation:
--   `_G.getscr` is downloaded and then passed to loadstring.  Its contents are
--   not embedded in the supplied file, so no local deobfuscation can recover
--   that second-stage source without obtaining that response separately.

local AUTO_START = false -- The original auto-starts.  Kept off for inspection.

local ROOT_FOLDER = "NTT HUB"
local KEY_FOLDER = ROOT_FOLDER .. "/Key v2"
local KEY_FILE = KEY_FOLDER .. "/Key.json"

local KEY_PAGE_URL = "https://ntthub.xyz/key/main?hwid="
local KEY_API_PREFIX = "https://s"
local KEY_API_SUFFIX = ".nttsy.xyz/?type=data&domain=neko&hwid="

-- These endpoints are present in the original string pool.  They belong to
-- its bootstrap/anti-tamper scaffolding, not to the visible Get Key button.
local EMBEDDED_ENDPOINTS = {
    request = "https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/request",
    link = "https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/link",
    worker = "https://nekokawaii.workers.dev?hwid",
}

local function newDefaultSettings()
    -- The original creates `_G.Settings.checkkey` before reading Key.json.
    -- `_G.key` is an obfuscated bootstrap marker and is not consumed by the
    -- visible key GUI, so it is represented by an empty marker here.
    return {
        checkkey = {
            ["_G.random"] = "_NTT",
            time = os.time(),
            startus = false,
            ["_G.key"] = "",
            index = os.time(),
        },
    }
end

local function getHttpService()
    return game:GetService("HttpService")
end

-- == File-backed settings ===================================================

local function loadOrCreateSettings()
    if not (readfile and writefile and isfile and isfolder) then
        warn("Status : Undetected Executor")
        return false
    end

    if not isfolder(ROOT_FOLDER) then
        makefolder(ROOT_FOLDER)
    end
    if not isfolder(KEY_FOLDER) then
        makefolder(KEY_FOLDER)
    end

    if not isfile(KEY_FILE) then
        writefile(KEY_FILE, getHttpService():JSONEncode(_G.Settings))
        return true
    end

    local saved = getHttpService():JSONDecode(readfile(KEY_FILE))
    for key, value in pairs(saved) do
        -- This is deliberately a shallow merge: that is what UIDlo() does.
        _G.Settings[key] = value
    end
    return true
end

local function saveSettings()
    if not (readfile and writefile and isfile and isfolder) then
        warn("Status : Undetected Executor")
        return false
    end

    if not isfile(KEY_FILE) then
        return loadOrCreateSettings()
    end

    -- The decoded value is not used afterwards in the original; decoding it
    -- still makes a corrupt settings file fail at the same point.
    getHttpService():JSONDecode(readfile(KEY_FILE))

    local snapshot = {}
    for key, value in pairs(_G.Settings) do
        snapshot[key] = value
    end
    writefile(KEY_FILE, getHttpService():JSONEncode(snapshot))
    return true
end

-- == Response-envelope implementation (original functions GpF0n/oK/vRrw/KG40)

local function splitNonEmpty(value, separator)
    local fields = {}
    for field in string.gmatch(value, "[^" .. separator .. "]+") do
        table.insert(fields, field)
    end
    return fields
end

local function hash32(value)
    local hash = 0
    for index = 1, #value do
        hash = (hash * 131 + string.byte(value, index)) % (2 ^ 32)
    end
    return hash
end

local function hexDecode(value)
    return string.gsub(value, "..", function(bytePair)
        return string.char(tonumber(bytePair, 16))
    end)
end

local function decodeKeyEnvelope(response, localSalt)
    -- Envelope: <hash>|<unix timestamp>|<hex encrypted response>
    local fields = splitNonEmpty(response, "|")
    if #fields < 3 then
        return nil
    end

    local declaredHash = fields[1]
    local timestamp = tonumber(fields[2])
    local encryptedHex = fields[3]
    if not timestamp or not encryptedHex then
        return nil
    end

    if tostring(math.floor(hash32(tostring(timestamp) .. "salt"))) ~= declaredHash then
        return "time out"
    end
    if math.abs(os.time() - timestamp) > 5 * 60 then
        return "time out"
    end

    local encrypted = hexDecode(encryptedHex)
    local seed = hash32(tostring(localSalt) .. ":" .. tostring(timestamp))
    local plaintext = {}

    for index = 1, #encrypted do
        local encryptedByte = string.byte(encrypted, index)
        local shift = (seed + index * 7) % 256
        local byte = (encryptedByte - shift) % 256
        byte = bit32.bxor(byte, shift)
        table.insert(plaintext, string.char(byte))
    end

    return table.concat(plaintext)
end

-- == Three functions that were stored as VM bytecode =======================

local function getHardwareId()
    -- Recovered by running only the VM function against a fake `game` table.
    return game:GetService("RbxAnalyticsService"):GetClientId()
end

local function requestKeyResponse(hwid)
    -- The VM calls math.random(1, 4), then game:HttpGet on this exact URL.
    local url = KEY_API_PREFIX .. math.random(1, 4) .. KEY_API_SUFFIX .. hwid
    return game:HttpGet(url)
end

local function downloadSecondStage()
    -- Exact original behaviour: failures are swallowed by pcall.
    return pcall(function()
        _G.getscr = game:HttpGet(
            _G.url_random .. "/?type=repo&id1=scr&id2=" .. _G.id
        )
        return _G.getscr
    end)
end

local function runSecondStage()
    -- Reconstructed from the `Tr` VM function.  The remote text itself is
    -- absent from this file, even though the loader later executes it.
    print(_G.id)
    local getscr = _G.getscr
    print("data1")

    if type(loadstring) ~= "function" then
        error("loadstring is unavailable")
    end
    loadstring(getscr)()
    print("Script loaded successfully")

    -- The original assigns this to the global `expire`, then installs the
    -- per-frame predicate below.  It is intentionally kept verbatim even
    -- though the expression is odd.
    _G.expire = os.time() + _G.expire

    game:GetService("RunService").RenderStepped:Connect(function()
        if os.time() + _G.expire < os.time() then
            -- The VM reads global `index_key` here but does not use it.
            local _ = _G.index_key
            game:GetService("Players").LocalPlayer:Kick("Your key has expired")
        end
    end)
end

-- == Hidden startup path that runs before the GUI ===========================

local function tryResumeExistingSession()
    -- This block is present before `Instance.new("ScreenGui")` in the source.
    -- It is separate from the Check Key button and writes global index_key.
    _G.linkkey = KEY_PAGE_URL .. getHardwareId()
    _G.key = _G.Settings.checkkey["_G.key"]
    _G.getlink = "https://nekokawaii.workers.dev?hwid"

    local ok, rawResponse = pcall(function()
        return requestKeyResponse(getHardwareId())
    end)
    if not ok then
        print(rawResponse)
        return false
    end
    if not string.find(rawResponse, "|") then
        print("Fetch Failed or No Key Available")
        return false
    end

    local decodedResponse = decodeKeyEnvelope(rawResponse, "string.char")
    local fields = string.split(decodedResponse, "|")
    print(fields)

    _G.index_key = fields[1]
    _G.expire = tonumber(fields[2])

    if _G.index_key and string.find(_G.index_key, "_") then
        -- The source wraps Tr() in pcall and returns before constructing UI.
        pcall(runSecondStage)
        return true
    end
    return false
end

-- == Key-button behaviour ===================================================

local function getRandomMarker()
    -- The original references a free global named `raw_random`.  Preserve its
    -- value when it exists; otherwise retain the old marker from settings.
    return rawget(_G, "raw_random") or _G.Settings.checkkey["_G.random"]
end

local function generateKeyLink(statusLabel)
    local checkKey = _G.Settings.checkkey
    if checkKey.time < os.time() then
        saveSettings()
        checkKey["_G.random"] = getRandomMarker()
        checkKey.time = tonumber(os.time() + 60 * 60 * 6)
        _G.linkkey = KEY_PAGE_URL .. getHardwareId()
    end

    -- The original does not guard this executor-only API.
    setclipboard(_G.linkkey)
    statusLabel.Text = "Link Save In Clipboard"
end

local function checkKey(statusLabel, mainFrame)
    statusLabel.Text = "Do Check Key"

    local ok, rawResponse = pcall(function()
        return requestKeyResponse(getHardwareId())
    end)
    if not ok then
        print(rawResponse)
        statusLabel.Text = "Key False"
        return false, rawResponse
    end

    if not string.find(rawResponse, "|") then
        print("Fetch Fail or Not have Key")
        return false, rawResponse
    end

    -- `string.char` is passed as the literal local salt in the source.
    local decodedResponse = decodeKeyEnvelope(rawResponse, "string.char")
    local fields = string.split(decodedResponse, "|")

    _G.Settings.index_key = fields[1]
    _G.expire = tonumber(fields[2])
    -- `L341` in the original is the main Frame, not the ScreenGui.
    mainFrame.Visible = false
    print(decodedResponse)

    runSecondStage()
    return true, decodedResponse
end

-- == Readable replacement for the original 50k+ bytes of UI assignments ===

local function addCorner(instance, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = instance
    return corner
end

local function make(className, properties, parent)
    local instance = Instance.new(className)
    for property, value in pairs(properties) do
        instance[property] = value
    end
    instance.Parent = parent
    return instance
end

local function buildGui()
    local old = game:GetService("CoreGui"):FindFirstChild("UIGUI")
    if old then
        old:Destroy()
    end

    local gui = make("ScreenGui", {
        Name = "UIGUI",
        ResetOnSpawn = false,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    }, game:GetService("CoreGui"))

    local main = make("Frame", {
        Name = "UImain",
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(24, 25, 32),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(430, 255),
    }, gui)
    addCorner(main, 10)

    local bar = make("Frame", {
        Name = "UIbar",
        BackgroundColor3 = Color3.fromRGB(36, 38, 49),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 42),
    }, main)
    addCorner(bar, 10)

    make("TextLabel", {
        Name = "title",
        BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold,
        Position = UDim2.fromOffset(15, 0),
        Size = UDim2.new(1, -62, 1, 0),
        Text = "   NTT HUB | Key",
        TextColor3 = Color3.fromRGB(240, 240, 245),
        TextSize = 17,
        TextXAlignment = Enum.TextXAlignment.Left,
    }, bar)

    local close = make("TextButton", {
        Name = "exit",
        BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold,
        Position = UDim2.new(1, -42, 0, 0),
        Size = UDim2.fromOffset(42, 42),
        Text = "×",
        TextColor3 = Color3.fromRGB(255, 117, 117),
        TextSize = 26,
    }, bar)

    make("TextLabel", {
        Name = "subtitle",
        BackgroundTransparency = 1,
        Font = Enum.Font.Gotham,
        Position = UDim2.fromOffset(25, 58),
        Size = UDim2.fromOffset(380, 24),
        Text = "Script NTT HUB Suport 32 bit / Pe",
        TextColor3 = Color3.fromRGB(166, 171, 190),
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left,
    }, main)

    local keyInput = make("TextBox", {
        Name = "key_t",
        BackgroundColor3 = Color3.fromRGB(43, 46, 60),
        BorderSizePixel = 0,
        ClearTextOnFocus = false,
        Font = Enum.Font.Gotham,
        PlaceholderColor3 = Color3.fromRGB(155, 160, 180),
        PlaceholderText = "Enter The Key",
        Position = UDim2.fromOffset(25, 92),
        Size = UDim2.fromOffset(380, 38),
        Text = "",
        TextColor3 = Color3.fromRGB(235, 236, 240),
        TextSize = 14,
    }, main)
    addCorner(keyInput, 7)

    local checkButton = make("TextButton", {
        Name = "key_b",
        BackgroundColor3 = Color3.fromRGB(84, 124, 255),
        BorderSizePixel = 0,
        Font = Enum.Font.GothamBold,
        Position = UDim2.fromOffset(25, 145),
        Size = UDim2.fromOffset(184, 38),
        Text = "Check Key",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 14,
    }, main)
    addCorner(checkButton, 7)

    local getButton = make("TextButton", {
        Name = "key_g",
        BackgroundColor3 = Color3.fromRGB(52, 183, 128),
        BorderSizePixel = 0,
        Font = Enum.Font.GothamBold,
        Position = UDim2.fromOffset(221, 145),
        Size = UDim2.fromOffset(184, 38),
        Text = "Get Key",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 14,
    }, main)
    addCorner(getButton, 7)

    local status = make("TextLabel", {
        Name = "key_tb",
        BackgroundTransparency = 1,
        Font = Enum.Font.Gotham,
        Position = UDim2.fromOffset(25, 192),
        Size = UDim2.fromOffset(380, 22),
        Text = "",
        TextColor3 = Color3.fromRGB(190, 195, 211),
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Center,
    }, main)

    make("TextLabel", {
        Name = "credit",
        BackgroundTransparency = 1,
        Font = Enum.Font.Gotham,
        Position = UDim2.fromOffset(25, 215),
        Size = UDim2.fromOffset(380, 30),
        Text = "#ねこ かわいい  •  @nekokawaii4500",
        TextColor3 = Color3.fromRGB(120, 126, 146),
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Center,
    }, main)

    close.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)

    return {
        gui = gui,
        main = main,
        keyInput = keyInput,
        checkButton = checkButton,
        getButton = getButton,
        status = status,
    }
end

local function main()
    _G.Settings = newDefaultSettings()
    loadOrCreateSettings()
    downloadSecondStage()

    if tryResumeExistingSession() then
        return nil
    end

    local ui = buildGui()

    -- This is faithful to the original: `key_t` is rendered but its text is
    -- not read by the Check Key callback.  The server response is keyed only
    -- from RbxAnalyticsService:GetClientId().
    ui.checkButton.MouseButton1Down:Connect(function()
        checkKey(ui.status, ui.main)
    end)
    ui.getButton.MouseButton1Down:Connect(function()
        generateKeyLink(ui.status)
    end)

    return ui
end

if AUTO_START then
    main()
end

return {
    main = main,
    buildGui = buildGui,
    loadOrCreateSettings = loadOrCreateSettings,
    saveSettings = saveSettings,
    getHardwareId = getHardwareId,
    requestKeyResponse = requestKeyResponse,
    decodeKeyEnvelope = decodeKeyEnvelope,
    downloadSecondStage = downloadSecondStage,
    runSecondStage = runSecondStage,
    tryResumeExistingSession = tryResumeExistingSession,
    checkKey = checkKey,
    generateKeyLink = generateKeyLink,
    embeddedEndpoints = EMBEDDED_ENDPOINTS,
}
