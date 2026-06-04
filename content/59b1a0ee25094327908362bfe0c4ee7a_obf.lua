--[[
_G.key="_"
_G.getlink="https://nekokawaii.workers.dev"
_G.index_key=19
_G.prenium=true
]]

local r1,r2=pcall(function()
r3=game:HttpGet('https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/run-request')
end) if r2 then return end

if not _G.getlink or not _G.key or not _G.index_key then return end
if not string.find(_G.getlink,"nekokawaii.workers.dev") then return end

_G.distance=25
_G.name_game="Blox_Fruit0"
_G.Setting = { 
["server_live"]= {"Server : Select"},      
    ["tool_select"] = {"Tool : Melee"},
    ["level"] = {false},
    ["mobnear"]={false},
    ["material_select"]={"Material : Select"},
    ["material"] = {false},
    ["mastery_fruit"] = {false},
    ["mastery_health"] = {35},                
    ["skillfruit"] = {
["Z"] = true,
        ["X"] = true,
        ["C"] = true,
        ["V"] = true,
        ["F"] = true
    },
    ["up_melee"] = {false},
    ["up_health"] = {false},
    ["up_sword"] = {false},
    ["up_gun"] = {false},
    ["up_fruit"] = {false},
    
    ["autorejoin"] = {false},
    ["blackscreen"] = {false},
    ["attack"]={true},
            
["autochest"] = {false},
["chesthop"] = {false},
["chestfruitspawn"] = {true},
["chestfruitdrop"] = {true},
["chestfruitstore"] = {true},
["chestdarkbeard"] = {true},
["chestadmin"] = {true},
["cheststop"] = {false},

["styler_select"] = {"Styler : Select"},
["buystyler"] = {false},
["randomfruit"] = {false},
["randombone"] = {false},

["boss1"] = {
    ["The Gorilla King"] = false,
    ["Bobby"] = false,
    ["The Saw"] = false,
    ["Yeti"] = false,
    ["Mob Leader"] = false,
    ["Vice Admiral"] = false,
    ["Warden"] = false,
    ["Chief Warden"] = false,
    ["Saber Expert"] = false,
    ["Swan"] = false,
    ["Magma Admiral"] = false,
    ["Fishman Lord"] = false,
    ["Wysper"] = false,
    ["Thunder God"] = false,
    ["Cyborg"] = false,
    ["Greybeard"] = false
},

["boss2"] = {
    ["Diamond"] = false,
    ["Jeremy"] = false,
    ["Orbitus"] = false,
    ["Don Swan"] = false,
    ["Darkbeard"] = true, -- Raid Boss
    ["Smoke Admiral"] = false,
    ["Cursed Captain"] = false, -- Raid Boss
    ["Awakened Ice Admiral"] = false,
    ["Tide Keeper"] = false
},

["boss3"] = {
    ["Stone"] = false,
    ["Island Empress"] = false,
    ["Kilo Admiral"] = false,
    ["Captain Elephant"] = false,
    ["Beautiful Pirate"] = false,
    ["Longma"] = false,
    ["Soul Reaper"] = false, -- Raid Boss
    ["Cake Queen"] = false,
    ["rip_indra True Form"] = true,
    ["Cake Prince"]=true,
    ["Dough King"]=true
},
["killboss"] = {false},
["factory"] = {false},
["bartilo"]={false},
["katakuri"] = {false},
["elite"] = {false},
["elitehop"] = {false},

["saber"] = {false},
["rengoku"] = {false},
["swordlegend"] = {false},
["yama"] = {false},
["scyther"] = {false},
["tushita"] = {false},
["guitar"] = {false},
["cdk"] = {false},

["esp_player"] = {false},
    ["esp_island"] = {false},
    ["esp_fruit"] = {false},
    ["fruit_spawn"] = {false},
    ["fruit_drop"] = {false},
    ["fruit_store"] = {false},
    
    ["seaevent_tool"]={"Tool : Select"},
    ["seaevent_multitool"]={
    ["Melee"]=true,
    ["Blox Fruit"]=true,
    ["Sword"]=true,
    ["Gun"]=true
    },
    ["skill"] = {
        ["Z"] = true,
        ["X"] = true,
        ["C"] = true,
        ["V"] = true,
        ["F"] = true
    },
    ["seaevent_lv"]={"Level : 1"},
    ["seaevent_mob"]={
    ["Terrorshark"]=true,
    ["Shark"]=true,
    ["Piranha"]=true,
    ["Ghost Ship"]=true,
    ["Sea Beast"]=true
    },
    ["roughsea"]={true},
    ["speedboat"]={false},
    ["speedboat_value"]={100},
    ["seaevent_start"] = {false},
    ["seaevent_drive"]={false},
["mirage"] = {false},
["tpgear"] = {false},
["kitsune"] = {false},
["azure"] = {false},
["random_azure"] = {false},

["aim_player"]={"Player : Select"},
["aim_tp"] = {false},
["aim_select"] = {false},
["aim_near"] = {false},
["aim_gui"] = {false},
["aim_value"]={150},
["antistun"]={false},

["player"] = {"Player : Select"},
    ["skillplayerselect"] = {false},
    ["skillplayernear"] = {false},
    ["skillplayernear0"] = {400},

    ["om"] = {true},
    ["of"] = {true},
    ["os"] = {true},
    ["og"] = {true},

    ["mz"] = {true},
    ["mdz"] = {100},
    ["mx"] = {true},
    ["mdx"] = {100},
    ["mc"] = {true},
    ["mdc"] = {100},

    ["sz"] = {true},
    ["sdz"] = {100},
    ["sx"] = {true},
    ["sdx"] = {100},

    ["gz"] = {true},
    ["gdz"] = {100},
    ["gx"] = {true},
    ["gdx"] = {100},

    ["fz"] = {true},
    ["fdz"] = {100},
    ["fx"] = {true},
    ["fdx"] = {100},
    ["fc"] = {true},
    ["fdc"] = {100},
    ["fv"] = {true},
    ["fdv"] = {100},
    ["ff"] = {true},
    ["fdf"] = {100},

["skillauto"] = {
        ["Z"] = true,
        ["X"] = true,
        ["C"] = true,
        ["V"] = true,
        ["F"] = true
    },
    
["skillauto_near"]={falae},
["skillauto_value"]={100},

["water"] = {false},
["walkspeed"] = {false},
["jumpower"] = {false},
["infjump"] = {false},
["jump_value"]={35},
["speed_value"]={100},
["minkv4"]={false},

["raid_select"]={"Chip : Select"},
["raid_buy"] = {false},
    ["raid_tp"] = {false},
    ["raid_start"] = {false},
    ["raid_island"] = {false},
    ["raid_aura"] = {false},
    ["awakening"]={false},
    ["raidlaw_tp"] = {false},
    ["raidlaw_buy"] = {false},
    ["raidlaw_start"] = {false},
    ["raidlaw"] = {false},
    
    ["race_v2"] = {false},
    ["race_v3"] = {false},
    ["race_door"] = {false},
    ["race_trial"] = {false},
    ["race_kill"] = {false},
    
    ["teleport_select"] = {"Island : Select"},

    
    ["_end"] = {"_end"}
}

local function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("NTT HUB") then
            makefolder("NTT HUB")
        end
        if not isfolder("NTT HUB/Save Script/") then
            makefolder("NTT HUB/Save Script/")
        end
        
        local filePath = "NTT HUB/Save Script/".._G.name_game..".json"
        if not isfile(filePath) or readfile(filePath) == "" then            
            writefile(filePath, game:GetService("HttpService"):JSONEncode(_G.Setting))
        else          
            local success, Decode = pcall(function()
                return game:GetService("HttpService"):JSONDecode(readfile(filePath))
            end)
           
            if success then
                for i, v in pairs(Decode) do
                    _G.Setting[i] = v
                end
            else              
                writefile(filePath, game:GetService("HttpService"):JSONEncode(_G.Setting))
            end
        end
    else
        return warn("Status : Undetected Executor")
    end
end

local function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        local filePath = "NTT HUB/Save Script/".._G.name_game..".json"
        
        if not isfile(filePath) then
            LoadSettings()
        else           
            local Array = {}
            for i, v in pairs(_G.Setting) do
                Array[i] = v
            end
            writefile(filePath, game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return warn("Status : Undetected Executor")
    end
end

LoadSettings()

if _G.linkdis == nil then
_G.linkdis=111
end

-- // Main
 
local NTTGUI = Instance.new("ScreenGui")
--main
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local sea = Instance.new("TextLabel")

--page
local b_page1 = Instance.new("ScrollingFrame") 
local b_page2 = Instance.new("ScrollingFrame") 
local b_page6 = Instance.new("ScrollingFrame") 
local b_page3 = Instance.new("ScrollingFrame") 
local b_page4 = Instance.new("ScrollingFrame") 
local b_page5 = Instance.new("ScrollingFrame") 
local b_page7 = Instance.new("ScrollingFrame") 
local b_page8= Instance.new("ScrollingFrame")
local b_page9 = Instance.new("ScrollingFrame") 
local b_page10 = Instance.new("ScrollingFrame") 
local b_page11 = Instance.new("ScrollingFrame") 
local b_page12 = Instance.new("ScrollingFrame") 
local b_page13 = Instance.new("ScrollingFrame") 
local b_page14 = Instance.new("ScrollingFrame") 
local b_page15 = Instance.new("ScrollingFrame")

--bar 
local bar = Instance.new("Frame")
local bar1 = Instance.new("ScrollingFrame")
bar_1 = Instance.new("Frame")

--button
local b_1 = Instance.new("TextButton")
local b_2 = Instance.new("TextButton") 
local b_6 = Instance.new("TextButton") 
local b_3 = Instance.new("TextButton")
local b_4 = Instance.new("TextButton")
local b_5 = Instance.new("TextButton")
local b_7 = Instance.new("TextButton")
local b_8= Instance.new("TextButton")
local b_9 = Instance.new("TextButton")
local b_10 = Instance.new("TextButton")
local b_11= Instance.new("TextButton")
local b_12 = Instance.new("TextButton")
local b_13 = Instance.new("TextButton")
local b_14 = Instance.new("TextButton")
local b_15 = Instance.new("TextButton")



-- // Name Player
prl = Instance.new("TextButton")--Name Player


-- Main
main_bar1 = Instance.new("ScrollingFrame")
main_bar2 = Instance.new("ScrollingFrame")
main_bar3 = Instance.new("ScrollingFrame")
main_f1 = Instance.new("TextLabel")
main_b1 = Instance.new("TextButton")
main_f2= Instance.new("TextLabel")
main_b2 = Instance.new("TextButton")
main_f3= Instance.new("TextLabel")
main_b3 = Instance.new("TextButton")
main_f4= Instance.new("TextLabel")
main_b4 = Instance.new("TextButton")
main_f5= Instance.new("TextLabel")
main_b5 = Instance.new("TextButton")
main_f6= Instance.new("TextLabel")
main_b6 = Instance.new("TextButton")
main_f7= Instance.new("TextLabel")
main_b7 = Instance.new("TextButton")
main_f8= Instance.new("TextLabel")
main_b8 = Instance.new("TextButton")
main_f9= Instance.new("TextLabel")
main_b9= Instance.new("TextButton")
main_f10= Instance.new("TextLabel")
main_b10= Instance.new("TextButton")
main_f11= Instance.new("TextLabel")
main_b11= Instance.new("TextButton")
main_f12= Instance.new("TextLabel")
main_b12= Instance.new("TextButton")

setting_f1 = Instance.new("TextLabel")
setting_b1 = Instance.new("TextButton")
setting_f2= Instance.new("TextLabel")
setting_b2 = Instance.new("TextButton")
setting_f3= Instance.new("TextLabel")
setting_b3= Instance.new("TextButton")

chest_f1 = Instance.new("TextLabel")
chest_b1 = Instance.new("TextButton")
chest_f2= Instance.new("TextLabel")
chest_b2 = Instance.new("TextButton")
chest_f3= Instance.new("TextLabel")
chest_b3 = Instance.new("TextButton")
chest_f4= Instance.new("TextLabel")
chest_b4 = Instance.new("TextButton")
chest_f5= Instance.new("TextLabel")
chest_b5 = Instance.new("TextButton")
chest_f6= Instance.new("TextLabel")
chest_b6 = Instance.new("TextButton")
chest_f7= Instance.new("TextLabel")
chest_b7 = Instance.new("TextButton")
chest_f8= Instance.new("TextLabel")
chest_b8= Instance.new("TextButton")

shop_bar1 = Instance.new("ScrollingFrame")
shop_f1 = Instance.new("TextLabel")
shop_b1 = Instance.new("TextButton")
shop_f2= Instance.new("TextLabel")
shop_b2 = Instance.new("TextButton")
shop_f3= Instance.new("TextLabel")
shop_b3 = Instance.new("TextButton")
shop_f4= Instance.new("TextLabel")
shop_b4 = Instance.new("TextButton")

boss_bar1 = Instance.new("ScrollingFrame")
boss_bar2 = Instance.new("ScrollingFrame")
boss_bar3 = Instance.new("ScrollingFrame")
boss_f1 = Instance.new("TextLabel")
boss_b1 = Instance.new("TextButton")
boss_f2= Instance.new("TextLabel")
boss_b2 = Instance.new("TextButton")
boss_f3= Instance.new("TextLabel")
boss_b3 = Instance.new("TextButton")
boss_f4= Instance.new("TextLabel")
boss_b4 = Instance.new("TextButton")

more_f1 = Instance.new("TextLabel")
more_b1 = Instance.new("TextButton")
more_f2= Instance.new("TextLabel")
more_b2 = Instance.new("TextButton")
more_f3= Instance.new("TextLabel")
more_b3 = Instance.new("TextButton")
more_f4= Instance.new("TextLabel")
more_b4 = Instance.new("TextButton")
more_f5= Instance.new("TextLabel")
more_b5 = Instance.new("TextButton")

item_f1 = Instance.new("TextLabel")
item_b1 = Instance.new("TextButton")
item_f2= Instance.new("TextLabel")
item_b2 = Instance.new("TextButton")
item_f3= Instance.new("TextLabel")
item_b3 = Instance.new("TextButton")
item_f4= Instance.new("TextLabel")
item_b4 = Instance.new("TextButton")
item_f5= Instance.new("TextLabel")
item_b5 = Instance.new("TextButton")

esp_f1 = Instance.new("TextLabel")
esp_b1 = Instance.new("TextButton")
esp_f2= Instance.new("TextLabel")
esp_b2 = Instance.new("TextButton")
esp_f3= Instance.new("TextLabel")
esp_b3 = Instance.new("TextButton")

fruit_f1 = Instance.new("TextLabel")
fruit_b1 = Instance.new("TextButton")
fruit_f2= Instance.new("TextLabel")
fruit_b2 = Instance.new("TextButton")
fruit_f3= Instance.new("TextLabel")
fruit_b3 = Instance.new("TextButton")

se_bar1 = Instance.new("ScrollingFrame")
se_bar2 = Instance.new("ScrollingFrame")
se_bar3 = Instance.new("ScrollingFrame")
se_bar4 = Instance.new("ScrollingFrame")
se_bar5 = Instance.new("ScrollingFrame")
se_f1 = Instance.new("TextLabel")
se_b1 = Instance.new("TextButton")
se_f2= Instance.new("TextLabel")
se_b2 = Instance.new("TextButton")
se_f3= Instance.new("TextLabel")
se_b3 = Instance.new("TextButton")
se_f4= Instance.new("TextLabel")
se_b4 = Instance.new("TextButton")
se_f5= Instance.new("TextLabel")
se_b5 = Instance.new("TextButton")
se_f6= Instance.new("TextLabel")
se_b6 = Instance.new("TextButton")
se_f7= Instance.new("TextLabel")
se_b7 = Instance.new("TextButton")
se_f8= Instance.new("TextLabel")
se_b8 = Instance.new("TextButton")
se_f9= Instance.new("TextLabel")
se_b9= Instance.new("TextButton")
se_f10= Instance.new("TextLabel")
se_b10= Instance.new("TextButton")
se_f11= Instance.new("TextLabel")
se_b11= Instance.new("TextButton")
se_f12= Instance.new("TextLabel")
se_b12= Instance.new("TextButton")
se_f13= Instance.new("TextLabel")
se_b13= Instance.new("TextButton")
se_f14= Instance.new("TextLabel")
se_b14= Instance.new("TextButton")

aim_bar1 = Instance.new("ScrollingFrame")
aim_bar2 = Instance.new("ScrollingFrame")
aim_bar3 = Instance.new("ScrollingFrame")
aim_f1 = Instance.new("TextLabel")
aim_b1 = Instance.new("TextButton")
aim_f2= Instance.new("TextLabel")
aim_b2 = Instance.new("TextButton")
aim_f3= Instance.new("TextLabel")
aim_b3 = Instance.new("TextButton")
aim_f4= Instance.new("TextLabel")
aim_b4 = Instance.new("TextButton")
aim_f5= Instance.new("TextLabel")
aim_b5 = Instance.new("TextButton")
aim_f6= Instance.new("TextLabel")
aim_b6 = Instance.new("TextButton")
aim_f7= Instance.new("TextLabel")
aim_b7 = Instance.new("TextButton")
aim_f8= Instance.new("TextLabel")
aim_b8 = Instance.new("TextButton")
aim_f9= Instance.new("TextLabel")
aim_b9= Instance.new("TextButton")

skillauto_bar1 = Instance.new("ScrollingFrame")
skillauto_f1 = Instance.new("TextLabel")
skillauto_b1 = Instance.new("TextButton")
skillauto_f2 = Instance.new("TextLabel")
skillauto_b2= Instance.new("TextButton")

raid_bar1 = Instance.new("ScrollingFrame")
raid_f1 = Instance.new("TextLabel")
raid_b1 = Instance.new("TextButton")
raid_f2= Instance.new("TextLabel")
raid_b2 = Instance.new("TextButton")
raid_f3= Instance.new("TextLabel")
raid_b3 = Instance.new("TextButton")
raid_f4= Instance.new("TextLabel")
raid_b4 = Instance.new("TextButton")
raid_f5= Instance.new("TextLabel")
raid_b5 = Instance.new("TextButton")
raid_f6= Instance.new("TextLabel")
raid_b6 = Instance.new("TextButton")
raid_f7= Instance.new("TextLabel")
raid_b7= Instance.new("TextButton")

prl_f1 = Instance.new("TextLabel")
prl_b1 = Instance.new("TextButton")
prl_f2= Instance.new("TextLabel")
prl_b2 = Instance.new("TextButton")
prl_f3= Instance.new("TextLabel")
prl_b3 = Instance.new("TextButton")
prl_f4= Instance.new("TextLabel")
prl_b4 = Instance.new("TextButton")
prl_f5= Instance.new("TextLabel")
prl_b5 = Instance.new("TextButton")
prl_f6= Instance.new("TextLabel")
prl_b6 = Instance.new("TextButton")

miss_f1 = Instance.new("TextLabel")
miss_b1 = Instance.new("TextButton")
miss_f2= Instance.new("TextLabel")
miss_b2 = Instance.new("TextButton")
miss_f3= Instance.new("TextLabel")
miss_b3 = Instance.new("TextButton")
miss_f4= Instance.new("TextLabel")
miss_b4 = Instance.new("TextButton")
miss_f5= Instance.new("TextLabel")
miss_b5 = Instance.new("TextButton")
miss_f6= Instance.new("TextLabel")
miss_b6 = Instance.new("TextButton")
miss_f7= Instance.new("TextLabel")
miss_b7 = Instance.new("TextButton")

raidlaw_f1 = Instance.new("TextLabel")
raidlaw_b1 = Instance.new("TextButton")
raidlaw_f2= Instance.new("TextLabel")
raidlaw_b2 = Instance.new("TextButton")
raidlaw_f3= Instance.new("TextLabel")
raidlaw_b3 = Instance.new("TextButton")
raidlaw_f4= Instance.new("TextLabel")
raidlaw_b4 = Instance.new("TextButton")

race_f1 = Instance.new("TextLabel")
race_b1 = Instance.new("TextButton")
race_f2= Instance.new("TextLabel")
race_b2 = Instance.new("TextButton")
race_f3= Instance.new("TextLabel")
race_b3 = Instance.new("TextButton")
race_f4= Instance.new("TextLabel")
race_b4 = Instance.new("TextButton")
race_f5= Instance.new("TextLabel")
race_b5 = Instance.new("TextButton")

teleport_bar1 = Instance.new("ScrollingFrame")
teleport_f1 = Instance.new("TextLabel")
teleport_b1 = Instance.new("TextButton")
teleport_f2= Instance.new("TextLabel")
teleport_b2 = Instance.new("TextButton")
teleport_f3= Instance.new("TextLabel")
teleport_b3 = Instance.new("TextButton")
teleport_f4= Instance.new("TextLabel")
teleport_b4 = Instance.new("TextButton")
teleport_f5= Instance.new("TextLabel")
teleport_b5 = Instance.new("TextButton")
teleport_f6 = Instance.new("TextLabel")
teleport_b6= Instance.new("TextButton")
teleport_f7= Instance.new("TextLabel")
teleport_b7 = Instance.new("TextButton")

server_f1 = Instance.new("TextLabel")
server_b1 = Instance.new("TextButton")
server_f2= Instance.new("TextLabel")
server_b2 = Instance.new("TextButton")
server_f3= Instance.new("TextLabel")
server_b3= Instance.new("TextButton")
server_f4= Instance.new("TextLabel")
server_b4= Instance.new("TextButton")
server_t1=Instance.new("TextBox")

sl_bar=Instance.new("ScrollingFrame")
sl_f1 = Instance.new("TextLabel")
sl_b1= Instance.new("TextButton")

cb_bar1 = Instance.new("ScrollingFrame")
cb_bar2 = Instance.new("ScrollingFrame")

cb_b1 = Instance.new("TextButton")
cb_b2 = Instance.new("TextButton")
cb_b3 = Instance.new("TextButton")
cb_b4 = Instance.new("TextButton")
cb_b5 = Instance.new("TextButton")
cb_b6= Instance.new("TextButton")
cb_b7= Instance.new("TextButton")
cb_b8= Instance.new("TextButton")
cb_b9= Instance.new("TextButton")
cb_b10= Instance.new("TextButton")
cb_b11= Instance.new("TextButton")
cb_b12= Instance.new("TextButton")
cb_b13= Instance.new("TextButton")
cb_b14= Instance.new("TextButton")
cb_b15= Instance.new("TextButton")
cb_b16= Instance.new("TextButton")
cb_b17= Instance.new("TextButton")
cb_b18= Instance.new("TextButton")
cb_b19= Instance.new("TextButton")
cb_b20= Instance.new("TextButton")
cb_b21= Instance.new("TextButton")
cb_b22= Instance.new("TextButton")
cb_b23= Instance.new("TextButton")
cb_b24= Instance.new("TextButton")

cb_f1= Instance.new("TextLabel")
cb_f2= Instance.new("TextLabel")
cb_f3= Instance.new("TextLabel")
cb_f4= Instance.new("TextLabel")
cb_f5= Instance.new("TextLabel")
cb_f6= Instance.new("TextLabel")
cb_f7= Instance.new("TextLabel")
cb_f8= Instance.new("TextLabel")
cb_f9= Instance.new("TextLabel")
cb_f10= Instance.new("TextLabel")
cb_f11= Instance.new("TextLabel")
cb_f12= Instance.new("TextLabel")
cb_f13= Instance.new("TextLabel")
cb_f14= Instance.new("TextLabel")
cb_f15= Instance.new("TextLabel")
cb_f16= Instance.new("TextLabel")
cb_f17= Instance.new("TextLabel")
cb_f18= Instance.new("TextLabel")
cb_f19= Instance.new("TextLabel")
cb_f20= Instance.new("TextLabel")
cb_f21= Instance.new("TextLabel")
cb_f22= Instance.new("TextLabel")
cb_f23= Instance.new("TextLabel")
cb_f24= Instance.new("TextLabel")

--[[Libary]]

function _G._(name1)    
if name1=="fake" then
return false
else
return _G.Setting[name1][1]
end end 

function _G.__(name1,name2)
 _G.Setting[name1][1]=name2
 SaveSettings()
end

_=_G._
__=_G.__

function make_screengui(name1)
name1.Name = "name1"
name1.Parent = game.CoreGui
name1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
end

function make_select3(name1, name2, name3, parent, text, position,save)
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
name1.Position = position
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Font = Enum.Font.Ubuntu
name1.Text = ""
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left
local c1=Instance.new("UICorner") c1.CornerRadius=UDim.new(0,8) c1.Parent=name1

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(220, 200, 255)
name2.Size = UDim2.new(0, 180, 0, 30)
name2.BorderColor3 = Color3.fromRGB(150, 100, 220)
name2.Font = Enum.Font.SourceSans
name2.Text = text
name2.TextColor3 = Color3.fromRGB(50, 10, 80)
name2.TextSize = 18.000
name2.TextXAlignment = Enum.TextXAlignment.Left
local c2=Instance.new("UICorner") c2.CornerRadius=UDim.new(0,8) c2.Parent=name2

name3.Name = "name3"
name3.Parent = name1
name3.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name3.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
name3.Size = UDim2.new(0, 20, 0, 20)
name3.BorderColor3 = Color3.fromRGB(150, 100, 220)
name3.Font = Enum.Font.SourceSans
name3.TextColor3 = Color3.fromRGB(255, 255, 255)
name3.TextSize = 30.000
local c3=Instance.new("UICorner") c3.CornerRadius=UDim.new(0,6) c3.Parent=name3
if _(save) then
name3.Text = "X"
else
name3.Text = ""
end end

function _G.ntt_autopos(x)
local p=0.001
local t={0.001}
for i=1,99 do
table.insert(t,p+x*i)
end
return t
end

_G.ntt_mainscrollingframe={}
function make_mainscrollingframe(name1, parent, X, pos)
table.insert(_G.ntt_mainscrollingframe,name1)
name1.Name = "name1"
name1.Parent = main
name1.Active = true
name1.BackgroundColor3 = Color3.fromRGB(235, 220, 255)
name1.BackgroundTransparency = 0
name1.BorderSizePixel = 0
name1.Size = UDim2.new(0, 498, 0, 230)
name1.ScrollBarThickness = 0
name1.Position = UDim2.new(0.205, 0, 0.13285722, 0)
name1.Visible = X

local c=Instance.new("UICorner") 
c.CornerRadius=UDim.new(0,10) 
c.Parent=name1

local stroke=Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(150, 100, 220)
stroke.Thickness = 1
stroke.Parent=name1

if pos~= nil then
local t=_G.ntt_autopos(pos)
spawn(function()
while task.wait() do                  
pcall(function()
local children = {}
for _, v in ipairs(name1:GetChildren()) do
    if v:IsA("GuiObject") then
        table.insert(children, v)
    end
end
for i=1,#children do
children[i].Position=UDim2.new(0, 0, t[i], 0)
end end) end end)
end
end

function make_textlabel(parent,text, position)
local name1 = Instance.new("TextLabel")
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(150, 100, 220)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Font = Enum.Font.SourceSansBold
name1.Text = text
name1.TextColor3 = Color3.fromRGB(250,250,250)
name1.TextSize = 18.000
name1.TextWrapped = true
local c=Instance.new("UICorner") c.CornerRadius=UDim.new(0,8) c.Parent=name1
end

function make_mainbutton(name1, parent, text)
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(220, 200, 255)
name1.Position = UDim2.new(0, 0, 0, 0)
name1.Size = UDim2.new(0, 120, 0, 30)
name1.Font = Enum.Font.Ubuntu
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Text =" "..text
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = false
name1.TextXAlignment = Enum.TextXAlignment.Left
--local c=Instance.new("UICorner") c.CornerRadius=UDim.new(0,8) c.Parent=name1
end

function make_together(name1, name2, parent, text, position,save)
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Font = Enum.Font.Ubuntu
name1.Text = " "..text
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left
local c1=Instance.new("UICorner") c1.CornerRadius=UDim.new(0,8) c1.Parent=name1

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name2.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
name2.Size = UDim2.new(0, 20, 0, 20)
name2.BorderColor3 = Color3.fromRGB(150, 100, 220)
name2.Font = Enum.Font.GothamBold
name2.Text = ""
name2.TextColor3 = Color3.fromRGB(255, 255, 255)
name2.TextSize = 14.000
name2.TextScaled = true       -- chữ X tự scale vừa ô
name2.ClipsDescendants = true -- không dư ra ngoài
local c2=Instance.new("UICorner") c2.CornerRadius=UDim.new(0,6) c2.Parent=name2
if _(save) then
name2.Text = "X"
end end

function make_select2(name1, name2, name3, parent, text, position,save)
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Font = Enum.Font.Ubuntu
name1.Text = ""
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left
local c1=Instance.new("UICorner") c1.CornerRadius=UDim.new(0,8) c1.Parent=name1

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(220, 200, 255)
name2.Size = UDim2.new(0, 350, 0, 30)
name2.BorderColor3 = Color3.fromRGB(150, 100, 220)
name2.Font = Enum.Font.SourceSans
name2.Text = " "..text
name2.TextColor3 = Color3.fromRGB(50, 10, 80)
name2.TextSize = 18.000
name2.TextXAlignment = Enum.TextXAlignment.Left
local c2=Instance.new("UICorner") c2.CornerRadius=UDim.new(0,8) c2.Parent=name2

local name4=Instance.new("TextLabel")
name4.Name = "name4"
name4.Parent = name2
name4.Size = UDim2.new(0, 30, 0, 30)
name4.Font = Enum.Font.SourceSans
name4.Text = "💠"
name4.TextColor3 = Color3.fromRGB(255, 255, 255)
name4.TextSize = 22
name4.BackgroundTransparency = 1
name4.AnchorPoint = Vector2.new(1, 0)
name4.Position = UDim2.new(1, 0, 0, 0)

name2.MouseButton1Click:Connect(function()
    spinIcon(name4)
end)

name3.Name = "name3"
name3.Parent = name1
name3.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name3.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
name3.Size = UDim2.new(0, 20, 0, 20)
name3.BorderColor3 = Color3.fromRGB(150, 100, 220)
name3.Font = Enum.Font.SourceSans
name3.TextColor3 = Color3.fromRGB(255, 255, 255)
name3.TextSize = 30.000
local c3=Instance.new("UICorner") c3.CornerRadius=UDim.new(0,6) c3.Parent=name3
if _(save) then
name3.Text = "X"
else
name3.Text = ""
end end

function make_auto_selectbutton(name3,parent,gettable,text_1,position,save)
for i=1, #gettable do
if i==1 then
make_selectbutton(name3, parent, gettable[i], text_1.." : "..gettable[i], UDim2.new(0, 0, 0, 0),save)
elseif i>=2 then
make_selectbutton(name3, parent, gettable[i], text_1.." : "..gettable[i], UDim2.new(0, 0, position*(i-1), 0),save)
end end end

function make_selectbutton(name3, parent, text1, text2, position,save)
name1 = Instance.new("TextLabel")
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
name1.Position = position
name1.Size = UDim2.new(0, 230, 0, 20)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Font = Enum.Font.Ubuntu
name1.Text = text1
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left
local c1=Instance.new("UICorner") c1.CornerRadius=UDim.new(0,6) c1.Parent=name1

name2 = Instance.new("TextButton")
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name2.Position = UDim2.new(0.718000, 0, 0, 0)
name2.Size = UDim2.new(0, 65, 0, 20)
name2.BorderColor3 = Color3.fromRGB(150, 100, 220)
name2.Font = Enum.Font.SourceSans
name2.Text = "Button"
name2.TextColor3 = Color3.fromRGB(255, 255, 255)
name2.TextSize = 14.000
local c2=Instance.new("UICorner") c2.CornerRadius=UDim.new(0,6) c2.Parent=name2
name2.MouseButton1Down:connect(function()
name3.Text = " "..text2
parent.Visible = false
__(save,name3.Text)
end) end

_G.ntt_farmain_table={}
function _G.ntt_frame(x)
if x.Visible then
for i=1,#_G.ntt_farmain_table do
_G.ntt_farmain_table[i].Visible=false
end 
else
for i=1,#_G.ntt_farmain_table do
_G.ntt_farmain_table[i].Visible=false
end 
x.Visible=true
end end

ntt_sframe = Instance.new("TextButton") 
ntt_sframe.Name = "ntt_sframe"
ntt_sframe.Parent = main
ntt_sframe.Active = true
ntt_sframe.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
ntt_sframe.BackgroundTransparency = 1
ntt_sframe.BorderColor3 = Color3.fromRGB(150, 100, 220)
ntt_sframe.Position = UDim2.new(0.60,0,0.10,0)
ntt_sframe.Size = UDim2.new(0,250,0,245)
ntt_sframe.ZIndex = 2
ntt_sframe.Text=""

spawn(function()    
while wait() do
pcall(function()       
ntt_sframe.Visible=false
for i=1,#_G.ntt_farmain_table do
if _G.ntt_farmain_table[i].Visible then
ntt_sframe.Visible=true
end end end) end end)

function make_selectscrollingframe(name1, parent)
table.insert(_G.ntt_farmain_table,name1)
name1.Name = "name1"
name1.Parent = parent
name1.Active = true
name1.BackgroundColor3 = Color3.fromRGB(235, 220, 255)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Position = UDim2.new(0.60, 0, 0.10, 0)
name1.Size = UDim2.new(0, 250, 0, 245)
name1.BorderSizePixel = 1
name1.ZIndex=3
name1.Visible = false
name1.Draggable = false
local c=Instance.new("UICorner") c.CornerRadius=UDim.new(0,10) c.Parent=name1
end

function make_mainframe(name1, name2, name3, parent, text)
name1.Name = "name1"
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
name1.Position = UDim2.new(0.180126051, 0, 0.228999169, 0)
name1.Size = UDim2.new(0, 640, 0, 280)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Active = true
name1.Draggable = false
name1.Visible = false

name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name2.BackgroundTransparency = 0
name2.Position = UDim2.new(0, 0, 0, 0)
name2.Size = UDim2.new(0, 640, 0, 26)
name2.Font = Enum.Font.SourceSansBold
name2.Text = " "..text
name2.TextColor3 = Color3.fromRGB(255, 255, 255)
name2.TextSize = 18.000
name2.TextWrapped = true
name2.TextXAlignment = Enum.TextXAlignment.Left
name2.BorderColor3 = Color3.fromRGB(150, 100, 220)

name3.Name = "name3"
name3.Parent = name1
name3.Active = true
name3.BackgroundColor3 = Color3.fromRGB(220, 200, 255)
name3.Size = UDim2.new(0, 120, 0, 250)
name3.ScrollBarThickness = 0
name3.BorderColor3 = Color3.fromRGB(150, 100, 220)
name3.Position = UDim2.new(0, 0, 0.102285722, 0)

local UIS = game:GetService("UserInputService")
local dragging = false
local dragStart
local startPos

name2.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 
	or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = name1.Position
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement 
	or input.UserInputType == Enum.UserInputType.Touch) then
		local delta = input.Position - dragStart
		name1.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 
	or input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)

