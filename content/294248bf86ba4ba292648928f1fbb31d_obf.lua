


local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local LP = Players.LocalPlayer
if not LP then
    return
end
local HUDY_SESSION_MEM = nil
local function AuthenticateSession()
    local BASE_URL = "https://webkey-iota.vercel.app"
    local function nowMs()
        local ok, v = pcall(function()
            return DateTime.now().UnixTimestampMillis
        end)
        if ok and type(v) == "number" then
            return v
        end
        return os.time() * 1000
    end
    local function getFp()
        local get_exec = identifyexecutor
        local get_hw = gethwid
        local ex = "unknown"
        if type(get_exec) == "function" then
            pcall(function() ex = tostring(get_exec()) end)
        end
        local hw = "nohwid"
        if type(get_hw) == "function" then
            pcall(function() hw = tostring(get_hw()) end)
        end
        return ex .. "|" .. hw .. "|" .. tostring(game.PlaceId or 0)
    end
    local function validSession(s)
        return type(s) == "table"
            and type(s.token) == "string"
            and s.token ~= ""
            and type(s.expireAt) == "number"
            and s.expireAt > nowMs()
    end
    local function loadSession()
        local s = HUDY_SESSION_MEM
        if validSession(s) then
            return s
        end
        local ok, tData = pcall(function()
            return TeleportService:GetTeleportSetting("HUDY_SESSION_JSON")
        end)
        if ok and type(tData) == "string" and tData ~= "" then
            local decodeOk, t = pcall(function()
                return HttpService:JSONDecode(tData)
            end)
            if decodeOk and validSession(t) then
                return t
            end
        end
        return nil
    end
    local function saveSession(s)
        HUDY_SESSION_MEM = s
        pcall(function()
            local jsonStr = HttpService:JSONEncode(s)
            TeleportService:SetTeleportSetting("HUDY_SESSION_JSON", jsonStr)
        end)
    end
    local function requestJson(url)
        local delaySec = 1
        for i = 1, 3 do
            local ok, res = pcall(function()
                return game:HttpGet(url)
            end)
            if ok and type(res) == "string" and res ~= "" then
                local ok2, data = pcall(function()
                    return HttpService:JSONDecode(res)
                end)
                if ok2 and type(data) == "table" then
                    return data
                end
            end
            if i < 3 then
                task.wait(delaySec)
                delaySec = delaySec * 2
            end
        end
        return nil
    end
    local session = loadSession()
    if not session then
        local url = BASE_URL
            .. "/api/execute?format=json&name=" .. HttpService:UrlEncode(LP.Name)
            .. "&fp=" .. HttpService:UrlEncode(getFp())
        local data = requestJson(url)
        if not data or data.ok ~= true or type(data.token) ~= "string" then
            return false
        end
        local ttlMs = tonumber(data.expiresInMs) or 0
        if ttlMs <= 0 then
            return false
        end
        session = {
            token = data.token,
            expireAt = nowMs() + ttlMs - 5000
        }
        saveSession(session)
    end
    return true
end
local isAuthed = false
local success, result = pcall(AuthenticateSession)
if success and result == true then
    isAuthed = true
end

if not isAuthed then
    pcall(function() LP:Kick("Kích hoạt thất bại! Vui lòng mua Key/Whitelist.") end)
    while true do task.wait(9e9) end
end
print("Hudy Hub Loaded Successfully!")
if getgenv().DuyHubSeaEvents_Running then return end
getgenv().DuyHubSeaEvents_Running = true
if not game:IsLoaded() then game.Loaded:Wait() end
task.wait(1)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService = game:GetService("TeleportService")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")
local GuiService = game:GetService("GuiService")
local workspace = game.Workspace
while not Players.LocalPlayer do task.wait(0.1) end
local lplr = Players.LocalPlayer
getgenv().ServerPriority = "hd"

local ClientBeckUI = nil
pcall(function()
    ClientBeckUI = ReplicatedStorage:WaitForChild("Chest", 5):WaitForChild("Remotes"):WaitForChild("Bindables"):WaitForChild("ClientBeckUI")
end)

local function GetSeaName()
    if game.PlaceId == 3146506984 then return "FirstSea"
    elseif game.PlaceId == 6500329016 or game.PlaceId == 11520107397 then return "SecondSea"
    elseif game.PlaceId == 14039983794 then return "ThirdSea" end
    return "SecondSea" 
end
if _G.WhiteScreen then
    pcall(function()
        local RunService = game:GetService("RunService")
        local CoreGui = game:GetService("CoreGui")
        local Lighting = game:GetService("Lighting")
        if setfpscap then setfpscap(60) end
        RunService:Set3dRenderingEnabled(false) 
        settings().Rendering.QualityLevel = 1
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 9e9
        local screenGui = Instance.new("ScreenGui")
        screenGui.IgnoreGuiInset = true 
        screenGui.Name = "CPU_SAVER_GUI"
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15) 
        frame.ZIndex = 99999
        frame.Parent = screenGui
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Text = "HỆ THỐNG ĐANG AUTO...\n(Đã bật chế độ siêu tiết kiệm CPU/GPU)"
        label.TextColor3 = Color3.fromRGB(0, 255, 150)
        label.Font = Enum.Font.GothamBlack
        label.TextSize = 24
        label.Parent = frame
        screenGui.Parent = CoreGui
    end)
end
local function isFullyLoaded()
    local stats = lplr:FindFirstChild("PlayerStats")
    local hrp = lplr.Character and lplr.Character:FindFirstChild("HumanoidRootPart")
    return (stats and stats:FindFirstChild("beli") ~= nil) and (hrp ~= nil)
end
local isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
local getReq = isMobile and ((fluxus and fluxus.request) or (http and http.request) or request or http_request) or ((syn and syn.request) or request or http_request or (http and http.request))
local BaseFolder = "HuDy Hub"
local AccName = tostring(lplr.Name)
local AccFolder = BaseFolder .. "/" .. AccName
local InfoFile = AccFolder .. "/info.json"
local sessionIgnoredServers = {}
if isfolder and makefolder then 
    pcall(function() 
        if not isfolder(BaseFolder) then makefolder(BaseFolder) end 
        if not isfolder(AccFolder) then makefolder(AccFolder) end
    end) 
end
local AppData = { hop = {0}, isHopping = false, prevServer = "", visitedServers = {}, blacklist2 = {} }
local function SaveAppData()
    if writefile then pcall(function() writefile(InfoFile, HttpService:JSONEncode(AppData)) end) end
end
pcall(function()
    if isfile and readfile and isfile(InfoFile) then
        local dec = HttpService:JSONDecode(readfile(InfoFile))
        if type(dec) == "table" then
            if dec.hop then AppData.hop = dec.hop end
            if dec.isHopping ~= nil then AppData.isHopping = dec.isHopping end
            if dec.prevServer then AppData.prevServer = dec.prevServer end
            if dec.visitedServers then AppData.visitedServers = dec.visitedServers end
            if dec.blacklist2 then AppData.blacklist2 = dec.blacklist2 end
        end
    end
end)
if AppData.isHopping then
    AppData.hop[1] = (AppData.hop[1] or 0) + 1
    AppData.isHopping = false
    SaveAppData()
end
local function saveTeleportedServers(jobId)
    if jobId and type(jobId) == "string" and jobId ~= "" then
        AppData.visitedServers[jobId] = os.time()
        for id, timeAdded in pairs(AppData.visitedServers) do 
            if type(timeAdded) == "number" and (os.time() - timeAdded >= 300) then AppData.visitedServers[id] = nil end 
        end
        SaveAppData()
    end
end
local function CleanLocalBlacklist()
    local currentTime = os.time()
    local changed = false
    for id, timeAdded in pairs(AppData.blacklist2) do 
        if type(timeAdded) == "number" and (currentTime - timeAdded >= 1800) then AppData.blacklist2[id] = nil; changed = true end 
    end
    if changed then SaveAppData() end
end
local function AddToBlacklist2(jobId) 
    if jobId and type(jobId) == "string" and jobId ~= "" then 
        AppData.blacklist2[jobId] = os.time()
        CleanLocalBlacklist()
        SaveAppData() 
    end 
end
local GlobalDataFile = BaseFolder .. "/FinData.json"
getgenv().GlobalData = { blacklist1 = {} }
local function LoadGlobalData()
    pcall(function()
        if isfile and readfile and isfile(GlobalDataFile) then
            local dec = HttpService:JSONDecode(readfile(GlobalDataFile))
            if type(dec) == "table" then
                getgenv().GlobalData.blacklist1 = dec.blacklist1 or {}
            end
        end
    end)
end
LoadGlobalData()
local function SaveGlobalData()
    if writefile then pcall(function() writefile(GlobalDataFile, HttpService:JSONEncode(getgenv().GlobalData)) end) end
end
local function CleanGlobalBlacklist()
    local currentTime = os.time()
    local changed = false
    for id, timeAdded in pairs(getgenv().GlobalData.blacklist1) do 
        if type(timeAdded) == "number" and (currentTime - timeAdded >= 1200) then getgenv().GlobalData.blacklist1[id] = nil; changed = true end 
    end
    if changed then SaveGlobalData() end
end
local function AddToBlacklist1(jobId) 
    if jobId and type(jobId) == "string" and jobId ~= "" then 
        LoadGlobalData()
        if not AppData.blacklist2[jobId] then getgenv().GlobalData.blacklist1[jobId] = os.time() end
        CleanGlobalBlacklist()
        SaveGlobalData() 
    end 
end
local allowedBosses = { SeaKing = false, HydraSeaKing = false, GhostShip = false }
if type(_G.boss) == "table" then
    for _, b in ipairs(_G.boss) do
        local lowerB = string.lower(b)
        if string.find(lowerB, "sea") and string.find(lowerB, "king") then allowedBosses.SeaKing = true end
        if string.find(lowerB, "hydra") then allowedBosses.HydraSeaKing = true end
        if string.find(lowerB, "ghost") then allowedBosses.GhostShip = true end
    end
else
    allowedBosses.SeaKing = true; allowedBosses.HydraSeaKing = true; allowedBosses.GhostShip = true
