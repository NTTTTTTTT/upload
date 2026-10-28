-- cm.txt: luồng chính khôi phục bằng runtime trong sandbox.
-- Đây là bản để đọc, không phải bản thay thế có thể chạy toàn bộ game.

local M = {}

local RUN_REQUEST_URL =
    "https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/run-request"

local ACCOUNT_HOSTS = {
    "https://api-account.nekokawaii.workers.dev",
    "https://api-account-s1.nekokawaii.workers.dev",
    "https://api-account-s2.nekokawaii.workers.dev",
    "https://api-account-s3.nekokawaii.workers.dev",
}
M.accountHosts = ACCOUNT_HOSTS

-- Các giá trị dưới đây đã được giải khỏi pool hằng số. Sự hiện diện của chúng
-- không có nghĩa là nhánh tương ứng đã chạy trong phép thử.
M.otherDecodedNames = {
    gameplay = {
        "Farm : Run", "Farm : Stop", "Seaking", "Sea King's Blood",
        "PhoenixFruit", "ChestSpawner", "EquipTool", "FireServer",
    },
    services = {
        "Players", "RunService", "TeleportService", "HttpService",
        "VirtualInputManager", "RbxAnalyticsService",
    },
    operations = {
        "TeleportToPlaceInstance", "Kick", "SendKeyEvent", "GetClientId",
        "JSONEncode", "JSONDecode", "http_request", "writefile",
    },
    otherURLs = {
        "https://api-sever.nekokawaii.workers.dev/api/server?name=",
        "https://api.nttsv.online/api/datasever-v1?name=skhdgs&id=24",
        "https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/Kls1",
        "https://discord.com/api/webhooks/[REDACTED]",
    },
}

-- Bước sau xác thực chỉ được quan sát khi ép qua guard skhd trong bản thử.
-- Các callback, UI và vòng lặp farm phía sau chưa được tái tạo.
local function setupAfterAuthentication(globals, playerName, now)
    if globals.fixhop == nil then
        globals.fixhop = true
    end
    if globals.my_webhook == nil then
        globals.my_webhook = "https://discord.com/api/webhooks/[REDACTED]"
    end
    globals.ghost_ship = false

    local state = {
        startedAt = now or os.time(),
        setting = {
            server = {},
            hop = { 0 },
            [playerName] = { blacklist1 = {}, blacklist2 = {} },
        },
    }
    return state
end

-- Đường đi được ghi nhận bằng HTTP và Roblox API giả.
-- options.decodeAccountResponse là phần giải/xác thực còn thiếu.
function M.runObservedPath(game, globals, options)
    globals = globals or {}
    options = options or {}

    -- Với skhd=true hoặc extend=true, mẫu dừng trước yêu cầu HTTP trong
    -- môi trường thử. Điều kiện chính xác của guard gốc chưa được chứng minh.
    if globals.skhd == true or globals.extend == true then
        return nil
    end

    game:HttpGet(RUN_REQUEST_URL)

    local players = game:GetService("Players")
    local characterName = players.LocalPlayer.Character.Name
    local playerName = game.Players.LocalPlayer.Name

    -- Khi tên khác nhau, không có yêu cầu tới API account trong dấu vết.
    if characterName ~= playerName then
        return nil
    end

    local accountName = playerName
    if globals.jjj == true then
        if type(globals.gethwid) ~= "function" then
            return nil
        end
        accountName = globals.gethwid()
    end

    local host = options.accountHost or ACCOUNT_HOSTS[1]
    local response = game:HttpGet(
        host .. "/api/data?name=" .. tostring(accountName)
    )
    globals.content = response

    if type(response) ~= "string" or not response:find("|", 1, true) then
        return nil
    end

    if not options.decodeAccountResponse then
        return nil -- phép giải/xác thực phản hồi chưa được khôi phục
    end
    globals.skhd = options.decodeAccountResponse(response)
    if not globals.skhd then
        return nil
    end

    return setupAfterAuthentication(globals, playerName, options.now)
end

return M