local posbar={0}
for i=1,100 do
table.insert(posbar,tonumber(posbar[i])+0.06)
end

spawn(function()    
while task.wait() do       
pcall(function()
if #name3:GetChildren() > 0 then
local children = {}
for _, v in ipairs(name3:GetChildren()) do
    if v:IsA("GuiObject") and not v:IsA("UICorner") then
        table.insert(children, v)
    end
end
for i=1,#children do
children[i].Position = UDim2.new(0, 0, posbar[i], 0)
end end end) end end)
end

function make_select1(name1, name2, parent, text, position)
name1.Parent = parent 
name1.BackgroundColor3 = Color3.fromRGB(235, 220, 255)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.Font = Enum.Font.Ubuntu
name1.BackgroundTransparency = 1
name1.Text = ""
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(220, 200, 255)
name2.Size = UDim2.new(0, 350, 0, 30)
name2.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.BorderSizePixel = 1
name2.Font = Enum.Font.SourceSans
name2.Text = " "..text
name2.TextColor3 = Color3.fromRGB(50, 10, 80)
name2.TextSize = 18.000
name2.TextXAlignment = Enum.TextXAlignment.Left
local c=Instance.new("UICorner") c.CornerRadius=UDim.new(0,8) c.Parent=name2

local name3=Instance.new("TextLabel")
name3.Name = "name3"
name3.Parent = name2
name3.Size = UDim2.new(0, 30, 0, 30)
name3.Font = Enum.Font.SourceSans
name3.Text = "💠"
name3.TextColor3 = Color3.fromRGB(130, 80, 200)
name3.TextSize = 22
name3.BackgroundTransparency = 1
name3.AnchorPoint = Vector2.new(1, 0)
name3.Position = UDim2.new(1, 0, 0, 0)

name2.MouseButton1Click:Connect(function()
    spinIcon(name3)
end)
end

function make_buttonnumber(name1,name2,name3,text1,text2,pos1,pos2)
name1.Parent = name3
name1.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
name1.Position = UDim2.new(0, 0, pos1, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Font = Enum.Font.Ubuntu
name1.Text = text1
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left
local c1=Instance.new("UICorner") c1.CornerRadius=UDim.new(0,8) c1.Parent=name1

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name2.Position = UDim2.new(pos2, 0, 0, 0)
name2.Size = UDim2.new(0, 30, 0, 30)
name2.Font = Enum.Font.Ubuntu
name2.BackgroundTransparency = 1.000
name2.Text = text2
name2.TextColor3 = Color3.fromRGB(50, 10, 80)
name2.TextSize = 14.000
end

function make_button(name1, name2, parent, text, position)
name1.Name="button"
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Font = Enum.Font.Ubuntu
name1.Text = text
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left
local c1=Instance.new("UICorner") c1.CornerRadius=UDim.new(0,8) c1.Parent=name1

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name2.Position = UDim2.new(0.8250000, 0, 0.050000000, 0)
name2.Size = UDim2.new(0, 80, 0, 25)
name2.BorderColor3 = Color3.fromRGB(150, 100, 220)
name2.Font = Enum.Font.SourceSans
name2.Text = "Button"
name2.TextColor3 = Color3.fromRGB(255, 255, 255)
name2.TextSize = 16.000
local c2=Instance.new("UICorner") c2.CornerRadius=UDim.new(0,8) c2.Parent=name2
end

function make_textbox(name1, parent, text, position)
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(250, 245, 255)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Font = Enum.Font.Ubuntu
name1.Text = text
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left
local c=Instance.new("UICorner") c.CornerRadius=UDim.new(0,8) c.Parent=name1
end

function make_selectbutton_v2(parent, text1, position,save)
local name1 = Instance.new("TextLabel")
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
name1.Position = position
name1.Size = UDim2.new(0, 230, 0, 20)
name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
name1.Font = Enum.Font.Ubuntu
name1.Text = text1
name1.TextColor3 = Color3.fromRGB(50, 10, 80)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left
local c1=Instance.new("UICorner") c1.CornerRadius=UDim.new(0,6) c1.Parent=name1

local name2 = Instance.new("TextButton")
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name2.Position = UDim2.new(0.71800000, 0, 0, 0)
name2.Size = UDim2.new(0, 65, 0, 20)
name2.BorderColor3 = Color3.fromRGB(150, 100, 220)
name2.Font = Enum.Font.SourceSans
name2.Text = "On"
name2.TextColor3 = Color3.fromRGB(255, 255, 255)
name2.TextSize = 14.000
local c2=Instance.new("UICorner") c2.CornerRadius=UDim.new(0,6) c2.Parent=name2

if save[name1.Text] == false then
name2.Text = "Off"
name2.BackgroundColor3 = Color3.fromRGB(220, 200, 255)
name2.TextColor3 = Color3.fromRGB(50, 10, 80)
end

name2.MouseButton1Down:connect(function()
if save[name1.Text] then
name2.Text = "Off"
save[name1.Text]=false
name2.BackgroundColor3 = Color3.fromRGB(220, 200, 255)
name2.TextColor3 = Color3.fromRGB(50, 10, 80)
else
name2.Text = "On"
save[name1.Text]=true
name2.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name2.TextColor3 = Color3.fromRGB(255, 255, 255)
end 
SaveSettings()
end) 

if save[name1.Text] then
name2.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
name2.TextColor3 = Color3.fromRGB(255, 255, 255)
else
name2.BackgroundColor3 = Color3.fromRGB(220, 200, 255)
name2.TextColor3 = Color3.fromRGB(50, 10, 80)
end end

function make_auto_selectbutton_v2(parent,gettable, position,save)
loadstring("name1="..#gettable)()
for i=1, name1 do
if i==1 then
make_selectbutton_v2(parent, gettable[i], UDim2.new(0, 0, 0, 0),save)
elseif i>=2 then
make_selectbutton_v2(parent, gettable[i], UDim2.new(0, 0, position*(i-1), 0),save)
end end end

function make_slider_value(parent, text, min, max, pos, save)
if _(save) > max then
__(save,max)
end

local name1 = Instance.new("TextLabel", parent)
    name1.BackgroundColor3 = Color3.fromRGB(240, 230, 255)
    name1.Position = UDim2.new(0, 0, pos, 0)
    name1.Size = UDim2.new(0, 498, 0, 30)
    name1.BorderColor3 = Color3.fromRGB(150, 100, 220)
    name1.Font = Enum.Font.Ubuntu
    name1.Text = ""
    name1.TextColor3 = Color3.fromRGB(50, 10, 80)
    name1.TextSize = 14
    name1.TextWrapped = true
    name1.TextXAlignment = Enum.TextXAlignment.Left
local c=Instance.new("UICorner") c.CornerRadius=UDim.new(0,8) c.Parent=name1

    local Bar = Instance.new("Frame", name1)
    Bar.AnchorPoint = Vector2.new(0.5, 0.5)
    Bar.Position = UDim2.new(0.27, 0, 0.5, 0)
    Bar.Size = UDim2.new(0.5, 0, 0, 6)
    Bar.BackgroundColor3 = Color3.fromRGB(200, 180, 240)
    Bar.BorderSizePixel = 0
    Bar.Name = "Bar"
local cb=Instance.new("UICorner") cb.CornerRadius=UDim.new(1,0) cb.Parent=Bar

    local Fill = Instance.new("Frame", Bar)
    Fill.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
    Fill.BorderSizePixel = 0
    Fill.Size = UDim2.new(0, 0, 1, 0)
    Fill.Name = "Fill"
local cf=Instance.new("UICorner") cf.CornerRadius=UDim.new(1,0) cf.Parent=Fill

    local Knob = Instance.new("Frame", Bar)
    Knob.Size = UDim2.new(0, 14, 0, 14)
    Knob.AnchorPoint = Vector2.new(0.5, 0.5)
    Knob.Position = UDim2.new(0, 0, 0.5, 0)
    Knob.BackgroundColor3 = Color3.fromRGB(180, 130, 230)
    Knob.BorderSizePixel = 0
    Knob.Name = "Knob"
local ck=Instance.new("UICorner") ck.CornerRadius=UDim.new(1,0) ck.Parent=Knob

    local ValueLabel = Instance.new("TextLabel", name1)
    ValueLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    ValueLabel.Position = UDim2.new(0.85, 0, 0.5, 0)
    ValueLabel.BackgroundTransparency = 1
    ValueLabel.TextColor3 = Color3.fromRGB(50, 10, 80)
    ValueLabel.TextScaled = true
    ValueLabel.Font = Enum.Font.Ubuntu
    ValueLabel.TextXAlignment = Enum.TextXAlignment.Left
    ValueLabel.Size = UDim2.new(0.6, 0, 0.5, 0)

    local UserInputService = game:GetService("UserInputService")
    local dragging = false

    local function updateSlider(inputX)
        local barPos = Bar.AbsolutePosition.X
        local barSize = Bar.AbsoluteSize.X
        local relativePos = math.clamp(inputX - barPos, 0, barSize)
        local percent = relativePos / barSize
        local value = math.floor(min + percent * (max - min))
        __(save,value)
        Fill.Size = UDim2.new(percent, 0, 1, 0)
        Knob.Position = UDim2.new(percent, 0, 0.5, 0)
        ValueLabel.Text = text .. " : " .. tonumber(value)
    end

    Knob.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateSlider(input.Position.X)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)

    local initPercent = (_(save) - min) / (max - min)
    Fill.Size = UDim2.new(initPercent, 0, 1, 0)
    Knob.Position = UDim2.new(initPercent, 0, 0.5, 0)
    ValueLabel.Text = text .. " : " .. tostring(_(save))
end

function make_onof_old(name1, parent)
local onof = Instance.new("TextButton") 
local uionof = Instance.new("UICorner")
uionof.CornerRadius = UDim.new(0,12)
onof.Parent = parent
onof.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
onof.Position = UDim2.new(0.15162201, 0, 0.273285708, 0)
onof.Size = UDim2.new(0, 50, 0, 50)
onof.Font = Enum.Font.ArialBold
onof.Text = "Open"
onof.TextColor3 = Color3.fromRGB(255, 255, 255)
onof.TextSize = 20.000
onof.BorderColor3 = Color3.fromRGB(150, 100, 220)
onof.Active = true
onof.Draggable = true
uionof.Parent = onof
onof.MouseButton1Down:connect(function()
if name1.Visible then 
onof.Text = "Open"
name1.Visible = false
else
onof.Text = "Close"
name1.Visible = true
end end) end

function make_onof(name1, parent)
local onof = Instance.new("ImageButton") 
local uionof = Instance.new("UICorner")
uionof.CornerRadius = UDim.new(0,12)
onof.Parent = parent
onof.BackgroundColor3 = Color3.fromRGB(130, 80, 200)
onof.Position = UDim2.new(0.15162201, 0, 0.273285708, 0)
onof.Size = UDim2.new(0, 50, 0, 50)
onof.Image = "rbxassetid://88025466559424"
onof.BorderColor3 = Color3.fromRGB(150, 100, 220)
onof.BackgroundTransparency = 0
onof.Active = true
onof.Draggable = true
uionof.Parent = onof
onof.MouseButton1Click:Connect(function()
	if name1.Visible then
		name1.Visible = false
	else
		name1.Visible = true
	end
end) end

-------------------------------------

function sea1()
if game.PlaceId == 2753915549 or game.PlaceId==85211729168715 then
return true
end end

function sea2()
if game.PlaceId == 4442272183 or game.PlaceId==79091703265657 then
return true
end end

function sea3()
if game.PlaceId == 7449423635 or game.PlaceId==100117331123089 then
return true
end end

make_screengui(NTTGUI)
make_mainframe(main, TextLabel, bar1, NTTGUI,  ("NTT HUB | Main | ".._G.linkdis))
make_onof(main, NTTGUI)

sea.Name = "sea"
sea.Parent = main
sea.BackgroundTransparency = 1.000
sea.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
sea.BorderSizePixel = 0
sea.Position = UDim2.new(0.85000000, 0, 0, 0)
sea.Size = UDim2.new(0, 90, 0, 26)
sea.Font = Enum.Font.Ubuntu
sea.TextColor3 = Color3.fromRGB(255, 255, 255)
sea.TextSize = 14.000
sea.Text="Blox Fruit"

make_mainscrollingframe(b_page1, main, true,0.017)
b_page1.CanvasSize=UDim2.new(0,0,0,2000)
make_mainscrollingframe(b_page2, main, false,0.06)
make_mainscrollingframe(b_page3, main, false,0.06)
make_mainscrollingframe(b_page4, main, false,0.06)
make_mainscrollingframe(b_page5, main, false,0.06)
make_mainscrollingframe(b_page6, main, false,0.06)
make_mainscrollingframe(b_page7, main, false,0.017)
b_page7.CanvasSize=UDim2.new(0,0,0,2000)
make_mainscrollingframe(b_page8, main, false,0.06)
make_mainscrollingframe(b_page9, main, false,0.06)
make_mainscrollingframe(b_page10, main, false,0.06)
make_mainscrollingframe(b_page11, main, false,0.06)
make_mainscrollingframe(b_page12, main, false,0.06)
make_mainscrollingframe(b_page13, main, false,0.06)
make_mainscrollingframe(b_page14, main, false,0.06)
make_mainscrollingframe(b_page15, main, false,0.017)
b_page15.CanvasSize=UDim2.new(0,0,0,2000)

make_mainbutton(b_1, bar1, "Main", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_2, bar1, "Chest", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_3, bar1, "Shop", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_4, bar1, "Boss", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_5, bar1, "Item", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_6, bar1, "Esp/Fruit", UDim2.new(0, 0, 0.000000000, 0))
if sea2() or sea3() then
make_mainbutton(b_7, bar1, "Sea Event", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_11, bar1, "Race", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_10, bar1, "Raid", UDim2.new(0, 0, 0.000000000, 0))
end
make_mainbutton(b_8, bar1, "AimBot", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_15, bar1, "Aimbot V2", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_9, bar1, "Player/Miss", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_12, bar1, "Server Live", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_13, bar1, "Server", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_14, bar1, "Teleport", UDim2.new(0, 0, 0.000000000, 0))

posbar={0}
for i=1,100 do
table.insert(posbar,tonumber(posbar[i])+0.05)
end

spawn(function()    
while task.wait() do       
pcall(function()
if #bar1:GetChildren() > 0 then
for i=1,#bar1:GetChildren() do
bar1:GetChildren()[i].Position = UDim2.new(0, 0, posbar[i], 0)
end end end) end end)

if not game.Workspace:FindFirstChild("p_ntt") then
local part = Instance.new("Part") 
part.Name = "p_ntt"
part.Parent = game.Workspace
part.Size = Vector3.new(5,5,5) 
part.Position = Vector3.new(0, 10, 0)
part.Anchored = true
part.CanCollide=false
part.Transparency = 1
end

function TP1(P1)
if (game.Workspace.p_ntt.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 201 then
local tween =  game:GetService("TweenService"):Create(game.Workspace.p_ntt, TweenInfo.new(0), {CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame }) tween:Play()      
else
local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude                           
if Distance >= 300 then
Speed = 150                                     
elseif Distance < 300 then
Speed = 500
elseif Distance < 100 then
Speed = 9999999
end

if game.Workspace.p_ntt.CFrame.Y < -2 then
game.Workspace.p_ntt.CFrame=CFrame.new(game.Workspace.p_ntt.CFrame.X,game.Workspace.p_ntt.CFrame.Y+5,game.Workspace.p_ntt.CFrame.Z)
end

local tween =  game:GetService("TweenService"):Create(game.Workspace.p_ntt, TweenInfo.new(Distance/Speed), {CFrame = P1 }) tween:Play()      
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.p_ntt.CFrame              
end end
function TP2(P1)          
local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude                 
Speed = 9999999                  
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance/Speed), {CFrame = P1 }) tween:Play()                                    
end

function tabletrue(x1,x2) -- 1=true,2=all
local l={}
for name, state in pairs(x1) do
if x2 == 1 then
if state then
table.insert(l,name)
end
elseif x2 == 2 then
table.insert(l,name)
end end
return l
end

function mele()
tool("Melee")
end
function sword()
tool("Sword")
end
function fruit()
tool("Blox Fruit")
end
function gun()
tool("Gun")
end