end
local function ToolMatchesType(tool, expectedType)
    if not tool or not tool:IsA("Tool") then return false end
    local tt = string.lower(tool.ToolTip or "")
    local name = string.lower(tool.Name or "")
    local expected = string.lower(expectedType)
    if expected == "melee" then return string.find(tt, "melee", 1, true) or string.find(tt, "combat", 1, true) or string.find(name, "leg", 1, true) or string.find(name, "combat", 1, true) or string.find(name, "claw", 1, true) or string.find(name, "water", 1, true) or string.find(name, "electro", 1, true) or string.find(name, "cyborg", 1, true) or string.find(name, "dragon", 1, true)
    elseif expected == "sword" then return string.find(tt, "sword", 1, true) or string.find(tt, "blade", 1, true) or string.find(name, "katana", 1, true) or string.find(name, "blade", 1, true) or string.find(name, "sword", 1, true) or string.find(name, "bisento", 1, true) or string.find(name, "pole", 1, true) or string.find(name, "mini", 1, true) or string.find(name, "saber", 1, true)
    elseif expected == "fruit" then return string.find(tt, "fruit", 1, true) or string.find(tt, "devil", 1, true) or string.find(name, "fruit", 1, true) or string.find(name, "dough", 1, true) or string.find(name, "dragon", 1, true) or string.find(name, "leopard", 1, true) or string.find(name, "flame", 1, true) or string.find(name, "ice", 1, true) or string.find(name, "light", 1, true) or string.find(name, "magma", 1, true) or string.find(name, "quake", 1, true) or string.find(name, "buddha", 1, true) end
    return false
end
local function getAllValidWeapons()
    local validTools = {}
    local char = lplr.Character
    local backpack = lplr:FindFirstChild("Backpack")
    local allowedTypes = type(_G.tool) == "table" and _G.tool or {"Melee"}
    local function checkAndAdd(t)
        if not t or not t:IsA("Tool") then return end
        if string.find(t.Name, "Compass") or string.find(t.Name, "Map") then return end
        for _, expectedType in ipairs(allowedTypes) do
            if ToolMatchesType(t, expectedType) then table.insert(validTools, t); break end
        end
    end
    if char then checkAndAdd(char:FindFirstChildOfClass("Tool")) end
    if backpack then for _, t in pairs(backpack:GetChildren()) do checkAndAdd(t) end end
    return validTools
end
local UserWebhook = (type(_G) == "table" and _G.webhook_url) or ""
local API_RADAR_URL = (type(_G) == "table" and _G.API_URL and _G.API_URL ~= "") and _G.API_URL or "https://king-legacy-api.tanthuy068.workers.dev"
local RADAR_SECRET = ((type(_G) == "table" and _G.RADAR_SECRET) or "") ~= ""
    and tostring(_G.RADAR_SECRET)
    or "huDy2026SecretKeyXk9mQr7aBcDeF12"   
local RADAR_ENCRYPT_KEY = ((type(_G) == "table" and _G.RADAR_ENCRYPT_KEY) or "") ~= ""
    and tostring(_G.RADAR_ENCRYPT_KEY)
    or "huDy2026EncrXk9m" 
