-- Static deobfuscation extract for: obfuscated.lua (6).txt
-- Original banner: NTT obfuscator v7.43
--
-- This is a SAFE, non-runnable reconstruction.  It contains only the
-- recovered intent, strings, endpoints, and UI structure.  It deliberately
-- does NOT make HTTP requests, read/write executor files, access Roblox, or
-- execute any downloaded data.
--
-- What was removed / decoded:
--   * NTT's encrypted string pool and indirect global lookups
--   * Control-flow flattening around the high-level key UI
--   * Two embedded VM error handlers (listed in `embedded_vm_handlers`)
--
-- What remains intentionally represented as data:
--   * The full NTT v7.43 VM runtime and its opaque-predicate scaffolding.
--   * The exact request schema and live server responses.  Those were not
--     contacted during analysis.

local NTT_HUB = {
    name = "NTT HUB",
    version = "Key v2",

    -- Exact strings recovered from the code.
    storage = {
        folder = "NTT HUB/Key v2/",
        key_file = "NTT HUB/Key v2/Key.json",
        settings = "Settings",
        key_field = "_G.key",
        check_field = "checkkey",
        link_field = "linkkey",
        expiry_field = "expire",
        index_field = "index_key",
    },

    -- These URLs are embedded in the original file.  They are data here;
    -- this reconstruction never calls them.
    endpoints = {
        request_probe = "https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/request",
        key_link_source = "https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/link",
        key_validation = "https://ntthub.xyz/key/main?hwid=",
        alternate_hwid_service = "https://nekokawaii.workers.dev?hwid",
    },

    recovered_api_names = {
        "GetService", "Players", "LocalPlayer", "RunService", "HttpService",
        "JSONEncode", "JSONDecode", "HttpGet", "request", "StatusCode",
        "isfunctionhooked", "getgenv", "getmetatable", "setmetatable",
        "rawget", "rawset", "pcall", "string.find", "string.gmatch",
        "table.insert", "Instance.new", "FindFirstChild", "WaitForChild",
        "CoreGui", "setclipboard",
    },

    -- These are all UI labels/messages found after decoding.
    ui_text = {
        title = "   NTT HUB | Key",
        prompt = "Enter The Key",
        check = "Check Key",
        get_key = "Get Key",
        checking = "Do Check Key",
        invalid_key = "Key False",
        clipboard_message = "Link Save In Clipboard",
        thanks = "Thank you for use",
        support = "Script NTT HUB Suport 32 bit / Pe",
        credit = "   #ねこ かわいい\n@nekokawaii4500",
        executor_status = "Status : Undetected Executor",
    },

    -- Object names recovered from the ScreenGui construction code.
    ui_objects = {
        "UIGUI", "UImain", "UIbar", "UIbar1", "UIbar2", "UIbar3", "UIbar4",
        "main", "exit", "key_t", "key_g", "key_b", "key_tb",
        "load_t", "load_t1", "load_t2", "load_l", "load_b1", "load_b2",
        "t_1", "t_2", "tt_name", "tt_1", "bar_1", "bar_2", "bar_3", "bar_4",
    },

    -- The two small virtual-machine programs were decoded through both VM
    -- stages.  Their constants resolve to exactly these actions:
    embedded_vm_handlers = {
        function()
            print("Fetch Failed or No Key Available")
        end,
        function()
            print("Fetch Fail or Not have Key")
        end,
    },
}

-- High-level reconstruction of the observed control flow.
-- It is documentation, not a drop-in replacement for the original script.
function NTT_HUB.recovered_flow()
    -- 1. Probe the executor/Roblox environment and anti-hook state.
    --    Recovered markers include:
    --      __ntt_probe__, debug_enabled, encryption_key, fake_key_12345,
    --      admin_mode, isfunctionhooked, getgenv, getidentity, setidentity.
    --
    -- 2. Resolve a request implementation and make a request capability
    --    probe to `endpoints.request_probe`.  The original also accesses
    --    game:HttpGet for `endpoints.key_link_source`.
    --
    -- 3. Create/check a temporary Workspace folder named
    --    "__NTT-HUB_folder_check".  This is part of its executor/environment
    --    checks rather than the visible key UI.
    --
    -- 4. Read or save key settings under `storage.folder` / `storage.key_file`
    --    when the executor provides filesystem APIs.  JSONEncode/JSONDecode
    --    are used for the settings data.
    --
    -- 5. Construct a ScreenGui in CoreGui with a TextBox for the key and
    --    "Get Key" / "Check Key" buttons.  The UI wires MouseButton1Down
    --    handlers and may call setclipboard after obtaining a key link.
    --
    -- 6. Parse key-related fields (key, checkkey, linkkey, index_key, expire)
    --    and contact the embedded HWID/key endpoints.  Failure paths invoke
    --    the two tiny VM handlers above or set the label to "Key False".
end

-- Security-relevant assessment extracted from the source:
--
-- * This is not a harmless "Hello World" VM wrapper.  It is a real NTT v7.43
--   virtualization/control-flow-obfuscation wrapper around a Roblox key UI.
-- * It is designed for a Roblox executor and can use executor-provided file,
--   clipboard, HTTP/request, identity, and Roblox APIs when available.
-- * It embeds endpoints that include an HWID query parameter.  Do not run it
--   in a real executor unless you trust the operator of those endpoints.
-- * Static recovery found request/HttpGet usage, but did not execute any
--   remote data.  Therefore this extract does not make a claim about live
--   server responses or behavior that depends on them.

return NTT_HUB