function skill_(a,b)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName=="Tool" then
nametool=v.Name
local args = {
    [1] = b
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild(nametool).RemoteEvent:FireServer(unpack(args))

for i=1,#game.Players.LocalPlayer.Character.Humanoid:GetChildren() do
if game.Players.LocalPlayer.Character.Humanoid:GetChildren()[i].ClassName=="RemoteFunction" then
game.Players.LocalPlayer.Character.Humanoid:GetChildren()[i]:InvokeServer(a,b)
end end

local args = {
    [1] = b
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild(nametool).RemoteEvent:FireServer(unpack(args))
end end end 

function skill(pos) 
if (pos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <300 then
for name, state in pairs(_G.Setting.skill) do
if state then
skill_(name,pos)
end end end end

function skillfarm(pos) 
for name, state in pairs(_G.Setting.skill) do
if state then
skill_(name,pos)
end end end

function skillmastery(pos) 
for name, state in pairs(_G.Setting.skillfruit) do
if state then
skill_(name,pos)
end end end

function skillauto(pos) 
for name, state in pairs(_G.Setting.skillauto) do
if state then
skill_(name,pos)
end end end
    
function hop()
loadstring([[
local PlaceID = game.PlaceId
          local AllIDs = {}
          local foundAnything = ""
          local actualHour = os.date("!*t").hour
          local Deleted = false
          function TPReturner()
              local Site;
              if foundAnything == "" then
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
              else
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
              end
              local ID = ""
              if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                  foundAnything = Site.nextPageCursor
              end
              local num = 0;
              for i,v in pairs(Site.data) do
                  local Possible = true
                  ID = tostring(v.id)
                  if tonumber(v.maxPlayers) > tonumber(v.playing) then
                      for _,Existing in pairs(AllIDs) do
                          if num ~= 0 then
                              if ID == tostring(Existing) then
                                  Possible = false
                              end
                          else
                              if tonumber(actualHour) ~= tonumber(Existing) then
                                  local delFile = pcall(function()
                                      -- delfile("NotSameServers.json")
                                      AllIDs = {}
                                      table.insert(AllIDs, actualHour)
                                  end)
                              end
                          end
                          num = num + 1
                      end
                      if Possible == true then
                          table.insert(AllIDs, ID)
                          wait()
                          pcall(function()
                              -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                              wait()
                              game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", ID)
                          end)
                          wait(4)
                      end
                  end
              end
          end

          function Teleport()
              while wait() do
                  pcall(function()
                      TPReturner()
                      if foundAnything ~= "" then
                          TPReturner()
                      end
                  end)
              end
          end
          Teleport()
]])()
end


function CheckQuest()
--[[
1: namemob
2: namequest
3: levelquest
4: cframequest
5: cframemob
]]
local lv = game.Players.LocalPlayer.Data.Level.Value
local function mlv(a,b)
    return lv == a or lv <= b
end
local function mgv(a,b)
    return lv == a or lv >= b
end
if sea1() then 
if mlv(1,9) then 
return {
"Bandit",
"BanditQuest1",1,
CFrame.new(1062, 17, 1548),
CFrame.new(1039, 80, 1592)
}
elseif mlv(10,14) then 
return {
"Monkey",
"JungleQuest",1,
CFrame.new(-1600, 37, 157),
CFrame.new(-1776, 75, 48)
}
elseif mlv(15,29) then 
return {
"Gorilla",
"JungleQuest",2,
CFrame.new(-1600, 37, 157),
CFrame.new(-1321, 82, -457)
}
elseif mlv(30,39) then 
return {
"Pirate",
"BuggyQuest1",1,
CFrame.new(-1140, 5, 3829),
CFrame.new(-1148, 59, 3996)
}
elseif mlv(40,59) then 
return {
"Brute",
"BuggyQuest1",2,
CFrame.new(-1140, 5, 3829),
CFrame.new(-1134, 94, 4318)
}
elseif mlv(60,74) then 
return {
"Desert Bandit",
"DesertQuest",1,
CFrame.new(897, 6, 4389),
CFrame.new(1054, 53, 4490)
}
elseif mlv(75,89) then 
return {
"Desert Officer",
"DesertQuest",2,
CFrame.new(897, 6, 4389),
CFrame.new(1561, 15, 4274)
}
elseif mlv(90,99) then 
return {
"Snow Bandit",
"SnowQuest",1,
CFrame.new(1388, 87, -1298),
CFrame.new(1420, 120, -1414)
}
elseif mlv(100,119) then 
return {
"Snowman",
"SnowQuest",2,
CFrame.new(1388, 87, -1298),
CFrame.new(1220, 138, -1489)
}
elseif mlv(120,149) then 
return {
"Chief Petty Officer",
"MarineQuest2",1,
CFrame.new(-5038, 29, 4324),
CFrame.new(-4761, 75, 4461)
}
elseif mlv(150,174) then 
return {
"Sky Bandit",
"SkyQuest",1,
CFrame.new(-4840, 718, -2621),
CFrame.new(-4954, 365, -2911)
}
elseif mlv(175,189) then 
return {
"Dark Master",
"SkyQuest",2,
CFrame.new(-4840, 718, -2621),
CFrame.new(-5181, 448, -2173)
}
elseif mlv(190,209) then 
return {
"Prisoner",
"PrisonerQuest",1,
CFrame.new(5307, 2, 473),
CFrame.new(5246, 73, 356)
}
elseif mlv(210,249) then 
return {
"Dangerous Prisoner",
"PrisonerQuest",2,
CFrame.new(5307, 2, 473),
CFrame.new(5665, 73, 664)
}
elseif mlv(250,299) then 
return {
"Toga Warrior",
"ColosseumQuest",1,
CFrame.new(-1579, 7, -2985),
CFrame.new(-1780, 45, -2735)
}
elseif mlv(300,324) then 
return {
"Military Soldier",
"MagmaQuest",1,
CFrame.new(-5315, 12, 8517),
CFrame.new(-5615, 59, 8446)
}
elseif mlv(325,449) then 
return {
"Military Spy",
"MagmaQuest",2,
CFrame.new(-5315, 12, 8517),
CFrame.new(-5729, 116, 8623)
}
elseif mlv(450,474) then 
return {
"God's Guard",
"SkyExp1Quest",1,
CFrame.new(-4723, 845, -1952),
CFrame.new(-4628, 867, -1939)
}
elseif mlv(475,524) then 
return {
"Shanda",
"SkyExp1Quest",2,
CFrame.new(-7861, 5546, -380),
CFrame.new(-7686, 5601, -441)
}
elseif mlv(525,549) then 
return {
"Royal Squad",
"SkyExp2Quest",1,
CFrame.new(-7905, 5636, -1412),
CFrame.new(-7635, 5637, -1411)
}
elseif mlv(550,624) then 
return {
"Royal Soldier",
"SkyExp2Quest",2,
CFrame.new(-7905, 5636, -1412),
CFrame.new(-7838, 5681, -1791)
}
elseif mlv(625,649) then 
return {
"Galley Pirate",
"FountainQuest",1,
CFrame.new(5258, 39, 4049),
CFrame.new(5560, 152, 4002)
}
elseif mgv(650,675) then 
return {
"Galley Captain",
"FountainQuest",2,
CFrame.new(5258, 39, 4049),
CFrame.new(5528, 90, 4856)
}
end end
if sea2() then 
if mlv(700,724) then 
return {
"Raider",
"Area1Quest",1,
CFrame.new(-428, 73, 1836),
CFrame.new(-477, 100, 2325)
}
elseif mlv(725,774) then 
return {
"Mercenary",
"Area1Quest",2,
CFrame.new(-428, 73, 1836),
CFrame.new(-857, 136, 1488)
}
elseif mlv(775,874) then 
return {
"Swan Pirate",
"Area2Quest",1,
CFrame.new(636, 73, 918),
CFrame.new(931, 152, 1192)
}
elseif mlv(875,899) then 
return {
"Marine Lieutenant",
"MarineQuest3",1,
CFrame.new(-2441, 73, -3218),
CFrame.new(-2922, 153, -3089)
}
elseif mlv(900,949) then 
return {
"Marine Captain",
"MarineQuest3",2,
CFrame.new(-2441, 73, -3218),
CFrame.new(-2007, 120, -3204)
}
elseif mlv(950,974) then 
return {
"Zombie",
"ZombieQuest",1,
CFrame.new(-5495, 49, -795),
CFrame.new(-5727, 126, -728)
}
elseif mlv(975,999) then 
return {
"Vampire",
"ZombieQuest",2,
CFrame.new(-5495, 49, -795),
CFrame.new(-5922, 42, -1085)
}
elseif mlv(1000,1049) then 
return {
"Snow Trooper",
"SnowMountainQuest",1,
CFrame.new(607, 402, -5373),
CFrame.new(539, 428, -5546)
}
elseif mlv(1050,1099) then 
return {
"Winter Warrior",
"SnowMountainQuest",2,
CFrame.new(607, 402, -5373),
CFrame.new(1397, 466, -5203)
}
elseif mlv(1100,1124) then 
return {
"Lab Subordinate",
"IceSideQuest",1,
CFrame.new(-6228,81,-4854),
CFrame.new(-5940,175,-4357)
}
elseif mlv(1125,1174) then 
return {
"Horned Warrior",
"IceSideQuest",2,
CFrame.new(-6228,81,-4854),
CFrame.new(-6273,85,-6088)
}
elseif mlv(1175,1199) then 
return {
"Magma Ninja",
"FireSideQuest",1,
CFrame.new(-5402,29,-5372),
CFrame.new(-5736,178,-5731)
}
elseif mlv(1200,1249) then 
return {
"Lava Pirate",
"FireSideQuest",2,
CFrame.new(-5402,29,-5372),
CFrame.new(-5036,86,-5009)
}
elseif mlv(1250,1274) then 
return {
"Ship Deckhand",
"ShipQuest1",1,
CFrame.new(1039, 125, 32911),
CFrame.new(1245, 129, 33052)
}
elseif mlv(1275,1299) then 
return {
"Ship Engineer",
"ShipQuest1",2,
CFrame.new(1039, 125, 32911),
CFrame.new(917, 44, 32783)
}
elseif mlv(1300,1324) then 
return {
"Ship Steward",
"ShipQuest2",1,
CFrame.new(969, 125, 33245),
CFrame.new(951, 130, 33444)
}
elseif mlv(1325,1349) then 
return {
"Ship Officer",
"ShipQuest2",2,
CFrame.new(969, 125, 33245),
CFrame.new(614, 181, 33294)
}
elseif mlv(1350,1374) then 
return {
"Arctic Warrior",
"FrostQuest",1,
CFrame.new(5667, 29, -6484),
CFrame.new(5993, 58, -6175)
}
elseif mlv(1375,1424) then 
return {
"Snow Lurker",
"FrostQuest",2,
CFrame.new(5667, 29, -6484),
CFrame.new(5557, 58, -6598)
}
elseif mlv(1425,1449) then 
return {
"Sea Soldier",
"ForgottenQuest",1,
CFrame.new(-3054, 237, -10146),
CFrame.new(-3520, 75, -9724)
}
elseif mlv(1450,1474888) then 
return {
"Water Fighter",
"ForgottenQuest",2,
CFrame.new(-3054, 237, -10146),
CFrame.new(-3435, 291, -10502)
}
end end
if sea3() then 
if mlv(1500,1524) then 
return {
"Pirate Millionaire",
"PiratePortQuest",1,
CFrame.new(-290, 44, 5580),
CFrame.new(-506, 82, 5569)
}
elseif mlv(1525,1574) then 
return {
"Pistol Billionaire",
"PiratePortQuest",2,
CFrame.new(-290, 44, 5580),
CFrame.new(46, 135, 6076)
}
elseif mlv(1575,1599) then 
return {
"Dragon Crew Warrior",
"AmazonQuest",1,
CFrame.new(5834, 52, -1103),
CFrame.new(6298, 110, -1087)
}
elseif mlv(1600,1624) then 
return {
"Dragon Crew",
"AmazonQuest",2,
CFrame.new(5834, 52, -1103),
CFrame.new(6710, 427, 115)
}
elseif mlv(1625,1649) then 
return {
"Female Islander",
"AmazonQuest2",1,
CFrame.new(5447, 602, 750),
CFrame.new(4647, 793, 777)
}
elseif mlv(1650,1699) then 
return {
"Giant Islander",
"AmazonQuest2",2,
CFrame.new(5447, 602, 750),
CFrame.new(4921, 670, -9)
}
elseif mlv(1700,1724) then 
return {
"Marine Commodore",
"MarineTreeIsland",1,
CFrame.new(2179, 29, -6739),
CFrame.new(2440, 127, -7373)
}
elseif mlv(1725,1774) then 
return {
"Marine Rear Admiral",
"MarineTreeIsland",2,
CFrame.new(2179, 29, -6739),
CFrame.new(3786, 192, -7080)
}
elseif mlv(1775,1799) then 
return {
"Fishman Raider",
"DeepForestIsland3",1,
CFrame.new(-10585, 332, -8759),
CFrame.new(-10532, 375, -8267)
}
elseif mlv(1800,1824) then 
return {
"Fishman Captain",
"DeepForestIsland3",2,
CFrame.new(-10585, 332, -8759),
CFrame.new(-10308, 376, -8790)
}
elseif mlv(1825,1849) then 
return {
"Forest Pirate",
"DeepForestIsland",1,
CFrame.new(-13234, 333, -7627),
CFrame.new(-13498, 391, -7908)
}
elseif mlv(1850,1899) then 
return {
"Mythological Pirate",
"DeepForestIsland",2,
CFrame.new(-13234, 333, -7627),
CFrame.new(-13506, 581, -6984)
}
elseif mlv(1900,1924) then 
return {
"Jungle Pirate",
"DeepForestIsland2",1,
CFrame.new(-12683, 391, -9901),
CFrame.new(-12091, 448, -10562)
}
elseif mlv(1925,1974) then 
return {
"Musketeer Pirate",
"DeepForestIsland2",2,
CFrame.new(-12683, 391, -9901),
CFrame.new(-13335, 447, -9916)
}
elseif mlv(1975,1999) then 
return {
"Reborn Skeleton",
"HauntedQuest1",1,
CFrame.new(-9481, 142, 5568),
CFrame.new(-8762, 177, 6178)
}
elseif mlv(2000,2024) then 
return {
"Living Zombie",
"HauntedQuest1",2,
CFrame.new(-9481, 142, 5568),
CFrame.new(-10081, 238, 5915)
}
elseif mlv(2025,2049) then 
return {
"Demonic Soul",
"HauntedQuest2",1,
CFrame.new(-9515, 172, 6078),
CFrame.new(-9568, 205, 6042)
}
elseif mlv(2050,2074) then 
return {
"Posessed Mummy",
"HauntedQuest2",2,
CFrame.new(-9515, 172, 6078),
CFrame.new(-9683, 30, 6359)
}
elseif mlv(2075,2099) then 
return {
"Peanut Scout",
"NutsIslandQuest",1,
CFrame.new(-2103, 38, -10192),
CFrame.new(-1938, 93, -10194)
}
elseif mlv(2100,2124) then 
return {
"Peanut President",
"NutsIslandQuest",2,
CFrame.new(-2103, 38, -10192),
CFrame.new(-1955, 81, -10534)
}
elseif mlv(2125,2149) then 
return {
"Ice Cream Chef",
"IceCreamIslandQuest",1,
CFrame.new(-819, 66, -10965),
CFrame.new(-875, 119, -11034)
}
elseif mlv(2150,2199) then 
return {
"Ice Cream Commander",
"IceCreamIslandQuest",2,
CFrame.new(-819, 66, -10965),
CFrame.new(-697, 173, -11213)
}
elseif mlv(2200,2249) then 
return {
"Cookie Crafter",
"CakeQuest1",1,
CFrame.new(-2021, 38, -12030),
CFrame.new(-2289, 92, -12042)
}
elseif mlv(2250,2274) then 
return {
"Baking Staff",
"CakeQuest2",1,
CFrame.new(-1930, 38, -12840),
CFrame.new(-1770, 81, -12207)
}
elseif mlv(2275,2299) then 
return {
"Head Baker",
"CakeQuest2",2,
CFrame.new(-1930, 38, -12840),
CFrame.new(-2314, 106, -12929)
}
elseif mlv(2300,2324) then 
return {
"Cocoa Warrior",
"ChocQuest1",1,
CFrame.new(233, 25, -12198),
CFrame.new(142, 69, -12255)
}
elseif mlv(2325,2349) then 
return {
"Chocolate Bar Battler",
"ChocQuest1",2,
CFrame.new(233, 25, -12198),
CFrame.new(602, 74, -12582)
}
elseif mlv(2350,2374) then 
return {
"Sweet Thief",
"ChocQuest2",1,
CFrame.new(149, 25, -12774),
CFrame.new(-99, 141, -12261)
}
elseif mlv(2375,2399) then 
return {
"Candy Rebel",
"ChocQuest2",2,
CFrame.new(149, 25, -12774),
CFrame.new(723, 67, -12590)
}
elseif mlv(2400,2424) then 
return {
"Candy Pirate",
"CandyQuest1",1,
CFrame.new(-1147, 14, -14446),
CFrame.new(-1409, 71, -14846)
}
elseif mlv(2425,2449) then 
return {
"Snow Demon",
"CandyQuest1",2,
CFrame.new(-1147, 14, -14446),
CFrame.new(-847, 115, -14409)
}
elseif mlv(2450,2474) then 
return {
"Isle Outlaw",
"TikiQuest1",1,
CFrame.new(-16547, 56, -174),
CFrame.new(-16303, 138, -148)
}
elseif mlv(2475,2499) then 
return {
"Island Boy",
"TikiQuest1",2,
CFrame.new(-16546, 56, -174),
CFrame.new(-16851, 193, -150)
}
elseif mlv(2500,2524) then 
return {
"Sun-Kissed Warrior",
"TikiQuest2",1,
CFrame.new(-16539, 56, 1052),
CFrame.new(-16404, 161, 1017)
}
elseif mgv(2525,2000) then 
return {
"Isle Champion",
"TikiQuest2",2,
CFrame.new(-16539, 56, 1052),
CFrame.new(-16747, 128, 1013)
}
end end end

function checkmaterial()
    local function mt(x)
        if string.find(main_b3.Text, x) then
            return true
        end
    end

    if sea1() then
        if mt("Scrap Metal") then
            return {
                {"Brute"},
                CFrame.new(-1134, 94, 4318)
            }
        elseif mt("Leather") then
            return {
                {"Brute"},
                CFrame.new(-1134, 94, 4318)
            }
        elseif mt("Angel Wings") then
            return {
                {"God's Guard"},
                CFrame.new(-4628, 867, -1939)
            }
        elseif mt("Magma Ore") then
            return {
                {"Military Spy"},
                CFrame.new(-5729, 116, 8623)
            }
        elseif mt("Fish Tail") then
            return {
                {"Fishman Warrior"},
                CFrame.new(61123, 19, 1569)
            }
        end
    elseif sea2() then
        if mt("Radioactive") then
            return {
                {"Factory Staff"},
                CFrame.new(295, 73, -56)
            }
        elseif mt("Leather") then
            return {
                {"Marine Captain"},
                CFrame.new(-2007, 120, -3204)
            }
        elseif mt("Scrap Metal") then
            return {
                {"Swan Pirate"},
                CFrame.new(931, 152, 1192)
            }
        elseif mt("Vampire Fang") then
            return {
                {"Vampire"},
                CFrame.new(-5922, 42, -1085)
            }
        elseif mt("Mystic Droplet") then
            return {
                {"Water Fighter"},
                CFrame.new(-3435, 291, -10502)
            }
        elseif mt("Magma Ore") then
            return {
                {"Magma Ninja"},
                CFrame.new(-5428, 78, -5959)
            }
         elseif mt("Ectoplasm") then
            return {
                {"Ship Officer","Ship Deckhand","Ship Engineer","Ship Steward"},
                CFrame.new(931, 126, 33132)
            }
        end
    elseif sea3() then
        if mt("Leather") then
            return {
                {"Jungle Pirate"},
                CFrame.new(-12091, 448, -10562)
            }
        elseif mt("Scrap Metal") then
            return {
                {"Jungle Pirate"},
                CFrame.new(-12091, 448, -10562)
            }
        elseif mt("Fish Tail") then
            return {
                {"Fishman Raider"},
                CFrame.new(-10532, 375, -8267)
            }
        elseif mt("Demonic Wisp") then
            return {
                {"Demonic Soul"},
                CFrame.new(-9568, 205, 6042)
            }
        elseif mt("Conjured Cocoa") then
            return {
                {"Chocolate Bar Battler"},
                CFrame.new(602, 74, -12582)
            }
        elseif mt("Dragon Scale") then
            return {
                {"Dragon Crew Archer"},
                CFrame.new(6710, 427, 115)
            }
        elseif mt("Gunpowder") then
            return {
                {"Pistol Billionaire"},
                CFrame.new(46, 135, 6076)
            }
        elseif mt("Mini Tusk") then
            return {
                {"Mythological Pirate"},
                CFrame.new(-13506, 581, -6984)
            }
            elseif mt("Bone") then
            return {
                {"Soul Reaper","Living Zombie","Posessed Mummy","Demonic Soul"},
                CFrame.new(-9717, 65, 6041)
            }
            elseif mt("Conjured Cocoa") then
            return {
                {"Cocoa Warrior","Chocolate Bar Battler","Sweet Thief","Candy Rebel"},
                CFrame.new(182, 126, -12772)
            }
        end
    end
end

function mobnear()
for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
if v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 and v:FindFirstChild("HumanoidRootPart") and distance(v.HumanoidRootPart) < 500 then
return v
end end end

function island()
local function is(x)
if string.find(teleport_b1.Text, x) then
return true
end end
if sea1() then
if is("Pirate Start") then
return CFrame.new(911, 17, 1435)
elseif is("Marine Start") then
return CFrame.new(-2550, 7, 2098)
elseif is("Middle Town") then
return CFrame.new(911, 17, 1435)
elseif is("Jungle") then
return CFrame.new(-1448, 62, -27)
elseif is("Pirate Village") then
return CFrame.new(-1210, 45, 3838)
elseif is("Desert") then
return CFrame.new(945, 21, 4371)
elseif is("Frozen Village") then
return CFrame.new(1354, 88, -1279)
elseif is("Marine Ford") then
return CFrame.new(-4992, 21, 4256)
elseif is("Colosseum") then
return CFrame.new(-1497, 8, -2965)
elseif is("Sky 1") then
return CFrame.new(-4787, 718, -2599)
elseif is("Sky 2") then
return CFrame.new(-4655, 873, -1759)
elseif is("Sky 3") then
return CFrame.new(-7897, 5546, -417)
elseif is("Magma Village") then
return CFrame.new(-5278, 9, 8431)
elseif is("Fountain City") then
return CFrame.new(5092, 5, 4099)
elseif is("UndeyWater City") then
return CFrame.new(61163, 5, 1815)
elseif is("Whirl Pool") then
return CFrame.new(3900, 12, -1941)
elseif is("Prison") then
return CFrame.new(5095, 4, 757)
end
elseif sea2() then
if is("KingDom of Rose") then
return CFrame.new(83, 18, 2835)
elseif is("Café") then
return CFrame.new(-385, 73, 297)
elseif is("Green Zone") then
return CFrame.new(-2372, 73, -3167)
elseif is("Hot and Cold") then
return CFrame.new(-5924,29,-5029)
elseif is("Dark Arena") then
return game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame
elseif is("Snow Moutain") then
return CFrame.new(1385, 454, -4990)
elseif is("Cursed Ship") then
return CFrame.new(902, 125, 33072)
elseif is("Ice Castle") then
return CFrame.new(5400, 28, -6237)
elseif is("Graveyard") then
return CFrame.new(-5596, 49, -652)
elseif is("Fogotten") then
return CFrame.new(-3043, 239, -10192)
end
elseif sea3() then
if is("Port") then
return CFrame.new(-303, 30, 5397)
elseif is("Hydra") then
return CFrame.new(5288,1005,392)
elseif is("Mansion") then
return CFrame.new(-12552, 338, -7480)
elseif is("Castle on The Sea") then
return CFrame.new(-5047, 315, -3166)
elseif is("Haunted Castle") then
return CFrame.new(-9510, 142, 5533)
elseif is("Great Tree") then
return CFrame.new(2308, 26, -6409)
elseif is("Sea of Treat 1") then
return CFrame.new(-2025, 9, -9902)
elseif is("Sea of Treat 2") then
return CFrame.new(-915, 57, -10860)
elseif is("Sea of Treat 3") then
return CFrame.new(-1965, 10, -11519)
elseif is("Sea of Treat 4") then
return CFrame.new(-79, 27, -12033)
elseif is("Sea of Treat 5") then
return CFrame.new(-1058, 7, -14023)
elseif is("Tiki Outpost") then
return CFrame.new(-16210, 9, 428)
end end end

function distance(x)
if type(x) == "vector" then
return (x - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 
else
return (x.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 
end end

function jump()
local humanoid = game.Players.LocalPlayer.Character.Humanoid 
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)  -- jump
end

function tc(x)
return x:match("%:%s*(.+)")
end

function usetool()
tool(tc(main_b1.Text))
end

function usetoolsea()
tool(tc(se_b1.Text))
end

function killaura()
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do      
if v.ClassName == "Model" then       
if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then        
v.Humanoid.Health = 0      
v.Humanoid:ChangeState(14)     
v.HumanoidRootPart.Size = Vector3.new(50, 50, 20)     
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
v.HumanoidRootPart.CFrame =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-39,0) 
v.Humanoid:ChangeState(14)    
v.HumanoidRootPart.CanCollide = false                                                
v.Head.CanCollide = false                                 
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)                                                                                             
end end end end

pos1={0.002}
for i=1,100 do
table.insert(pos1,tonumber(pos1[i])+0.018)
end

black_screen=Instance.new("Frame")
black_screen.Name = "black_screen"
black_screen.Parent = NTTGUI
black_screen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
black_screen.Position = UDim2.new(0, 0, -0.3, 0)
black_screen.Size = UDim2.new(2, 0, 2, 0) -- Kích thước toàn màn hình
black_screen.Visible=false
black_screen.ZIndex=-1

function storefruit()
store_fruit={
game.Players.LocalPlayer.Character:GetChildren(),
game.Players.LocalPlayer.Backpack:GetChildren()
}
for t=1,2 do
for i,v in pairs(store_fruit[t]) do
if v.ClassName=="Tool" then
local args = {
    [1] = "StoreFruit",
    [2] = string.gsub(v.Name," Fruit","").."-"..string.gsub(v.Name," Fruit",""),
    [3] = v
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end end end end

function fruitspawn()
for i,v in pairs(game.Workspace:GetChildren()) do                   
if string.find(v.Name, "Fruit") and #v.Name<=7 then
if v:FindFirstChild("Handle") then
return v.Handle
end end end end

function fruitdrop()
for i,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, "Fruit") and v:FindFirstChild("Handle") then
return v.Handle
end end end

function getmob(x)
if not _G.index_key then return end
 for _, folder in pairs({game.Workspace.Enemies, game.ReplicatedStorage}) do
 for _, v in pairs(folder:GetChildren()) do
 if type(x) == "string" then
 if (v.Name==x or string.find(v.Name,x)) and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 and v:FindFirstChild("HumanoidRootPart") then
 return v
 end 
else
for i=1,#x do
if (v.Name==x[i] or string.find(v.Name,x[i])) and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 and v:FindFirstChild("HumanoidRootPart") then
return v
end end
end end end end

_G.table_item={}
spawn(function()
while task.wait(1) do                  
pcall(function()
for i,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")) do
pcall(function()
if v.Count==nil then
_G.table_item[v.Name]=true
else
_G.table_item[v.Name]=v.Count
end end) end
end) end end)

function ic(x)
return _G.table_item[x]
end

table_skill={
"Z",
"X",
"C",
"V",
"F"
}

function checkkatakuri()
if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then              
return (string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))           
elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then               
return (string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))          
elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then                
return (string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))           
else              
return 0
end end