local _SHA256 = (function()
    local band,bor,bxor,bnot=bit32.band,bit32.bor,bit32.bxor,bit32.bnot
    local rsh,lsh=bit32.rshift,bit32.lshift
    local K={0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
             0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
             0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
             0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
             0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
             0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
             0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
             0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2}
    local function rotr(n,b) return bor(rsh(n,b),lsh(n,32-b)) end
    local function pad(msg)
        local bHi=math.floor(#msg*8/2^32); local bLo=(#msg*8)%2^32
        
        -- SỬA Ở ĐÂY: Dùng string.char để chống lỗi mã hóa chuỗi khi Obfuscate
        msg=msg..string.char(128) 
        while #msg%64~=56 do msg=msg..string.char(0) end 
        
        return msg..string.char(math.floor(bHi/16777216)%256,math.floor(bHi/65536)%256,math.floor(bHi/256)%256,bHi%256,
                                math.floor(bLo/16777216)%256,math.floor(bLo/65536)%256,math.floor(bLo/256)%256,bLo%256)
    end
    local function digest(msg)
        msg=pad(msg)
        local h0,h1,h2,h3,h4,h5,h6,h7=0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19
        for blk=1,#msg,64 do
            local c=msg:sub(blk,blk+63); local w={}
            for i=1,16 do local o=(i-1)*4; w[i]=bor(lsh(c:byte(o+1),24),lsh(c:byte(o+2),16),lsh(c:byte(o+3),8),c:byte(o+4)) end
            for i=17,64 do w[i]=band(w[i-16]+bxor(rotr(w[i-15],7),rotr(w[i-15],18),rsh(w[i-15],3))+w[i-7]+bxor(rotr(w[i-2],17),rotr(w[i-2],19),rsh(w[i-2],10)),0xffffffff) end
            local a,b,c2,d,e,f,g,h=h0,h1,h2,h3,h4,h5,h6,h7
            for i=1,64 do
                local t1=band(h+bxor(rotr(e,6),rotr(e,11),rotr(e,25))+bxor(band(e,f),band(bnot(e),g))+K[i]+w[i],0xffffffff)
                local t2=band(bxor(rotr(a,2),rotr(a,13),rotr(a,22))+bxor(band(a,b),band(a,c2),band(b,c2)),0xffffffff)
                h=g;g=f;f=e;e=band(d+t1,0xffffffff);d=c2;c2=b;b=a;a=band(t1+t2,0xffffffff)
            end
            h0=band(h0+a,0xffffffff);h1=band(h1+b,0xffffffff);h2=band(h2+c2,0xffffffff);h3=band(h3+d,0xffffffff)
            h4=band(h4+e,0xffffffff);h5=band(h5+f,0xffffffff);h6=band(h6+g,0xffffffff);h7=band(h7+h,0xffffffff)
        end
        return string.format("%08x%08x%08x%08x%08x%08x%08x%08x",h0,h1,h2,h3,h4,h5,h6,h7)
    end
    local function hexToBin(hex) return hex:gsub("%x%x",function(h) return string.char(tonumber(h,16)) end) end
    return {digest=digest, hexToBin=hexToBin}
end)()

local function _HMAC(key, msg)
    local B=64
    if #key>B then key=_SHA256.hexToBin(_SHA256.digest(key)) end
    
    -- SỬA Ở ĐÂY: Dùng string.char(0) thay vì "\000"
    while #key<B do key=key..string.char(0) end 
    
    local ip,op="",""
    for i=1,B do local b=key:byte(i); ip=ip..string.char(bit32.bxor(b,0x36)); op=op..string.char(bit32.bxor(b,0x5c)) end
    return _SHA256.digest(op.._SHA256.hexToBin(_SHA256.digest(ip..msg)))
end


local function _SignedHeaders(method, path, body)
    local ts=tostring(os.time())
    local sig=_HMAC(RADAR_SECRET, method..":"..path..":"..ts..":"..body)
    return {
        ["Content-Type"]="application/json",
        ["X-Timestamp"]=ts,
        ["X-Signature"]=sig,
    }, ts, sig
end
local function _SignedUrl(baseUrl, path, ts, sig)
    return baseUrl:gsub("/$", "") .. path
        .. "?ts=" .. HttpService:UrlEncode(tostring(ts or ""))
        .. "&sig=" .. HttpService:UrlEncode(tostring(sig or ""))
end
local function _RadarRespText(res)
    if type(res) ~= "table" then return tostring(res) end
    local body = res.Body or res.body or res.ResponseBody or ""
    if type(body) ~= "string" then body = tostring(body) end
    if #body > 220 then body = body:sub(1, 220) .. "..." end
    return body
end
local function _DecryptJobId(enc)
    if type(enc)~="string" or enc:sub(1,3)~="HD_" then return enc end
    local hex=enc:sub(4); local kLen=#RADAR_ENCRYPT_KEY; local out={}; local pos=0
    local i=1
    while i<=#hex-1 do
        local bv=tonumber(hex:sub(i,i+1),16)
        if not bv then break end
        table.insert(out, string.char(bit32.bxor(bv, RADAR_ENCRYPT_KEY:byte((pos%kLen)+1))))
        i=i+2; pos=pos+1
    end
    local result=table.concat(out)
    if #result~=36 then
        warn("[Radar] DecryptJobId: length="..#result..", check ENCRYPT_KEY!")
        return enc
    end
    return result
end
print("Load safe")
local Settings = { 
    AutoSeaEvents = (type(_G) == "table" and _G.AutoSeaEvents ~= nil) and _G.AutoSeaEvents or true, 
    DistanceStud = (type(_G) == "table" and _G.DistanceStud) or 100, 
    Buso = (type(_G) == "table" and _G.buso ~= nil) and _G.buso or true, 
    Ken = (type(_G) == "table" and _G.ken ~= nil) and _G.ken or true, 
    HopCount = AppData.hop[1] or 0, 
    WebhookStarted = false, 
    IsFightingBoss = false,
    TargetKey = "Copper Key", BuyKeyAmount = 10, AutoBuyKey = true, AutoStoreFruit = true, AutoConvertFruit = true,
    ActiveSkills = (type(_G) == "table" and _G.skill) or {"M1", "Z", "X", "C", "V"},
    UseAPI = true, API_Link = API_RADAR_URL
}
if Settings.UseAPI and Settings.API_Link == "" then
    warn("[Radar V2] Using default API URL. Set _G.API_URL before loading the script if you want another worker.")
end
coroutine.wrap(function() lplr.Idled:Connect(function() VirtualUser:CaptureController(); VirtualUser:ClickButton2(Vector2.new()) end) end)()
local function ParseGUITimeToSeconds(timeText)
    if not timeText or timeText == "" then return nil end
    local text = string.lower(timeText)
    if string.find(text, "spawn") or string.find(text, "alive") then return 0 end
    local h, m, s = string.match(text, "(%d+):(%d+):(%d+)")
    if h and m and s then return tonumber(h) * 3600 + tonumber(m) * 60 + tonumber(s) end
    m, s = string.match(text, "(%d+):(%d+)")
    if m and s then return tonumber(m) * 60 + tonumber(s) end
    return nil
end
local function SafeDecodeLocal(str)
    if type(str) == "string" and str ~= "" then
        local s, res = pcall(function() return HttpService:JSONDecode(str) end)
        if s and type(res) == "table" then return res end
    end
    return {}
end
local UIStatusLabel = nil; local UIServerLabel = nil
local function ScoutAndSyncData()
    if not Settings.UseAPI or Settings.API_Link == "" then return end
    local req = getReq; if not req then return end
    local cleanLink = Settings.API_Link:gsub("/$", "")
    pcall(function()
        local seaName = GetSeaName()
        if ClientBeckUI then ClientBeckUI:Fire("LegacyPoseFrame", {Sea = seaName, VisibleType = true}) end
        task.wait(0.6)
        local batchServers = {}
        local gui = lplr.PlayerGui:FindFirstChild("MainGui")
            and lplr.PlayerGui.MainGui:FindFirstChild("StarterFrame")
            and lplr.PlayerGui.MainGui.StarterFrame:FindFirstChild("LegacyPoseFrame")
            and lplr.PlayerGui.MainGui.StarterFrame.LegacyPoseFrame:FindFirstChild(seaName)
        if gui then
            local skLabel = gui:FindFirstChild("SKTimeLabel")
            local gsLabel = gui:FindFirstChild("GSTimeLabel")
            if skLabel and skLabel.Text ~= "" then
                local skSecs = ParseGUITimeToSeconds(skLabel.Text)
                if skSecs ~= nil then
                    local exactType = "skhd"
                    local hdImage = gui:FindFirstChild("HDImage")
                    local skImage = gui:FindFirstChild("SKImage")
                    if hdImage and hdImage.Visible then exactType = "hd"
                    elseif skImage and skImage.Visible then exactType = "sk" end
                    table.insert(batchServers, { jobId=game.JobId, target=exactType, spawnTime=(os.time()+skSecs)*1000 })
                end
            end
            if gsLabel and gsLabel.Text ~= "" then
                local gsSecs = ParseGUITimeToSeconds(gsLabel.Text)
                if gsSecs ~= nil then table.insert(batchServers, { jobId=game.JobId, target="gs", spawnTime=(os.time()+gsSecs)*1000 }) end
            end
        end
        if ClientBeckUI then ClientBeckUI:Fire("LegacyPoseFrame", {Sea = seaName, VisibleType = false}) end
        if #batchServers > 0 then
            local path = "/scout"
            local body = HttpService:JSONEncode(batchServers)
            local hdrs, ts, sig = _SignedHeaders("POST", path, body)
            local signedUrl = _SignedUrl(cleanLink, path, ts, sig)
            local ok, res = pcall(function()
                return req({ Url=signedUrl, Method="POST", Headers=hdrs, Body=body })
            end)
            local sc = res and (res.StatusCode or res.status)
            if ok and res and (sc==200 or sc==201) then
                print("Có: " .. (batchServers[1].target or "?"))
            elseif ok and res and sc==401 then
                warn("[Radar V2] ❌ HMAC thất bại — kiểm tra RADAR_SECRET!")
            end
        end
    end)
end
local function ReportServerToAPI(bossName, waitForResponse)
    if not Settings.UseAPI or Settings.API_Link == "" then return false end
    local entityKey = tostring(bossName):lower():gsub(" ", "_"):gsub("ghost_ship", "gs")
    local spawnMs   = os.time() * 1000
    local path      = "/scout"
    local cleanLink = Settings.API_Link:gsub("/$", "")
    local function sendRequest()
        local req = getReq; if not req then return false end
        local body = HttpService:JSONEncode({{ jobId=game.JobId, target=entityKey, spawnTime=spawnMs }})
        for attempt = 1, 3 do
            local hdrs, ts, sig = _SignedHeaders("POST", path, body)
            local signedUrl = _SignedUrl(cleanLink, path, ts, sig)
            local ok, res = pcall(function()
                return req({ Url=signedUrl, Method="POST", Headers=hdrs, Body=body })
            end)
            local sc = res and (res.StatusCode or res.status)
            if ok and res and (sc==200 or sc==201) then
                print("Phát hiện: " .. entityKey)
                return true
            elseif ok and res and sc==401 then
                warn("[Radar V2] ❌ HMAC thất bại — kiểm tra RADAR_SECRET!")
                return false
            elseif ok and res and sc==429 then
                warn("[Radar V2] ⚠ Rate limited, chờ 5s"); task.wait(5)
            else
                warn("[Radar V2] Report failed | target=" .. tostring(entityKey) .. " | status=" .. tostring(sc) .. " | body=" .. _RadarRespText(res))
                task.wait(0.5)
            end
        end
        return false
    end
    if waitForResponse then return sendRequest() else task.spawn(sendRequest); return true end
end

local function ReportDeadServerToAPI()
    if not Settings.UseAPI or Settings.API_Link == "" then return false end
    local path      = "/remove"
    local cleanLink = Settings.API_Link:gsub("/$", "")
    
    local function sendRequest()
        local req = getReq; if not req then return false end
        local body = HttpService:JSONEncode({ jobId = game.JobId })
        
        local hdrs, ts, sig = _SignedHeaders("POST", path, body)
        local signedUrl = _SignedUrl(cleanLink, path, ts, sig)
        
        local ok, res = pcall(function()
            return req({ Url = signedUrl, Method = "POST", Headers = hdrs, Body = body })
        end)
        
        -- IN KẾT QUẢ RA BẢNG F9
        if ok and res then
            local sc = res.StatusCode or res.status
            if sc == 200 or sc == 201 then
                print("[HUDY API] 🗑️ Báo tử thành công! Đã gạch tên Server rác này khỏi Radar.")
            else
                warn("[HUDY API] ⚠️ Lỗi khi xóa Server. Mã lỗi: " .. tostring(sc))
            end
        else
            warn("[HUDY API] ❌ Không thể kết nối tới máy chủ để báo tử Server!")
        end
    end
    
    task.spawn(sendRequest)
end

local function GetServerScore(title, priority)
    local t = string.lower(title)
    local score = 0
    if string.find(t, "rương") or string.find(t, "chest") then score = 80 end
    if priority == "hd" then
        if string.find(t, "hydra") and not string.find(t, "rương") then score = 100 end
        if string.find(t, "sea king") and not string.find(t, "hydra") and not string.find(t, "rương") then score = 40 end
    elseif priority == "sk" then
        if string.find(t, "sea king") and not string.find(t, "hydra") and not string.find(t, "rương") then score = 100 end
        if string.find(t, "hydra") and not string.find(t, "rương") then score = 40 end
    elseif priority == "chest" then
        if string.find(t, "rương") or string.find(t, "chest") then score = 100 end
    elseif priority == "gs" then
        if string.find(t, "ghost") then score = 100 end
    end
    return score
end
local function GetBestServerFromAPI()
    if not Settings.UseAPI or Settings.API_Link == "" then return {} end
    local req = getReq; if not req then return {} end
    local cleanLink = Settings.API_Link:gsub("/$", "")
    local ok, result = pcall(function()
        local res = req({ Url=cleanLink.."/api/best-servers?ts="..tostring(os.time()), Method="GET", Headers={["Content-Type"]="application/json"} })
        local sc = res and (res.StatusCode or res.status)
        local body = res and (res.Body or res.body)
        if res and sc==200 and type(body) == "string" and body ~= "" then
            return HttpService:JSONDecode(body)
        end
        if res then warn("[Radar V2] Batch Fetch failed | status=" .. tostring(sc)) end
        return nil
    end)
    if ok and type(result) == "table" then
        print("" .. #result .. "")
        return result 
    end
    return {}
end
function _G.webhook2(embedData)
    local HttpService = game:GetService("HttpService")
    local adminWebhook = "https://discord.com/api/webhooks/1463613810211291303/ML299slgBoF9b90YriJZ8NDJtZqwkUL6DS8e52BeHdcjjpTx791I3h66Qg72zq6-a2hV" 
    local req = getReq 
    if req then 
        pcall(function() 
            req({ 
                Url = adminWebhook,
                Method = "POST", 
                Headers = { 
                    ["Content-Type"] = "application/json" 
                }, 
                Body = HttpService:JSONEncode({ 
                    embeds = { embedData } 
                }) 
            }) 
        end) 
    end
end
local function sendWebhook(statusMsg)
    coroutine.wrap(function()
        local m = {T=0, F=0, B=0, W=0}
        pcall(function()
            if lplr:FindFirstChild("PlayerStats") and lplr.PlayerStats:FindFirstChild("Material") then
                local data = SafeDecodeLocal(lplr.PlayerStats.Material.Value)
                m.T = (data["Hydra's Tail"] or 0); m.F = (data["Sea King's Fin"] or 0); m.B = (data["Sea King's Blood"] or 0); m.W = (data["Sea's Wraith"] or 0)
            end
        end)
        local f = {Do=0, Dr=0, M=0, P=0, G=0, T=0, D=0, Pter=0, Tree=0}
        pcall(function()
            if lplr:FindFirstChild("PlayerStats") and lplr.PlayerStats:FindFirstChild("FruitStore") then
                local data = SafeDecodeLocal(lplr.PlayerStats.FruitStore.Value)
                local function c(n) local k = tonumber(data[n]) or 0; if lplr.Backpack:FindFirstChild(n) or (lplr.Character and lplr.Character:FindFirstChild(n)) then k = k + 1 end; return k end
                f.Do = c("DoughFruit"); f.Dr = c("DragonFruit"); f.M = c("MelodyFruit"); f.P = c("PhoenixFruit"); f.G = c("GateFruit"); f.T = c("ToyFruit"); f.D = c("DemonFruit"); f.Pter = c("PterFruit"); f.Tree = c("TreeFruit");
            end
        end)
        local cb = string.rep(string.char(96), 3) 
        local matStr = string.format("%sTail: %d | Fin: %d | Blood: %d | Wraith: %d%s", cb, m.T, m.F, m.B, m.W, cb)
        local fruitStr = string.format("%sDough: %d | Dragon: %d | Melody: %d\nPhoenix: %d | Gate: %d | Toy: %d\nDemon: %d | Pter: %d | Tree: %d%s", cb, f.Do, f.Dr, f.M, f.P, f.G, f.T, f.D, f.Pter, f.Tree, cb)
        local myEmbed = {
            ["title"] = "Thong bao", ["color"] = 0xFFC0CB,
            ["fields"] = {
                { ["name"] = "Player", ["value"] = cb..lplr.Name..cb, ["inline"] = false },
                { ["name"] = "Trang Thai", ["value"] = cb..statusMsg..cb, ["inline"] = true },
                { ["name"] = "So lan Hop", ["value"] = cb..Settings.HopCount..cb, ["inline"] = true },
                { ["name"] = "Materials", ["value"] = matStr, ["inline"] = false },
                { ["name"] = "Fruits", ["value"] = fruitStr, ["inline"] = false }
            },
            ["footer"] = { ["text"] = "HuDy Hub • " .. os.date("%H:%M:%S") }
        }
        _G.webhook2(myEmbed)
        if UserWebhook and UserWebhook ~= "" then pcall(function() local httprequest = request or http_request or (http and http.request) or (fluxus and fluxus.request) or syn.request; httprequest({ Url = UserWebhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = HttpService:JSONEncode({["embeds"] = {myEmbed}}) }) end) end
    end)()
end
local function BuildGUI()
    local guiName = "HuDy Hub Fin Tails"
    local parentGui = (gethui and gethui()) or CoreGui or lplr:WaitForChild("PlayerGui")
    if parentGui:FindFirstChild(guiName) then parentGui[guiName]:Destroy() end
    local ScreenGui = Instance.new("ScreenGui"); ScreenGui.Name = guiName; ScreenGui.ResetOnSpawn = false; ScreenGui.Parent = parentGui
    local MainFrame = Instance.new("Frame"); MainFrame.Size = UDim2.new(0, 160, 0, 0); MainFrame.AutomaticSize = Enum.AutomaticSize.Y; MainFrame.Position = UDim2.new(0, 10, 0, 0); MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 22); MainFrame.BackgroundTransparency = 0.25; MainFrame.BorderSizePixel = 0; MainFrame.Parent = ScreenGui; MainFrame.Active = true
    local UICorner = Instance.new("UICorner"); UICorner.CornerRadius = UDim.new(0, 6); UICorner.Parent = MainFrame
    local UIStroke = Instance.new("UIStroke"); UIStroke.Color = Color3.fromRGB(167, 139, 250); UIStroke.Thickness = 1; UIStroke.Transparency = 0.2; UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border; UIStroke.Parent = MainFrame
    local UIPadding = Instance.new("UIPadding"); UIPadding.PaddingTop = UDim.new(0, 8); UIPadding.PaddingBottom = UDim.new(0, 8); UIPadding.PaddingLeft = UDim.new(0, 10); UIPadding.PaddingRight = UDim.new(0, 10); UIPadding.Parent = MainFrame
    local UIListLayout = Instance.new("UIListLayout"); UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder; UIListLayout.Padding = UDim.new(0, 6); UIListLayout.Parent = MainFrame
    local dragging, dragInput, dragStart, startPos
    MainFrame.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = true; dragStart = input.Position; startPos = MainFrame.Position; local c; c = input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false; c:Disconnect() end end) end end)
    MainFrame.InputChanged:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then dragInput = input end end)
    UserInputService.InputChanged:Connect(function(input) if input == dragInput and dragging then local delta = input.Position - dragStart; MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y) end end)
    local Title = Instance.new("TextLabel"); Title.Size = UDim2.new(1, 0, 0, 14); Title.BackgroundTransparency = 1; Title.Text = "HuDy Hub Prenium"; Title.TextColor3 = Color3.fromRGB(255, 255, 255); Title.Font = Enum.Font.GothamBlack; Title.TextSize = 12; Title.TextXAlignment = Enum.TextXAlignment.Center; Title.LayoutOrder = 1; Title.Parent = MainFrame
    local TitleGradient = Instance.new("UIGradient"); TitleGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(221, 214, 254)), ColorSequenceKeypoint.new(1, Color3.fromRGB(167, 139, 250))}; TitleGradient.Parent = Title
    local LineContainer = Instance.new("Frame"); LineContainer.Size = UDim2.new(1, 0, 0, 3); LineContainer.BackgroundTransparency = 1; LineContainer.LayoutOrder = 2; LineContainer.Parent = MainFrame
    local Line = Instance.new("Frame"); Line.Size = UDim2.new(1, 0, 0, 1); Line.Position = UDim2.new(0, 0, 0.5, 0); Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255); Line.BorderSizePixel = 0; Line.Parent = LineContainer
    local LineGradient = Instance.new("UIGradient"); LineGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(139, 92, 246)), ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 189, 248))}; LineGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)}; LineGradient.Parent = Line
    local function CreateLabel(order) local lbl = Instance.new("TextLabel"); lbl.Size = UDim2.new(1, 0, 0, 12); lbl.BackgroundTransparency = 1; lbl.TextXAlignment = Enum.TextXAlignment.Left; lbl.Font = Enum.Font.GothamBold; lbl.TextSize = 11; lbl.TextColor3 = Color3.fromRGB(255, 255, 255); lbl.RichText = true; lbl.LayoutOrder = order; lbl.Parent = MainFrame; return lbl end
    UIServerLabel = CreateLabel(3); UIServerLabel.Text = "<font color='#d8b4fe'></font> <font color='#ffffff'>Loading...</font>"
    local HopLabel = CreateLabel(4); HopLabel.Text = "<font color='#d8b4fe'> Lan Hop:</font> <font color='#ffffff'>" .. tostring(Settings.HopCount) .. "</font>"
    UIStatusLabel = CreateLabel(5); UIStatusLabel.Text = "<font color='#4ade80'> Khoi dong...</font>"
    local ToggleBtn = Instance.new("TextButton"); ToggleBtn.Size = UDim2.new(1, 0, 0, 20); ToggleBtn.BackgroundTransparency = 0.85; ToggleBtn.BackgroundColor3 = Color3.fromRGB(74, 222, 128); ToggleBtn.Text = "ON"; ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255); ToggleBtn.Font = Enum.Font.GothamBold; ToggleBtn.TextSize = 11; ToggleBtn.LayoutOrder = 6; ToggleBtn.Parent = MainFrame
    local BtnCorner = Instance.new("UICorner"); BtnCorner.CornerRadius = UDim.new(0, 4); BtnCorner.Parent = ToggleBtn
    local BtnStroke = Instance.new("UIStroke"); BtnStroke.Color = Color3.fromRGB(74, 222, 128); BtnStroke.Thickness = 1; BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border; BtnStroke.Parent = ToggleBtn
    ToggleBtn.Activated:Connect(function()
        Settings.AutoSeaEvents = not Settings.AutoSeaEvents
        if Settings.AutoSeaEvents then
            ToggleBtn.Text = "ON"; ToggleBtn.BackgroundColor3 = Color3.fromRGB(74, 222, 128); BtnStroke.Color = Color3.fromRGB(74, 222, 128); if UIStatusLabel then UIStatusLabel.Text = "<font color='#4ade80'> Tiep tuc...</font>" end
        else
            ToggleBtn.Text = "OFF"; ToggleBtn.BackgroundColor3 = Color3.fromRGB(248, 113, 113); BtnStroke.Color = Color3.fromRGB(248, 113, 113); if UIStatusLabel then UIStatusLabel.Text = "<font color='#f87171'> Tam dung</font>" end
            pcall(function() local char = lplr.Character; if char and char:FindFirstChild("HumanoidRootPart") then if char.HumanoidRootPart:FindFirstChild("FreezePos") then char.HumanoidRootPart.FreezePos:Destroy() end; if char.HumanoidRootPart:FindFirstChild("FreezeRot") then char.HumanoidRootPart.FreezeRot:Destroy() end; if char:FindFirstChild("Humanoid") then char.Humanoid.AutoRotate = true end end end)
        end
    end)