function checkelite()
return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")
end

function getlistplayer()
local l={}
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name~=game.Players.LocalPlayer.Name then            
table.insert(l,v.Name)
end end
return l
end

local secret = "NTT_HUB"
local PREFIX = "NTT_" 

local base64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

local function base64enc(data)
    return ((data:gsub('.', function(x)
        local r,bits='',x:byte()
        for i=8,1,-1 do
            r = r .. (bits % 2^i - bits % 2^(i-1) > 0 and '1' or '0')
        end
        return r
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do
            c = c + (x:sub(i,i)=='1' and 2^(6-i) or 0)
        end
        return base64chars:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data % 3 + 1])
end

local function base64dec(data)
    data = data:gsub('[^'..base64chars..'=]', '')
    return (data:gsub('.', function(x)
        if x == '=' then return '' end
        local r, f='', (base64chars:find(x)-1)
        for i=6,1,-1 do
            r = r .. (f % 2^i - f % 2^(i-1) > 0 and '1' or '0')
        end
        return r
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if #x ~= 8 then return '' end
        local c=0
        for i=1,8 do
            c = c + (x:sub(i,i)=='1' and 2^(8-i) or 0)
        end
        return string.char(c)
    end))
end

local function xor_str(str, key)
    local res = {}
    for i=1,#str do
        local kb = string.byte(key, (i-1)%#key+1)
        local sb = string.byte(str, i)
        table.insert(res, string.char(bit32.bxor(sb, kb)))
    end
    return table.concat(res)
end

function encode(str)
    local encoded = base64enc(xor_str(str, secret))
    return PREFIX .. encoded -- thêm bí danh phía trước
end

function decode(str)
    -- bỏ prefix trước khi decode
    if str:sub(1, #PREFIX) == PREFIX then
        str = str:sub(#PREFIX + 1)
    else
        return nil -- không đúng định dạng
    end

    return xor_str(base64dec(str), secret)
end

loadstring([[
function _G.loadserver(v,name,key)
if key==nil then
loadstring("list="..game:HttpGet("https://api-sever.nekokawaii.workers.dev/api/datasever-"..v.."?name="..name..""))()
return list
elseif key then
loadstring("list=".. game:HttpGet("https://api-sever.nekokawaii.workers.dev/api/datasever-"..v.."?name="..name.."&key="..key..""))()
return list
end end
]])()

function lv()
return game.Players.LocalPlayer.Data.Level.Value
end

if sea1() then
_G.table_material = {
        "Scrap Metal",
        "Leather",
        "Angel Wings",
        "Magma Ore",
        "Fish Tail"
    }

elseif sea2() then
_G.table_material = {
       "Ectoplasm",
        "Scrap Metal",
        "Leather",
        "Radioactive",
        "Vampire Fang",
        "Mystic Droplet",
        "Magma Ore"
    }

elseif sea3() then
_G.table_material = {
   "Bone",
   "Conjured Cocoa",
        "Scrap Metal",
        "Leather",
        "Fish Tail",
        "Demonic Wisp",
        "Conjured Cocoa",
        "Dragon Scale",
        "Gunpowder",
        "Mini Tusk"
    }
end

function get_attribute(x)
if x:GetAttribute("value") == nil then
return 0
else
return x:GetAttribute("value") 
end end

function reset_attribute(x)
x:SetAttribute("value", 0)
end

function add_attribute(x)
if x:GetAttribute("value") == nil then
x:SetAttribute("value", 0)
else
x:SetAttribute("value", x:GetAttribute("value")+1)
end end

function bm(x)
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if v.Name == x  and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then                           
v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,_G.distance*-1,0)       
v.HumanoidRootPart.CanCollide = false                           
setscriptable(game.Players.LocalPlayer,"SimulationRadius",true)                          
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)         
end end end

function bringmob(x)
if not _G.index_key then return end
if type(x)=="string" then
bm(x)
else
for i=1,#x do
bm(x[i])
end end end

function azure_ember()
for _, v in pairs(game:GetService("Workspace").EmberTemplate:GetChildren()) do                  
if v:IsA("BasePart") and v.Name == "Part" then
return v
end end end

function click()
game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 0)
game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 0)
end

function key_skill(key, time)
game:GetService("VirtualInputManager"):SendKeyEvent(true,key,false,game)
wait(time)
game:GetService("VirtualInputManager"):SendKeyEvent(false,key,false,game)
end

function tool(X)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
if v.ToolTip == X or v.Name == X then 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end end end end

function checktooluse(X)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v.ToolTip == X or v.Name == X then 
return true
end end end end

function checktool(x)
if game.Players.LocalPlayer.Character:FindFirstChild(x) then
return game.Players.LocalPlayer.Character:FindFirstChild(x)
elseif game.Players.LocalPlayer.Backpack:FindFirstChild(x) then
return game.Players.LocalPlayer.Backpack:FindFirstChild(x)
end end

function getnpc(x)
local st_npc={
game.Workspace.NPCs:GetChildren(),
game.ReplicatedStorage.NPCs:GetChildren()
}
for _=1,2 do
for i,v in pairs(st_npc[_]) do                 
if v.Name== x and v:FindFirstChild("HumanoidRootPart") then
return v
end end end end

function myboat()
for _, v in pairs(game.Workspace.Boats:GetChildren()) do
if v.ClassName=="Model" and v:FindFirstChild("Owner") and tostring(v.Owner.Value)==game.Players.LocalPlayer.Name and v.Humanoid.Value > 0 and v.VehicleSeat.CFrame.Y>-2 then
return v.VehicleSeat
end end end

function getmobsea(x)
if not _G.index_key then return end
 for _, folder in pairs({game.Workspace.Enemies, game.ReplicatedStorage}) do
 for _, v in pairs(folder:GetChildren()) do
 if type(x) == "string" then
 if (v.Name==x or string.find(v.Name,x)) and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 and v:FindFirstChild("HumanoidRootPart") and distance(v.HumanoidRootPart.CFrame)<1000 then
 return v
 end 
else
for i=1,#x do
if (v.Name==x[i] or string.find(v.Name,x[i])) and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 and v:FindFirstChild("HumanoidRootPart") and distance(v.HumanoidRootPart.CFrame)<1000 then
return v
end end
end end end end

function lowhealth(x)
hmn=game.Players.LocalPlayer.Character.Humanoid
if hmn.Health <=  hmn.MaxHealth*x/100 then
return true
else
return false
end end

function unsit()
if game.Players.LocalPlayer.Character.Humanoid.Sit then
game.Players.LocalPlayer.Character.Humanoid.Sit=false
end end

function getship()
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.ClassName == "Model" and v:FindFirstChild("VehicleSeat") and v.Health.Value>0 and distance(v.VehicleSeat)<1000 then  
return v.Sails
end end end

function getseabeast()
for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
if v:FindFirstChild("HumanoidRootPart") and distance(v.HumanoidRootPart)<1000 and v.HumanoidRootPart.CFrame.Y >= -190 then
return v.HumanoidRootPart
end end end

function inrough()
for i,v in pairs(game.Workspace._WorldOrigin.Locations:GetChildren()) do
if v.ClassName=="Part" and string.find(v.Name, "Rough")  then
if distance(v.CFrame) <= 1000 then
return v
end end end end

function mirage()
if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
return game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
end end

function kitsune()
if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
return game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
end end

function fozen()
if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Frozen Dimension") then
return game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Frozen Dimension")
end end

function gear()
for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
if v:IsA("MeshPart") and v.Material ==  Enum.Material.Neon then  
return v
end end end

function playernear()
for i,v in pairs(game.Players:GetPlayers()) do                    
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
if distance(v.Character.HumanoidRootPart) < 400 then
return v.Character
end end end end end

function maincode(x,s)
if not _G.index_key then return end
function f(z) 
if string.find(x,z) then
return true
end end

if f("fruit1") and fruitspawn() then
if s==1 then
return true
else
TP1(fruitspawn().CFrame)
return
end end

if f("fruit2") and _("fruit_spawn") and fruitspawn() then
if s==1 then
return true
end end

if f("core") and _("factory") and getmob("Core") then
if s==1 then
return true
end end 

if f("dark") and getmob("Darkbeard") then
if s==1 then
return true
else
TP1(getmob("Darkbeard").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
mele()
return
end end

if f("rip") and getmob("rip_indra True Form") then
if s==1 then
return true
else
if distance(getmob("rip_indra True Form").HumanoidRootPart)>2000 then
local args = {
    [1] = "requestEntrance",
    [2] = Vector3.new(-5055,314,-3174)
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
TP1(getmob("rip_indra True Form").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
mele()
return
end end

if f("katakuri") and getmob({"Cake Prince","Dough King"}) then
if s==1 then
return true
else
if distance(getmob({"Cake Prince","Dough King"}).HumanoidRootPart)>2000 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-2151.82153, 149.315704, -12404.9053)
end 
TP1(getmob({"Cake Prince","Dough King"}).HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
mele()
return
end end

if f("elite") and _("elite") and getmob({"Diablo","Deandre","Urban"}) then
if s==1 then
return true
end end 

if f("boss") and _("killboss") and getmob(tabletrue(_G.table_boss,1)) then
if s==1 then
return true
end end 

end

_G.maincode="fruit1 katakuri rip dark katakuri elite boss core"

---------------

-- [[Main]]

make_textlabel(b_page1, "Main", 0.00000000)

make_select1(main_f1, main_b1, b_page1, _("tool_select"), 0.10000000)
main_b1.MouseButton1Down:connect(function()
_G.ntt_frame(main_bar1)
end)

_G.table_tool={"Melee","Blox Fruit","Sword","Gun"}

make_selectscrollingframe(main_bar1, main, 0.1700000, 0)
make_auto_selectbutton(main_b1,main_bar1,_G.table_tool,"Tool",0.05,"tool_select")

make_together(main_f2, main_b2, b_page1, "Auto Farm Level", 0.170000000,"level")
main_b2.MouseButton1Down:connect(function()
if main_b2.Text == "" then --on
main_b2.Text = "X"
_G.main_b2 = true 
elseif main_b2.Text == "X" then --off
main_b2.Text = ""
_G.main_b2 = false
end 
__("level",_G.main_b2)
end)

spawn(function()
while task.wait() do
pcall(function()
if _("level") then

if maincode(_G.maincode,1) then maincode(_G.maincode,2) return end

if sea1() and lv()>=700 then 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
return 
end

if lv() >= 1250 and lv() <1350 and distance(CFrame.new(931, 126, 33132)) >= 5000 then                
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.2125244140625, 126.97600555419922, 32852.83203125))                  
return                                            
end 

if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
TP1(CheckQuest()[4])
if distance(CheckQuest()[4])<=10 then
task.wait(2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",CheckQuest()[2],CheckQuest()[3])
end 
else
if getmob(CheckQuest()[1]) then
usetool()
TP1(getmob(CheckQuest()[1]).HumanoidRootPart.CFrame* CFrame.new(0,_G.distance,0))
else
TP1(CheckQuest()[5])
end 
if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, CheckQuest()[1]) then
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible = false
end end
end end) end end)

spawn(function()
while task.wait(2) do                  
pcall(function()            
if _("level") then            
if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then                            
bringmob(CheckQuest()[1])   
end end end) end end)           

spawn(function()
while task.wait() do
pcall(function()
if _("level") then
if sea1() and lv()>=700 then
if game.Workspace.Map.Ice.Door.CanCollide then            
if checktool("Key") then
tool("Key")
TP1(CFrame.new(1347.7124, 37.3751602, -1325.6488))  
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")                   
end

else
if getmob("Ice Admiral") then
TP1(getmob("Ice Admiral").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
end end end
end end) end end)

spawn(function()
while task.wait() do
pcall(function()
if _("level") then
storefruit()
end end) end end)

make_together(main_f12, main_b12, b_page1, "Auto Farm Mob Near", 0.38000000,"mobnear")
main_b12.MouseButton1Down:connect(function()
if main_b12.Text == "" then --on
main_b12.Text = "X"
_G.main_b12 = true 
elseif main_b12.Text == "X" then --off
main_b12.Text = ""
_G.main_b12 = false
end 
__("mobnear",_G.main_b12)
end)

spawn(function()
while task.wait() do
pcall(function()     
if _("mobnear") then
if maincode(_G.maincode,1) then maincode(_G.maincode,2) return end
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if v.ClassName == "Model" and v:FindFirstChild("HumanoidRootPart") then 
if v.Humanoid.Health > 0 then       
usetool()
_G.mobnear=v.Name
TP1(v.HumanoidRootPart.CFrame* CFrame.new(0,_G.distance,0))
end end end 
end end) end end)

spawn(function()
while task.wait(2) do
pcall(function()
if _("mobnear") then
bringmob(_G.mobnear) 
end end) end end)

make_textlabel(b_page1, "Material", 0.00000000)

make_select1(main_f3, main_b3, b_page1, _("material_select"), 0.2400000000)
main_b3.MouseButton1Down:connect(function()
_G.ntt_frame(main_bar2)
end)

make_selectscrollingframe(main_bar2, main, 0.310000, 0)
make_auto_selectbutton(main_b3,main_bar2,_G.table_material,"Material",0.05,"material_select")

make_together(main_f4, main_b4, b_page1, "Auto Farm Material", 0.310000000,"material")
main_b4.MouseButton1Down:connect(function()
if main_b4.Text == "" then --on
main_b4.Text = "X"
_G.main_b4 = true 
elseif main_b4.Text == "X" then --off
main_b4.Text = ""
_G.main_b4 = false
end 
__("material",_G.main_b4)
end)

spawn(function()
while task.wait() do                  
pcall(function()            
if _("material") then            

if maincode(_G.maincode,1) then maincode(_G.maincode,2) return end

if sea2() and tc(main_b3.Text)=="Ectoplasm" and distance(CFrame.new(923, 126, 32852)) > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923, 126, 32852))
end
if getmob(checkmaterial()[1]) then
TP1(getmob(checkmaterial()[1]).HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
else
TP1(checkmaterial()[2])
end end end) end end)

spawn(function()
while task.wait(2) do                  
pcall(function()            
if _("material") then            
bringmob(checkmaterial()[1])
end end) end end)

make_textlabel(b_page1, "Mastery Fruit", 0.00000000)

make_together(main_f5, main_b5, b_page1, "Auto Farm Mastery Fruit", 0.38000000,"mastery_fruit")
main_b5.MouseButton1Down:connect(function()
if main_b5.Text == "" then --on
main_b5.Text = "X"
_G.main_b5 = true 
elseif main_b5.Text == "X" then --off
main_b5.Text = ""
_G.main_b5 = false
end 
__("mastery_fruit",_G.main_b5)
end)

make_slider_value(b_page1,"% Health",1,100, 0.45,"mastery_health")

make_select1(main_f6, main_b6, b_page1, "Skill Fruit Select", 0.520000000)
main_b6.MouseButton1Down:connect(function()
_G.ntt_frame(main_bar3)
end)

make_selectscrollingframe(main_bar3, main, 0.5900000, 0)
make_auto_selectbutton_v2(main_bar3,table_skill,0.05,_G.Setting.skillfruit)

spawn(function()
while task.wait() do                  
pcall(function()            
if _("mastery_fruit") then            

if maincode(_G.maincode,1) then maincode(_G.maincode,2) return end

local mob=getmob(CheckQuest()[1])
if mob then
TP1(mob.HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
_G.pos_skill=mob.HumanoidRootPart.Position
if mob.Humanoid.Health>mob.Humanoid.MaxHealth*_("mastery_health")/100 then
tool("Melee")
else
tool("Blox Fruit")
end
else
TP1(CheckQuest()[5])
end end end) end end)

spawn(function()
while task.wait() do                  
pcall(function()            
if _("mastery_fruit") and checktooluse("Blox Fruit") then            
skillmastery(_G.pos_skill)
end end) end end)

spawn(function()
while task.wait(2) do                  
pcall(function()            
if _("mastery_fruit") then            
bringmob(CheckQuest()[1])
end end) end end)


make_textlabel(b_page1, "Start", 0.5900000000)

make_together(main_f7, main_b7, b_page1, "Melee", 0.66,"up_melee")
main_b7.MouseButton1Down:connect(function()
--on off 
if main_b7.Text == "" then --on
main_b7.Text = "X"
_G.main_b7 = true
elseif main_b7.Text == "X" then --off
main_b7.Text = ""
_G.main_b7 = false
end
__("up_melee",_G.main_b7)
end)

make_together(main_f8, main_b8, b_page1, "Health", 0.73,"up_health")
main_b8.MouseButton1Down:connect(function()
--on off 
if main_b8.Text == "" then --on
main_b8.Text = "X"
_G.main_b8 = true
elseif main_b8.Text == "X" then --off
main_b8.Text = ""
_G.main_b8 = false
end
__("up_health",_G.main_b8)
end)        

make_together(main_f9, main_b9, b_page1, "Sword", 0.80,"up_sword")
main_b9.MouseButton1Down:connect(function()
--on off 
if main_b9.Text == "" then --on
main_b9.Text = "X"
_G.main_b9 = true
elseif main_b9.Text == "X" then --off
main_b9.Text = ""
_G.main_b9 = false
end
__("up_sword",_G.main_b9)
end)

make_together(main_f10, main_b10, b_page1, "Gun", 0.87,"up_gun")
main_b10.MouseButton1Down:connect(function()
--on off 
if main_b10.Text == "" then --on
main_b10.Text = "X"
_G.main_b10 = true
elseif main_b10.Text == "X" then --off
main_b10.Text = ""
_G.main_b10 = false
end
__("up_gun",_G.main_b10)
end)

make_together(main_f11, main_b11, b_page1, "Fruit", 0.94,"up_fruit")
main_b11.MouseButton1Down:connect(function()
--on off 
if main_b11.Text == "" then --on
main_b11.Text = "X"
_G.main_b11 = true
elseif main_b11.Text == "X" then --off
main_b11.Text = ""
_G.main_b11 = false
end
__("up_fruit",_G.main_b11)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if game.Players.LocalPlayer.Data.Points.Value >0 then
if _("up_melee") then 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",PointStats)
end 
if _("up_health") then 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",PointStats)
end 
if _("up_sword") then 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",PointStats)
end 
if _("up_gun") then 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",PointStats)
end 
if _("up_fruit") then 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",PointStats)
end end end) end end)

make_textlabel(b_page1, "Setting", 0.5900000000)

make_together(setting_f1, setting_b1, b_page1, "Auto Rejoin", 0.170000000,"autorejoin")
setting_b1.MouseButton1Down:connect(function()
if setting_b1.Text == "" then --on
setting_b1.Text = "X"
_G.setting_b1 = true 
elseif setting_b1.Text == "X" then --off
setting_b1.Text = ""
_G.setting_b1 = false
end 
__("autorejoin",_G.setting_b1)
end)

spawn(function()    
while task.wait() do
pcall(function()
if _("autorejoin") then    
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)             
if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then                   
local args = {
    [1] = "teleport",
    [2] = game.JobId
}

game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
end end) end end) end end)

make_together(setting_f2, setting_b2, b_page1, "Black Screen", 0.170000000,"blackscreen")
setting_b2.MouseButton1Down:connect(function()
if setting_b2.Text == "" then --on
setting_b2.Text = "X"
_G.setting_b2 = true 
elseif setting_b2.Text == "X" then --off
setting_b2.Text = ""
_G.setting_b2 = false
end 
__("blackscreen",_G.setting_b2)
end)

spawn(function()    
while task.wait() do
pcall(function()
if _("blackscreen") then
if black_screen.Visible then return end
black_screen.Visible=true
else
if black_screen.Visible==false then return end
black_screen.Visible=false
end end) end end)

make_together(setting_f3, setting_b3, b_page1, "Fast Attack", 0.170000000,"attack")
setting_b3.MouseButton1Down:connect(function()
if setting_b3.Text == "" then --on
setting_b3.Text = "X"
_G.setting_b3 = true 
elseif setting_b3.Text == "X" then --off
setting_b3.Text = ""
_G.setting_b3 = false
end 
__("attack",_G.setting_b3)
end)

--[[Chest]]

make_textlabel(b_page2, "Main", 0.5900000000)

make_together(chest_f1, chest_b1, b_page2, "Auto Chest", 0.170000000,"autochest")
chest_b1.MouseButton1Down:connect(function()
if chest_b1.Text == "" then --on
chest_b1.Text = "X"
_G.chest_b1 = true 
elseif chest_b1.Text == "X" then --off
chest_b1.Text = ""
_G.chest_b1 = false
end 
__("autochest",_G.chest_b1)
end)

make_together(chest_f2, chest_b2, b_page2, "Auto Chest Hop", 0.170000000,"chesthop")
chest_b2.MouseButton1Down:connect(function()
if chest_b2.Text == "" then --on
chest_b2.Text = "X"
_G.chest_b2 = true 
elseif chest_b2.Text == "X" then --off
chest_b2.Text = ""
_G.chest_b2 = false
end 
__("chesthop",_G.chest_b2)
end)

make_textlabel(b_page2, "Setting", 0.5900000000)

make_together(chest_f3, chest_b3, b_page2, "Auto Teleport Fruit Spawn", 0.170000000,"chestfruitspawn")
chest_b3.MouseButton1Down:connect(function()
if chest_b3.Text == "" then --on
chest_b3.Text = "X"
_G.chest_b3 = true 
elseif chest_b3.Text == "X" then --off
chest_b3.Text = ""
_G.chest_b3 = false
end 
__("chestfruitspawn",_G.chest_b3)
end)

make_together(chest_f4, chest_b4, b_page2, "Auto Teleport Fruit Drop", 0.170000000,"chestfruitdrop")
chest_b4.MouseButton1Down:connect(function()
if chest_b4.Text == "" then --on
chest_b4.Text = "X"
_G.chest_b4 = true 
elseif chest_b4.Text == "X" then --off
chest_b4.Text = ""
_G.chest_b4 = false
end 
__("chestfruitdrop",_G.chest_b4)
end)

make_together(chest_f5, chest_b5, b_page2, "Auto Fruit Store", 0.170000000,"chestfruitstore")
chest_b5.MouseButton1Down:connect(function()
if chest_b5.Text == "" then --on
chest_b5.Text = "X"
_G.chest_b5 = true 
elseif chest_b5.Text == "X" then --off
chest_b5.Text = ""
_G.chest_b5 = false
end 
__("chestfruitstore",_G.chest_b5)
end)

make_together(chest_f6, chest_b6, b_page2, "Auto Spawn Dark Bread/Kill", 0.170000000,"chestdarkbeard")
chest_b6.MouseButton1Down:connect(function()
if chest_b6.Text == "" then --on
chest_b6.Text = "X"
_G.chest_b6 = true 
elseif chest_b6.Text == "X" then --off
chest_b6.Text = ""
_G.chest_b6 = false
end 
__("chestdarkbeard",_G.chest_b6)
end)

make_together(chest_f7, chest_b7, b_page2, "Auto Spawn Rip Indra/Kill", 0.170000000,"chestadmin")
chest_b7.MouseButton1Down:connect(function()
if chest_b7.Text == "" then --on
chest_b7.Text = "X"
_G.chest_b7 = true 
elseif chest_b7.Text == "X" then --off
chest_b7.Text = ""
_G.chest_b7 = false
end 
__("chestadmin",_G.chest_b7)
end)