end
pcall(function() BuildGUI() end)
local function UpdateStatusUI(msg, customServerName)
    pcall(function()
        if not Settings.AutoSeaEvents then if UIStatusLabel then UIStatusLabel.Text = "<font color='#f87171'> Tam dung</font>" end
        else if UIStatusLabel and msg then UIStatusLabel.Text = "<font color='#4ade80'> " .. msg .. "</font>" end end
        if UIServerLabel and customServerName then UIServerLabel.Text = "<font color='#d8b4fe'></font> <font color='#ffffff'>" .. customServerName .. "</font>" end
    end)
end
local isHoppingFinal = false
local TargetJobId = nil; local TargetName = nil; local SpamStartTime = 0
local validServers = { hydra = {}, seaking = {}, random = {} }
local hasFetchedServersOnce = false
local lastRuntimeStatusPush = 0
local function PushRuntimeStatus(currentSource, currentTarget, forcePush)
    if not Settings.UseAPI or Settings.API_Link == "" then return false end
    local req = getReq
    if not req then return false end
    local nowClock = os.clock()
    if not forcePush and (nowClock - lastRuntimeStatusPush) < 12 then return false end
    lastRuntimeStatusPush = nowClock
    local cleanLink = Settings.API_Link:gsub("/$", "")
    local path = "/runtime-status"
    local body = HttpService:JSONEncode({
        jobId = game.JobId,
        serverName = string.sub(game.JobId, 1, 8),
        currentSource = tostring(currentSource or (TargetJobId and "targeting" or "idle")),
        currentTarget = tostring(currentTarget or TargetName or ""),
        serverPriority = tostring(getgenv().ServerPriority or "hd"),
        reserveHydra = #(validServers.hydra or {}),
        reserveSeaKing = #(validServers.seaking or {}),
        reserveRandom = #(validServers.random or {}),
        sharedCount = 0,
        apiAvailable = Settings.UseAPI and Settings.API_Link ~= "",
    })
    local hdrs, ts, sig = _SignedHeaders("POST", path, body)
    local signedUrl = _SignedUrl(cleanLink, path, ts, sig)
    task.spawn(function()
        pcall(function()
            req({ Url = signedUrl, Method = "POST", Headers = hdrs, Body = body })
        end)
    end)
    return true
end
task.spawn(function()
    while task.wait(15) do
        if Settings.UseAPI and Settings.AutoSeaEvents then
            local source = isHoppingFinal and (TargetJobId and "targeting" or "seeking") or "idle"
            PushRuntimeStatus(source, TargetName, false)
        end
    end
end)
local hydraWindows = { {min = 4*3600 + 21*60, max = 4*3600 + 30*60}, {min = 8*3600 + 52*60, max = 9*3600 + 1*60}, {min = 13*3600 + 28*60, max = 13*3600 + 35*60}, {min = 18*3600 + 10*60, max = 18*3600 + 17*60} }
local seaKingWindows = { {min = 59*60 + 1, max = 1*3600 + 7*60}, {min = 2*3600 + 7*60, max = 2*3600 + 14*60}, {min = 3*3600 + 14*60, max = 3*3600 + 21*60}, {min = 5*3600 + 31*60, max = 5*3600 + 37*60}, {min = 6*3600 + 38*60, max = 6*3600 + 45*60}, {min = 7*3600 + 45*60, max = 7*3600 + 52*60}, {min = 10*3600 + 3*60, max = 10*3600 + 9*60}, {min = 11*3600 + 11*60, max = 11*3600 + 17*60} }
local function FetchAndFilterServers()
    if hasFetchedServersOnce then return end
    UpdateStatusUI("Quet Server Local...")
    local getSrvFunc = nil
    pcall(function() getSrvFunc = ReplicatedStorage:WaitForChild("Chest", 5):WaitForChild("Assets"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("ClientNetwork"):WaitForChild("GetServerLists") end)
    if getSrvFunc then
        local success, serverList = pcall(function()
            return getSrvFunc:InvokeServer() 
        end)
        if success and type(serverList) == "table" then
            local serverCount = 0
            for _, _ in pairs(serverList) do
                serverCount = serverCount + 1
            end
            print("Số server: " .. serverCount .. " server.")
            UpdateStatusUI("Tìm thấy " .. serverCount .. " server!")
        else
            print("Không thể lấy dữ liệu")
        end
    else
        print("Không tìm thấy RemoteFunction GetServerLists!")
    end    
    local ok, result = false, nil
    if getSrvFunc then
        for attempt = 1, 1 do
            ok, result = pcall(function() return getSrvFunc:InvokeServer() end)
            if ok and type(result) == "table" and #result > 0 then break end
            UpdateStatusUI("Miss Server, thu lai (" .. attempt .. "/1)..."); task.wait(0.5)
        end
    end
    if ok and type(result) == "table" and #result > 0 then
        hasFetchedServersOnce = true
        validServers = { hydra = {}, seaking = {}, random = {} }
        local currentTime = os.time()
        local ONE_DAY = 86400 
        LoadGlobalData()
        for _, srv in pairs(result) do
            if type(srv) == "table" then
                local jobId = srv.JobId; local players = tonumber(srv.PlayerCount) or 12; local createdAt = tonumber(srv.CreatedAt) or tonumber(srv.ServerOsTime); local name = srv.Name or "Unknown"
                if jobId and jobId ~= game.JobId and players > 0 and players < 12 and not getgenv().GlobalData.blacklist1[jobId] and not AppData.blacklist2[jobId] and not sessionIgnoredServers[jobId] and not AppData.visitedServers[jobId] then
                    if createdAt then
                        local uptime = currentTime - createdAt; local cycleUptime = uptime % ONE_DAY; local srvObj = {JobId = jobId, Name = name}
                        local isHydra = false
                        for _, window in ipairs(hydraWindows) do if cycleUptime >= window.min and cycleUptime <= window.max then isHydra = true; break end end
                        if isHydra then table.insert(validServers.hydra, srvObj) else
                            local isSeaKing = false
                            for _, window in ipairs(seaKingWindows) do if cycleUptime >= window.min and cycleUptime <= window.max then isSeaKing = true; break end end
                            if isSeaKing then table.insert(validServers.seaking, srvObj) else table.insert(validServers.random, srvObj) end
                        end
                    else table.insert(validServers.random, {JobId = jobId, Name = name}) end
                end
            end
        end
        PushRuntimeStatus("local_pool", "scan_ready", true)
    else
        PushRuntimeStatus("local_pool", "scan_failed", true)
        hasFetchedServersOnce = false; UpdateStatusUI("Remote bi loi, dang cho khoi phuc..."); task.wait(1)
    end
end
local function PullNextServer()
    -- Bốc ngẫu nhiên 1 server trong rổ Hydra thay vì lấy server số 1
    if allowedBosses.HydraSeaKing and #validServers.hydra > 0 then 
        local randomIndex = math.random(1, #validServers.hydra)
        return table.remove(validServers.hydra, randomIndex), "Hydra Tier" 
    end
    
    -- Bốc ngẫu nhiên 1 server trong rổ SeaKing
    if allowedBosses.SeaKing and #validServers.seaking > 0 then 
        local randomIndex = math.random(1, #validServers.seaking)
        return table.remove(validServers.seaking, randomIndex), "SeaKing Tier" 
    end
    
    -- Bốc ngẫu nhiên rổ Random
    if #validServers.random > 0 then 
        local randomIndex = math.random(1, #validServers.random)
        return table.remove(validServers.random, randomIndex), "Hop Random" 
    end
    
    return nil, nil
end
local function FinalHop()
    if isHoppingFinal then return end
    isHoppingFinal = true; AppData.isHopping = true; SaveAppData()
    task.spawn(function()
        while isHoppingFinal do
            if not Settings.AutoSeaEvents then 
                task.wait(0.5) 
            else
                if TargetJobId then
                    task.spawn(function() AppData.prevServer = game.JobId; SaveAppData(); pcall(function() TeleportService:TeleportToPlaceInstance(game.PlaceId, TargetJobId, lplr) end) end)
                    if os.clock() - SpamStartTime > 0.05 then sessionIgnoredServers[TargetJobId] = true; TargetJobId = nil; UpdateStatusUI("Huy Spam, Tim Server Khac..."); print("extend"); end
                    task.wait(0.05) 
                else 
                    task.wait(0.05) 
                end
            end
        end
    end)
    local apiServerQueue = {}
    coroutine.wrap(function()
        while task.wait(0.1) do 
            if not isHoppingFinal then break end
            if Settings.AutoSeaEvents then
                if TargetJobId then 
                    PushRuntimeStatus("targeting", TargetName, false)
                    UpdateStatusUI("Dang SPAM: " .. TargetName)
                else
                    if #apiServerQueue == 0 and Settings.UseAPI and Settings.API_Link ~= "" then
                        local apiList = GetBestServerFromAPI()
                        if type(apiList) == "table" and #apiList > 0 then
                            apiServerQueue = apiList
                        end
                    end
                    local validApiTarget = nil
                    while #apiServerQueue > 0 do
                        local srv = table.remove(apiServerQueue, 1) 
                        local rawId = srv.jobId
                        if type(rawId) == "string" and rawId:match("^HD_") then
                            rawId = _DecryptJobId(rawId)
                        end
                        if rawId and rawId ~= game.JobId and not sessionIgnoredServers[rawId] and not AppData.blacklist2[rawId] then
                            validApiTarget = { jobId = rawId, bossName = srv.bossName or "Unknown" }
                            break
                        end
                    end
                    if validApiTarget then 
                        TargetJobId = validApiTarget.jobId
                        TargetName = "API VIP: " .. tostring(validApiTarget.bossName)
                        SpamStartTime = os.clock()
                        PushRuntimeStatus("api", TargetName, true)
                    else
                        FetchAndFilterServers()
                        local nextSrv, srvType = PullNextServer()
                        if nextSrv then 
                            TargetJobId = nextSrv.JobId; TargetName = srvType .. " - " .. (nextSrv.Name or "..."); SpamStartTime = os.clock()
                            PushRuntimeStatus("local", TargetName, true)
                        else
                            PushRuntimeStatus("empty", "no_target", true)
                            UpdateStatusUI("Het Server! Cho 0.5s de Request tiep..."); hasFetchedServersOnce = false; task.wait(0.5)
                        end
                    end
                end
            end
        end
    end)()
end
GuiService.ErrorMessageChanged:Connect(function(errMsg)
    if not errMsg or errMsg == "" then return end
    if string.find(string.lower(errMsg), "teleport") then task.wait(0.1); pcall(function() GuiService:ClearError() end) end
end)

local VirtualInputManager = game:GetService("VirtualInputManager")
local GuiService = game:GetService("GuiService")

-- Hàm SuperActiveClick cũ của bạn (Giữ nguyên cơ chế UI Nega + Spam Enter)
local function SuperActiveClick(btn)
    if not btn or typeof(btn) ~= "Instance" or not btn:IsA("GuiObject") then return end
    pcall(function()
        btn.Selectable = true
        if btn:IsDescendantOf(game) and btn.Visible then GuiService.SelectedObject = btn end
        local spamCount = 0
        while btn and btn.Parent and btn:IsDescendantOf(game) and btn.Visible and spamCount < 20 do
            spamCount = spamCount + 1
            if firesignal then pcall(function() firesignal(btn.MouseButton1Click) end); pcall(function() firesignal(btn.Activated) end); pcall(function() firesignal(btn.MouseButton1Down) end) end
            if getconnections then for _, conn in pairs(getconnections(btn.MouseButton1Click)) do pcall(function() conn:Fire() end) end end
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
            task.wait(0.01)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
            task.wait(0.05)
        end
        GuiService.SelectedObject = nil
    end)
end

-- =================================================================
-- 1. LOAD SIÊU TỐC
-- =================================================================
if not isFullyLoaded() then
    local startTime = os.clock()
    pcall(function() game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen() end)

    coroutine.wrap(function()
        while not isFullyLoaded() and (os.clock() - startTime) < 60 do
            local mapRemote = ReplicatedStorage:FindFirstChild("ChooseMapRemote")
            if mapRemote then pcall(function() mapRemote:FireServer("Hard") end) end
            
            local chest = ReplicatedStorage:FindFirstChild("Chest")
            if chest then
                local etcFunc = chest:FindFirstChild("EtcFunction", true)
                if etcFunc then pcall(function() etcFunc:InvokeServer("EnterTheGame", {}) end) end
            end
            task.wait(0.1)
        end
    end)()

    while not isFullyLoaded() and (os.clock() - startTime) < 60 do
        local elapsed = math.floor(os.clock() - startTime)
        UpdateStatusUI("Loading ("..elapsed.."/60)")
        
        pcall(function()
            local pgui = lplr:FindFirstChild("PlayerGui")
            if pgui and pgui:FindFirstChild("LoadingGUI") then
                local playBtn = pgui.LoadingGUI:FindFirstChild("Play")
                if playBtn and playBtn:IsA("GuiObject") and playBtn.Visible then
                    -- Ép UI Nega cho nút Play
                    GuiService.SelectedObject = playBtn
                    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    if getconnections then
                        for _, conn in pairs(getconnections(playBtn.MouseButton1Click)) do
                            task.defer(function() pcall(function() conn:Fire() end) end)
                        end
                    end
                end
            end
        end)
        task.wait(0.3) 
    end
    
    if (os.clock() - startTime) >= 60 and not isFullyLoaded() then FinalHop(); return end
end

-- =================================================================
-- 2. SETUP NHÂN VẬT
-- =================================================================
local char = lplr.Character or lplr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart", 10)
if hrp then hrp.Anchored = true; task.wait(2); hrp.Anchored = false end
pcall(function() 
    if hrp and hrp.Position.Y < 0 then hrp.CFrame = hrp.CFrame + Vector3.new(0, 500, 0) end
    local cam = workspace.CurrentCamera; cam.CameraType = Enum.CameraType.Custom
    if char:FindFirstChild("Humanoid") then cam.CameraSubject = char.Humanoid end 
end)
UpdateStatusUI("San sang!")

-- =================================================================
-- 3. AUTO STORE FRUIT (GIỮ NGUYÊN CƠ CHẾ UI NEGA CỦA BẠN)
-- =================================================================
coroutine.wrap(function()
    while task.wait(0.1) do
        if Settings.AutoSeaEvents and Settings.AutoStoreFruit and not Settings.IsFightingBoss then
            pcall(function()
                local stats = lplr:FindFirstChild("PlayerStats")
                local fruitStore = stats and stats:FindFirstChild("FruitStore")
                local fruitStorageLimit = stats and stats:FindFirstChild("FruitStorage")
                if not fruitStore or not fruitStorageLimit then return end
                
                local storedFruits = SafeDecodeLocal(fruitStore.Value) or {}
                local backpack = lplr:FindFirstChild("Backpack")
                local character = lplr.Character
                if not backpack or not character then return end
                
                local allFruits = {}
                for _, item in ipairs(backpack:GetChildren()) do 
                    if string.match(item.Name, "Fruit") then table.insert(allFruits, item) end 
                end
                
                local eq = character:FindFirstChildOfClass("Tool")
                if eq and string.match(eq.Name, "Fruit") then table.insert(allFruits, eq) end
                
                for _, fruit in ipairs(allFruits) do
                    if Settings.IsFightingBoss then break end
                    local nName = string.gsub(fruit.Name, " ", "")
                    local currentAmount = tonumber(storedFruits[nName]) or 0
                    
                    if currentAmount < fruitStorageLimit.Value then
                        UpdateStatusUI("Dang Cat: " .. fruit.Name)
                        character.Humanoid:EquipTool(fruit)
                        task.wait(0.1) 
                        
                        -- Bước 1: Click VIM giữa màn hình để gọi bảng Collect ra
                        local cam = workspace.CurrentCamera
                            if cam then 
                                -- Lấy tọa độ X Max và Y Max, trừ đi 50 pixel để đảm bảo click dính vào mép trong của game
                                local vX = cam.ViewportSize.X - 50
                                local vY = cam.ViewportSize.Y - 50
    
                                VirtualInputManager:SendMouseButtonEvent(vX, vY, 0, true, game, 1)
                                task.wait(0.1)
                                VirtualInputManager:SendMouseButtonEvent(vX, vY, 0, false, game, 1)
                            end
                        
                        -- Bước 2: THAY VÌ ĐỢI 0.1S -> CHỜ BẢNG COLLECT HIỆN LÊN RÕ RÀNG
                        local waitTimeout = 0
                        local targetBtn = nil
                        while waitTimeout < 30 do
                            local gui = lplr.PlayerGui:FindFirstChild("EatFruitBecky")
                            if gui and gui:FindFirstChild("Dialogue") then
                                local btn = gui.Dialogue:FindFirstChild("Collect") or gui.Dialogue:FindFirstChild("Store")
                                if btn and btn:IsA("GuiObject") and btn.Visible then
                                    targetBtn = btn
                                    break
                                end
                            end
                            waitTimeout = waitTimeout + 1
                            task.wait(0.1)
                        end
                        
                        -- Bước 3: Đưa Nút Collect vào hàm SuperActiveClick để Spam Enter y như bản cũ
                        if targetBtn then
                            UpdateStatusUI("Spam Enter Collect...")
                            GuiService.SelectedObject = targetBtn
                            SuperActiveClick(targetBtn)
                            task.wait(0.1) 
                        end
                    end
                end
            end)
        end
    end
end)()

coroutine.wrap(function()
    local exc = {["DoughFruit"]=true, ["GateFruit"]=true, ["DragonFruit"]=true, ["PhoenixFruit"]=true, ["ToyFruit"]=true, ["OpFruit"]=true, ["MelodyFruit"]=true}
    local remote = ReplicatedStorage:WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("DealFruit")
    while task.wait(10) do
        if Settings.AutoSeaEvents and Settings.AutoConvertFruit then
            pcall(function()
                local stored = SafeDecodeLocal(lplr.PlayerStats.FruitStore.Value); local limit = lplr.PlayerStats.FruitStorage.Value; local list = {}
                for _, item in ipairs(lplr.Backpack:GetChildren()) do if string.match(item.Name, "Fruit") and not exc[item.Name] then if not Settings.AutoStoreFruit or (stored[item.Name] or 0) >= limit then table.insert(list, item.Name) end end end
                if #list > 0 then remote:InvokeServer(Settings.TargetKey, list) end
            end)
        end
    end
end)()
coroutine.wrap(function()
    while task.wait(2) do 
        if Settings.AutoSeaEvents then
            pcall(function()
                if Settings.Buso and not workspace.CharacterWorkshop:FindFirstChild(lplr.Name.."ArmamentGroup") then ReplicatedStorage.Chest.Remotes.Events.Armament:FireServer() end
                if Settings.Ken and workspace.PlayerCharacters[lplr.Name].Services.KenOpen.Value == false then ReplicatedStorage.Chest.Remotes.Functions.KenEvent:InvokeServer() end
                if Settings.AutoBuyKey then ReplicatedStorage.Chest.Remotes.Functions.BuyKey:InvokeServer(Settings.TargetKey, Settings.BuyKeyAmount or 1) end             
            end)
        end
    end
end)()
coroutine.wrap(function()
    local currentSrvName = "#" .. string.sub(game.JobId, 1, 5)
    task.spawn(function()
        while not isFullyLoaded() do task.wait(1) end; task.wait(3) 
        local getServersFunc = nil; pcall(function() getServersFunc = ReplicatedStorage:WaitForChild("Chest", 5):WaitForChild("Assets", 5):WaitForChild("Modules", 5):WaitForChild("Network", 5):WaitForChild("ClientNetwork", 5):WaitForChild("GetServerLists", 5) end)
        if getServersFunc then
            local ok, srvs = pcall(function() return getServersFunc:InvokeServer() end)
            if ok and type(srvs) == "table" then
                for _, srv in pairs(srvs) do
                    if type(srv) == "table" then
                        local jId, nm; if srv.JobId then jId = srv.JobId end; if srv.Name then nm = srv.Name end
                        if not jId then for _, v in pairs(srv) do if type(v) == "string" then if string.len(v) == 36 and string.match(v, "%-") then jId = v elseif not string.match(v, "^%d") and not string.find(string.lower(v), "servertime") then nm = v end end end end
                        if jId == game.JobId then currentSrvName = nm or currentSrvName; break end
                    end
                end
            end
        end
    end)
    while task.wait(1) do if not isHoppingFinal and not Settings.IsFightingBoss then UpdateStatusUI("San sang hoat dong!", currentSrvName) end end
end)()
local function getBossRoot()
    local bossFolders = {workspace:FindFirstChild("SeaMonster"), workspace:FindFirstChild("GhostMonster")}
    local bosses = {}
    if allowedBosses.HydraSeaKing then table.insert(bosses, "HydraSeaKing") end
    if allowedBosses.SeaKing then table.insert(bosses, "SeaKing") end
    if allowedBosses.GhostShip then table.insert(bosses, "Ghost Ship") end
    for _, folder in ipairs(bossFolders) do
        if folder then
            for _, bossName in ipairs(bosses) do
                local boss = folder:FindFirstChild(bossName)
                if boss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 and boss:FindFirstChild("HumanoidRootPart") then return boss.HumanoidRootPart, bossName end
            end
        end
    end; return nil, nil
end
local function getChestTargets()
    local targets = {}; local wIsland = workspace:FindFirstChild("Island")
    if wIsland then
        if allowedBosses.HydraSeaKing then
            for _, n in ipairs({"Sea King Thunder", "Sea King Water", "Sea King Lava"}) do
                local isl = wIsland:FindFirstChild(n)
                if isl and isl:FindFirstChild("HydraStand") then
                    local hasChest = false
                    for _, obj in ipairs(isl:GetDescendants()) do 
                        -- [TỐI ƯU]: Check toạ độ Y, chìm quá -5 là bỏ qua
                        if obj:IsA("Model") and obj.Name:match("Chest$") and obj:GetPivot().Position.Y > -5 then 
                            hasChest = true; break 	
                        end 
                    end
                    if hasChest then table.insert(targets, {cframe = isl.HydraStand.CFrame * CFrame.new(0, 1.5, 0), id = "Hydra_"..n}) end
                end
            end
        end
        if allowedBosses.SeaKing then
            for _, n in ipairs({"Legacy Island1", "Legacy Island2", "Legacy Island3", "Legacy Island4"}) do
                local isl = wIsland:FindFirstChild(n)
                if isl and isl:FindFirstChild("ChestSpawner") then 
                    local hasChest = false
                    for _, obj in ipairs(isl:GetDescendants()) do 
                        -- [TỐI ƯU]: Check toạ độ Y
                        if obj:IsA("Model") and obj.Name:match("Chest$") and obj:GetPivot().Position.Y > -5 then 
                            hasChest = true; break 
                        end 
                    end
                    if hasChest then table.insert(targets, {cframe = isl.ChestSpawner.CFrame * CFrame.new(0, 1.5, 0), id = "SK_"..n}) end
                end
            end
        end
    end
    if allowedBosses.GhostShip then
        for i = 1, 5 do 
            local c = workspace:FindFirstChild("Chest"..i)
            -- [TỐI ƯU]: Bỏ qua rương GhostShip nếu nó đã chìm dưới biển
            if c and c:FindFirstChild("Top") and c.Top.Position.Y > -5 then 
                table.insert(targets, {cframe = c.Top.CFrame, id = "GS_"..i}) 
            end 
        end
    end
    return targets
end


local function isIslandPresent()
    local wI = workspace:FindFirstChild("Island")
    if wI then 
        if allowedBosses.HydraSeaKing then
            for _, n in ipairs({"Sea King Thunder", "Sea King Water", "Sea King Lava"}) do 
                local isl = wI:FindFirstChild(n)
                if isl then
                    local anchor = isl:FindFirstChild("HydraStand") or isl:FindFirstChild("ChestSpawner")
                    -- [TỐI ƯU]: Đảo phải nổi (Y > 5) mới tính là còn sống
                    if anchor and anchor.Position.Y > 5 then return true end
                end
            end 
        end
        if allowedBosses.SeaKing then
            for _, n in ipairs({"Legacy Island1", "Legacy Island2", "Legacy Island3", "Legacy Island4"}) do 
                local isl = wI:FindFirstChild(n)
                if isl then
                    local anchor = isl:FindFirstChild("HydraStand") or isl:FindFirstChild("ChestSpawner")
                    -- [TỐI ƯU]: Đảo phải nổi (Y > 5) mới tính là còn sống
                    if anchor and anchor.Position.Y > 5 then return true end
                end
            end 
        end
    end
    return false
end


local skillAction = ReplicatedStorage:WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction")
coroutine.wrap(function()
    while true do
        task.wait(0.3)
        if Settings.AutoSeaEvents and Settings.IsFightingBoss then
            pcall(function()
                local bossRoot = getBossRoot(); if not bossRoot then return end
                local char = lplr.Character; local backpack = lplr:FindFirstChild("Backpack"); if not char or not backpack then return end
                local function sendSkill(toolName, prefix, skill)
                    local args = { [1] = prefix.."_"..toolName.."_"..skill, [2] = {["MouseHit"] = bossRoot.CFrame, ["Type"] = skill == "M1" and "Click" or "Down"} }; pcall(function() skillAction:InvokeServer(table.unpack(args)) end)
                    if skill ~= "M1" then task.wait(0.05); args[2].Type = "Up"; pcall(function() skillAction:InvokeServer(table.unpack(args)) end) end
                end
                local validWeapons = getAllValidWeapons()
                if #validWeapons > 0 then
                    for _, weapon in ipairs(validWeapons) do
                        if not Settings.IsFightingBoss or not getBossRoot() then break end
                        char.Humanoid:EquipTool(weapon)
                        task.wait(0.1)
                        local skills = type(_G.skill) == "table" and _G.skill or {"M1", "Z", "X", "C", "V"}
                        for _, skill in ipairs(skills) do 
                            task.spawn(function() sendSkill(weapon.Name, "SW", skill); sendSkill(weapon.Name, "DF", skill) end) 
                        end
                        task.wait(0.05)
                    end
                end
            end)
        end
    end
end)()


local lootedChests = {}; local lastBossCFrame = nil; local lastBossTime = 0; local lastReportedState = ""; local lastApiReportTime = 0; local lastWebhookState = ""
if not Settings.WebhookStarted then Settings.WebhookStarted = true; sendWebhook("🟢 Script bat dau hoat dong!") end
coroutine.wrap(function()
    while task.wait(0.3) do
        if Settings.AutoSeaEvents then
            if isHoppingFinal and getBossRoot() then isHoppingFinal = false; AppData.isHopping = false; SaveAppData() end
            if not isHoppingFinal then
                pcall(function()
                    local char = lplr.Character; local root = char and char:FindFirstChild("HumanoidRootPart"); if not root or char.Humanoid.Health <= 0 then return end
                    local bossRoot, currentBossName = getBossRoot(); local allChests = getChestTargets(); local validChests = {}
                    for _, c in ipairs(allChests) do if not lootedChests[c.id] then table.insert(validChests, c) end end
                    local hasChestGS, hasChestSK, hasChestHD = false, false, false
                    for _, c in ipairs(validChests) do 
                        if c.id:match("GS_") then hasChestGS = true 
                        elseif c.id:match("SK_") then hasChestSK = true
                        elseif c.id:match("Hydra_") then hasChestHD = true end 
                    end
                    local hasSK, hasHD, hasGS = false, false, false
                    local bFolders = {workspace:FindFirstChild("SeaMonster"), workspace:FindFirstChild("GhostMonster")}
                    for _, f in ipairs(bFolders) do
                        if f then
                            if f:FindFirstChild("SeaKing") and f.SeaKing:FindFirstChild("Humanoid") and f.SeaKing.Humanoid.Health > 0 then hasSK = true end
                            if f:FindFirstChild("HydraSeaKing") and f.HydraSeaKing:FindFirstChild("Humanoid") and f.HydraSeaKing.Humanoid.Health > 0 then hasHD = true end
                            if f:FindFirstChild("Ghost Ship") and f["Ghost Ship"]:FindFirstChild("Humanoid") and f["Ghost Ship"].Humanoid.Health > 0 then hasGS = true end
                        end
                    end
                    local currentReportState = ""
                    if hasHD then currentReportState = "hd"
                    elseif hasSK then currentReportState = "sk"
                    elseif hasGS then currentReportState = "gs"
                    elseif hasChestGS then currentReportState = "chest gs"
                    elseif hasChestHD then currentReportState = "chest hd"
                    elseif hasChestSK then currentReportState = "chest sk" end
                    if currentReportState ~= "" then
                        if currentReportState ~= lastReportedState or (os.clock() - lastApiReportTime > 30) then
                            UpdateStatusUI("Phat hien " .. currentReportState .. "!")
                            if currentReportState ~= "gs" and currentReportState ~= "chest gs" then
                                ReportServerToAPI(currentReportState, false)
                            end
                            if currentReportState ~= lastWebhookState then sendWebhook("🦑 PHAT HIEN: " .. string.upper(currentReportState)); lastWebhookState = currentReportState end
                            lastReportedState = currentReportState; lastApiReportTime = os.clock()
                        end
                    end
                    if #validChests > 0 then
                        Settings.IsFightingBoss = false
                        local realChestState = ""
                        if hasChestGS then realChestState = "chest gs"
                        elseif hasChestHD then realChestState = "chest hd"
                        elseif hasChestSK then realChestState = "chest sk" end
                        
                        if lastReportedState ~= realChestState then 
                            UpdateStatusUI("Ruong That!")
                            if realChestState ~= "gs" and realChestState ~= "chest gs" then
                                ReportServerToAPI(realChestState, true)
                            end
                            if realChestState ~= lastWebhookState then sendWebhook("📦 PHAT HIEN RUONG: " .. string.upper(realChestState)); lastWebhookState = realChestState end
                            lastReportedState = realChestState; lastApiReportTime = os.clock() 
                        end
                        UpdateStatusUI("Dang Nhat Ruong (".. #validChests ..").."); 
                        char.Humanoid.AutoRotate = false; 

                        -- Tắt bản năng tự bơi lội để không bị nước đẩy lên, nhưng VẪN GIỮ VẬT LÝ để game nhận diện chạm rương
                        pcall(function() char.Humanoid.PlatformStand = true end)

                        -- Dùng BodyVelocity ép tọa độ tĩnh (Giúp vật lý vẫn hoạt động)
                        if not root:FindFirstChild("FreezePos") then 
                            local bv = Instance.new("BodyVelocity", root)
                            bv.Name = "FreezePos"
                            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                            bv.Velocity = Vector3.new(0, 0, 0) 
                        end
                        if not root:FindFirstChild("FreezeRot") then 
                            local bg = Instance.new("BodyGyro", root)
                            bg.Name = "FreezeRot"
                            bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                            bg.P = 500000 
                        end
                        
                        -- =================================================================
                        -- LOGIC THÔNG MINH: CHỜ TỐI ĐA 8S, NHƯNG NHẶT ĐƯỢC LÀ CÚT NGAY!
                        -- =================================================================
                        for _, chestData in ipairs(validChests) do 
                            local chestInst = chestData.Instance or chestData.part or chestData.Part or chestData.model
                            local waitTime = 0
                            
                            -- Cho phép đợi tối đa 80 lần (8 giây) để cân hết thời gian cửa Sea King mở
                            while waitTime < 40 do
                                -- [QUAN TRỌNG NHẤT]: Nếu rương đã biến mất (vào túi), lập tức thoát vòng lặp!
                                if chestInst and not chestInst.Parent then break end

                                local currentCFrame = chestData.cframe
                                
                                -- Liên tục cập nhật vị trí mới nếu rương bị cửa đẩy hoặc đảo chìm
                                pcall(function()
                                    if chestInst and chestInst.Parent then
                                        if chestInst:IsA("Model") then
                                            currentCFrame = chestInst:GetPivot()
                                        else
                                            currentCFrame = chestInst.CFrame
                                        end
                                    end
                                end)
                                
                                local targetPosition = (currentCFrame * CFrame.new(0, -4.5, 0)).Position
                                local uprightCFrame = CFrame.new(targetPosition)
                                
                                root.CFrame = uprightCFrame
                                if root:FindFirstChild("FreezeRot") then
                                    root.FreezeRot.CFrame = uprightCFrame
                                end
                                
                                waitTime = waitTime + 1
                                task.wait(0.1) -- Quét cực nhanh 10 lần/giây
                            end
                            lootedChests[chestData.id] = true 
                        end
                        -- =================================================================
                        
                        -- Chỉ delay cực nhỏ để Tool kịp check lại danh sách Rương
                        task.wait(0.5)
                        
                        local checkAgainChests = getChestTargets()
                        for _, c in ipairs(checkAgainChests) do if not lootedChests[c.id] then return end end

                        -- Trả lại thân xác
                        pcall(function() char.Humanoid.PlatformStand = false end)

                        if getBossRoot() then 
                            UpdateStatusUI("Da nhat xong! Chuyen sang Boss tiep theo...")
                        else 
                            UpdateStatusUI("Nhat Thanh Cong! Len Sky & Hop...");
                            if lastWebhookState ~= "done_looting" then sendWebhook("☠️ Nhat ruong xong! Chuan bi Hop..."); lastWebhookState = "done_looting" end
                            pcall(function() saveTeleportedServers(game.JobId); AddToBlacklist2(game.JobId) end) 
                            
                            root.CFrame = root.CFrame + Vector3.new(math.random(-1000, 1000), math.random(4500, 6000), math.random(-1000, 1000)); 
                            char.Humanoid.AutoRotate = false; 
                            
                            if not root:FindFirstChild("FreezePos") then local bv = Instance.new("BodyVelocity", root); bv.Name = "FreezePos"; bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge); bv.Velocity = Vector3.new(0, 0, 0) end; 
                            if not root:FindFirstChild("FreezeRot") then local bg = Instance.new("BodyGyro", root); bg.Name = "FreezeRot"; bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge); bg.P = 500000 end; 
                            
                            task.wait(2.5); FinalHop() 
                        end
                        return
                    end
                    if bossRoot then
                        UpdateStatusUI("Dang Danh " .. (currentBossName or "Boss") .. "...");
                        if not Settings.IsFightingBoss then 
                            if lastWebhookState ~= "fighting_" .. tostring(currentBossName) then sendWebhook("⚔️ Co BOSS! Dang danh " .. (currentBossName or "boss") .. "..."); lastWebhookState = "fighting_" .. tostring(currentBossName) end
                        end
                        Settings.IsFightingBoss = true; lastBossCFrame = bossRoot.CFrame; lastBossTime = tick(); char.Humanoid.AutoRotate = false
                        local lockCFrame = bossRoot.CFrame * CFrame.new(0, 35, 0); root.CFrame = lockCFrame
                        if not root:FindFirstChild("FreezePos") then local bv = Instance.new("BodyVelocity", root); bv.Name = "FreezePos"; bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge); bv.Velocity = Vector3.new(0, 35, 0) end; if not root:FindFirstChild("FreezeRot") then local bg = Instance.new("BodyGyro", root); bg.Name = "FreezeRot"; bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge); bg.P = 500000; bg.CFrame = lockCFrame end
                        return 
                    end
                    Settings.IsFightingBoss = false; char.Humanoid.AutoRotate = true; if root:FindFirstChild("FreezePos") then root.FreezePos:Destroy() end; if root:FindFirstChild("FreezeRot") then root.FreezeRot:Destroy() end
                    if lastBossCFrame and (tick() - lastBossTime) <= 22 then
                        UpdateStatusUI("Cho Ruong Xuat Hien (" .. math.floor(22 - (tick() - lastBossTime)) .. "s)..."); root.CFrame = lastBossCFrame
                        if not root:FindFirstChild("FreezePos") then local bv = Instance.new("BodyVelocity", root); bv.Name = "FreezePos"; bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge); bv.Velocity = Vector3.new(0, 0, 0) end; if not root:FindFirstChild("FreezeRot") then local bg = Instance.new("BodyGyro", root); bg.Name = "FreezeRot"; bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge); bg.P = 500000 end
                        return 
                    elseif lastBossCFrame and (tick() - lastBossTime) > 22 then lastBossCFrame = nil end
                    if isIslandPresent() then
                        UpdateStatusUI("Dao da Load. Dang vao Stand ep Boss ra...")
                        local wIsland = workspace:FindFirstChild("Island")
                        if wIsland then
                            for _, name in ipairs({"Sea King Thunder", "Sea King Water", "Sea King Lava"}) do
                                local isl = wIsland:FindFirstChild(name)
                                if isl and isl:FindFirstChild("HydraStand") then
                                    root.CFrame = isl.HydraStand.CFrame * CFrame.new(0, 10, 0)
                                    if not root:FindFirstChild("FreezePos") then local bv = Instance.new("BodyVelocity", root); bv.Name = "FreezePos"; bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge); bv.Velocity = Vector3.new(0, 0, 0) end; if not root:FindFirstChild("FreezeRot") then local bg = Instance.new("BodyGyro", root); bg.Name = "FreezeRot"; bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge); bg.P = 500000 end
                                end
                            end
                            for _, n in ipairs({"Legacy Island1", "Legacy Island2", "Legacy Island3", "Legacy Island4"}) do
                                local isl = wIsland:FindFirstChild(n)
                                if isl and isl:FindFirstChild("ChestSpawner") then 
                                    root.CFrame = isl.ChestSpawner.CFrame * CFrame.new(0, -2, 0)
                                    if not root:FindFirstChild("FreezePos") then local bv = Instance.new("BodyVelocity", root); bv.Name = "FreezePos"; bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge); bv.Velocity = Vector3.new(0, 0, 0) end; if not root:FindFirstChild("FreezeRot") then local bg = Instance.new("BodyGyro", root); bg.Name = "FreezeRot"; bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge); bg.P = 500000 end
                                end
                            end
                        end
                        return
                    end
                    -- =================================================================
                    -- [TỐI ƯU LOGIC]: TÁCH BIỆT BÁO TỬ (ĐẢO CHÌM) VÀ SCOUT THỜI GIAN
                    -- =================================================================
                    local seaName = GetSeaName()
                    if ClientBeckUI then ClientBeckUI:Fire("LegacyPoseFrame", {Sea = seaName, VisibleType = true}) end
                    task.wait(0.3) 
                    
                    local gui = lplr.PlayerGui:FindFirstChild("MainGui") and lplr.PlayerGui.MainGui:FindFirstChild("StarterFrame") and lplr.PlayerGui.MainGui.StarterFrame:FindFirstChild("LegacyPoseFrame") and lplr.PlayerGui.MainGui.StarterFrame.LegacyPoseFrame:FindFirstChild(seaName)
                    if gui then
                        local skLabel = gui:FindFirstChild("SKTimeLabel")
                        if skLabel and skLabel.Text ~= "" then
                            local skSecs = ParseGUITimeToSeconds(skLabel.Text)
                            if skSecs ~= nil and skSecs <= 0 then
                                UpdateStatusUI("Time = 0s. Bay ra bien ep Dao xuat hien...")
                                root.CFrame = CFrame.new(-6650, 50, -5600)
                                if ClientBeckUI then ClientBeckUI:Fire("LegacyPoseFrame", {Sea = seaName, VisibleType = false}) end
                                task.wait(1)
                                return
                            end
                        end
                    end
                    
                    -- 1. KIỂM TRA XEM ĐÂY CÓ PHẢI LÀ SERVER ĐÃ CHẾT (ĐẢO/RƯƠNG ĐANG CHÌM) KHÔNG?
                    local isDeadServer = false
                    local wIsland = workspace:FindFirstChild("Island")
                    if wIsland then
                        for _, n in ipairs({"Sea King Thunder", "Sea King Water", "Sea King Lava", "Legacy Island1", "Legacy Island2", "Legacy Island3", "Legacy Island4"}) do
                            local isl = wIsland:FindFirstChild(n)
                            if isl then
                                local anchor = isl:FindFirstChild("HydraStand") or isl:FindFirstChild("ChestSpawner")
                                -- Nếu có mỏ neo nhưng tọa độ chìm dưới 5 -> Đảo chết
                                if anchor and anchor.Position.Y < 5 then isDeadServer = true; break end
                            end
                        end
                    end
                    -- Bổ sung check rương GhostShip chìm
                    if not isDeadServer then
                        for i = 1, 5 do 
                            local c = workspace:FindFirstChild("Chest"..i)
                            if c and c:FindFirstChild("Top") and c.Top.Position.Y < -5 then isDeadServer = true; break end 
                        end
                    end

                    -- 2. XỬ LÝ ĐÚNG MỤC ĐÍCH DỰA VÀO TÌNH TRẠNG SERVER
                    if isDeadServer then
                        print("[HUDY HUB] ☠️ Phát hiện Đảo/Rương đang chìm! Báo tử Server...")
                        ReportDeadServerToAPI()
                    else
                        UpdateStatusUI("Scout thoi gian Boss & Hop...")
                        task.spawn(function() pcall(function() ScoutAndSyncData() end) end)
                    end
                    
                    -- Thoát khỏi Server siêu tốc
                    sessionIgnoredServers[game.JobId] = true
                    pcall(function() saveTeleportedServers(game.JobId); AddToBlacklist1(game.JobId) end) 
                    task.wait(0.1)
                    FinalHop()
                end)
            end
        end
    end