make_together(chest_f8, chest_b8, b_page2, "Auto Stop If Have Key/Cup", 0.170000000,"cheststop")
chest_b8.MouseButton1Down:connect(function()
if chest_b8.Text == "" then --on
chest_b8.Text = "X"
_G.chest_b8 = true 
elseif chest_b8.Text == "X" then --off
chest_b8.Text = ""
_G.chest_b8 = false
end 
__("cheststop",_G.chest_b8)
end)

spawn(function()
pcall(function()

if not game.Workspace:FindFirstChild("ntt_chest") then
ntt_chest = Instance.new("Folder")
ntt_chest.Name = "ntt_chest"
ntt_chest.Parent = Workspace
end

chestid={
game.workspace:GetDescendants(),
game.ReplicatedStorage:GetDescendants()
}

for i=1, #chestid do
for _, v in pairs(chestid[i]) do
if string.find(v.Name,"Chest") and v.ClassName=="Part" then
v.Parent=game.Workspace.ntt_chest
task.wait(0.01)
end
end end

task.wait(3)

spawn(function()   
while task.wait() do        
pcall(function()
if _("autochest") then
if game.Workspace.Map:FindFirstChild("Boat Castle") then
local bc=game.Workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()
local pink=tostring(bc[2].Part.BrickColor)
local red=tostring(bc[3].Part.BrickColor)
local white=tostring(bc[4].Part.BrickColor)
end
if (_("chestfruitspawn") and fruitspawn()) then
TP1(fruitspawn().CFrame)
elseif (_("chestfruitdrop") and fruitdrop()) then 
TP1(fruitdrop().CFrame)

elseif (sea2() and _("chestdarkbeard") and checktool("Fist of Darkness")) then
TP1(CFrame.new(3777,16,-3500))
elseif (sea2() and _("chestdarkbeard") and getmob("Darkbeard")) then
TP1(getmob("Darkbeard").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()

elseif (sea3() and _("chestadmin") and checktool("God's Chalice") and string.find(pink,"Lime") and string.find(red,"Lime") and string.find(white,"Lime")) then
TP1(CFrame.new(-5563,315,-2662))
elseif (sea3() and _("chestadmin") and getmob("rip_indra True Form")) then
TP1(getmob("rip_indra True Form").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()

elseif (_("cheststop") and (checktool("Fist of Darkness") or checktool("God's Chalice"))) then
__("autochest",false)
chest_b1.Text=""
else
_G.check_chest=false

local nearest
local dist = math.huge

for _, v in pairs(game.Workspace.ntt_chest:GetChildren()) do
	if string.find(v.Name,"Chest") then
		if v:FindFirstChild("TouchInterest") then
			if get_attribute(v) < 500 then
				local d = distance(v.CFrame)

				if d < dist then
					dist = d
					nearest = v
				end
			end
		else
			reset_attribute(v)
		end

	end
end

if nearest then
	_G.check_chest = true
	TP1(nearest.CFrame)

	if distance(nearest.CFrame) < 10 then
		add_attribute(nearest)
	end
end

if _G.check_chest==false and _("chesthop") then
hop()
end end end end) end end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("autochest") then
if (_("chestfruitspawn") and fruitspawn()) or (_("chestfruitdrop") and fruitdrop()) or (_("chestdarkbeard") and checktool("Fist of Darkness") or getmob("Darkbeard"))  then return end
if _("chestfruitstore") then
storefruit()
end
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
end end) end end)

end) end)

--[[Shop]]

make_textlabel(b_page3, "Shop", 0.5900000000)

_G.table_styler={
["BlackLeg"]="Dark Step Teacher",
["Electro"]="Mad Scientist",
["FishmanKarate"]="Water Kung-fu Teacher",
["DragonClaw"]="Sabi",
["DeathStep"]="Phoeyu, the Reformed",
["ElectricClaw"]="Previous Hero",
["SharkmanKarate"]="Sharkman Teacher",
["DragonTalon"]="Uzoth",
["Superhuman"]="Martial Arts Master",
["Godhuman"]="Ancient Monk",
["SanguineArt"]="Shafi"
}

_G.table_melee={}
if sea1() then
_G.table_melee={
"BlackLeg",
"Electro",
"FishmanKarate"
}
elseif sea2() then
_G.table_melee={
"BlackLeg",
"Electro",
"FishmanKarate",
"DragonClaw",
"DeathStep",
"SharkmanKarate",
"Superhuman",
}
elseif sea3() then
_G.table_melee={
"BlackLeg",
"Electro",
"FishmanKarate",
"DragonClaw",
"DeathStep",
"ElectricClaw",
"SharkmanKarate",
"DragonTalon",
"Superhuman",
"Godhuman",
"SanguineArt"
}
end

make_select1(shop_f1, shop_b1, b_page3, _("styler_select"), 0.2400000000)
shop_b1.MouseButton1Down:connect(function()
_G.ntt_frame(shop_bar1)
end)

make_selectscrollingframe(shop_bar1, main, 0.310000, 0)
make_auto_selectbutton(shop_b1,shop_bar1,_G.table_melee,"Styler",0.05,"styler_select")

make_together(shop_f2, shop_b2, b_page3, "Auto Buy Styler", 0.170000000,"buystyler")
shop_b2.MouseButton1Down:connect(function()
if shop_b2.Text == "" then --on
shop_b2.Text = "X"
_G.shop_b2 = true 
elseif shop_b2.Text == "X" then --off
shop_b2.Text = ""
_G.shop_b2 = false
end 
__("buystyler",_G.shop_b2)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("buystyler") then
if getnpc(_G.table_styler[tc(shop_b1.Text)]) then
TP1(getnpc(_G.table_styler[tc(shop_b1.Text)]).HumanoidRootPart.CFrame)
if distance(getnpc(_G.table_styler[tc(shop_b1.Text)]).HumanoidRootPart) < 10 then
if tc(shop_b1.Text)=="DragonClaw" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..tc(shop_b1.Text))
end
task.wait(2)
end end end end) end end)


make_together(shop_f3, shop_b3, b_page3, "Auto Random Fruit", 0.170000000,"randomfruit")
shop_b3.MouseButton1Down:connect(function()
if shop_b3.Text == "" then --on
shop_b3.Text = "X"
_G.shop_b3 = true 
elseif shop_b3.Text == "X" then --off
shop_b3.Text = ""
_G.shop_b3 = false
end 
__("randomfruit",_G.shop_b3)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("randomfruit") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
task.wait(1)
end end) end end)

make_together(shop_f4, shop_b4, b_page3, "Auto Random Bone", 0.170000000,"randombone")
shop_b4.MouseButton1Down:connect(function()
if shop_b4.Text == "" then --on
shop_b4.Text = "X"
_G.shop_b4 = true 
elseif shop_b4.Text == "X" then --off
shop_b4.Text = ""
_G.shop_b4 = false
end 
__("randombone",_G.shop_b4)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("randombone") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
task.wait(0.5)
end end) end end)

--[[Boss]]

make_textlabel(b_page4, "Main", 0.5900000000)

if sea1() then
_G.table_boss=_G.Setting.boss1
elseif sea2() then
_G.table_boss=_G.Setting.boss2
elseif sea3() then
_G.table_boss=_G.Setting.boss3
end

make_select1(boss_f1, boss_b1, b_page4, "Boss Select", 0.520000000)
boss_b1.MouseButton1Down:connect(function()
_G.ntt_frame(boss_bar1)
end)

make_selectscrollingframe(boss_bar1, main, 0.5900000, 0)
make_auto_selectbutton_v2(boss_bar1,tabletrue(_G.table_boss,2),0.05,_G.table_boss)

make_together(boss_f2, boss_b2, b_page4, "Auto Kill Boss", 0.170000000,"killboss")
boss_b2.MouseButton1Down:connect(function()
if boss_b2.Text == "" then --on
boss_b2.Text = "X"
_G.boss_b2 = true 
elseif boss_b2.Text == "X" then --off
boss_b2.Text = ""
_G.boss_b2 = false
end 
__("killboss",_G.boss_b2)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("killboss") then
if getmob(tabletrue(_G.table_boss,1)) then
TP1(getmob(tabletrue(_G.table_boss,1)).HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
end end end) end end)


if sea1() then

elseif sea2() then
make_textlabel(b_page4, "More", 0.5900000000)

make_together(more_f1, more_b1, b_page4, "Auto Factory", 0.170000000,"factory")
more_b1.MouseButton1Down:connect(function()
if more_b1.Text == "" then --on
more_b1.Text = "X"
_G.more_b1 = true 
elseif more_b1.Text == "X" then --off
more_b1.Text = ""
_G.more_b1 = false
end 
__("factory",_G.more_b1)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("factory") then
if getmob("Core") then
TP1(getmob("Core").HumanoidRootPart.CFrame)
usetool()
end end end) end end)

make_together(more_f2, more_b2, b_page4, "Auto Bartilo Quest", 0.170000000,"bartilo")
more_b2.MouseButton1Down:connect(function()
if more_b2.Text == "" then --on
more_b2.Text = "X"
_G.more_b2 = true 
elseif more_b2.Text == "X" then --off
more_b2.Text = ""
_G.more_b2 = false
end 
__("bartilo",_G.more_b2)
end)

bartilo=0
spawn(function()     
while task.wait() do                
pcall(function()                
if _("bartilo") then
if bartilo >=3 then return end
bartilo=game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
task.wait(2)
end end) end end)

spawn(function()     
while task.wait() do                
pcall(function()                
if bartilo >=3 then return end
if _("bartilo") then
if lv()>=800 then
if bartilo==0 then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") then 
if getmob("Swan Pirate") then                                                                  
TP1(getmob("Swan Pirate").HumanoidRootPart.CFrame* CFrame.new(0, _G.distance, 0))                                    
usetool()
else
TP1(CFrame.new(930, 150, 1192))                                 
end
else
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible = false
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
end
elseif bartilo==1 then
if getmob("Jeremy") then
TP1(getmob("Jeremy").HumanoidRootPart.CFrame * CFrame.new(0, _G.distance, 0))    
usetool()    
end 
elseif bartilo==2 then
if game.Workspace.Map.Dressrosa.CellDoor:GetChildren()[1].Transparency==0 then
local plate=game.Workspace.Map.Dressrosa.BartiloPlates
local color=Color3.fromRGB(150, 138, 125)
if plate.Plate1.Color==color then
TP1(plate.Plate1.CFrame)
else
if plate.Plate2.Color==color then
TP1(plate.Plate2.CFrame)
else
if plate.Plate3.Color==color then
TP1(plate.Plate3.CFrame)
else
if plate.Plate4.Color==color then
TP1(plate.Plate4.CFrame)
else
if plate.Plate5.Color==color then
TP1(plate.Plate5.CFrame)
else
if plate.Plate6.Color==color then
TP1(plate.Plate6.CFrame)
else
if plate.Plate7.Color==color then
TP1(plate.Plate7.CFrame)
else
if plate.Plate8.Color==color then
TP1(plate.Plate8.CFrame)
end end end end end end end end end
end end end end) end end)

elseif sea3() then
make_textlabel(b_page4, "More", 0.5900000000)

make_together(more_f1, more_b1, b_page4, "Auto Katakuri", 0.170000000,"katakuri")
more_b1.MouseButton1Down:connect(function()
if more_b1.Text == "" then --on
more_b1.Text = "X"
_G.more_b1 = true 
elseif more_b1.Text == "X" then --off
more_b1.Text = ""
_G.more_b1 = false
end 
__("katakuri",_G.more_b1)
end)

spawn(function() 
while task.wait(1) do                  
pcall(function()          
more_f1.Text="Auto Katakuri | Mob Kill "..checkkatakuri()
end) end end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if _("katakuri") then
usetool()
if getmob({"Cake Prince","Dough King"}) then
if distance(getmob({"Cake Prince","Dough King"}).HumanoidRootPart)>2000 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-2151.82153, 149.315704, -12404.9053)
end
TP1(getmob({"Cake Prince","Dough King"}).HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
else
if getmob({"Cookie Crafter","Cake Guard","Baking Staff","Head Baker"}) then
TP1(getmob({"Cookie Crafter","Cake Guard","Baking Staff","Head Baker"}).HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
else
TP1(CFrame.new(-2094, 148, -12238))
end end end end) end end)

spawn(function() 
while task.wait(2) do                  
pcall(function()          
if _("katakuri") and not getmob({"Cake Prince","Dough King"}) then
bringmob({"Cookie Crafter","Cake Guard","Baking Staff","Head Baker"})
end end) end end)

make_together(more_f2, more_b2, b_page4, "Auto Hunt Elite", 0.170000000,"elite")
more_b2.MouseButton1Down:connect(function()
if more_b2.Text == "" then --on
more_b2.Text = "X"
_G.more_b2 = true 
elseif more_b2.Text == "X" then --off
more_b2.Text = ""
_G.more_b2 = false
end 
__("elite",_G.more_b2)
end)

make_together(more_f3, more_b3, b_page4, "Elite Hop", 0.170000000,"elitehop")
more_b3.MouseButton1Down:connect(function()
if more_b3.Text == "" then --on
more_b3.Text = "X"
_G.more_b3 = true 
elseif more_b3.Text == "X" then --off
more_b3.Text = ""
_G.more_b3 = false
end 
__("elitehop",_G.more_b3)
end)

spawn(function() 
while task.wait() do                  
pcall(function()          
more_f3.Text="Auto Hunt Elite | Elite Kill "..checkelite()
task.wait(2)
end) end end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if _("elite") then
if getmob({"Diablo","Deandre","Urban"}) then
TP1(getmob({"Diablo","Deandre","Urban"}).HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
else
if _("elitehop") then
hop()
end end end end) end end)

end --[]

--[[Item]]
make_textlabel(b_page5, "Item", 0.5900000000)

if sea1() then
make_together(item_f1, item_b1, b_page5, "Auto Saber", 0.170000000,"saber")
item_b1.MouseButton1Down:connect(function()
if item_b1.Text == "" then --on
item_b1.Text = "X"
_G.item_b1 = true 
elseif item_b1.Text == "X" then --off
item_b1.Text = ""
_G.item_b1 = false
end 
__("saber",_G.item_b1)
end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if _("saber") and lv()>200 then
if game.Workspace.Map.Jungle.Final.Part.Transparency == 0 then
stickman=game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
rickson=game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
task.wait(2)
end end end) end end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if _("saber") and lv()>200 then
if ic("Saber") then return end
if game.Workspace.Map.Jungle.Final.Part.Transparency == 0 then
local plate=game.Workspace.Map.Jungle.QuestPlates
if plate.Door.Transparency==0 then
for i=1,5 do
if tostring(plate:GetChildren()[i].Button.BrickColor)~="Camo" then
TP1(plate:GetChildren()[i].Button.CFrame)
end end
else
if game.Workspace.Map.Desert.Burn.Part.Transparency==0 then
if checktool("Torch") then
tool("Torch")
TP1(CFrame.new(1114.25903, 5.28744316, 4350.3667, -0.640983939, -4.63979326e-08, 0.767554283, -1.11497158e-07, 1, -3.26621254e-08, -0.767554283, -1.06516019e-07, -0.640983939))
jump()
else
TP1(CFrame.new(-1610,12,162))
jump()
end
else
if stickman==0 then
if rickson==0 then
if getmob("Mob Leader") then
TP1(getmob("Mob Leader").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
else
TP1(CFrame.new(-2874,49,5415))
end
elseif rickson >= 1 then
if checktool("Relic") then
tool("Relic")
TP1(CFrame.new(-1405.72583, 30.2179413, 4.71080875, 0.739439011, 5.01936128e-08, 0.673223555, -5.50572494e-08, 1, -1.40846756e-08, -0.673223555, -2.66510778e-08, 0.739439011))
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
task.wait(1)
end end
else
if checktool("Cup") then
tool("Cup")
if checktool("Cup").Handle.Drop1.Transparency~=1 then
TP1(CFrame.new(1452,88,-1387))
if distance(CFrame.new(1452,88,-1387))<10 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
task.wait(1)
end
else
TP1(CFrame.new(1397.51587, 37.7139893, -1321.28259, -0.354314387, 6.82581387e-08, 0.935126364, -2.94205513e-08, 1, -8.41407797e-08, -0.935126364, -5.73242218e-08, -0.354314387))
end
else
TP1(CFrame.new(1113,6,4366))
end end end end
else
if getmob("Saber Expert") then
TP1(getmob("Saber Expert").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
else
TP1(CFrame.new(-1461,30,-51))
end end end end) end end)

elseif sea2() then
make_together(item_f1, item_b1, b_page5, "Auto Rengoku", 0.170000000,"rengoku")
item_b1.MouseButton1Down:connect(function()
if item_b1.Text == "" then --on
item_b1.Text = "X"
_G.item_b1 = true 
elseif item_b1.Text == "X" then --off
item_b1.Text = ""
_G.item_b1 = false
end 
__("rengoku",_G.item_b1)
end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if _("rengoku") then
if ic("Rengoku") then return end
if checktool("Hidden Key") then
tool("Hidden Key")             
TP1(CFrame.new(6571, 299, -6967))
else
if getmob("Awakened Ice Admiral","Snow Lurker","Arctic Warrior") then
TP1(getmob("Awakened Ice Admiral","Snow Lurker","Arctic Warrior").HumanoidRootPart.CFrame* CFrame.new(0, _G.distance, 0))
else
TP1(CFrame.new(5439, 84, -6715))
end end
end end) end end)

spawn(function()   
while task.wait(2) do                 
pcall(function()           
if _("rengoku") then                      
if ic("Rengoku") then return end
bringmob({"Arctic Warrior","Snow Lurker"})
end end) end end)           

make_together(item_f2, item_b2, b_page5, "Auto Buy Legend Sword Dealer", 0.170000000,"swordlegend")
item_b2.MouseButton1Down:connect(function()
if item_b2.Text == "" then --on
item_b2.Text = "X"
_G.item_b2 = true 
elseif item_b2.Text == "X" then --off
item_b2.Text = ""
_G.item_b2 = false
end 
__("swordlegend",_G.item_b2)
end)

spawn(function()    
while task.wait(2) do       
pcall(function()
if _("swordlegend") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer",2)
end end) end end)

elseif sea3() then

make_together(item_f1, item_b1, b_page5, "Auto Yama/Hop", 0.170000000,"yama")
item_b1.MouseButton1Down:connect(function()
if item_b1.Text == "" then --on
item_b1.Text = "X"
_G.item_b1 = true 
elseif item_b1.Text == "X" then --off
item_b1.Text = ""
_G.item_b1 = false
end 
__("yama",_G.item_b1)
end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if _("yama") then
if ic("Yama") then return end
if getmob({"Diablo","Deandre","Urban"}) then
TP1(getmob({"Diablo","Deandre","Urban"}).HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
else
hop()
end end end) end end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if ic("Yama") then return end
if _("yama") and checkelite()>=30 then
fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)                  
end end) end end)

make_together(item_f2, item_b2, b_page5, "Auto Scyther", 0.170000000,"scyther")
item_b2.MouseButton1Down:connect(function()
if item_b2.Text == "" then --on
item_b2.Text = "X"
_G.item_b2 = true 
elseif item_b2.Text == "X" then --off
item_b2.Text = ""
_G.item_b2 = false
end 
__("scyther",_G.item_b2)
end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if _("scyther") then
if ic("Hallow Scythe") then return end
if checktool("Hallow Essence") then
tool("Hallow Essence")
TP1(CFrame.new(-8933,142,6062))
else
usetool()
if getmob("Soul Reaper") then
TP1(getmob("Soul Reaper").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
else
if getmob({"Living Zombie","Posessed Mummy","Demonic Soul"}) then
TP1(getmob({"Living Zombie","Posessed Mummy","Demonic Soul"}).HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
else
TP1(CFrame.new(-9717, 65, 6041))
end end end
end end) end end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if _("scyther") then
if ic("Hallow Scythe") then return end
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
task.wait(0.5)
end end) end end)

spawn(function() 
while task.wait(2) do                  
pcall(function()          
if _("scyther") then
if ic("Hallow Scythe") then return end
bringmob({"Living Zombie","Posessed Mummy","Demonic Soul"})
end end) end end)

make_together(item_f3, item_b3, b_page5, "Auto Tushita | Need Have Boss Rip Indra", 0.170000000,"tushita")
item_b3.MouseButton1Down:connect(function()
if item_b3.Text == "" then --on
item_b3.Text = "X"
_G.item_b3 = true 
elseif item_b3.Text == "X" then --off
item_b3.Text = ""
_G.item_b3 = false
end 
__("tushita",_G.item_b3)
end)

spawn(function() 
while task.wait() do                  
pcall(function()          
if _("tushita") then
if ic("Tushita") then return end
local turle=game.Workspace.Map.Turtle
if turle:FindFirstChild("TushitaGate") then
if getmob("rip_indra True Form") then
if checktool("Holy Torch") then
tool("Holy Torch")
for i=1,5 do
local torch=turle.QuestTorches["Torch"..i]
if torch.Particles.PointLight.Enabled==false then
TP1(torch.CFrame)
break
end end
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(5713,18,255)
end end
else
print(2)
if getmob("Longma") then
TP1(getmob("Longma").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
else
TP1(CFrame.new(-10076,389,-9550))
end end end end) end end)

make_together(item_f4, item_b4, b_page5, "Auto Soul Guitar", 0.170000000,"guitar")
item_b4.MouseButton1Down:connect(function()
if item_b4.Text == "" then --on
item_b4.Text = "X"
_G.item_b4 = true 
elseif item_b4.Text == "X" then --off
item_b4.Text = ""
_G.item_b4 = false
end 
__("guitar",_G.item_b4)
end)

make_together(item_f5, item_b5, b_page5, "Auto CDK", 0.170000000,"cdk")
item_b5.MouseButton1Down:connect(function()
if item_b5.Text == "" then --on
item_b5.Text = "X"
_G.item_b5 = true 
elseif item_b5.Text == "X" then --off
item_b5.Text = ""
_G.item_b5 = false
end 
__("cdk",_G.item_b5)
end)

end --[]

--[[Esp/Fruit]]

make_textlabel(b_page6, "Esp", 0.5900000000)

make_together(esp_f1, esp_b1, b_page6, "Esp Player", 0.170000000,"esp_player")
esp_b1.MouseButton1Down:connect(function()
if esp_b1.Text == "" then --on
esp_b1.Text = "X"
_G.esp_b1 = true 
elseif esp_b1.Text == "X" then --off
esp_b1.Text = ""
_G.esp_b1 = false
end 
__("esp_player",_G.esp_b1)
end)

spawn(function()
while task.wait() do
pcall(function()
if _("esp_player") then
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if not v.Character.HumanoidRootPart:FindFirstChild("PlayerESP") then
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = v.Character.HumanoidRootPart
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.Name = "PlayerESP"
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 200, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Text.Size = 100
TextLabel.TextStrokeTransparency = 0
TextLabel.TextWrapped = true
end
local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude)                       
if v.Data:FindFirstChild("Level") then                        
v.Character.HumanoidRootPart:FindFirstChild("PlayerESP").TextLabel.Text = v.Name.." | Level "..v.Data.Level.Value.."\n\n"..Dis.." M."                                   
end end end
else
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Character.HumanoidRootPart:FindFirstChild("PlayerESP") then
v.Character.HumanoidRootPart.PlayerESP:Destroy()
end end end end end) end end)

make_together(esp_f2, esp_b2, b_page6, "Esp Fruit", 0.170000000,"esp_fruit")
esp_b2.MouseButton1Down:connect(function()
if esp_b2.Text == "" then --on
esp_b2.Text = "X"
_G.esp_b2 = true 
elseif esp_b2.Text == "X" then --off
esp_b2.Text = ""
_G.esp_b2 = false
end 
__("esp_fruit",_G.esp_b2)
end)

spawn(function()
while task.wait() do
pcall(function()
if _("esp_fruit") then
for i,v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Tool") or v.Name == "Fruit" or v.Name:match('Fruit') then
if v:FindFirstChild("Handle") then
if not v.Handle:FindFirstChild("FruitESP") then
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = v.Handle
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.Name = "FruitESP"
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 200, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Text.Size = 100
TextLabel.TextStrokeTransparency = 0
TextLabel.TextWrapped = true
end
local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude)
v.Handle.FruitESP.TextLabel.Text = v.Name.."\n"..Dis.." M."
end end end
else
for i,v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Handle") then
if v.Handle:FindFirstChild("FruitESP") then
v.Handle.FruitESP:Destroy()
end end end end end end) end end)

make_together(esp_f3, esp_b3, b_page6, "Esp Island", 0.170000000,"esp_island")
esp_b3.MouseButton1Down:connect(function()
if esp_b3.Text == "" then --on
esp_b3.Text = "X"
_G.esp_b3 = true 
elseif esp_b3.Text == "X" then --off
esp_b3.Text = ""
_G.esp_b3 = false
end 
__("esp_island",_G.esp_b3)
end)

spawn(function()
while task.wait() do
pcall(function()
if _("esp_island") then
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
if not v:FindFirstChild("IslandEsp") then
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = v
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.Name = "IslandEsp"
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 200, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Text.Size = 35
TextLabel.TextStrokeTransparency = 0
TextLabel.TextWrapped = true
end
local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10)
v.IslandEsp.TextLabel.Text = v.Name.."\n".."["..Dis.."]"
end
else
for i,v in pairs (game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
if v:FindFirstChild("IslandEsp") then
v.IslandEsp:Destroy()
end end end end) end end)

make_textlabel(b_page6, "Fruit", 0.5900000000)