end)()
RunService.RenderStepped:Connect(function()
    if Settings.AutoSeaEvents and Settings.IsFightingBoss then
        pcall(function()
            local root = lplr.Character and lplr.Character:FindFirstChild("HumanoidRootPart")
            local bossRoot = getBossRoot()
            if root and bossRoot then
                local targetPosition = bossRoot.Position + Vector3.new(0, 45, 0)
                local currentRotation = root.CFrame - root.Position
                local lockCFrame = currentRotation + targetPosition
                root.CFrame = lockCFrame
                if root:FindFirstChild("FreezeRot") then 
                    root.FreezeRot.CFrame = CFrame.new(targetPosition, bossRoot.Position) 
                end
            end
        end)
    end
end)
local noClipParts = {}
local function updateNoclipParts(character)
    noClipParts = {}
    -- [TỐI ƯU]: Chỉ quét lớp vỏ ngoài cùng của nhân vật, bỏ qua hàng trăm mesh phụ kiện
    for _, v in ipairs(character:GetChildren()) do
        if v:IsA("BasePart") then table.insert(noClipParts, v) end
    end
end
lplr.CharacterAdded:Connect(updateNoclipParts)
if lplr.Character then updateNoclipParts(lplr.Character) end

RunService.Stepped:Connect(function()
    if _G.noclip then
        for i = 1, #noClipParts do
            -- Dùng ipairs truy xuất tĩnh cực nhanh
            local p = noClipParts[i]
            if p and p.CanCollide then p.CanCollide = false end
        end
    end
end)