make_together(fruit_f1, fruit_b1, b_page6, "Teleport Fruit Spawn", 0.170000000,"fruit_spawn")
fruit_b1.MouseButton1Down:connect(function()
if fruit_b1.Text == "" then --on
fruit_b1.Text = "X"
_G.fruit_b1 = true 
elseif fruit_b1.Text == "X" then --off
fruit_b1.Text = ""
_G.fruit_b1 = false
end 
__("fruit_spawn",_G.fruit_b1)
end)

spawn(function()
while task.wait() do
pcall(function()
if _("fruit_spawn") and fruitspawn() then
TP1(fruitspawn().CFrame)
end end) end end)

make_together(fruit_f2, fruit_b2, b_page6, "Teleport Fruit Drop", 0.170000000,"fruit_drop")
fruit_b2.MouseButton1Down:connect(function()
if fruit_b2.Text == "" then --on
fruit_b2.Text = "X"
_G.fruit_b2 = true 
elseif fruit_b2.Text == "X" then --off
fruit_b2.Text = ""
_G.fruit_b2 = false
end 
__("fruit_drop",_G.fruit_b2)
end)

spawn(function()
while task.wait() do
pcall(function()
if _("fruit_drop") and fruitdrop() then
TP1(fruitdrop().CFrame)
end end) end end)

make_together(fruit_f3, fruit_b3, b_page6, "Auto Store Fruit", 0.170000000,"fruit_store")
fruit_b3.MouseButton1Down:connect(function()
if fruit_b3.Text == "" then --on
fruit_b3.Text = "X"
_G.fruit_b3 = true 
elseif fruit_b3.Text == "X" then --off
fruit_b3.Text = ""
_G.fruit_b3 = false
end 
__("fruit_store",_G.fruit_b3)
end)

spawn(function()
while task.wait() do
pcall(function()
if _("fruit_store") then
storefruit()
end end) end end)

--[[Sea Event]]

make_textlabel(b_page7, "Setting", 0.5900000000)

make_select1(se_f1, se_b1, b_page7, _("seaevent_tool"), 0.10000000)
se_b1.MouseButton1Down:connect(function()
_G.ntt_frame(se_bar1)
end)

make_selectscrollingframe(se_bar1, main, 0.1700000, 0)
make_auto_selectbutton(se_b1,se_bar1,_G.table_tool,"Tool",0.05,"seaevent_tool")

make_select1(se_f2, se_b2, b_page7, "Multi Tool Select", 0.520000000)
se_b2.MouseButton1Down:connect(function()
_G.ntt_frame(se_bar2)
end)

make_selectscrollingframe(se_bar2, main, 0.5900000, 0)
make_auto_selectbutton_v2(se_bar2,tabletrue(_G.Setting.seaevent_multitool,2),0.05,_G.Setting.seaevent_multitool)

make_select1(se_f13, se_b13, b_page7, "Skill Select", 0.520000000)
se_b13.MouseButton1Down:connect(function()
_G.ntt_frame(se_bar5)
end)

make_selectscrollingframe(se_bar5, main, 0.5900000, 0)
make_auto_selectbutton_v2(se_bar5,table_skill,0.05,_G.Setting.skill)

make_select1(se_f3, se_b3, b_page7, _("seaevent_lv"), 0.10000000)
se_b3.MouseButton1Down:connect(function()
_G.ntt_frame(se_bar3)
end)

make_selectscrollingframe(se_bar3, main, 0.1700000, 0)
make_auto_selectbutton(se_b3,se_bar3,{1,2,3,4,5,6},"Level",0.05,"seaevent_lv")

make_select1(se_f4, se_b4, b_page7, "Sea Event Mob Select", 0.520000000)
se_b4.MouseButton1Down:connect(function()
_G.ntt_frame(se_bar4)
end)

make_selectscrollingframe(se_bar4, main, 0.5900000, 0)
make_auto_selectbutton_v2(se_bar4,tabletrue(_G.Setting.seaevent_mob,2),0.05,_G.Setting.seaevent_mob)

make_together(se_f5, se_b5, b_page7, "Auto Run Rough Sea", 0.170000000,"roughsea")
se_b5.MouseButton1Down:connect(function()
if se_b5.Text == "" then --on
se_b5.Text = "X"
_G.se_b5 = true 
elseif se_b5.Text == "X" then --off
se_b5.Text = ""
_G.se_b5 = false
end 
__("roughsea",_G.se_b5)
end)

make_together(se_f6, se_b6, b_page7, "Speed Boat", 0.170000000,"speedboat")
se_b6.MouseButton1Down:connect(function()
if se_b6.Text == "" then --on
se_b6.Text = "X"
_G.se_b6 = true 
elseif se_b6.Text == "X" then --off
se_b6.Text = ""
_G.se_b6 = false
end 
__("speedboat",_G.se_b6)
end)

make_slider_value(b_page7,"Speed Boat Value",35,500, 0.45,"speedboat_value")

game:GetService('RunService').RenderStepped:connect(function()
_G.speedboat=_("speedboat_value")
if _("speedboat") then
for _, boat in pairs(game.Workspace.Boats:GetChildren()) do       
if boat:IsA("Model") then           
for _, child in pairs(boat:GetChildren()) do                
if child:IsA("VehicleSeat") then                   
child.MaxSpeed = _G.speedboat                    
end end end end end end)

make_textlabel(b_page7, "Main", 0.5900000000)

make_together(se_f7, se_b7, b_page7, "Start Farm Sea Event", 0.170000000,"seaevent_start")
se_b7.MouseButton1Down:connect(function()
if se_b7.Text == "" then --on
se_b7.Text = "X"
_G.se_b7 = true 
elseif se_b7.Text == "X" then --off
se_b7.Text = ""
_G.se_b7 = false
end 
__("seaevent_start",_G.se_b7)
end)

make_together(se_f14, se_b14, b_page7, "Auto Drive Boat", 0.170000000,"seaevent_drive")
se_b14.MouseButton1Down:connect(function()
if se_b14.Text == "" then --on
se_b14.Text = "X"
_G.se_b14 = true 
elseif se_b14.Text == "X" then --off
se_b14.Text = ""
_G.se_b14 = false
end 
__("seaevent_drive",_G.se_b14)
end)

spawn(function()
while task.wait() do
pcall(function()
if _("seaevent_drive") and game.Players.LocalPlayer.Character.Humanoid.Sit then
for _, v in pairs(game.Workspace.Boats:GetChildren()) do
if v.ClassName=="Model" and v:FindFirstChild("VehicleSeat") and distance(v.VehicleSeat) < 100 and v.VehicleSeat.CFrame.Y>-2 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
end end end end) end end)

if sea3() then
make_textlabel(b_page7, "Mirage", 0.5900000000)

make_together(se_f8, se_b8, b_page7, "Auto Mirage Island", 0.170000000,"mirage")
se_b8.MouseButton1Down:connect(function()
if se_b8.Text == "" then --on
se_b8.Text = "X"
_G.se_b8 = true 
elseif se_b8.Text == "X" then --off
se_b8.Text = ""
_G.se_b8 = false
end 
__("mirage",_G.se_b8)
end)

make_together(se_f9, se_b9, b_page7, "Auto Teleport Gear", 0.170000000,"tpgear")
se_b9.MouseButton1Down:connect(function()
if se_b9.Text == "" then --on
se_b9.Text = "X"
_G.se_b9 = true 
elseif se_b9.Text == "X" then --off
se_b9.Text = ""
_G.se_b9 = false
end 
__("tpgear",_G.se_b9)
end)

make_textlabel(b_page7, "Kitsune", 0.5900000000)

make_together(se_f10, se_b10, b_page7, "Auto Kitsune Island", 0.170000000,"kitsune")
se_b10.MouseButton1Down:connect(function()
if se_b10.Text == "" then --on
se_b10.Text = "X"
_G.se_b10 = true 
elseif se_b10.Text == "X" then --off
se_b10.Text = ""
_G.se_b10 = false
end 
__("kitsune",_G.se_b10)
end)

make_together(se_f11, se_b11, b_page7, "Auto Teleport Azure Ember", 0.170000000,"azure")
se_b11.MouseButton1Down:connect(function()
if se_b11.Text == "" then --on
se_b11.Text = "X"
_G.se_b11 = true 
elseif se_b11.Text == "X" then --off
se_b11.Text = ""
_G.se_b11 = false
end 
__("azure",_G.se_b11)
end)

make_together(se_f12, se_b12, b_page7, "Auto Random Azure Ember", 0.170000000,"random_azure")
se_b12.MouseButton1Down:connect(function()
if se_b12.Text == "" then --on
se_b12.Text = "X"
_G.se_b12 = true 
elseif se_b12.Text == "X" then --off
se_b12.Text = ""
_G.se_b12 = false
end 
__("random_azure",_G.se_b12)
end)

end --[]

function seaeventtrue()
if _G.Setting.seaevent_mob["Piranha"] and getmobsea("Piranha") or
_G.Setting.seaevent_mob["Terrorshark"] and getmobsea("Terrorshark") or
_G.Setting.seaevent_mob["Shark"] and getmobsea("Shark") or
_G.Setting.seaevent_mob["Ghost Ship"] and getship() or
_G.Setting.seaevent_mob["Sea Beast"] and getseabeast() then
return true
end end

lvsea = {
    CFrame.new(-21813, 35, -183),
    CFrame.new(-24418, 35, -13535),
    CFrame.new(-26263, 35, -19753),
    CFrame.new(-27317,35,-23148),
    CFrame.new(-34239, 35, -20808),
    CFrame.new(-41600, 35, -18369)
}

tpsea=true
spawn(function()
while task.wait() do
pcall(function()

if mirage() then
if _("tpgear") and gear() then
TP1(gear().CFrame)
return
else
if _("mirage") then
TP1(mirage().Center.CFrame*CFrame.new(0,500,0))
return
end end end

if kitsune() then
if _("azure") and azure_ember() then
TP1(azure_ember().CFrame)
return
else
if _("kitsune") then
TP1(kitsune().CFrame*CFrame.new(0,-50,0))
return
end end end

if _("seaevent_start") then

if myboat() or seaeventtrue() then
if tpsea then
if sea2() then
levelsea=CFrame.new(-778.713196, 35.1660156, 7954.81982, -0.972539663, -0.0197911318, -0.23189424, -0.020340668, 0.999793112, -2.12683772e-05, 0.231846675, 0.0046961992, -0.972741008)
elseif sea3() then
levelsea=lvsea[tonumber(tc(se_b3.Text))]
end
if game.Players.LocalPlayer.Character.Humanoid.Sit then
TP1(levelsea)
if distance(levelsea) < 100 then
tpsea=false
end
else
TP1(myboat().CFrame)
end

else --[[tpsea false]]

if  _G.Setting.seaevent_mob["Piranha"] and getmobsea("Piranha") then
unsit()
--_G.pos_skill=getmobsea("Piranha").HumanoidRootPart.Position
TP1(getmobsea("Piranha").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
else
if  _G.Setting.seaevent_mob["Fish Crew"] then
unsit()
usetoolsea()
TP1(getmobsea("Fish Crew").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
else
if _G.Setting.seaevent_mob["Ghost Ship"] and getship() then
TP1(getship().CFrame*CFrame.new(0,-40,0))
--_G.pos_skill=(getship().CFrame*CFrame.new(0,-40,0)).Position
myboat().CFrame=getship().CFrame*CFrame.new(200,20,-100)
unsit()
else
if  _G.Setting.seaevent_mob["Terrorshark"] and getmobsea("Terrorshark") then
unsit()
--_G.pos_skill=getmobsea("Terrorshark").HumanoidRootPart.Position
TP1(getmobsea("Terrorshark").HumanoidRootPart.CFrame*CFrame.new(0,200,0))
else
if _G.Setting.seaevent_mob["Shark"] and getmobsea("Shark") then
unsit()
--_G.pos_skill=getmobsea("Shark").HumanoidRootPart.Position
TP1(getmobsea("Shark").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
else
if _G.Setting.seaevent_mob["Sea Beast"] and getseabeast() then
unsit()
TP1(getseabeast().CFrame*CFrame.new(math.random(-100,100),300,math.random(-100,100)))
--_G.pos_skill=(getseabeast().CFrame*CFrame.new(0,180,0)).Position
myboat().CFrame=getseabeast().CFrame*CFrame.new(300,200,0)
else --[[not sea event]]

if game.Players.LocalPlayer.Character.Humanoid.Sit==false then
TP1(myboat().CFrame)
else
if _("roughsea") then
for i,v in pairs(game.Workspace._WorldOrigin.Locations:GetChildren()) do
if v.ClassName=="Part" and string.find(v.Name, "Rough")  then
if distance(v.CFrame) <= 1000 then
TP1(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(40,0,0))
end end end
end end
end end end end end end
end --[[tpsea false]]
else --[not boat]
tpsea=true
if sea2() then
posbuyboat=CFrame.new(85,10,2956)
elseif sea3() then
posbuyboat=CFrame.new(-16922, 9.4, 463)
end
TP1(posbuyboat)
if distance(posbuyboat)<10 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat","Guardian")
task.wait(1)
end

end --[not boat]
end end) end end)

game:GetService('RunService').RenderStepped:connect(function()
if _("seaevent_start") then
if (myboat() or seaeventtrue()) and tpsea==false then
if  _G.Setting.seaevent_mob["Piranha"] and getmobsea("Piranha") then
skill(getmobsea("Piranha").HumanoidRootPart.Position)
else
if _G.Setting.seaevent_mob["Ghost Ship"] and getship() then
skill((getship().CFrame*CFrame.new(0,-40,0)).Position)
else
if  _G.Setting.seaevent_mob["Terrorshark"] and getmobsea("Terrorshark") then
skill(getmobsea("Terrorshark").HumanoidRootPart.Position)
else
if _G.Setting.seaevent_mob["Shark"] and getmobsea("Shark") then
unsit()
skill(getmobsea("Shark").HumanoidRootPart.Position)
else
if _G.Setting.seaevent_mob["Sea Beast"] and getseabeast() then
skill((getseabeast().CFrame*CFrame.new(0,180,0)).Position)
end end end end end end end end)

spawn(function()
while task.wait() do
pcall(function()
if _("seaevent_start") and seaeventtrue() and tpsea==false then
for name, state in pairs(_G.Setting.seaevent_multitool) do
if state then
tool(name)
task.wait(.2)
end end end end) end end)

spawn(function()
while task.wait() do
pcall(function()
if _("random_azure") and kitsune() then
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/KitsuneStatuePray"):InvokeServer()
task.wait(1)
end end) end end)

--[[AimBot]]

make_textlabel(b_page8, "AimBot", 0.5900000000)

make_select1(aim_f1, aim_b1, b_page8, _("aim_player"), 0.10000000)
aim_b1.MouseButton1Down:connect(function()
if aim_bar1.Visible==false then
aim_bar1:Destroy()
aim_bar1 = Instance.new("ScrollingFrame")
make_selectscrollingframe(aim_bar1, main, 0.1700000, 0)
make_auto_selectbutton(aim_b1,aim_bar1,getlistplayer(),"Player",0.05,"aim_player")
aim_bar1.Visible=true
else
aim_bar1.Visible=false
end end)

make_selectscrollingframe(aim_bar1, main, 0.1700000, 0)
make_auto_selectbutton(aim_b1,aim_bar1,getlistplayer(),"Player",0.05,"aim_player")

make_together(aim_f2, aim_b2, b_page8, "Teleport Player", 0.170000000,"aim_tp")
aim_b2.MouseButton1Down:connect(function()
if aim_b2.Text == "" then --on
aim_b2.Text = "X"
_G.aim_b2 = true 
elseif aim_b2.Text == "X" then --off
aim_b2.Text = ""
_G.aim_b2 = false
end 
__("aim_tp",_G.aim_b2)
end)

spawn(function()
while task.wait() do
pcall(function()
if _("aim_tp") then
for i,v in pairs(game.Players:GetPlayers()) do                    
if v.Name == tc(aim_b1.Text) then
TP1(v.Character.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
end end end end) end end)

make_together(aim_f3, aim_b3, b_page8, "Aim Bot Player Select", 0.170000000,"aim_select")
aim_b3.MouseButton1Down:connect(function()
if aim_b3.Text == "" then --on
aim_b3.Text = "X"
_G.aim_b3 = true 
elseif aim_b3.Text == "X" then --off
aim_b3.Text = ""
_G.aim_b3 = false
end 
__("aim_select",_G.aim_b3)
end)

game:GetService('RunService').RenderStepped:connect(function()
pcall(function()
if _("aim_select") then
for i,v in pairs(game.Players:GetPlayers()) do                    
if v.Name == tc(aim_b1.Text) then
_G.pos_skill=v.Character.HumanoidRootPart.Position
end end end end) end)

make_together(aim_f4, aim_b4, b_page8, "Aim Player Near", 0.170000000,"aim_near")
aim_b4.MouseButton1Down:connect(function()
if aim_b4.Text == "" then --on
aim_b4.Text = "X"
_G.aim_b4 = true 
elseif aim_b4.Text == "X" then --off
aim_b4.Text = ""
_G.aim_b4 = false
end 
__("aim_near",_G.aim_b4)
end)

make_slider_value(b_page8,"Distance Near",100,500, 0.45,"aim_value")

game:GetService('RunService').RenderStepped:connect(function()
pcall(function()          
if _("aim_near") then 
for i,v in pairs(game.Players:GetPlayers()) do                    
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
if distance(v.Character.HumanoidRootPart) < _("aim_value") then
_G.pos_skill=v.Character.HumanoidRootPart.Position
end end end end end end) end)

make_textlabel(b_page8, "Auto Skill", 0.5900000000)

make_together(skillauto_f1, skillauto_b1, b_page8, "Auto Skill Player Near", 0.170000000,"skillauto_near")
skillauto_b1.MouseButton1Down:connect(function()
if skillauto_b1.Text == "" then --on
skillauto_b1.Text = "X"
_G.skillauto_b1 = true 
elseif skillauto_b1.Text == "X" then --off
skillauto_b1.Text = ""
_G.skillauto_b1 = false
end 
__("skillauto_near",_G.skillauto_b1)
end)

make_select1(skillauto_f2, skillauto_b2, b_page8, "Skill Auto Select", 0.520000000)
skillauto_b2.MouseButton1Down:connect(function()
_G.ntt_frame(skillauto_bar1)
end)

make_selectscrollingframe(skillauto_bar1, main, 0.5900000, 0)
make_auto_selectbutton_v2(skillauto_bar1,table_skill,0.05,_G.Setting.skillauto)

make_slider_value(b_page8,"Distance Skill Near Value",30,100, 0.45,"skillauto_value")

game:GetService('RunService').RenderStepped:connect(function()
pcall(function()          
if _("skillauto_near") then 
for i,v in pairs(game.Players:GetPlayers()) do                    
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
if distance(v.Character.HumanoidRootPart) < _("skillauto_value") then
skillauto(v.Character.HumanoidRootPart.Position)
end end end end end end) end)

--[[Auto Skill]]

pos1={}
for i=1,100 do
pos1[i]=0
end

make_textlabel(b_page15, "Auto Skill", pos1[1])

make_select1(cb_f2, cb_b2, b_page15, _("player"), pos1[2])
cb_b2.MouseButton1Down:connect(function()
if cb_bar1.Visible==false then
cb_bar1:Destroy()
cb_bar1 = Instance.new("ScrollingFrame")
make_selectscrollingframe(cb_bar1, main, 0.1700000, 0)
make_auto_selectbutton(cb_b2,cb_bar1,getlistplayer(),"Player",0.05,"player")
cb_bar1.Visible=true
else
cb_bar1.Visible=false
end end)

make_auto_selectbutton(cb_b2,cb_bar1,getlistplayer(),"Player",0.05,"player")

make_together(cb_f4, cb_b4 , b_page15, "Teleport to Player",  pos1[4],"fake")
cb_b4.MouseButton1Down:connect(function()
--on off 
if cb_b4.Text == "" then --on
cb_b4.Text = "X"
_G.cb_b4 = true
elseif cb_b4.Text == "X" then --off
cb_b4.Text = ""
_G.cb_b4 = false
end end)

make_together(cb_f5, cb_b5 , b_page15, " Auto Skill Player You Select",  pos1[5],"skillplayerselect")
cb_b5.MouseButton1Down:connect(function()
--on off 
if cb_b5.Text == "" then --on
cb_b5.Text = "X"
_G.cb_b5 = true
elseif cb_b5.Text == "X" then --off
cb_b5.Text = ""
_G.cb_b5 = false
end
__("skillplayerselect",_G.cb_b5)
end)

make_together(cb_f6, cb_b6 , b_page15, " Auto Skill Player Near",  pos1[6],"skillplayernear")
cb_b6.MouseButton1Down:connect(function()
--on off 
if cb_b6.Text == "" then --on
cb_b6.Text = "X"
_G.cb_b6 = true
elseif cb_b6.Text == "X" then --off
cb_b6.Text = ""
_G.cb_b6 = false
end
__("skillplayernear",_G.cb_b6)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000,pos1[7],"skillplayernear0")

make_textlabel(b_page15, "Setting Skill", pos1[8])

make_together(cb_f7, cb_b7 , b_page15, "Turn on Melee Skill",  pos1[9],"om")
cb_b7.MouseButton1Down:connect(function()
--on off 
if cb_b7.Text == "" then --on
cb_b7.Text = "X"
_G.cb_b7 = true
elseif cb_b7.Text == "X" then --off
cb_b7.Text = ""
_G.cb_b7 = false
end
__("om",_G.cb_b7)
end)

make_together(cb_f8, cb_b8 , b_page15, "Turn on Fruit Skill",  pos1[10],"of")
cb_b8.MouseButton1Down:connect(function()
--on off 
if cb_b8.Text == "" then --on
cb_b8.Text = "X"
_G.cb_b8 = true
elseif cb_b8.Text == "X" then --off
cb_b8.Text = ""
_G.cb_b8 = false
end
__("of",_G.cb_b8)
end)

make_together(cb_f9, cb_b9 , b_page15, "Turn on Sword Skill",  pos1[11],"os")
cb_b9.MouseButton1Down:connect(function()
if cb_b9.Text == "" then
cb_b9.Text = "X"
_G.cb_b9 = true
elseif cb_b9.Text == "X" then
cb_b9.Text = ""
_G.cb_b9 = false
end
__("os",_G.cb_b9)
end)

make_together(cb_f10, cb_b10 , b_page15, "Turn on Gun Skill",  pos1[12],"og")
cb_b10.MouseButton1Down:connect(function()
if cb_b10.Text == "" then
cb_b10.Text = "X"
_G.cb_b10 = true
elseif cb_b10.Text == "X" then
cb_b10.Text = ""
_G.cb_b10 = false
end
__("og",_G.cb_b10)
end)

make_textlabel(b_page15, "Setting Skill Melee", pos1[13])

make_together(cb_f11, cb_b11 , b_page15, "Skill Z",  pos1[14],"mz")
cb_b11.MouseButton1Down:connect(function()
if cb_b11.Text == "" then
cb_b11.Text = "X"
_G.cb_b11 = true
elseif cb_b11.Text == "X" then
cb_b11.Text = ""
_G.cb_b11 = false
end
__("mz",_G.cb_b11)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[15],"mdz")

make_together(cb_f12, cb_b12 , b_page15, "Skill X",  pos1[16],"mx")
cb_b12.MouseButton1Down:connect(function()
if cb_b12.Text == "" then
cb_b12.Text = "X"
_G.cb_b12 = true
elseif cb_b12.Text == "X" then
cb_b12.Text = ""
_G.cb_b12 = false
end
__("mx",_G.cb_b12)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[17],"mdx")

make_together(cb_f13, cb_b13 , b_page15, "Skill C",  pos1[18],"mc")
cb_b13.MouseButton1Down:connect(function()
if cb_b13.Text == "" then
cb_b13.Text = "X"
_G.cb_b13 = true
elseif cb_b13.Text == "X" then
cb_b13.Text = ""
_G.cb_b13 = false
end
__("mc",_G.cb_b13)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[19],"mdc")

make_textlabel(b_page15, "Setting Skill Sword", pos1[20])

make_together(cb_f14, cb_b14 , b_page15, "Skill Z",  pos1[21],"sz")
cb_b14.MouseButton1Down:connect(function()
if cb_b14.Text == "" then
cb_b14.Text = "X"
_G.cb_b14 = true
elseif cb_b14.Text == "X" then
cb_b14.Text = ""
_G.cb_b14 = false
end
__("sz",_G.cb_b14)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[22],"sdz")

make_together(cb_f15, cb_b15 , b_page15, "Skill X",  pos1[23],"sx")
cb_b15.MouseButton1Down:connect(function()
if cb_b15.Text == "" then
cb_b15.Text = "X"
_G.cb_b15 = true
elseif cb_b15.Text == "X" then
cb_b15.Text = ""
_G.cb_b15 = false
end
__("sx",_G.cb_b15)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[24],"sdx")

make_textlabel(b_page15, "Setting Skill Gun", pos1[25])

make_together(cb_f16, cb_b16 , b_page15, "Skill Z",  pos1[26],"gz")
cb_b16.MouseButton1Down:connect(function()
if cb_b16.Text == "" then
cb_b16.Text = "X"
_G.cb_b16 = true
elseif cb_b16.Text == "X" then
cb_b16.Text = ""
_G.cb_b16 = false
end
__("gz",_G.cb_b16)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[27],"gdz")

make_together(cb_f17, cb_b17 , b_page15, "Skill X",  pos1[28],"gx")
cb_b17.MouseButton1Down:connect(function()
if cb_b17.Text == "" then
cb_b17.Text = "X"
_G.cb_b17 = true
elseif cb_b17.Text == "X" then
cb_b17.Text = ""
_G.cb_b17 = false
end
__("gx",_G.cb_b17)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[29],"gdx")

make_textlabel(b_page15, "Setting Skill Fruit", pos1[30])

make_together(cb_f18, cb_b18 , b_page15, "Skill Z",  pos1[31],"fz")
cb_b18.MouseButton1Down:connect(function()
if cb_b18.Text == "" then
cb_b18.Text = "X"
_G.cb_b18 = true
elseif cb_b18.Text == "X" then
cb_b18.Text = ""
_G.cb_b18 = false
end
__("fz",_G.cb_b18)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[32],"fdz")

make_together(cb_f19, cb_b19 , b_page15, "Skill X",  pos1[33],"fx")
cb_b19.MouseButton1Down:connect(function()
if cb_b19.Text == "" then
cb_b19.Text = "X"
_G.cb_b19 = true
elseif cb_b19.Text == "X" then
cb_b19.Text = ""
_G.cb_b19 = false
end
__("fx",_G.cb_b19)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[34],"fdx")

make_together(cb_f20, cb_b20 , b_page15, "Skill C",  pos1[35],"fc")
cb_b20.MouseButton1Down:connect(function()
if cb_b20.Text == "" then
cb_b20.Text = "X"
_G.cb_b20 = true
elseif cb_b20.Text == "X" then
cb_b20.Text = ""
_G.cb_b20 = false
end
__("fc",_G.cb_b20)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[36],"fdc")

make_together(cb_f21, cb_b21 , b_page15, "Skill V",  pos1[37],"fv")
cb_b21.MouseButton1Down:connect(function()
if cb_b21.Text == "" then
cb_b21.Text = "X"
_G.cb_b21 = true
elseif cb_b21.Text == "X" then
cb_b21.Text = ""
_G.cb_b21 = false
end
__("fv",_G.cb_b21)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[38],"fdv")

make_together(cb_f22, cb_b22 , b_page15, "Skill F",  pos1[39],"ff")
cb_b22.MouseButton1Down:connect(function()
if cb_b22.Text == "" then
cb_b22.Text = "X"
_G.cb_b22 = true
elseif cb_b22.Text == "X" then
cb_b22.Text = ""
_G.cb_b22 = false
end
__("ff",_G.cb_b22)
end)

make_slider_value(b_page15,"Distance Auto Skill",10,1000, pos1[40],"fdf")

--[[Code Auto Skill]]

spawn(function() 
while task.wait() do                  
pcall(function()          
if _G.cb_b4 then 
nameprl=string.sub(cb_b2.Text,10)
if game:GetService("Players"):FindFirstChild(nameprl) then
TP1(game:GetService("Players")[nameprl].Character.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
end end end) end end)

game:GetService('RunService').RenderStepped:connect(function()
if _("skillplayerselect") then 
nameprl=string.sub(cb_b2.Text,10)
if game:GetService("Players"):FindFirstChild(nameprl) then
skill_combat(game:GetService("Players")[nameprl].Character.HumanoidRootPart.Position)
end end end)

game:GetService('RunService').RenderStepped:connect(function()
if _("skillplayernear") then 
for i,v in pairs(game.Players:GetChildren()) do                    
if v.Name ~= game.Players.LocalPlayer.Name then
pcall(function()
if distance(v.Character.HumanoidRootPart) < _("skillplayernear0") then
skill_combat(v.Character.HumanoidRootPart.Position)
end end) end end end end)

function skill_combat(x)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v.ToolTip=="Melee" and _("om") then
if distance(x) < _("mdz") and _("mz") then
skill_("Z",x)
end
if distance(x) < _("mdx") and _("mx") then
skill_("X",x)
end
if distance(x) < _("mdc") and _("mc") then
skill_("C",x)
end

elseif v.ToolTip=="Sword" and _("os") then
if distance(x) < _("sdz") and _("sz") then
skill_("Z",x)
end
if distance(x) < _("sdx") and _("sx") then
skill_("X",x)
end

elseif v.ToolTip=="Gun" and _("og") then
if distance(x) < _("gdz") and _("gz") then
skill_("Z",x)
end
if distance(x) < _("gdx") and _("gx") then
skill_("X",x)
end 

elseif v.ToolTip=="Blox Fruit" and _("of") then
if distance(x) < _("fdz") and _("fz") then
skill_("Z",x)
end
if distance(x) < _("fdx") and _("fx") then
skill_("X",x)
end
if distance(x) < _("fdc") and _("fc") then
skill_("C",x)
end
if distance(x) < _("fdv") and _("fv") then
skill_("V",x)
end
if distance(x) < _("fdf") and _("ff") then
skill_("F",x)
end
end end end end

--[[Player/Miss]]

make_textlabel(b_page9, "Player", 0.5900000000)

make_together(prl_f1, prl_b1, b_page9, "Walk On Water", 0.170000000,"water")
prl_b1.MouseButton1Down:connect(function()
if prl_b1.Text == "" then --on
prl_b1.Text = "X"
_G.prl_b1 = true 
elseif prl_b1.Text == "X" then --off
prl_b1.Text = ""
_G.prl_b1 = false
end 
__("water",_G.prl_b1)
end)

spawn(function()   
while task.wait() do                
pcall(function()               
if _("water") then                    
game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)                
else                   
game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)                
end  end) end end)

make_together(prl_f2, prl_b2, b_page9, "Walk Speed", 0.170000000,"walkspeed")
prl_b2.MouseButton1Down:connect(function()
if prl_b2.Text == "" then --on
prl_b2.Text = "X"
_G.prl_b2 = true 
elseif prl_b2.Text == "X" then --off
prl_b2.Text = ""
_G.prl_b2 = false
end 
__("walkspeed",_G.prl_b2)
end)

make_slider_value(b_page9,"Speed Value",30,500, 0.45,"speed_value")
	
game:GetService('RunService').RenderStepped:connect(function()
if _("walkspeed") then            
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=_("speed_value")           
end end)

make_together(prl_f3, prl_b3, b_page9, "Jumpower", 0.170000000,"jumpower")
prl_b3.MouseButton1Down:connect(function()
if prl_b3.Text == "" then --on
prl_b3.Text = "X"
_G.prl_b3 = true 
elseif prl_b3.Text == "X" then --off
prl_b3.Text = ""
_G.prl_b3 = false
end 
__("jumpower",_G.prl_b3)
end)
	
make_slider_value(b_page9,"Jump Value",30,500, 0.45,"jump_value")

spawn(function()    
while task.wait() do                
pcall(function()               
if _("jumppower") then           
game.Players.LocalPlayer.Character.Humanoid.JumpPower=_("jump_value")            
end end) end end)

make_together(prl_f4, prl_b4, b_page9, "Inf Jump", 0.170000000,"infjump")
prl_b4.MouseButton1Down:connect(function()
if prl_b4.Text == "" then --on
prl_b4.Text = "X"
_G.prl_b4 = true 
elseif prl_b4.Text == "X" then --off
prl_b4.Text = ""
_G.prl_b4 = false
end 
__("infjump",_G.prl_b4)
end)

game:GetService("UserInputService").JumpRequest:connect(function()
if _("infjump") then
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
end end)  
	
make_together(prl_f5, prl_b5, b_page9, "Anti Stun", 0.170000000,"antistun")
prl_b5.MouseButton1Down:connect(function()
if prl_b5.Text == "" then --on
prl_b5.Text = "X"
_G.prl_b5 = true 
elseif prl_b5.Text == "X" then --off
prl_b5.Text = ""
_G.prl_b5 = false
end 
__("antistun",_G.prl_b5)
end)

game:GetService('RunService').RenderStepped:connect(function()
if _("antistun") then
game.Players.LocalPlayer.Character.Stun.Value=0
end end)

make_together(prl_f6, prl_b6, b_page9, "Mink V4", 0.170000000,"minkv4")
prl_b6.MouseButton1Down:connect(function()
if prl_b6.Text == "" then --on
prl_b6.Text = "X"
_G.prl_b6 = true 
elseif prl_b6.Text == "X" then --off
prl_b6.Text = ""
_G.prl_b6 = false
end 
__("minkv4",_G.prl_b6)
end)

spawn(function()   
pcall(function()
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local camera = workspace.CurrentCamera

local CONFIG = {
    DashDistance = 70,
    DashKey = Enum.KeyCode.Q,
}

local lastDashState = nil
local sk1 = nil

local function getDashDirection()
    local moveDir = humanoid.MoveDirection
    if moveDir.Magnitude > 0.1 then
        return Vector3.new(moveDir.X, 0, moveDir.Z).Unit
    end
    local lookDir = camera.CFrame.LookVector
    return Vector3.new(lookDir.X, 0, lookDir.Z).Unit
end

local function dash()
    local direction = getDashDirection()
    local distance = CONFIG.DashDistance

    local rayParams = RaycastParams.new()
    rayParams.FilterDescendantsInstances = {character}
    rayParams.FilterType = Enum.RaycastFilterType.Exclude

    local result = workspace:Raycast(rootPart.Position, direction * distance, rayParams)

    if result then
        distance = (result.Position - rootPart.Position).Magnitude - 2
    end

    if distance < 0 then return end

    rootPart.CFrame = rootPart.CFrame + direction * distance
end

local function createGUI()
    local ok, targetBtn = pcall(function()
        return player.PlayerGui
            :WaitForChild("MobileContextButtons", 5)
            :WaitForChild("ContextButtonFrame", 5)
            :WaitForChild("BoundActionDodge", 5)
            :WaitForChild("Button", 5)
    end)

    if not ok or not targetBtn then return end

    -- Xoá cái cũ nếu còn
    local old = player.PlayerGui.MobileContextButtons.ContextButtonFrame:FindFirstChild("sk1")
    if old then old:Destroy() end

    local basePos = player.PlayerGui.MobileContextButtons.ContextButtonFrame.BoundActionDodge.Position

    sk1 = Instance.new("TextButton")
    sk1.Name = "sk1"
    sk1.Parent = player.PlayerGui.MobileContextButtons.ContextButtonFrame
    sk1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    sk1.BorderSizePixel = 0
    sk1.Position = UDim2.new(
        basePos.X.Scale, basePos.X.Offset - 18,
        basePos.Y.Scale, basePos.Y.Offset - 21
    )
    sk1.Size = UDim2.new(0, 50, 0, 50)
    sk1.Font = Enum.Font.Ubuntu
    sk1.Text = ""
    sk1.TextColor3 = Color3.fromRGB(250, 255, 250)
    sk1.TextSize = 20
    sk1.BackgroundTransparency = 1
    sk1.ZIndex = 2
    sk1.Visible = _("minkv4") == true

    sk1.MouseButton1Down:Connect(function()
        dash()
    end)
end

player.CharacterAdded:Connect(function(newChar)
    character = newChar
    humanoid = newChar:WaitForChild("Humanoid")
    rootPart = newChar:WaitForChild("HumanoidRootPart")
    lastDashState = nil
    createGUI()
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == CONFIG.DashKey and _("minkv4") then
        dash()
    end
end)

createGUI()

RunService.Heartbeat:Connect(function()
    local current = _("minkv4") == true

    -- Tạo lại nếu GUI bị mất
    if current and (not sk1 or not sk1.Parent) then
        lastDashState = nil
        createGUI()
    end

    if current == lastDashState then return end
    lastDashState = current
    if sk1 then sk1.Visible = current end
end)
end) end)

make_textlabel(b_page9, "Miss", 0.5900000000)

_G.table_code = {
    "Sub2Fer999",
    "kittgaming",
    "NOOB_REFUND",
    "SUB2GAMERROBOT_RESET1",
    "TY_FOR_WATCHING",
    "GAMER_ROBOT_1M",
    "ADMINGIVEAWAY",
    "SUBGAMERROBOT_RESET",
    "GAMERROBOT_YT",
    "BIGNEWS",
    "FUDD10",
    "fudd10_v2",
    "Bluxxy",
    "Starcodeheo",
    "JCWK",
    "Magicbus",
    "TantaiGaming",
    "Axiore",
    "Sub2Daigrock",
    "Sub2UncleKizaru",
    "SUB2NOOBMASTER123",
    "StrawHatMaine",
    "Sub2OfficialNoobie",
    "SUB2GAMERROBOT_EXP1",
    "THEGREATACE",
    "JULYUPDATE_RESET",
    "Enyu_is_Pro"
}

make_button(miss_f1, miss_b1, b_page9, "Auto Redeem All Code", 0.030000000)
miss_b1.MouseButton1Down:Connect(function()
for i=1,#_G.table_code do
game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.table_code[i])
end end)

make_button(miss_f2, miss_b2, b_page9, "Join Team Pirate", 0.030000000)
miss_b2.MouseButton1Down:Connect(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
end)

make_button(miss_f3, miss_b3, b_page9, "Join Team Marine", 0.030000000)
miss_b3.MouseButton1Down:Connect(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
end)

make_button(miss_f4, miss_b4, b_page9, "Open Shop Fruit", 0.030000000)
miss_b4.MouseButton1Down:Connect(function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

make_button(miss_f5, miss_b5, b_page9, "Open Title", 0.030000000)
miss_b5.MouseButton1Down:Connect(function()
game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)

make_button(miss_f6, miss_b6, b_page9, "Open Haki Color", 0.030000000)
miss_b6.MouseButton1Down:Connect(function()
game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

make_button(miss_f7, miss_b7, b_page9, "Open Awakening", 0.030000000)
miss_b7.MouseButton1Down:Connect(function()
game.Players.localPlayer.PlayerGui.Main.AwakeningToggler.Visible=true
end)

--[[Raid]]

_G.table_core={
"Flame",
"Ice",
"Sand",
"Dark",
"Light",
"Magma",
"Quake",
"Buddha",
"Spider",
"Phoenix",
"Dough",
"Rumble",
"Spider"
}

make_textlabel(b_page10, "Raid", 0.5900000000)

make_select1(raid_f1, raid_b1, b_page10, _("raid_select"), 0.10000000)
raid_b1.MouseButton1Down:connect(function()
_G.ntt_frame(raid_bar1)
end)

make_selectscrollingframe(raid_bar1, main, 0.1700000, 0)
make_auto_selectbutton(raid_b1,raid_bar1,_G.table_core,"Chip",0.05,"raid_select")

make_together(raid_f2, raid_b2, b_page10, "Auto Buy chip", 0.170000000,"raid_buy")
raid_b2.MouseButton1Down:connect(function()
if raid_b2.Text == "" then --on
raid_b2.Text = "X"
_G.raid_b2 = true 
elseif raid_b2.Text == "X" then --off
raid_b2.Text = ""
_G.raid_b2 = false
end 
__("raid_buy",_G.raid_b2)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("raid_buy") then 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",tc(raid_b1.Text))
end end) end end)

make_together(raid_f3, raid_b3, b_page10, "Teleport Lab", 0.170000000,"raid_tp")
raid_b3.MouseButton1Down:connect(function()
if raid_b3.Text == "" then --on
raid_b3.Text = "X"
_G.raid_b3 = true 
elseif raid_b3.Text == "X" then --off
raid_b3.Text = ""
_G.raid_b3 = false
end 
__("raid_tp",_G.raid_b3)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("raid_tp") then 
if game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
if sea2() then
TP1(CFrame.new(-6440.0, 250.9, -4498.7))
elseif sea3() then
TP1(CFrame.new(-5013.68212890625, 315.1612243652344, -2817.209716796875))
end end end end) end end)

make_together(raid_f4, raid_b4, b_page10, "Auto Start Raid", 0.170000000,"raid_start")
raid_b4.MouseButton1Down:connect(function()
if raid_b4.Text == "" then --on
raid_b4.Text = "X"
_G.raid_b4 = true 
elseif raid_b4.Text == "X" then --off
raid_b4.Text = ""
_G.raid_b4 = false
end 
__("raid_start",_G.raid_b4)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("raid_start") then
if checktool("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
if sea2() then
fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)        
elseif sea3() then          
fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)       
end end end end) end end)

make_together(raid_f5, raid_b5, b_page10, "Auto Next Island", 0.170000000,"raid_island")
raid_b5.MouseButton1Down:connect(function()
if raid_b5.Text == "" then --on
raid_b5.Text = "X"
_G.raid_b5 = true 
elseif raid_b5.Text == "X" then --off
raid_b5.Text = ""
_G.raid_b5 = false
end 
__("raid_island",_G.raid_b5)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("raid_island") then 
if game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
local ir=game.Workspace._WorldOrigin.Locations
if ir:FindFirstChild("Island 5") then
TP1(ir:FindFirstChild("Island 5").CFrame * CFrame.new(0,100,0))
killaura()
return
end
if ir:FindFirstChild("Island 4") then
TP1(ir:FindFirstChild("Island 4").CFrame * CFrame.new(0,100,0))
killaura()
return
end
if ir:FindFirstChild("Island 3") then
TP1(ir:FindFirstChild("Island 3").CFrame * CFrame.new(0,100,0))
return
end
if ir:FindFirstChild("Island 2") then
TP1(ir:FindFirstChild("Island 2").CFrame * CFrame.new(0,100,0))
return
end
if ir:FindFirstChild("Island 1") then
TP1(ir:FindFirstChild("Island 1").CFrame * CFrame.new(0,100,0))
return
end end end end) end end)

make_together(raid_f6, raid_b6, b_page10, "Auto Raid", 0.170000000,"raid_aura")
raid_b6.MouseButton1Down:connect(function()
if raid_b6.Text == "" then --on
raid_b6.Text = "X"
_G.raid_b6 = true 
elseif raid_b6.Text == "X" then --off
raid_b6.Text = ""
_G.raid_b6 = false
end 
__("raid_aura",_G.raid_b6)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("raid_aura") then 
if game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true and mobnear() then
TP1(mobnear().HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
end end end) end end)

make_together(raid_f7, raid_b7, b_page10, "Auto Awakening", 0.2400000000,"awakening")
raid_b7.MouseButton1Down:connect(function()
if raid_b7.Text == "" then --on
raid_b7.Text = "X"
_G.raid_b7 = true
elseif raid_b7.Text == "X" then --off
raid_b7.Text = ""
_G.raid_b7 = false
end
__("awakening",_G.raid_b7)
end)

spawn(function()   
while task.wait(1) do        
pcall(function()
if _("awakening") then 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
end end) end end)

if sea2() then
make_textlabel(b_page10, "Raid Law", 0.5900000000)

make_together(raidlaw_f1, raidlaw_b1, b_page10, "Teleport Lab", 0.170000000,"raidlaw_tp")
raidlaw_b1.MouseButton1Down:connect(function()
if raidlaw_b1.Text == "" then --on
raidlaw_b1.Text = "X"
_G.raidlaw_b1 = true 
elseif raidlaw_b1.Text == "X" then --off
raidlaw_b1.Text = ""
_G.raidlaw_b1 = false
end 
__("raidlaw_tp",_G.raidlaw_b1)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("raidlaw_tp") then 
if not getmob("Order") then
TP1(CFrame.new(-5523,224,-5903))
end end end) end end)

make_together(raidlaw_f2, raidlaw_b2, b_page10, "Auto Buy Chip", 0.170000000,"raidlaw_buy")
raidlaw_b2.MouseButton1Down:connect(function()
if raidlaw_b2.Text == "" then --on
raidlaw_b2.Text = "X"
_G.raidlaw_b2 = true 
elseif raidlaw_b2.Text == "X" then --off
raidlaw_b2.Text = ""
_G.raidlaw_b2 = false
end 
__("raidlaw_buy",_G.raidlaw_b2)
end)

spawn(function()   
while task.wait(2) do        
pcall(function()
if _("raidlaw_buy") then 
if not getmob("Order") and not checktool("Microchip") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
end end end) end end)

make_together(raidlaw_f3, raidlaw_b3, b_page10, "Auto Start Raid", 0.170000000,"raidlaw_start")
raidlaw_b3.MouseButton1Down:connect(function()
if raidlaw_b3.Text == "" then --on
raidlaw_b3.Text = "X"
_G.raidlaw_b3 = true 
elseif raidlaw_b3.Text == "X" then --off
raidlaw_b3.Text = ""
_G.raidlaw_b3 = false
end 
__("raidlaw_start",_G.raidlaw_b3)
end)

spawn(function()   
while task.wait(2) do        
pcall(function()
if _("raidlaw_start") then 
if not getmob("Order") and checktool("Microchip") then
fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
end end end) end end)

make_together(raidlaw_f4, raidlaw_b4, b_page10, "Auto Raid Law", 0.170000000,"raidlaw")
raidlaw_b4.MouseButton1Down:connect(function()
if raidlaw_b4.Text == "" then --on
raidlaw_b4.Text = "X"
_G.raidlaw_b4 = true 
elseif raidlaw_b4.Text == "X" then --off
raidlaw_b4.Text = ""
_G.raidlaw_b4 = false
end 
__("raidlaw",_G.raidlaw_b4)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("raidlaw") then 
if getmob("Order") then
TP1(getmob("Order").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
end end end) end end)

end --[]

--[[Race]]
if sea2() then
make_together(race_f1, race_b1, b_page11, "Auto Up Race V2", 0.170000000,"race_v2")
race_b1.MouseButton1Down:connect(function()
if race_b1.Text == "" then --on
race_b1.Text = "X"
_G.race_b1 = true 
elseif race_b1.Text == "X" then --off
race_b1.Text = ""
_G.race_b1 = false
end 
__("race_v2",_G.race_b1)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("race_v2") then 
race_v2=game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
task.wait(2)
end end) end end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("race_v2") then 
if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
if race_v2 == 0 then
TP1(CFrame.new(-2779, 72, -3574))
if distance(CFrame.new(-2779, 72, -3574)) < 4 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
task.wait(1)
end
elseif race_v2==1 then
if not checktool("Flower 3") then
if getmob("Swan Pirate") then
TP1(getmob("Swan Pirate").HumanoidRootPart.CFrame*CFrame.new(0,_G.distance,0))
usetool()
else
TP1(CFrame.new(931, 152, 1192))
end
else
if not checktool("Flower 1") then
TP1(game:GetService("Workspace").Flower1.CFrame)
else
if not checktool("Flower 2") then
TP1(game:GetService("Workspace").Flower2.CFrame)
end end end
elseif race_v2==2 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
task.wait(1)
end end end end) end end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("race_v2") and race_v2==1 and not checktool("Flower 3") then
bringmob("Swan Pirate")
end end) end end)
	
make_together(race_f2, race_b2, b_page11, "Auto Up Race V3", 0.170000000,"race_v2")
race_b2.MouseButton1Down:connect(function()
if race_b2.Text == "" then --on
race_b2.Text = "X"
_G.race_b2 = true 
elseif race_b2.Text == "X" then --off
race_b2.Text = ""
_G.race_b2 = false
end 
__("race_v3",_G.race_b2)
end)
	
	--[[
print(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1"))
print(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2"))

if race_v3==0 then
print(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2"))
if race_v3==1
]]
	
elseif sea3() then

make_together(race_f1, race_b1, b_page11, "Teleport To Race Door", 0.170000000,"race_door")
race_b1.MouseButton1Down:connect(function()
if race_b1.Text == "" then --on
race_b1.Text = "X"
_G.race_b1 = true 
elseif race_b1.Text == "X" then --off
race_b1.Text = ""
_G.race_b1 = false
end 
__("race_door",_G.race_b1)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("race_door") then
if distance(CFrame.new(28286, 14896, 102)) > 2000 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14896, 102)
else
local race = game:GetService("Players").LocalPlayer.Data.Race.Value
if race == "Human" then
	TP1(CFrame.new(29222,14891,-206))
elseif race == "Skypiea" then
	TP1(CFrame.new(28960,14920,235))
elseif race == "Fishman" then
	TP1(CFrame.new(28231,14891,-212))
elseif race == "Cyborg" then
	TP1(CFrame.new(28503,14896,-424))
elseif race == "Ghoul" then
	TP1(CFrame.new(28674,14891,445))
elseif race == "Mink" then
	TP1(CFrame.new(29012,14891,-380))
end end
end end) end end)

make_together(race_f2, race_b2, b_page11, "Auto Comple Trial Race", 0.170000000,"race_trial")
race_b2.MouseButton1Down:connect(function()
if race_b2.Text == "" then --on
race_b2.Text = "X"
_G.race_b2 = true 
elseif race_b2.Text == "X" then --off
race_b2.Text = ""
_G.race_b2 = false
end 
__("race_trial",_G.race_b2)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("race_trial") then
if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if v.ClassName == "Model" then
if v.Humanoid.Health > 0 then       
mele()
TP1(v.HumanoidRootPart.CFrame* CFrame.new(0,_G.distance,0))
end end end

elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetChildren()) do
if v.Name ==  "snowisland_Cylinder.081" then
TP1(v.CFrame* CFrame.new(0,0,0))
end end  

elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
if getseabeast() then
TP1(getseabeast().CFrame*CFrame.new(0,200,0))
end

elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
TP2(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))

elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if v.ClassName == "Model" then --name mob
if v.Humanoid.Health > 0 then       
usetool()
TP1(v.HumanoidRootPart.CFrame* CFrame.new(0,_G.distance,0))
end end end
	
elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "StartPoint" then
TP1(v.CFrame* CFrame.new(0,10,0))
end end end 
end end) end end)
	
spawn(function()   
while task.wait() do        
pcall(function()
if _("race_trial") then
if game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
if getseabeast() then
skill((getseabeast().CFrame*CFrame.new(0,179,0)).Position)
end end end end) end end)