-- =========================================================================
-- [HUDY HUB] - STATS ADDON GUI (ĐỒNG BỘ THẨM MĨ VỚI MAIN GUI)
-- =========================================================================
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local lplr = Players.LocalPlayer

-- Xóa GUI cũ
local coreGui = gethui and gethui() or game:GetService("CoreGui")
if coreGui:FindFirstChild("HuDyMiniStats") then
    coreGui.HuDyMiniStats:Destroy()
end

-- 1. Tạo Khung UI chính (Sử dụng Absolute Size giống Main GUI)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "HuDyMiniStats"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = coreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 125, 0, 115) -- Kích thước cố định, nhỏ gọn
Frame.Position = UDim2.new(0, 180, 0, 10) -- Nằm sát mép phải của Main GUI
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 22) -- Khớp màu Main GUI
Frame.BackgroundTransparency = 0.25 -- Khớp độ trong suốt
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6) -- Khớp độ bo góc
UICorner.Parent = Frame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(167, 139, 250) -- Khớp màu viền tím
UIStroke.Thickness = 1
UIStroke.Transparency = 0.2
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = Frame

-- 2. Tạo Header y chang Main GUI
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 20)
Title.BackgroundTransparency = 1
Title.Text = "Stats Tracker"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBlack
Title.TextSize = 11
Title.Parent = Frame