make_together(race_f3, race_b3, b_page11, "Auto Kill Player", 0.170000000,"race_kill")
race_b3.MouseButton1Down:connect(function()
if race_b3.Text == "" then --on
race_b3.Text = "X"
_G.race_b3 = true 
elseif race_b3.Text == "X" then --off
race_b3.Text = ""
_G.race_b3 = false
end 
__("race_kill",_G.race_b3)
end)

spawn(function()   
while task.wait() do        
pcall(function()
if _("race_kill") then
if playernear() then
TP1(playernear().HumanoidRootPart.CFrame*CFrame.new(0,-10,0))
mele()
end end end) end end)

end --[]

--[[Server]]

make_textlabel(b_page13, "Join Server", 0.03)

make_textbox(server_t1, b_page13, "Enter Code Join Server", 0.10)

make_button(server_f1, server_b1, b_page13, "Join Server",  0.170000)
server_b1.MouseButton1Down:connect(function()
if string.find(server_t1.Text,"NTT") then
code=decode(server_t1.Text)
else
code=server_t1.Text
end
local args = {
    [1] = "teleport",
    [2] = code
}

game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
end)

make_button(server_f2, server_b2, b_page13, "Coppy Code Server",  0.24000)
server_b2.MouseButton1Down:connect(function()
setclipboard(game.JobId)
end)

make_button(server_f3, server_b3, b_page13, "Rejoin", 0.31)
server_b3.MouseButton1Down:connect(function()
local args = {
    [1] = "teleport",
    [2] = game.JobId
}

game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))

end)

make_button(server_f4, server_b4, b_page13, "Server Hop", 0.38)
server_b4.MouseButton1Down:connect(function()
hop()
end)

make_textlabel(b_page13, "Sever", 0.03)

make_button(teleport_f5,teleport_b5, b_page13, "Teleport Sea 1",  0.24000)
teleport_b5.MouseButton1Down:connect(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)

make_button(teleport_f6, teleport_b6, b_page13, "Teleport Sea 2", 0.31)
teleport_b6.MouseButton1Down:connect(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

make_button(teleport_f7, teleport_b7, b_page13, "Teleport Sea 3", 0.38)
teleport_b7.MouseButton1Down:connect(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)

--[[Teleport]]

if sea1() then
_G.table_island = {
        "Pirate Start",
        "Marine Start",
        "Middle Town",
        "Jungle",
        "Pirate Village",
        "Desert",
        "Frozen Village",
        "Marine Ford",
        "Colosseum",
        "Sky 1",
        "Sky 2",
        "Sky 3",
        "Magma Village",
        "Fountain City",
        "UnderWater City",
        "Prison",
        "Whilr Pool"
    }

elseif sea2() then
_G.table_island = {
        "KingDom of Rose",
        "Café",
        "Green Zone",
        "Hot and Cold",
        "Snow Moutain",
        "Dark Arena",
        "Cursed Ship",
        "Ice Castle",
        "Graveyard",
        "Fogotten"
    }

elseif sea3() then
_G.table_island = {
        "Port",
        "Mansion",
        "Castle on The Sea",
        "Hydra",
        "Haunted Castle",
        "Great Tree",
        "Sea of Treat 1",
        "Sea of Treat 2",
        "Sea of Treat 3",
        "Sea of Treat 4",
        "Sea of Treat 5",
        "Tiki Outpost"
    }
end

make_textlabel(b_page14, "Island", 0.03)

make_select1(teleport_f1, teleport_b1, b_page14, _("teleport_select"), 0.10000000)
teleport_b1.MouseButton1Down:connect(function()
_G.ntt_frame(teleport_bar1)
end)

make_selectscrollingframe(teleport_bar1, main, 0.1700000, 0)
make_auto_selectbutton(teleport_b1,teleport_bar1,_G.table_island,"Island",0.05,"teleport_select")

make_together(teleport_f2, teleport_b2, b_page14, "Teleport Island", 0.170000000,"fake")
teleport_b2.MouseButton1Down:connect(function()
if teleport_b2.Text == "" then --on
teleport_b2.Text = "X"
_G.teleport_b2 = true 
elseif teleport_b2.Text == "X" then --off
teleport_b2.Text = ""
_G.teleport_b2 = false
end  end)

spawn(function()   
while task.wait() do        
pcall(function()
if _G.teleport_b2 then
TP1(island())
end end) end end)


--[[Server Live]]

function listserver()
nums=1
server=_G.loadserver("v2",tc(sl_b1.Text))
for name, jobid in pairs(server) do
local name1 = Instance.new("TextLabel")
local name2 = Instance.new("TextButton")
make_button(name1, name2, b_page12, name.." || "..jobid, 0.03+(0.07*nums))
name2.MouseButton1Down:connect(function()
if string.find(name1.Text:match("%|%|%s*(.+)"),"NTT") then
code=decode(name1.Text:match("%|%|%s*(.+)"))
else
code=name1.Text:match("%|%|%s*(.+)")
end
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, code, game.Players.LocalPlayer)
end) 
nums=nums+1
end end

make_textlabel(b_page12, "Server Live", 0.03)

make_select1(sl_f1, sl_b1, b_page12, _("server_live"), 0.0300000000)
sl_b1.MouseButton1Down:connect(function()
sl_bar.Visible = true
end)

_G.table_server={
"Fruit Spawn BF",
"Fruit Drop BF",
"Boss BF",
"Island BF",
"Full Moon"
}

make_selectscrollingframe(sl_bar, main, 0.1000000, 0)
make_auto_selectbutton(sl_b1,sl_bar,_G.table_server,"Server",0.05,"server_live")

samesever=sl_b1
spawn(function()     
while task.wait() do                  
pcall(function()
if samesever==sl_b1.Text then return end
if #b_page12:GetChildren() >=3 then
for i=3,#b_page12:GetChildren() do
if b_page12:GetChildren()[i] then
b_page12:GetChildren()[i]:Destroy()
end end 
else
samesever=sl_b1.Text
listserver()
end end) end end)

spawn(function()     
while task.wait(5) do                  
pcall(function()
if b_page12.Visible then
samesever=1
end end) end end)

--------------------------------------------------------------------------------------------------

--[[Fast attack]]
spawn(function() 
pcall(function()        
loadstring([[
local v1 = next
local v2 = {
    game.ReplicatedStorage.Util,
    game.ReplicatedStorage.Common,
    game.ReplicatedStorage.Remotes,
    game.ReplicatedStorage.Assets,
    game.ReplicatedStorage.FX,
}
local v3 = nil
local u4 = nil
local u5 = nil

while true do
    local v6

    v3, v6 = v1(v2, v3)

    if v3 == nil then
        break
    end

    local v7 = next
    local v8, v9 = v6:GetChildren()

    while true do
        local v10

        v9, v10 = v7(v8, v9)

        if v9 == nil then
            break
        end
        if v10:IsA('RemoteEvent') and v10:GetAttribute('Id') then
            u5 = v10:GetAttribute('Id')
            u4 = v10
        end
    end

    v6.ChildAdded:Connect(function(p11)
        if p11:IsA('RemoteEvent') and p11:GetAttribute('Id') then
            u5 = p11:GetAttribute('Id')
            u4 = p11
        end
    end)
end

task.spawn(function()
    while task.wait(0.0001) do
        local _Character = game.Players.LocalPlayer.Character
        local v13

        if _Character then
            v13 = _Character:FindFirstChild('HumanoidRootPart')
        else
            v13 = _Character
        end

        local v14, v15, v16 = ipairs({
            workspace.Enemies,
            workspace.Characters,
        })
        local u17 = {}

        while true do
            local v18

            v16, v18 = v14(v15, v16)

            if v16 == nil then
                break
            end

            local v19, v20, v21 = ipairs(v18 and v18:GetChildren() or {})

            while true do
                local v22

                v21, v22 = v19(v20, v21)

                if v21 == nil then
                    break
                end

                local _HumanoidRootPart = v22:FindFirstChild('HumanoidRootPart')
                local _Humanoid = v22:FindFirstChild('Humanoid')

                if v22 ~= _Character and _HumanoidRootPart and (_Humanoid and 0 < _Humanoid.Health) and (_HumanoidRootPart.Position - v13.Position).Magnitude <= 60 then
                    local v25, v26, v27 = ipairs(v22:GetChildren())

                    while true do
                        local v28

                        v27, v28 = v25(v26, v27)

                        if v27 == nil then
                            break
                        end
                        if v28:IsA('BasePart') and (_HumanoidRootPart.Position - v13.Position).Magnitude <= 60 then
                            u17[#u17 + 1] = {v22, v28}
                        end
                    end
                end
            end
        end

        local _Tool = _Character:FindFirstChildOfClass('Tool')

        if #u17 > 0 and _Tool and (_Tool:GetAttribute('WeaponType') == 'Melee' or _Tool:GetAttribute('WeaponType') == 'Sword') then
            pcall(function()
                require(game.ReplicatedStorage.Modules.Net):RemoteEvent('RegisterHit', true)
                game.ReplicatedStorage.Modules.Net['RE/RegisterAttack']:FireServer()

                local _Head = u17[1][1]:FindFirstChild('Head')

                if _Head then
                    game.ReplicatedStorage.Modules.Net['RE/RegisterHit']:FireServer(_Head, u17, {}, tostring(game.Players.LocalPlayer.UserId):sub(2, 4) .. tostring(coroutine.running()):sub(11, 15))
                    cloneref(u4):FireServer(string.gsub('RE/RegisterHit', '.', function(p31)
                        return string.char(bit32.bxor(string.byte(p31), math.floor(workspace:GetServerTimeNow() / 10 % 10) + 1))
                    end), bit32.bxor(u5 + 909090, game.ReplicatedStorage.Modules.Net.seed:InvokeServer() * 2), _Head, u17)
                end
            end)
        end
    end
end)

local function GetBladeHits()
local t={}
local function d(v)return(v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude end
for _,p in pairs({game.Workspace.Enemies,game.Workspace.Characters})do
for _,v in pairs(p:GetChildren())do
if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") then
if d(v.HumanoidRootPart)<60 then table.insert(t,v)end
end
end
end
return t
end
local function AttackAll()
local plr=game.Players.LocalPlayer
local ch=plr.Character
if not ch then return end
local ew=ch:FindFirstChild("EquippedWeapon")
if not ew then return end
local e=GetBladeHits()
if #e>0 then
local n=game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net")
n:WaitForChild("RE/RegisterAttack"):FireServer(-math.huge)
local a={nil,{}}
for i,v in pairs(e)do
if not a[1] then a[1]=v.Head end
a[2][i]={v,v.HumanoidRootPart}
end
n:WaitForChild("RE/RegisterHit"):FireServer(unpack(a))
end
end
spawn(function()while task.wait()do AttackAll()end end)

local Players=game:GetService("Players")
local RunService=game:GetService("RunService")
local ReplicatedStorage=game:GetService("ReplicatedStorage")
local Workspace=game:GetService("Workspace")

local Player=Players.LocalPlayer
local Modules=ReplicatedStorage:WaitForChild("Modules")
local Net=Modules:WaitForChild("Net")
local RegisterAttack=Net:WaitForChild("RE/RegisterAttack")
local RegisterHit=Net:WaitForChild("RE/RegisterHit")
local ShootGunEvent=Net:WaitForChild("RE/ShootGunEvent")

getgenv().PMT_GunFast=(getgenv().PMT_GunFast~=false)
getgenv().PMT_GunFast_Delay=getgenv().PMT_GunFast_Delay or 0.02
getgenv().PMT_GunFast_PrimeEvery=getgenv().PMT_GunFast_PrimeEvery or 0.35

local Config={AttackDistance=65,AttackMobs=true,AttackPlayers=true,AttackCooldown=0.01,ComboResetTime=0.3,MaxCombo=4,HitboxLimbs={"RightLowerArm","RightUpperArm","LeftLowerArm","LeftUpperArm","RightHand","LeftHand"},AutoClickEnabled=true}

local FastAttack={}
FastAttack.__index=FastAttack

function FastAttack.new()
local s=setmetatable({Debounce=0,ComboDebounce=0,ShootDebounce=0,M1Combo=0,EnemyRootPart=nil,Connections={},Overheat={Dragonstorm={MaxOverheat=3,Cooldown=0,TotalOverheat=0,Distance=350,Shooting=false}},ShootsPerTarget={["Dual Flintlock"]=2},SpecialShoots={["Skull Guitar"]="TAP",["Bazooka"]="Position",["Cannon"]="Position",["Dragonstorm"]="Overheat"},_GunLastPrime=0,_GunLastShot=0,_LastGunTargetModel=nil,CombatFlags=nil,ShootFunction=nil,HitFunction=nil},FastAttack)
pcall(function()
s.CombatFlags=require(Modules.Flags).COMBAT_REMOTE_THREAD
s.ShootFunction=getupvalue(require(ReplicatedStorage.Controllers.CombatController).Attack,9)
local ls=Player:WaitForChild("PlayerScripts"):FindFirstChildOfClass("LocalScript")
if ls and getsenv then s.HitFunction=getsenv(ls)._G.SendHitsToServer end
end)
return s
end

function FastAttack:IsEntityAlive(e)
local h=e and e:FindFirstChild("Humanoid")
return h and h.Health>0
end

function FastAttack:CheckStun(c,h,tt)
local st=c:FindFirstChild("Stun")
local bs=c:FindFirstChild("Busy")
if h.Sit and (tt=="Sword" or tt=="Melee" or tt=="Blox Fruit") then return false end
if (st and st.Value>0) or (bs and bs.Value) then return false end
return true
end

function FastAttack:GetBladeHits(c,dist)
local pos=c:GetPivot().Position
local bh={}
dist=dist or Config.AttackDistance
local function proc(f)
for _,e in ipairs(f:GetChildren())do
if e~=c and self:IsEntityAlive(e) then
local bp=e:FindFirstChild(Config.HitboxLimbs[math.random(#Config.HitboxLimbs)]) or e:FindFirstChild("HumanoidRootPart")
if bp and (pos-bp.Position).Magnitude<=dist then
if not self.EnemyRootPart then self.EnemyRootPart=bp else table.insert(bh,{e,bp})end
end
end
end
end
if Config.AttackMobs then proc(Workspace.Enemies)end
if Config.AttackPlayers then proc(Workspace.Characters)end
return bh
end

function FastAttack:GetClosestEnemy(c,dist)
local hits=self:GetBladeHits(c,dist)
local cl,md=nil,math.huge
self._LastGunTargetModel=nil
for _,h in ipairs(hits)do
local m=(c:GetPivot().Position-h[2].Position).Magnitude
if m<md then md=m;cl=h[2];self._LastGunTargetModel=h[1] end
end
return cl
end

function FastAttack:GetCombo()
local cb=(tick()-self.ComboDebounce)<=Config.ComboResetTime and self.M1Combo or 0
cb=cb>=Config.MaxCombo and 1 or cb+1
self.ComboDebounce=tick()
self.M1Combo=cb
return cb
end

local function _nv3(p)
if vector and vector.create then return vector.create(p.X,p.Y,p.Z) end
return Vector3.new(p.X,p.Y,p.Z)
end

local function _handle(m)
if not m or not m.Parent then return nil end
for _,d in ipairs(m:GetDescendants())do
if d:IsA("Accessory") then
local h=d:FindFirstChild("Handle")
if h and h:IsA("BasePart") then return h end
end
end
local hrp=m:FindFirstChild("HumanoidRootPart")
if hrp and hrp:IsA("BasePart") then return hrp end
return nil
end

function FastAttack:_PrimeGun(tl)
if not tl or not tl.Parent or tl.Parent~=Player.Character then return end
local now=os.clock()
local ev=tonumber(getgenv().PMT_GunFast_PrimeEvery) or 0.35
if now-(self._GunLastPrime or 0)<ev then return end
self._GunLastPrime=now
pcall(function()tl:Activate()end)
pcall(function()if firesignal and tl.Activated then firesignal(tl.Activated)end end)
end

function FastAttack:ShootInTarget(tp)
if not getgenv().PMT_GunFast then return end
local c=Player.Character
if not self:IsEntityAlive(c) then return end
local tl=c:FindFirstChildOfClass("Tool")
if not tl or tl.ToolTip~="Gun" then return end
self:_PrimeGun(tl)
local now=os.clock()
local del=tonumber(getgenv().PMT_GunFast_Delay) or 0.02
if now-(self._GunLastShot or 0)<del then return end
self._GunLastShot=now
local m=self._LastGunTargetModel
local h=_handle(m)
if not h then return end
pcall(function()ShootGunEvent:FireServer(_nv3(tp),{h})end)
end

function FastAttack:UseNormalClick(c,h,cd)
self.EnemyRootPart=nil
local bh=self:GetBladeHits(c)
if self.EnemyRootPart then
RegisterAttack:FireServer(cd)
if self.CombatFlags and self.HitFunction then
self.HitFunction(self.EnemyRootPart,bh)
else
RegisterHit:FireServer(self.EnemyRootPart,bh)
end
end
end

function FastAttack:UseFruitM1(c,eq,cb)
local t=self:GetBladeHits(c)
if not t[1] then return end
local dir=(t[1][2].Position-c:GetPivot().Position).Unit
eq.LeftClickRemote:FireServer(dir,cb)
end

function FastAttack:Attack()
if not Config.AutoClickEnabled or (tick()-self.Debounce)<Config.AttackCooldown then return end
local c=Player.Character
if not c or not self:IsEntityAlive(c) then return end
local h=c.Humanoid
local eq=c:FindFirstChildOfClass("Tool")
if not eq then return end
local tt=eq.ToolTip
if not table.find({"Melee","Blox Fruit","Sword","Gun"},tt) then return end
local cd=eq:FindFirstChild("Cooldown") and eq.Cooldown.Value or Config.AttackCooldown
if not self:CheckStun(c,h,tt) then return end
local cb=self:GetCombo()
cd=cd+(cb>=Config.MaxCombo and 0.05 or 0)
self.Debounce=cb>=Config.MaxCombo and tt~="Gun" and (tick()+0.05) or tick()
if tt=="Blox Fruit" and eq:FindFirstChild("LeftClickRemote") then
self:UseFruitM1(c,eq,cb)
elseif tt=="Gun" then
local t=self:GetClosestEnemy(c,120)
if t then self:ShootInTarget(t.Position)end
else
self:UseNormalClick(c,h,cd)
end
end

local AttackInstance=FastAttack.new()
table.insert(AttackInstance.Connections,RunService.Stepped:Connect(function()AttackInstance:Attack()end))

RunService.Heartbeat:Connect(function()
if not getgenv().PMT_GunFast then return end
local c=Player.Character
if not c then return end
local tl=c:FindFirstChildOfClass("Tool")
if not tl or tl.ToolTip~="Gun" then return end
AttackInstance:_PrimeGun(tl)
end)

for _,v in pairs(getgc(true))do
if typeof(v)=="function" and iscclosure(v) then
local n=debug.getinfo(v).name
if n=="Attack" or n=="attack" or n=="RegisterHit" then
hookfunction(v,function(...)
AttackInstance:Attack()
return v(...)
end)
end
end
end

local Modules=game.ReplicatedStorage.Modules
local Net=Modules.Net
local Register_Hit,Register_Attack=Net:WaitForChild("RE/RegisterHit"),Net:WaitForChild("RE/RegisterAttack")
local Funcs={}
function GetAllBladeHits()
bladehits={}
for _,v in pairs(workspace.Enemies:GetChildren())do
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=65 then
table.insert(bladehits,v)
end
end
return bladehits
end
function Getplayerhit()
bladehits={}
for _,v in pairs(workspace.Characters:GetChildren())do
if v.Name~=game.Players.LocalPlayer.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=65 then
table.insert(bladehits,v)
end
end
return bladehits
end
function Funcs:Attack()
local bladehits={}
for _,v in pairs(GetAllBladeHits())do table.insert(bladehits,v)end
for _,v in pairs(Getplayerhit())do table.insert(bladehits,v)end
if #bladehits==0 then return end
local args={[1]=nil,[2]={},[4]="078da341"}
for r,v in pairs(bladehits)do
Register_Attack:FireServer(0)
if not args[1] then args[1]=v.Head end
args[2][r]={[1]=v,[2]=v.HumanoidRootPart}
end
Register_Hit:FireServer(unpack(args))
end
spawn(function()
while task.wait(0.05) do
pcall(function()
local ch=game.Players.LocalPlayer.Character
local t=ch and ch:FindFirstChildOfClass("Tool")
if t then Funcs:Attack() end
end)
end
end)
]])()
end) end)

game:GetService('RunService').RenderStepped:connect(function()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName=="Tool" then
_G.nt=v.Name
end end end)

pcall(function()
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg, false)

gg.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and self.Name == "RemoteEvent" and self.Parent and self.Parent.Name == _G.nt then
    if _("aim_near") or _("aim_select") then
        if typeof(args[1]) == "Vector3" and _G.pos_skill then
        if not _G.index_key then return end
            args[1] = _G.pos_skill
        end
        return old(self, unpack(args))
    end
end
    return old(self, ...)
end) end)

--------------------------------------------------------------------------------------------------

function b_(name1,name2)
name1.MouseButton1Down:connect(function()
for i=1,#_G.ntt_mainscrollingframe do
_G.ntt_mainscrollingframe[i].Visible=false
end
for i=1,#_G.ntt_farmain_table do
_G.ntt_farmain_table[i].Visible=false
end 
name2.Visible=true
TextLabel.Text="NTT HUB | "..name1.Text.." | ".._G.linkdis
end) end

b_(b_1,b_page1)
b_(b_2,b_page2)
b_(b_3,b_page3)
b_(b_4,b_page4)
b_(b_5,b_page5)
b_(b_6,b_page6)
b_(b_7,b_page7)
b_(b_8,b_page8)
b_(b_9,b_page9)
b_(b_10,b_page10)
b_(b_11,b_page11)
b_(b_12,b_page12)
b_(b_13,b_page13)
b_(b_14,b_page14)
b_(b_15,b_page15)

spawn(function()   
while task.wait() do        
pcall(function()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)")then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
end end) end end)

spawn(function()   
while task.wait(1) do        
pcall(function()
if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then                                      
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")               
end end) end end)

--------------------------------------------------------------------------------------------------

playerCount = #game:GetService("Players"):GetPlayers()
jobid=encode(game.JobId)

function sea()
if sea1() then
return "Sea 1"
elseif sea2() then
return "Sea 2"
elseif sea3() then
return "Sea 3"
else
return "Sea ?"
end end


if sea1() then
_G.sea= "Sea 1"
elseif sea2() then
_G.sea= "Sea 2"
elseif sea3() then
_G.sea= "Sea 3"
else
_G.sea= "Sea ?"
end

function done(x)
if not x:FindFirstChild("done") then
local folder = Instance.new("Folder")
folder.Name = "done"
folder.Parent = x
end end

function upserver(name,title)
pcall(function()
--loadstring(game:HttpGet('https://api-sever.nekokawaii.workers.dev/api/server?name='..name..'&title='..title..'&jobid='..jobid..'&time='..os.time()))()
end) end

spawn(function()    
while task.wait(1) do                  
pcall(function()
local tablemob={"rip_indra True Form","Darkbeard","Dough King","Cake Prince","Soul Reaper"}
for i=1,#tablemob do
if getmob(tablemob[i]) and not getmob(tablemob[i]):FindFirstChild("done") then
done(getmob(tablemob[i]))
upserver("Boss BF",getmob(tablemob[i]).Name)
_G.webhook1(
"boss_bf",
getmob(tablemob[i]).Name,
playerCount,
jobid
)
end end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
if mirage() and not mirage():FindFirstChild("done") then
done(mirage())
upserver("Island BF","Mirage Island")
_G.webhook1(
"island_bf",
"Mirage Island",
playerCount,
jobid
)
end
if kitsune() and not kitsune():FindFirstChild("done") then
done(mirage())
upserver("Island BF","Kitsune Island")
_G.webhook1(
"island_bf",
"Kitsune Island",
playerCount,
jobid
)
end 
end) end end)

--[[
_G.try=true
spawn(function()   
while task.wait(1) do        
pcall(function()
if _G.try then
_G.try=false
_G.webhook3(
"fruit_spawn",
"Fruit Spawn",
_G.sea,
"????",
playerCount,
jobid
)
end end) end end)
]]

spawn(function()   
while task.wait(1) do        
pcall(function()
for i,v in pairs(game.Workspace:GetChildren()) do                   
if string.find(v.Name, "Fruit") and #v.Name<=7 then
if v:FindFirstChild("Handle") then
if not v:FindFirstChild("done") then
done(v)
pcall(function()
upserver("Fruit Spawn BF",_G.sea)
end)
_G.webhook3(
"fruit_spawn",
"Fruit Spawn",
_G.sea,
"????",
playerCount,
jobid
)
end end end end end) end end)

function getfruitdrop()
local l =""
for i,v in pairs(game.Workspace:GetChildren()) do                   
if string.find(v.Name, "Fruit") and #v.Name >=7 then
if v:FindFirstChild("Handle") then
if l=="" then
l=v.Name
else
l=l.."\n"..v.Name
end end end end 
return l
end

spawn(function()    
while task.wait() do                  
pcall(function()

if #getfruitdrop() > 2 then
pcall(function()
upserver("Fruit Drop BF",_G.sea.. " : ".. getfruitdrop())
end)
_G.webhook3(
"fruit_drop",
"Fruit Drop",
_G.sea,
getfruitdrop(),
playerCount,
jobid
)
end
end) 
task.wait(60*30)
end end)

_G.fm=true
spawn(function()    
while task.wait(1) do                  
pcall(function()
if  game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
if _G.fm then 
_G.fm=false
upserver("Full Moon","Full Moon")
_G.webhook1(
"fm",
"Full Moon",
playerCount,
jobid
)
end
else
_G.fm=true
end end) end end)