local TitleGradient = Instance.new("UIGradient")
TitleGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(221, 214, 254)), ColorSequenceKeypoint.new(1, Color3.fromRGB(167, 139, 250))}
TitleGradient.Parent = Title

local Line = Instance.new("Frame")
Line.Size = UDim2.new(1, -16, 0, 1)
Line.Position = UDim2.new(0, 8, 0, 22)
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BorderSizePixel = 0
Line.Parent = Frame

local LineGradient = Instance.new("UIGradient")
LineGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(139, 92, 246)), ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 189, 248))}
LineGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)}
LineGradient.Parent = Line

-- 3. Phần Text Data
local StatsText = Instance.new("TextLabel")
StatsText.Size = UDim2.new(1, -20, 1, -28)
StatsText.Position = UDim2.new(0, 10, 0, 26)
StatsText.BackgroundTransparency = 1
StatsText.Font = Enum.Font.Code
StatsText.TextColor3 = Color3.fromRGB(255, 255, 255)
StatsText.TextSize = 18 -- Cỡ chữ vừa phải, không bị tràn viền
StatsText.TextXAlignment = Enum.TextXAlignment.Left
StatsText.TextYAlignment = Enum.TextYAlignment.Top
StatsText.RichText = true
StatsText.Parent = Frame

-- 4. Chức năng Kéo Thả (Draggable)
local dragging, dragInput, dragStart, startPos
Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- 5. Tối ưu lấy FPS & Cập nhật Data
local fps = 0
RunService.Heartbeat:Connect(function(deltaTime)
    fps = math.floor(1 / deltaTime)
end)

local function DecodeData(val)
    if type(val) == "string" and val ~= "" then
        local ok, res = pcall(function() return HttpService:JSONDecode(val) end)
        if ok and type(res) == "table" then return res end
    end
    return {}
end

task.spawn(function()
    local cachedStats = nil
    local cachedMaterial = nil
    local lastDataString = ""
    local m = {T = 0, F = 0, B = 0, W = 0}
    
    while task.wait(0.5) do
        if not ScreenGui.Parent then break end
        
        if not cachedStats then cachedStats = lplr:FindFirstChild("PlayerStats") end
        if cachedStats and not cachedMaterial then cachedMaterial = cachedStats:FindFirstChild("Material") end
        
        if cachedMaterial then
            local currentString = cachedMaterial.Value
            if currentString ~= lastDataString then
                lastDataString = currentString
                pcall(function()
                    local decodeFunc = getgenv().SafeDecodeLocal or DecodeData 
                    local data = decodeFunc(currentString)
                    
                    m.T = data["Hydra's Tail"] or 0
                    m.F = data["Sea King's Fin"] or 0
                    m.B = data["Sea King's Blood"] or 0
                    m.W = data["Sea's Wraith"] or 0
                end)
            end
        end
        
        -- Dóng lề thẳng tắp cho các con số
        StatsText.Text = string.format(
            "<font color='#00ffcc'>FPS    :</font> <b>%d</b>\n" ..
            "<font color='#ff6666'>Tail   :</font> <b>%d</b>\n" ..
            "<font color='#66ccff'>Fin    :</font> <b>%d</b>\n" ..
            "<font color='#ff3333'>Blood  :</font> <b>%d</b>\n" ..
            "<font color='#cc99ff'>Wraith :</font> <b>%d</b>",
            fps, m.T, m.F, m.B, m.W
        )
    end
end)