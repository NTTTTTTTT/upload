--_G.index_key=191
--_G.prenium=true
_G.name_game="King Legacy75"
_G.Setting = { 
["tool_select"]={"Tool : Combat"},
["level"]={false},
["mobnear"]={false},
["mobnear_value"]={400},
["material_select"]={"Material : Select"},
["material"]={false},
["pearl"]={false},
["dailyquest_select"]={"DailyQuest : Select"},
["dailyquest"]={false},
["melee"]={false},
["defense"]={false},
["sword"]={false},
["fruit"]={false},
["y"]={9},
["skill"] = {
        ["Z"] = true,
        ["X"] = true,
        ["C"] = true,
        ["V"] = true,
        ["B"] = true,
        ["E"] = true
},
["boss_sea1"] = {
    ["Smoky"] = true,
    ["Tashi"] = true,
    ["The Clown"] = true,
    ["Captain"] = true,
    ["The Barbaric"] = true,
    ["Karate Fishman"] = true,
    ["Shark Man"] = true,
    ["Dark Leg"] = true,
    ["King Snow"] = true,
    ["Little Dear"] = true,
    ["Bomb Man"] = true,
    ["King of Sand"] = true,
    ["Ball Man"] = true,
    ["Rumble Man"] = true,
    ["Leader"] = true,
    ["Pasta"] = true,
    ["Wolf"] = true,
    ["Giraffe"] = true,
    ["Leo"] = true,
    ["Shadow Master"] = true,
    ["True Karate Fishman"] = true,
    ["Quake Woman"] = true,
    ["Combat Fishman"] = true,
    ["Sword Fishman"] = true,
    ["Seasoned Fishman"] = true,
},

["boss_sea2"] = {
    ["Gazelle Man"] = true,
    ["Violet Samurai"] = true,
    ["Duke"] = true,
    ["Magician"] = true,
    ["Kitsune Samurai"] = true,
    ["Bear Man"] = true,
    ["Bean"] = true,
    ["Meji"] = true,
    ["Petra"] = true,
    ["Kappa"] = true,
    ["Joey"] = true,
    ["Elite Skeleton"] = true,
    ["Desert Thief"] = true,
    ["Anubis"] = true,
    ["Pharaoh"] = true,
    ["Sunken Vessel"] = true,
    ["Biscuit Man"] = true,
    ["Dough Master"] = true,
    ["Supreme Swordman"] = true,
    ["Sally"] = true,
    ["Pondere"] = true,
    ["Hefty"] = true,
    ["Lomeo"] = true,
    ["Prince Aria"] = true,
    ["Devastate"] = true,
    ["Floffy"] = true,
    ["Ryu"] = true,
},

["boss_sea3"] = {
    ["Fugitive"] = true,
    ["The Deep One"] = true,
    ["Cyborg Gorilla"] = true,
    ["Ripcurrent Raider"] = true,
    ["Tidal Warrior"] = true,
    ["Ocean Gladiator"] = true,
    ["Electro Abyss Warrior"] = true,
    ["Inferno Diver"] = true,
    ["Tempest Tidebreaker"] = true,
    ["Abyssal Swordsman"] = true,
    ["Prisoner of Gravity"] = true,
},

["bosstool_select"]={"Tool : Combat"},
["bosstool_multi"]={
["Combat"]=true,
["Sword"]=true,
["Fruit Power"]=true
},
["bossskill"] = {
        ["Z"] = true,
        ["X"] = true,
        ["C"] = true,
        ["V"] = true,
        ["B"] = true,
        ["E"] = true
    },
["boss_select"]={"Boss : Select"},
["boss"]={false},
["bossmulti"]={false},
["bossquest"]={true},
["saber"]={false},
["skhd"]={false},
["dragon"]={false},
["gs"]={false},
["bigmom"]={false},
["oden"]={false},
["setsail"]={false},
["ship"]={false},
["islandrace"]={false},
["seaeventvip"]={false},

["dungeon_select"]={"Dungeon : Hard"},
["dungeon"]={false},
["dungeon_race"]={35},
["dungeon_attack"]={150},

["esp_prl"]={false},
["esp_fruit"]={false},
["dungeon"]={false},
["fish_cf"]={"CFrame.new(0,0,0)"},
["fish"]={false},

["combat_player"]={"Player : Select"},
["aimskill"]={false},
["aimskill_near"]={false},
["aimskill_value"]={400},
["aimcamara"]={false},
["aimcamara_near"]={false},
["aimcamara_value"]={400},

["shop_select1"]={"Key : Select"},
["shop_value"]={1},
["buykey"]={false},
["shop_select2"]={"Key : Select"},
["shop_value2"]={1},
["randomfruit"]={false},

["server_live"]={"Server Live : Select"},

["island_select"]={"Island : Select"},
["npc_select"]={"NPC : Select"},

["water"] = {false},
["walkspeed"] = {false},
["jumpower"] = {false},
["infjump"] = {false},
["jump_value"]={35},
["speed_value"]={100},
    
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

setting_bar1 = Instance.new("ScrollingFrame")
setting_f1 = Instance.new("TextLabel")
setting_b1 = Instance.new("TextButton")
setting_f2= Instance.new("TextLabel")
setting_b2 = Instance.new("TextButton")

boss_bar1 = Instance.new("ScrollingFrame")
boss_bar2 = Instance.new("ScrollingFrame")
boss_bar3 = Instance.new("ScrollingFrame")
boss_bar4= Instance.new("ScrollingFrame")
boss_bar5 = Instance.new("ScrollingFrame")
boss_f1 = Instance.new("TextLabel")
boss_b1 = Instance.new("TextButton")
boss_f2= Instance.new("TextLabel")
boss_b2 = Instance.new("TextButton")
boss_f3= Instance.new("TextLabel")
boss_b3 = Instance.new("TextButton")
boss_f4= Instance.new("TextLabel")
boss_b4 = Instance.new("TextButton")
boss_f5= Instance.new("TextLabel")
boss_b5 = Instance.new("TextButton")
boss_f6= Instance.new("TextLabel")
boss_b6 = Instance.new("TextButton")
boss_f7= Instance.new("TextLabel")
boss_b7= Instance.new("TextButton")
boss_f8= Instance.new("TextLabel")
boss_b8= Instance.new("TextButton")

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
more_f6= Instance.new("TextLabel")
more_b6 = Instance.new("TextButton")

dungeon_bar1 = Instance.new("ScrollingFrame")
dungeon_bar2 = Instance.new("ScrollingFrame")
dungeon_f1 = Instance.new("TextLabel")
dungeon_b1 = Instance.new("TextButton")
dungeon_f2= Instance.new("TextLabel")
dungeon_b2 = Instance.new("TextButton")
dungeon_f3= Instance.new("TextLabel")
dungeon_b3 = Instance.new("TextButton")
dungeon_f4= Instance.new("TextLabel")
dungeon_b4 = Instance.new("TextButton")
dungeon_f5= Instance.new("TextLabel")
dungeon_b5 = Instance.new("TextButton")

esp_f1 = Instance.new("TextLabel")
esp_b1 = Instance.new("TextButton")
esp_f2= Instance.new("TextLabel")
esp_b2 = Instance.new("TextButton")
esp_f3= Instance.new("TextLabel")
esp_b3 = Instance.new("TextButton")
esp_f4= Instance.new("TextLabel")
esp_b4 = Instance.new("TextButton")

fish_f1 = Instance.new("TextLabel")
fish_b1 = Instance.new("TextButton")
fish_f2= Instance.new("TextLabel")
fish_b2 = Instance.new("TextButton")
fish_f3= Instance.new("TextLabel")
fish_b3 = Instance.new("TextButton")
fish_f4= Instance.new("TextLabel")
fish_b4 = Instance.new("TextButton")

combat_bar1 = Instance.new("ScrollingFrame")
combat_bar2 = Instance.new("ScrollingFrame")
combat_f1 = Instance.new("TextLabel")
combat_b1 = Instance.new("TextButton")
combat_f2= Instance.new("TextLabel")
combat_b2 = Instance.new("TextButton")
combat_f3= Instance.new("TextLabel")
combat_b3 = Instance.new("TextButton")
combat_f4= Instance.new("TextLabel")
combat_b4 = Instance.new("TextButton")
combat_f5= Instance.new("TextLabel")
combat_b5 = Instance.new("TextButton")
combat_f6= Instance.new("TextLabel")
combat_b6= Instance.new("TextButton")

shop_bar1 = Instance.new("ScrollingFrame")
shop_bar2 = Instance.new("ScrollingFrame")
shop_f1 = Instance.new("TextLabel")
shop_b1 = Instance.new("TextButton")
shop_f2= Instance.new("TextLabel")
shop_b2 = Instance.new("TextButton")
shop_f3= Instance.new("TextLabel")
shop_b3 = Instance.new("TextButton")
shop_f4= Instance.new("TextLabel")
shop_b4 = Instance.new("TextButton")

server_f1 = Instance.new("TextLabel")
server_b1 = Instance.new("TextButton")
server_f2= Instance.new("TextLabel")
server_b2 = Instance.new("TextButton")
server_f3= Instance.new("TextLabel")
server_b3= Instance.new("TextButton")
server_f4= Instance.new("TextLabel")
server_b4= Instance.new("TextButton")
server_t1=Instance.new("TextBox")

pre_f1 = Instance.new("TextLabel")
pre_b1 = Instance.new("TextButton")

sl_bar=Instance.new("ScrollingFrame")
sl_f1 = Instance.new("TextLabel")
sl_b1= Instance.new("TextButton")

teleport_bar1 = Instance.new("ScrollingFrame")
teleport_bar2 = Instance.new("ScrollingFrame")
teleport_f1 = Instance.new("TextLabel")
teleport_b1 = Instance.new("TextButton")
teleport_f2= Instance.new("TextLabel")
teleport_b2 = Instance.new("TextButton")
teleport_f3= Instance.new("TextLabel")
teleport_b3 = Instance.new("TextButton")
teleport_f4= Instance.new("TextLabel")
teleport_b4 = Instance.new("TextButton")

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

-- [[Libary]]

function _(name1)    
if name1=="fake" then
return false
else
return _G.Setting[name1][1]
end end 

function __(name1,name2)
 _G.Setting[name1][1]=name2
 SaveSettings()
end

function make_screengui(name1)
name1.Name = "name1"
name1.Parent = game.CoreGui
name1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
end

function make_select3(name1, name2, name3, parent, text, position,save)

--textlabel
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name1.Position = position
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = ""
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left

--button
name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name2.Size = UDim2.new(0, 180, 0, 30)
name2.BorderColor3 = Color3.fromRGB(250, 250, 250)
name2.Font = Enum.Font.SourceSans
name2.Text = text
name2.TextColor3 = Color3.fromRGB(250, 250, 250)
name2.TextSize = 18.000
name2.TextXAlignment = Enum.TextXAlignment.Left

--button lập lại
name3.Name = "name3"
name3.Parent = name1
name3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name3.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
name3.Size = UDim2.new(0, 20, 0, 20)
name3.BorderColor3 = Color3.fromRGB(250, 250, 250)
name3.Font = Enum.Font.SourceSans
name3.TextColor3 = Color3.fromRGB(250, 250, 250)
name3.TextSize = 30.000
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
function make_mainscrollingframe(name1, parent, X,pos)
table.insert(_G.ntt_mainscrollingframe,name1)
name1.Name = "name1"--farm
name1.Parent = main
name1.Active = true
name1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name1.BackgroundTransparency = 1.000
name1.BorderSizePixel = 0
name1.Size = UDim2.new(0, 498, 0, 230)
name1.ScrollBarThickness = 0
name1.Position = UDim2.new(0.17631148, 0, 0.13285722, 0)
name1.Visible = X           

if pos~= nil then
local t=_G.ntt_autopos(pos)
spawn(function()
while task.wait() do                  
pcall(function()
for i=1,#name1:GetChildren() do
name1:GetChildren()[i].Position=UDim2.new(0, 0, t[i], 0)
end end) end end)
end
end

function make_textlabel(parent,text, position)
local name1 = Instance.new("TextLabel")
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = text
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = true

end

function make_mainbutton(name1, parent, text, position)

name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
name1.Position = position
name1.Size = UDim2.new(0, 100, 0, 25)
name1.Font = Enum.Font.Ubuntu
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Text = text
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = false
name1.TextXAlignment = Enum.TextXAlignment.Left

end

function make_together(name1, name2 , parent, text,  position,save)

name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = text
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name2.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
name2.Size = UDim2.new(0, 20, 0, 20)
name2.BorderColor3 = Color3.fromRGB(250, 250, 250)
name2.Font = Enum.Font.SourceSans
name2.Text = ""
name2.TextColor3 = Color3.fromRGB(250, 250, 250)
name2.TextSize = 30.000
if _(save) then
name2.Text = "X"
end end

function make_select2(name1, name2, name3, parent, text, position,save)

name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = ""
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name2.Size = UDim2.new(0, 350, 0, 30)
name2.BorderColor3 = Color3.fromRGB(250, 250, 250)
name2.Font = Enum.Font.SourceSans
name2.Text = text
name2.TextColor3 = Color3.fromRGB(250, 250, 250)
name2.TextSize = 18.000
name2.TextXAlignment = Enum.TextXAlignment.Left

name3.Name = "name3"
name3.Parent = name1
name3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name3.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
name3.Size = UDim2.new(0, 20, 0, 20)
name3.BorderColor3 = Color3.fromRGB(250, 250, 250)
name3.Font = Enum.Font.SourceSans
name3.TextColor3 = Color3.fromRGB(250, 250, 250)
name3.TextSize = 30.000
if _(save) then
name3.Text = "X"
else
name3.Text = ""
end end

function make_auto_selectbutton(name3,parent,gettable,text_1,position,save)
 loadstring("name1="..#gettable)()
for i=1, name1 do
if i==1 then
make_selectbutton(name3, parent, gettable[i], text_1.." : "..gettable[i], UDim2.new(0, 0, 0, 0),save)
elseif i>=2 then
make_selectbutton(name3, parent, gettable[i], text_1.." : "..gettable[i], UDim2.new(0, 0, position*(i-1), 0),save)
end end end


function make_selectbutton(name3, parent, text1, text2, position,save)

name1 = Instance.new("TextLabel")
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name1.Position = position
name1.Size = UDim2.new(0, 230, 0, 20)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = text1
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left

name2 = Instance.new("TextButton")
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(250,250,250)
name2.Position = UDim2.new(0.718000, 0, 0, 0)
name2.Size = UDim2.new(0, 65, 0, 20)
name2.BorderColor3 = Color3.fromRGB(0, 0, 0)
name2.Font = Enum.Font.SourceSans
name2.Text = "Button"
name2.TextColor3 = Color3.fromRGB(0, 0, 0)
name2.TextSize = 14.000
name2.MouseButton1Down:connect(function()
name3.Text = text2
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
ntt_sframe.BackgroundColor3 = Color3.fromRGB(0,0,0)
ntt_sframe.BackgroundTransparency = 1
ntt_sframe.BorderColor3 = Color3.fromRGB(250,250,250)
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
name1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Position = UDim2.new(0.60, 0, 0.10, 0)
name1.Size = UDim2.new(0, 250, 0, 245)
name1.BorderSizePixel = 1
name1.ZIndex=3
name1.Visible = false
name1.Draggable = false

end

function make_mainframe(name1, name2, name3, parent,  text)

name1.Name = "name1"
name1.Parent = parent -- nằm trên khung ẩn
name1.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --màu khung
name1.Position = UDim2.new(0.180126051, 0, 0.228999169, 0) -- vị trí đứng
name1.Size = UDim2.new(0, 640, 0, 280) -- kích cở
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Active = true
name1.Draggable = false
name1.Visible = false

name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name2.BackgroundTransparency = 0
name2.Position = UDim2.new(0, 0, 0, 0)
name2.Size = UDim2.new(0, 640, 0, 26)
name2.Font = Enum.Font.Ubuntu
name2.Text = text
name2.TextColor3 = Color3.fromRGB(255, 255, 255)
name2.TextSize = 14.000
name2.TextWrapped = true
name2.TextXAlignment = Enum.TextXAlignment.Left
name2.BorderColor3 = Color3.fromRGB(250, 250, 250)

name3.Name = "name3"
name3.Parent = name1
name3.Active = true
name3.BackgroundColor3 = Color3.fromRGB(5,5,5)
name3.Size = UDim2.new(0, 100, 0, 250)
name3.ScrollBarThickness = 0
name3.BorderColor3 = Color3.fromRGB(250, 250, 250)
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
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 
	or input.UserInputType == Enum.UserInputType.Touch then
		
		dragging = false
	end
end)

end

function make_select1(name1, name2, parent, text, position)
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = ""
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name2.Size = UDim2.new(0, 350, 0, 30)
name2.BorderColor3 = Color3.fromRGB(250, 250, 250)
name2.Font = Enum.Font.SourceSans
name2.Text = text
name2.TextColor3 = Color3.fromRGB(250, 250, 250)
name2.TextSize = 18.000
name2.TextXAlignment = Enum.TextXAlignment.Left

end

function make_buttonnumber(name1,name2,name3,text1,text2,pos1,pos2)
name1.Parent = name3
name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name1.Position = UDim2.new(0, 0, pos1, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = text1
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
name2.Position = UDim2.new(pos2, 0, 0, 0)
name2.Size = UDim2.new(0, 30, 0, 30)
name2.Font = Enum.Font.Ubuntu
name2.BackgroundTransparency = 1.000
name2.Text = text2
name2.TextColor3 = Color3.fromRGB(250, 250, 250)
name2.TextSize = 14.000
end

function make_button(name1, name2, parent, text, position)
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = text
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left

name2.Name = "name2"
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(250, 250, 250)
name2.Position = UDim2.new(0.85000000, 0, 0.050000000, 0)
name2.Size = UDim2.new(0, 80, 0, 25)
name2.BorderColor3 = Color3.fromRGB(0, 0, 0)
name2.Font = Enum.Font.SourceSans
name2.Text = "Button"
name2.TextColor3 = Color3.fromRGB(0, 0, 0)
name2.TextSize = 16.000
end

function make_textbox(name1, parent, text, position)
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(250, 255, 255)
name1.Position = UDim2.new(0, 0, position, 0)
name1.Size = UDim2.new(0, 498, 0, 30)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = text
name1.TextColor3 = Color3.fromRGB(5, 5, 5)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left
end

function make_selectbutton_v2(parent, text1, position,save)

local name1 = Instance.new("TextLabel")
name1.Parent = parent
name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
name1.Position = position
name1.Size = UDim2.new(0, 230, 0, 20)
name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
name1.Font = Enum.Font.Ubuntu
name1.Text = text1
name1.TextColor3 = Color3.fromRGB(255, 255, 255)
name1.TextSize = 14.000
name1.TextWrapped = true
name1.TextXAlignment = Enum.TextXAlignment.Left

local name2 = Instance.new("TextButton")
name2.Parent = name1
name2.BackgroundColor3 = Color3.fromRGB(250,250,250)
name2.Position = UDim2.new(0.71800000, 0, 0, 0)
name2.Size = UDim2.new(0, 65, 0, 20)
name2.BorderColor3 = Color3.fromRGB(0, 0, 0)
name2.Font = Enum.Font.SourceSans
name2.Text = "Button"
name2.TextColor3 = Color3.fromRGB(0, 0, 0)
name2.TextSize = 14.000
name2.MouseButton1Down:connect(function()

if save[name1.Text] then
save[name1.Text]=false
name2.BackgroundColor3 = Color3.fromRGB(0,0,0)
name2.TextColor3 = Color3.fromRGB(250, 250, 250)
else
save[name1.Text]=true
name2.BackgroundColor3 = Color3.fromRGB(250,250,250)
name2.TextColor3 = Color3.fromRGB(0, 0, 0)
end 
SaveSettings()
end) 

if save[name1.Text] then
name2.BackgroundColor3 = Color3.fromRGB(250,250,250)
name2.TextColor3 = Color3.fromRGB(0, 0, 0)
else
name2.BackgroundColor3 = Color3.fromRGB(0,0,0)
name2.TextColor3 = Color3.fromRGB(250, 250, 250)
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
    name1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
    name1.Position = UDim2.new(0, 0, pos, 0)
    name1.Size = UDim2.new(0, 498, 0, 30)
    name1.BorderColor3 = Color3.fromRGB(250, 250, 250)
    name1.Font = Enum.Font.Ubuntu
    name1.Text = ""
    name1.TextColor3 = Color3.fromRGB(255, 255, 255)
    name1.TextSize = 14
    name1.TextWrapped = true
    name1.TextXAlignment = Enum.TextXAlignment.Left

    local Bar = Instance.new("Frame", name1)
    Bar.AnchorPoint = Vector2.new(0.5, 0.5)
    Bar.Position = UDim2.new(0.27, 0, 0.5, 0)
    Bar.Size = UDim2.new(0.5, 0, 0, 6)
    Bar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    Bar.BorderSizePixel = 0
    Bar.Name = "Bar"

    
    local Fill = Instance.new("Frame", Bar)
    Fill.BackgroundColor3 = Color3.fromRGB(250, 250, 255)
    Fill.BorderSizePixel = 0
    Fill.Size = UDim2.new(0, 0, 1, 0)
    Fill.Name = "Fill"

    -- Nút kéo (Knob)
    local Knob = Instance.new("Frame", Bar)
    Knob.Size = UDim2.new(0, 14, 0, 14)
    Knob.AnchorPoint = Vector2.new(0.5, 0.5)
    Knob.Position = UDim2.new(0, 0, 0.5, 0)
    Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Knob.BorderSizePixel = 0
    Knob.Name = "Knob"

    
    local ValueLabel = Instance.new("TextLabel", name1)
    ValueLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    ValueLabel.Position = UDim2.new(0.85, 0, 0.5, 0)
    ValueLabel.BackgroundTransparency = 1
    ValueLabel.TextColor3 = Color3.new(1, 1, 1)
    ValueLabel.TextScaled = true
    ValueLabel.Font = Enum.Font.Ubuntu
    ValueLabel.TextXAlignment = Enum.TextXAlignment.Left
    ValueLabel.Size = UDim2.new(0.6, 0, 0.5, 0)
    --ValueLabel.TextSize = 14

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

function make_onof(name1, parent)
local onof = Instance.new("TextButton") 
local uionof = Instance.new("UICorner")
onof.Parent = parent
onof.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
onof.Position = UDim2.new(0.15162201, 0, 0.273285708, 0)
onof.Size = UDim2.new(0, 50, 0, 50)
onof.Font = Enum.Font.ArialBold
onof.Text = "Open"
onof.TextColor3 = Color3.fromRGB(250, 255, 250)
onof.TextSize = 20.000
onof.BorderColor3 = Color3.fromRGB(250, 250, 250)
onof.Transparency = 0
onof.Active = true
onof.Draggable = true
uionof.Parent = onof
onof.MouseButton1Down:connect(function()
if onof.Text == "Open" then --on
onof.Text = "Close"
name1.Visible = true
elseif onof.Text == "Close" then --off
onof.Text = "Open"
name1.Visible = false
end end)
end

-------------------------------------

function sea1()
if game.PlaceId == 4520749081 then
return true
end end

function sea2()
if game.PlaceId == 6381829480 then
return true
end end

function sea3()
if game.PlaceId == 15759515082 then
return true
end end

make_screengui(NTTGUI)
make_mainframe(main, TextLabel, bar1, NTTGUI,  ("NTT HUB | Main | ".._G.linkdis))
main.Draggable = false
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
sea.Text="King Legacy"

make_mainscrollingframe(b_page1, main, true,0.017)
b_page1.CanvasSize=UDim2.new(0,0,0,2000)
make_mainscrollingframe(b_page2, main, false,0.06)
make_mainscrollingframe(b_page3, main, false,0.06)
make_mainscrollingframe(b_page4, main, false,0.06)
make_mainscrollingframe(b_page5, main, false,0.06)
make_mainscrollingframe(b_page6, main, false,0.06)
make_mainscrollingframe(b_page7, main, false,0.06)
make_mainscrollingframe(b_page8, main, false,0.06)
make_mainscrollingframe(b_page9, main, false,0.06)
make_mainscrollingframe(b_page10, main, false,0.06)
make_mainscrollingframe(b_page11, main, false,0.06)
make_mainscrollingframe(b_page12, main, false,0.06)
make_mainscrollingframe(b_page13, main, false,0.06)
make_mainscrollingframe(b_page14, main, false,0.06)

make_mainbutton(b_1, bar1, "Main", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_2, bar1, "Boss", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_3, bar1, "Dungeon", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_4, bar1, "Esp/Fish", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_5, bar1, "Combat", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_10, bar1, "Player", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_6, bar1, "Shop", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_7, bar1, "Server", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_8, bar1, "Server Live", UDim2.new(0, 0, 0.000000000, 0))
make_mainbutton(b_9, bar1, "Teleport", UDim2.new(0, 0, 0.000000000, 0))


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

------------------------------------------------------------------------------------------------

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
if not _G.index_key then return end
    -- bỏ prefix trước khi decode
    if str:sub(1, #PREFIX) == PREFIX then
        str = str:sub(#PREFIX + 1)
    else
        return nil -- không đúng định dạng
    end

    return xor_str(base64dec(str), secret)
end

function hop()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/NTTTTTTTT/Main/main/Svv')))()
end

function CheckQuest()
--[[
Mob
Quest
CFrame
]]
    local lv = game.Players.LocalPlayer.PlayerStats.lvl.Value
    local function mlv(a, b)
        return lv == a or lv <= b
    end

    if game.PlaceId == 4520749081 then
        if mlv(1, 9) then
            return {1,
                "Kill 4 Soldiers",
                CFrame.new(-1860,50,-4489)
            }
        elseif mlv(10, 19) then
            return {10,
                "Kill 5 Clown Pirates",
                CFrame.new(-1860,50,-4489)
            }
        elseif mlv(20, 29) then
            return {20,
                "Kill 1 Smoky",
                CFrame.new(-2065,99,-4686)
            }
        elseif mlv(30, 49) then
            return {30,
                "Kill 1 Tashi",
                CFrame.new(-2270,109,-4548)
            }
        elseif mlv(50, 74) then
            return {50,
                "Kill 6 Clown Swordman",
                CFrame.new(-764,97,-3546)
            }
        elseif mlv(75, 99) then
            return {75,
                "Kill 1 The Clown",
                CFrame.new(-397,114,-3436)
            }
        elseif mlv(100, 119) then
            return {100,
                "Kill 4 Commander",
                CFrame.new(-2122,92,-2549)
            }
        elseif mlv(120, 144) then
            return {120,
                "Kill 1 Captain",
                CFrame.new(-2122,92,-2549)
            }
        elseif mlv(145, 179) then
            return {145,
                "Kill 1 The Barbaric",
                CFrame.new(-2375,139,-2419)
            }
        elseif mlv(180, 199) then
            return {180,
                "Kill 4 Fighter Fishmans",
                CFrame.new(-856,52,-1422)
            }
        elseif mlv(200, 229) then
            return {200,
                "Kill 1 Karate Fishman",
                CFrame.new(-856,52,-1422)
            }
        elseif mlv(230, 249) then
            return {230,
                "Kill 1 Shark Man",
                CFrame.new(-666,56,-1493)
            }
        elseif mlv(250, 299) then
            return {250,
                "Kill 4 Trainer Chef",
                CFrame.new(-4217,162,-2899)
            }
        elseif mlv(300, 349) then
            return {300,
                "Kill 1 Dark Leg",
                CFrame.new(-4217,162,-2899)
            }
        elseif mlv(350, 399) then
            return {350,
                "Kill 1 Dory",
                CFrame.new(-4217,162,-2899)
            }
        elseif mlv(400, 449) then
            return {400,
                "Kill 5 Snow Soldier",
                CFrame.new(-5310,65,-1275)
            }
        elseif mlv(450, 499) then
            return {450,
                "Kill 1 King Snow",
                CFrame.new(-5519,40,-1557)
            }
        elseif mlv(500, 524) then
            return {500,
                "Kill 1 Little Dear",
                CFrame.new(-5467,55,-1104)
            }
        elseif mlv(525, 574) then
            return {525,
                "Kill 1 Candle Man",
                CFrame.new(-2956,92,-602)
            }
        elseif mlv(575, 624) then
            return {575,
                "Kill 4 Sand Bandit",
                CFrame.new(-2750,73,-777)
            }
        elseif mlv(625, 674) then
            return {625,
                "Kill 1 Bomb Man",
                CFrame.new(-2956,92,-602)
            }
        elseif mlv(675, 724) then
            return {675,
                "Kill 4 Desert Marauder",
                CFrame.new(-2750,73,-777)
            }
        elseif mlv(725, 799) then
            return {725,
                "Kill 1 King of Sand",
                CFrame.new(-3021,92,-545)
            }
        elseif mlv(800, 849) then
            return {800,
                "Kill 4 Sky Soldier",
                CFrame.new(-4189,407,1345)
            }
        elseif mlv(850, 899) then
            return {850,
                "Kill 1 Ball Man",
                CFrame.new(-4922,511,1234)
            }
        elseif mlv(900, 949) then
            return {900,
                "Kill 4 Cloud Warrior",
                CFrame.new(-4433,413,1248)
            }
        elseif mlv(950, 999) then
            return {950,
                "Kill 1 Rumble Man",
                CFrame.new(-4922,511,1234)
            }
        elseif mlv(1000, 1049) then
            return {1000,
                "Kill 4 Elite Soldiers",
                CFrame.new(1897,12,749)
            }
        elseif mlv(1050, 1099) then
            return {1050,
                "Kill 4 High-class Soldier",
                CFrame.new(1897,12,749)
            }
        elseif mlv(1100, 1149) then
            return {1100,
                "Kill 1 Leader",
                CFrame.new(1897,12,749)
            }
        elseif mlv(1150, 1199) then
            return {1150,
                "Kill 1 Pasta",
                CFrame.new(1523,27,1167)
            }
        elseif mlv(1200, 1249) then
            return {1200,
                "Kill 4 Naval personnel",
                CFrame.new(-1308,69,2148)
            }
        elseif mlv(1250, 1299) then
            return {1250,
                "Kill 1 Wolf",
                CFrame.new(-1308,69,2148)
            }
        elseif mlv(1300, 1349) then
            return {1300,
                "Kill 1 Giraffe",
                CFrame.new(-1204,69,2100)
            }
        elseif mlv(1350, 1399) then
            return {1350,
                "Kill 4 Nautical soldier",
                CFrame.new(-1204,69,2100)
            }
        elseif mlv(1400, 1449) then
            return {1400,
                "Kill 4 Naval soldier",
                CFrame.new(-1256,167,2585)
            }
        elseif mlv(1450, 1499) then
            return {1450,
                "Kill 1 Leo",
                CFrame.new(-1256,167,2585)
            }
        elseif mlv(1500, 1549) then
            return {1500,
                "Kill 5 Zombies",
                CFrame.new(-2789,16,4188)
            }
        elseif mlv(1550, 1599) then
            return {1550,
                "Kill 4 Elite Zombies",
                CFrame.new(-2789,16,4188)
            }
        elseif mlv(1600, 1649) then
            return {1600,
                "Kill 4 Revenant",
                CFrame.new(-2849,20,4319)
            }
        elseif mlv(1650, 1699) then
            return {1650,
                "Kill 1 Shadow Master",
                CFrame.new(-2849,20,4319)
            }
        elseif mlv(1700, 1749) then
            return {1700,
                "Kill 4 New World Pirates",
                CFrame.new(2153,109,-1587)
            }
        elseif mlv(1750, 1799) then
            return {1750,
                "Kill 4 Cutlass Pirates",
                CFrame.new(2391,80,-1982)
            }
        elseif mlv(1800, 1849) then
            return {1800,
                "Kill 4 Rear Admirals",
                CFrame.new(2410,109,-2228)
            }
        elseif mlv(1850, 1924) then
            return {1850,
                "Kill 1 True Karate Fishman",
                CFrame.new(2471,103,-1938)
            }
        elseif mlv(1925, 1999) then
            return {1925,
                "Kill 1 Quake Woman",
                CFrame.new(2285,49,-1908)
            }
        elseif mlv(2000, 2049) then
            return {2000,
                "Kill 4 Fishmans",
                CFrame.new(-1743,40,6198)
            }
        elseif mlv(2050, 2099) then
            return {2050,
                "Kill 1 Combat Fishman",
                CFrame.new(-1956,55,6236)
            }
        elseif mlv(2100, 2149) then
            return {2100,
                "Kill 1 Sword Fishman",
                CFrame.new(-1635,96,6688)
            }
        elseif mlv(2150, 2199) then
            return {2150,
                "Kill 4 Soldier Fishman",
                CFrame.new(-1801,40,6451)
            }
        elseif mlv(2200, 999999999) then
            return {2200,
                "Kill 1 Seasoned Fishman",
                CFrame.new(-1801,40,6451)
            }
        end

    elseif game.PlaceId == 6381829480 then
        if mlv(2250, 2299) then
            return {2250,
                "Kill 4 Beast Pirates",
                CFrame.new(-4114,57,113)
            }
        elseif mlv(2300, 2349) then
            return {2300,
                "Kill 4 Beast Swordman",
                CFrame.new(-4092,98,-268)
            }
        elseif mlv(2350, 2399) then
            return {2350,
                "Kill 1 Gazelle Man",
                CFrame.new(-4363,57,252)
            }
        elseif mlv(2400, 2449) then
            return {2400,
                "Kill 4 Bandit Beast Pirates",
                CFrame.new(-4344,176,-1015)
            }
        elseif mlv(2450, 2499) then
            return {2450,
                "Kill 4 Powerful Beast Pirates",
                CFrame.new(-4656,136,-851)
            }
        elseif mlv(2500, 2549) then
            return {2500,
                "Kill 1 Violet Samurai",
                CFrame.new(-4969,105,-1007)
            }
        elseif mlv(2550, 2599) then
            return {2550,
                "Kill 1 Duke",
                CFrame.new(-5434,100,-228)
            }
        elseif mlv(2600, 2649) then
            return {2600,
                "Kill 1 Magician",
                CFrame.new(-5048,105,-154)
            }
        elseif mlv(2650, 2699) then
            return {2650,
                "Kill 1 Kitsune Samurai",
                CFrame.new(-5452,100,16)
            }
        elseif mlv(2700, 2749) then
            return {2700,
                "Kill 4 Elite Beast Pirates",
                CFrame.new(-4564,73,1380)
            }
        elseif mlv(2750, 2799) then
            return {2750,
                "Kill 1 Bear Man",
                CFrame.new(-4438,53,775)
            }
        elseif mlv(2800, 2849) then
            return {2800,
                "Kill 1 Bean",
                CFrame.new(-4018,68,904)
            }
        elseif mlv(2850, 2899) then
            return {2850,
                "Kill 1 Meji",
                CFrame.new(-5302,83,1163)
            }
        elseif mlv(2900, 2949) then
            return {2900,
                "Kill 1 Petra",
                CFrame.new(-5857,80,1308)
            }
        elseif mlv(2950, 2999) then
            return {2950,
                "Kill 1 Kappa",
                CFrame.new(-4853,109,1926)
            }
        elseif mlv(3000, 3049) then
            return {3000,
                "Kill 1 Joey",
                CFrame.new(-5287,57,2066)
            }
        elseif mlv(3050, 3099) then
            return {3050,
                "Kill 4 Skull Pirates",
                CFrame.new(-6400,78,6907)
            }
        elseif mlv(3100, 3124) then
            return {3100,
                "Kill 1 Elite Skeleton",
                CFrame.new(-5926,98,7183)
            }
        elseif mlv(3125, 3149) then
            return {3125,
                "Kill 1 Desert Thief",
                CFrame.new(1575,53,1513)
            }
        elseif mlv(3150, 3174) then
            return {3150,
                "Kill 1 Anubis",
                CFrame.new(1964,48,899)
            }
        elseif mlv(3175, 3199) then
            return {3175,
                "Kill 1 Pharaoh",
                CFrame.new(2048,49,1632)
            }
        elseif mlv(3200, 3224) then
            return {3200,
                "Kill 4 Chess Soldiers",
                CFrame.new(-7,77,8164)
            }
        elseif mlv(3225, 3249) then
            return {3225,
                "Kill 1 Sunken Vessel",
                CFrame.new(-986,83,8169)
            }
        elseif mlv(3250, 3274) then
            return {3250,
                "Kill 1 Biscuit Man",
                CFrame.new(-1375,202,8860)
            }
        elseif mlv(3275, 3299) then
            return {3275,
                "Kill 1 Dough Master",
                CFrame.new(30370,106,93598)
            }
        elseif mlv(3300, 3324) then
            return {3300,
                "Kill 4 Azlan",
                CFrame.new(-832,69,-2860)
            }
        elseif mlv(3325, 3399) then
            return {3325,
                "Kill 4 Wilderness Gorilla",
                CFrame.new(-152,173,-3579)
            }
        elseif mlv(3400, 3424) then
            return {3400,
                "Kill 4 Dark Beard Servant",
                CFrame.new(-9156,94,-4629)
            }
        elseif mlv(3425, 3449) then
            return {3425,
                "Kill 1 Supreme Swordman",
                CFrame.new(-9647,114,-4483)
            }
        elseif mlv(3450, 3499) then
            return {3450,
                "Kill 1 Sally",
                CFrame.new(-9584,135,-5374)
            }
        elseif mlv(3500, 3524) then
            return {3500,
                "Kill 5 Vice Admiral",
                CFrame.new(-9993,87,421)
            }
        elseif mlv(3525, 3549) then
            return {3525,
                "Kill 1 Pondere",
                CFrame.new(-10142,100,1298)
            }
        elseif mlv(3550, 3599) then
            return {3550,
                "Kill 1 Hefty",
                CFrame.new(-10489,84,969)
            }
        elseif mlv(3600, 3624) then
            return {3600,
                "Kill 6 Fiore Gladiator",
                CFrame.new(5450,133,-2782)
            }
        elseif mlv(3625, 3649) then
            return {3625,
                "Kill 6 Fiore Fighter",
                CFrame.new(5466,87,-2559)
            }
        elseif mlv(3650, 3674) then
            return {3650,
                "Kill 7 Fiore Pirate",
                CFrame.new(6095,134,-2905)
            }
        elseif mlv(3675, 3699) then
            return {3675,
                "Kill 1 Lomeo",
                CFrame.new(6487,72,-2135)
            }
        elseif mlv(3700, 3724) then
            return {3700,
                "Kill 1 Prince Aria",
                CFrame.new(6785,150,-3794)
            }
        elseif mlv(3725, 3774) then
            return {3725,
                "Kill 1 Devastate",
                CFrame.new(7632,122,-2644)
            }
        elseif mlv(3775, 3799) then
            return {3775,
                "Kill 1 Floffy",
                CFrame.new(7865,462,-2529)
            }
        elseif mlv(3800, 3849) then
            return {3800,
                "Kill 4 Dead Troupe",
                CFrame.new(9716,93,-4292)
            }
        elseif mlv(3850, 3974) then
            return {3850,
                "Kill 4 Dead Troupe Captain",
                CFrame.new(10021,102,-3947)
            }
        elseif mlv(3975, 9999999) then
            return {3975,
                "Kill 1 Ryu",
                CFrame.new(9927,86,-4856)
            }
        end

    elseif game.PlaceId == 15759515082 then
        if mlv(4000, 4049) then
            return {4000,
                "Kill 4 Deep Diver",
                CFrame.new(1674,47,1015)
            }
        elseif mlv(4050, 4099) then
            return {4050,
                "Kill Fugitive",
                CFrame.new(2888,35,993)
            }
        elseif mlv(4100, 4149) then
            return {4100,
                "Kill 4 Deep one Villager",
                CFrame.new(3299,316,671)
            }
        elseif mlv(4150, 4199) then
            return {4150,
                "Kill 6 Fishman Guardian",
                CFrame.new(1786,66,86)
            }
        elseif mlv(4200, 4249) then
            return {4200,
                "Kill The deep one",
                CFrame.new(2833,35,136)
            }
        elseif mlv(4250, 4299) then
            return {4250,
                "Kill Fishman King's Guard",
                CFrame.new(1934,125,-457)
            }
        elseif mlv(4300, 4324) then
            return {4300,
                "Kill 5 Jungle Gorilla",
                CFrame.new(4215,181,9081)
            }
        elseif mlv(4325, 4349) then
            return {4325,
                "Kill 5 Wilderness Gorilla",
                CFrame.new(4865,45,9876)
            }
        elseif mlv(4350, 4374) then
            return {4350,
                "Kill 5 Jungle Ape",
                CFrame.new(5307,45,9640)
            }
        elseif mlv(4375, 4399) then
            return {4375,
                "Kill 1 Cyborg Gorilla",
                CFrame.new(5784,45,9463)
            }
        elseif mlv(4400, 4449) then
            return {4400,
                "Kill 1 Ripcurrent Raider",
                CFrame.new(-506,26,-8673)
            }
        elseif mlv(4450, 4499) then
            return {4450,
                "Kill 1 Tidal Warrior",
                CFrame.new(-73,96,-8404)
            }
        elseif mlv(4500, 4549) then
            return {4500,
                "Kill 1 Ocean Gladiator",
                CFrame.new(-22,44,-9066)
            }
        elseif mlv(4550, 4599) then
            return {4550,
                "Kill 4 Deepfire Combatant",
                CFrame.new(-5174,26,171)
            }
        elseif mlv(4600, 4649) then
            return {4600,
                "Kill 1 Electro Abyss Warrior",
                CFrame.new(-5230,22,964)
            }
        elseif mlv(4650, 4699) then
            return {4650,
                "Kill 1 Inferno Diver",
                CFrame.new(-6044,54,467)
            }
        elseif mlv(4700, 4749) then
            return {4700,
                "Kill 1 Tempest Tidebreaker",
                CFrame.new(-7296,42,469)
            }
        elseif mlv(4750, 4799) then
            return {4750,
                "Kill 1 Abyssal Swordsman",
                CFrame.new(-8255,186,455)
            }
        elseif mlv(4800, 4849) then
            return {4825,
                "Kill 4 Rogue Prisoner",
                CFrame.new(10931,78,478)
            }
        elseif mlv(4850, 4874) then
            return {4850,
                "Kill 4 Prisoner Buccaneer",
                CFrame.new(11731,125,253)
            }
        elseif mlv(4875, 9999) then
            return {4875,
                "Kill 1 Prisoner of Gravity",
                CFrame.new(12436,79,1052)
            }
        end
    end
end

function island()
    local function i(x)
        if string.find(teleport_b1.Text, x) then
            return true
        end
    end

    if game.PlaceId == 4520749081 then
        if i("1") then
            return CFrame.new(-2107,17,-4067)
        elseif i("2") then
            return CFrame.new(-875,24,-3190)
        elseif i("3") then
            return CFrame.new(-850,24,-1288)
        elseif i("4") then
            return CFrame.new(-2280,24,-2783)
        elseif i("5") then
            return CFrame.new(-3920,15,-2848)
        elseif i("6") then
            return CFrame.new(-5268,28,-1417)
        elseif i("7") then
            return CFrame.new(-2688,16,-885)
        elseif i("8") then
            return CFrame.new(-4212,369,1178)
        elseif i("9") then
            return CFrame.new(1298,18,919)
        elseif i("10") then
            return CFrame.new(-1245,16,1803)
        elseif i("11") then
            return CFrame.new(-2527,16,3697)
        elseif i("12") then
            return CFrame.new(-1778,40,6028)
        end

    elseif game.PlaceId == 6381829480 then
        if i("1") then
            return CFrame.new(-3496,33,175)
        elseif i("2") then
            return CFrame.new(-780,29,7422)
        elseif i("3") then
            return CFrame.new(-638,48,-2170)
        elseif i("4") then
            return CFrame.new(1016,14,885)
        elseif i("5") then
            return CFrame.new(-5936,85,6813)
        elseif i("6") then
            return CFrame.new(-9595,38,964)
        elseif i("7") then
            return CFrame.new(-9408,1,-4315)
        elseif i("8") then
            return CFrame.new(9371,72,-4193)
        end

    elseif game.PlaceId == 15759515082 then
        if i("1") then
            return CFrame.new(2182,35,1310)
        elseif i("2") then
            return CFrame.new(10657,109,1237)
        elseif i("3") then
            return CFrame.new(3879,45,8642)
        elseif i("4") then
            return CFrame.new(-927,17,-7685)
        elseif i("5") then
            return CFrame.new(-4465,22,528)
        elseif i("6") then
            return CFrame.new(10525,78,483)
        elseif i("7") then
            return CFrame.new(-3920,77,6253)
        elseif i("8") then
            return CFrame.new(2372,421,9826)
        elseif i("9") then
            return CFrame.new(1978,263,-848)
        end
    end
end

function material()
    local function m(x)
        if string.find(main_b4.Text, x) then
            return true
        end
    end

    if sea1() then
        if m("Rusted Scrap") then
            return {{50,400,1000,1050},
                CFrame.new(-764,97,-3546)
            }
        elseif m("Fresh Fish") then
            return {{180},
                CFrame.new(-856,52,-1422)
            }
        elseif m("Leather") then
            return {{100},
                CFrame.new(-2122,92,-2549)
            }
        elseif m("Thief's rag") then
            return {{675,575},
                CFrame.new(-2750,73,-777)
            }
        elseif m("Angellic's Feather") then
            return {{800,900},
                CFrame.new(-4589,222,1151)
            }
        elseif m("Gunpowder") then
            return {{1200,1400,1350},
                CFrame.new(-1308,69,2148)
            }
        elseif m("Undead's Ooze") then
            return {{1500},
                CFrame.new(-2789,16,4188)
            }
        elseif m("Twilight's Orb") then
            return {{1650},
                CFrame.new(-2849,20,4319)
            }
        elseif m("Shark's Canine") then
            return {{2200},
                CFrame.new(-1801,40,6451)
            }
        end

    elseif sea2() then
        if m("Rusted Scrap") then
            return {{2250,2400,2450},
                CFrame.new(-4114,57,113)
            }
        elseif m("Iron") then
            return {{3800},
                CFrame.new(9716,93,-4292)
            }
        elseif m("Carrot") then
            return {{2250,2300,2400},
                CFrame.new(-4114,57,113)
            }
        elseif m("Samurai Badage") then
            return {{2500,2650},
                CFrame.new(-4969,105,-1007)
            }
        elseif m("Bread Crumbs") then
            return {{3200},
                CFrame.new(-7,77,8164)
            }
        elseif m("Ice Cystal") then
            return {{3300},
                CFrame.new(-832,69,-2860)
            }
        elseif m("Magma Cystal") then
            return {{3325},
                CFrame.new(-152,173,-3579)
            }
        elseif m("Essence of Fire") then
            return {{3200},
                CFrame.new(1990,35,1419)
            }
        elseif m("Lost Ruby") then
            return {{3175},
                CFrame.new(2048,49,1632)
            }
        elseif m("Pile of Bones") then
            return {{3050},
                CFrame.new(-6400,78,6907)
            }
        elseif m("Dragon's Orb") then
            return {{3100},
                CFrame.new(-5926,98,7183)
            }
        elseif m("Lucidus's Totem") then
            return {{3550,3500},
                CFrame.new(-9993,87,421)
            }
        elseif m("Dark Beard's Totem") then
            return {{3425,3450,3400},
                CFrame.new(-9647,114,-4483)
            }
        end

    elseif sea3() then
        if m("Sea Artifact") then
            return {{4000},
                CFrame.new(1674,47,1015)
            }
        elseif m("Shark's Fin") then
            return {{4150},
                CFrame.new(1786,66,86)
            }
        elseif m("Leather") then
            return {{4325},
                CFrame.new(4865,45,9876)
            }
        elseif m("Shark's Canine") then
            return {{4450,4400},
                CFrame.new(-506,26,-8673)
            }
        elseif m("Coral") then
            return {{4050},
                CFrame.new(2888,35,993)
            }
        elseif m("Pearl") then
            return {{4050},
                CFrame.new(2888,35,993)
            }
        end
    end
end

_G.table_tool={"Combat","Sword","Fruit Power"}
_G.table_skill={"Z","X","C","V","B","E"}
_G.table_material={}
if sea1() then
_G.table_material={
"Rusted Scrap",
"Fresh Fish",
"Leather",
"Thief's rag",
"Angellic's Feather",
"Gunpowder",
"Undead's Ooze",
"Twilight's Orb",
"Shark's Canine"
}

elseif sea2() then
_G.table_material={
"Iron",
"Rusted Scrap",
"Carrot",
"Samurai Badage",
"Bread Crumbs",
"Ice Cystal",
"Magma Cystal",
"Essence of Fire",
"Lost Ruby",
"Pile of Bones",
"Dragon's Orb",
"Lucidus's Totem",
"Dark Beard's Totem"
}
elseif sea3() then
_G.table_material={
"Sea Artifact",
"Shark's Fin",
"Leather",
"Shark's Canine",
"Coral",
"Pearl"
}
end 

if sea1() then
_G.table_dailyquest={
"Daily QuestLvl0",
"Daily QuestLvl5",
"Daily QuestLvl500",
"Daily QuestLvl2000"
}
elseif sea2() then
_G.table_dailyquest={
"Daily QuestLvl3000",
"Daily QuestLvl3800",
"Daily QuestLvl3500",
"Braveman",
"Daily Quest Disobey",
"Daily Quest DeadAbove",
"Lore Sea Sick!",
"Lore Sea Diving",
"Lore Sea Madness",
"Lore Bone Hunter"
}
elseif sea3() then
_G.table_dailyquest={
"Lore Lost Fugitive",
"Lore the Depth",
"Lore The Bubble One",
"Lore Mossy Must Gone",
"Lore Into the Bubble-Verse",
"Lore The Pillar",
"Lore Until Pond",
"Lore Kraken Codex Easy",
"Lore Kraken Codex Medium",
"Lore Kraken Codex Hard"
}
end

if sea1() then
    CFrame_Boss = {
        ["Smoky"] = CFrame.new(-2065,99,-4686),
        ["Tashi"] = CFrame.new(-2270,109,-4548),
        ["The Clown"] = CFrame.new(-397,114,-3436),
        ["Captain"] = CFrame.new(-2122,92,-2549),
        ["The Barbaric"] = CFrame.new(-2375,139,-2419),
        ["Karate Fishman"] = CFrame.new(-856,52,-1422),
        ["Shark Man"] = CFrame.new(-666,56,-1493),
        ["Dark Leg"] = CFrame.new(-4217,162,-2899),
        ["King Snow"] = CFrame.new(-5519,40,-1557),
        ["Little Dear"] = CFrame.new(-5467,55,-1104),
        ["Bomb Man"] = CFrame.new(-2956,92,-602),
        ["King of Sand"] = CFrame.new(-3021,92,-545),
        ["Ball Man"] = CFrame.new(-4076,433,1344),
        ["Rumble Man"] = CFrame.new(-4076,433,1344),
        ["Leader"] = CFrame.new(1897,12,749),
        ["Pasta"] = CFrame.new(1523,27,1167),
        ["Wolf"] = CFrame.new(-1308,69,2148),
        ["Giraffe"] = CFrame.new(-1204,69,2100),
        ["Leo"] = CFrame.new(-1256,167,2585),
        ["Shadow Master"] = CFrame.new(-2849,20,4319),
        ["True Karate Fishman"] = CFrame.new(2471,103,-1938),
        ["Quake Woman"] = CFrame.new(2285,49,-1908),
        ["Combat Fishman"] = CFrame.new(-1956,55,6236),
        ["Sword Fishman"] = CFrame.new(-1635,96,6688),
        ["Seasoned Fishman"] = CFrame.new(-1801,40,6451),
    }

elseif sea2() then
    CFrame_Boss = {
        ["Gazelle Man"] = CFrame.new(-4363,57,252),
        ["Violet Samurai"] = CFrame.new(-4969,105,-1007),
        ["Duke"] = CFrame.new(-5434,100,-228),
        ["Magician"] = CFrame.new(-5048,105,-154),
        ["Kitsune Samurai"] = CFrame.new(-5452,100,16),
        ["Bear Man"] = CFrame.new(-4438,53,775),
        ["Bean"] = CFrame.new(-4018,68,904),
        ["Meji"] = CFrame.new(-5302,83,1163),
        ["Petra"] = CFrame.new(-5857,80,1308),
        ["Kappa"] = CFrame.new(-4853,109,1926),
        ["Joey"] = CFrame.new(-5287,57,2066),
        ["Elite Skeleton"] = CFrame.new(-5926,98,7183),
        ["Desert Thief"] = CFrame.new(1575,53,1513),
        ["Anubis"] = CFrame.new(1964,48,899),
        ["Pharaoh"] = CFrame.new(2048,49,1632),
        ["Sunken Vessel"] = CFrame.new(-986,83,8169),
        ["Biscuit Man"] = CFrame.new(-1375,202,8860),
        ["Dough Master"] = CFrame.new(30370,106,93598),
        ["Supreme Swordman"] = CFrame.new(-9647,114,-4483),
        ["Sally"] = CFrame.new(-9584,135,-5374),
        ["Pondere"] = CFrame.new(-10142,100,1298),
        ["Hefty"] = CFrame.new(-10489,84,969),
        ["Lomeo"] = CFrame.new(6487,72,-2135),
        ["Prince Aria"] = CFrame.new(6785,150,-3794),
        ["Devastate"] = CFrame.new(7632,122,-2644),
        ["Floffy"] = CFrame.new(7865,462,-2529),
        ["Ryu"] = CFrame.new(9927,86,-4856),
    }

elseif sea3() then
    CFrame_Boss = {
        ["Fugitive"] = CFrame.new(2888,35,993),
        ["The Deep One"] = CFrame.new(2833,35,136),
        ["Cyborg Gorilla"] = CFrame.new(5784,45,9463),
        ["Ripcurrent Raider"] = CFrame.new(-506,26,-8673),
        ["Tidal Warrior"] = CFrame.new(-73,96,-8404),
        ["Ocean Gladiator"] = CFrame.new(-22,44,-9066),
        ["Electro Abyss Warrior"] = CFrame.new(-5230,22,964),
        ["Inferno Diver"] = CFrame.new(-6044,54,467),
        ["Tempest Tidebreaker"] = CFrame.new(-7296,42,469),
        ["Abyssal Swordsman"] = CFrame.new(-8255,186,455),
        ["Prisoner of Gravity"] = CFrame.new(12436,79,1052),
    }
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

function getlistplayer()
local l={}
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name~=game.Players.LocalPlayer.Name then            
table.insert(l,v.Name)
end end
return l
end

_G.table_key={
"Copper Key",
"Iron Key",
"Gold Key",
"Platinum Key"
}

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

function tc(x)
return x:match("%:%s*(.+)")
end

function getnpctable()
local l={}
for i=1,#game.Workspace.AllNPC:GetChildren() do
npcname=game.Workspace.AllNPC:GetChildren()[i].Name
if not string.find(npcname,"SetSpawn") and not string.find(npcname,"Progre") and (not string.find(npcname,"Quest") or string.find(npcname,"Daily")) and not string.find(npcname,"BuyShips") then
table.insert(l,npcname)
end end
return l
end

function distance(x)
if type(x) == "vector" then
return (x - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 
else
return (x.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 
end end

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

function click()
for i,vv in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if vv.ClassName=="Tool" then
local args = {
            [1] = "FS_"..vv.Name.."_M1",
            [2] = {
        ["MouseHit"] = _G.pos_skill
        }}        
        game:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(unpack(args))
local args = {
            [1] = "SW_"..vv.Name.."_M1",
            [2] = {
        ["MouseHit"] = _G.pos_skill
        }}        
        game:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(unpack(args))        
     local args = {
            [1] = "DF_"..vv.Name.."_M1",
        [2] = {
        ["MouseHit"] = _G.pos_skill
        }}        
        game:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(unpack(args))           
end end end

function up_start(x)
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StarterFrame.StatsFrame.RemoteEvent:FireServer(x,1)
end

function keyboard(x)
game:GetService("VirtualInputManager"):SendKeyEvent(true,x,false,game)                  
game:GetService("VirtualInputManager"):SendKeyEvent(false,x,false,game)                   
end

function usetool()
tool(tc(main_b1.Text))
end

function bosstool()
tool(tc(boss_b1.Text))
end

function mob(i)
local x=tostring(i)
if #x<5 then
local x=". "..x
end
for _, folder in pairs({game.Workspace.Monster.Mon,game.Workspace.Monster.Boss,game.ReplicatedStorage.MOB}) do
 for _, v in pairs(folder:GetChildren()) do
 if (string.find(v.Name,x) or v.Name==x) and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 and v:FindFirstChild("HumanoidRootPart") then
 return v
 end end end end
 
function getmob(x)
if not _G.index_key then return end
if type(x)=="string" or type(x)=="number" then
if mob(x) then
return mob(x)
end
else
for i=1,#x do
if mob(x[i]) then
return mob(x[i])
end end end end

function buso()
    if game.Workspace:FindFirstChild("PlayerCharacters")[game:GetService("Players").LocalPlayer.Name].Services.Haki.Value == 0 then
        game:GetService("ReplicatedStorage").Chest.Remotes.Events.Armament:FireServer()
    end end
    
function ken()
    if game.Workspace:FindFirstChild("PlayerCharacters")[game:GetService("Players").LocalPlayer.Name].Services.KenOpen.Value == false then
        game:GetService("ReplicatedStorage").Chest.Remotes.Functions.KenEvent:InvokeServer()        
    end end

function tp(x)
if not _G.index_key then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=x
end

gamepass_sea=game.Players.LocalPlayer.PlayerGui.MainGui.StarterFrame.LegacyPoseFrame.SecondSea

function ClickButton(btn)
    local events = { "MouseButton1Up", "MouseButton1Down", "MouseButton1Click", "Activated" }
    for _, event in pairs(events) do
        for _, evnt in pairs(getconnections(btn[event])) do
            evnt:Fire()
        end
    end
end

local function opez()
local args = {
    [1] = "DF_OpOp_Z",
    [2] = {
        ["Type"] = "Down",
        ["MouseHit"] = CFrame.new(2173.1943359375, 32.32448959350586, 1239.6748046875) * CFrame.Angles(-0, 0, -0)
    }
}

game:GetService("ReplicatedStorage").Chest.Remotes.Functions.SkillAction:InvokeServer(unpack(args))
local args = {
    [1] = "DF_OpOp_Z",
    [2] = {
        ["Type"] = "Up",
        ["MouseHit"] = CFrame.new(2258.1875, 57.05387878417969, 1145.2451171875) * CFrame.Angles(-0, 0, -0)
    }
}

game:GetService("ReplicatedStorage").Chest.Remotes.Functions.SkillAction:InvokeServer(unpack(args))
end

function quest_track()
prlu=game.Players.LocalPlayer.PlayerGui
return prlu.MainGui.QuestFrame.QuestBoard.TextFrame.QuestName.Text
end

function talk()
for i,v in pairs(workspace.AllNPC:GetChildren()) do                    
if distance(v.Position) < 10 then
game:GetService("ReplicatedStorage").Chest.Remotes.Functions.CheckQuest:InvokeServer(v)
end end end

function npcnear(x)
for i,v in pairs(workspace.AllNPC:GetChildren()) do                    
if distance(v.Position) < 10 then
if v.Name==x then
return true
end end end end

function getnpc(x)
if workspace.AllNPC:FindFirstChild(x) then
return workspace.AllNPC[x]
end end

loretitle={
["Lore Sea Sick!"]="I'm not,YOU ARE!",
["Lore Sea Diving"]="Under The Sea~",
["Lore Sea Madness"]="Catch me,If you can",
["Lore Bone Hunter"]="Bone Hunter",
["Lore Lost Fugitive"]="Redemption",
["Lore Puzzle First"]="Puzzle Mania",
["Lore the Depth"]="Rolling in the Depth",
["Lore Kraken Codex Easy"]="Krakenci Codes (Easy)",
["Lore The Bubble One"]="Hide'n Seek!",
["Lore Mossy Must Gone"]="Mossy Must Gone",
["Lore Into the Bubble-Verse"]="Into the Bubble-Verse",
["Lore The Pillar"]="The Pillar",
["Lore Kraken Codex Hard"]="Krakenci Codes (Hard)",
["Lore Until Pond"]="Until Pond",
["Lore Kraken Codex Medium"]="Krakenci Codes (Medium)"
}

function talknpc(a)
prlu=game.Players.LocalPlayer.PlayerGui
if distance(getnpc(a).Position) < 10 then

if prlu:FindFirstChild("LoreGUI") or prlu:FindFirstChild(a) then

if prlu:FindFirstChild("LoreGUI") then
local args = {
    [1] = {
        ["Quest"] = loretitle[a]
    }
}
game:GetService("Players").LocalPlayer.PlayerGui.LoreGUI.LOREGUI_REMOTE:InvokeServer(unpack(args))
end

if prlu:FindFirstChild(a) then
clickgui(prlu[a].Dialogue.Accept)
end

else
talk()
end
else
tp(getnpc(a).CFrame)
end
end

function attackmob(a,b)
tp(a)
if getmob(b) then
tp(getmob(b).HumanoidRootPart.CFrame * CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
if distance(getmob(b).HumanoidRootPart.Position) < 50 then
_G.pos_skill=getmob(b).HumanoidRootPart.CFrame      
skill()
click()
end end end

dl = false
function clickgui(path) if dl == false then game:GetService("GuiService").SelectedObject = path if game:GetService("GuiService").SelectedObject == path then dl = true game:GetService("VirtualInputManager"):SendKeyEvent(true, 13, false, game) task.wait() game:GetService("VirtualInputManager"):SendKeyEvent(false, 13, false, game) end task.wait() game:GetService("GuiService").SelectedObject = nil dl = false end end

local cam = workspace.CurrentCamera

local function aimCamera(targetCFrame)
    local camPos = cam.CFrame.Position
    local targetPos = targetCFrame.Position -- LẤY VỊ TRÍ, KHÔNG LẤY LOOKVECTOR

    cam.CameraType = Enum.CameraType.Scriptable
    cam.CFrame = CFrame.new(camPos, targetPos)
    cam.CameraType = Enum.CameraType.Custom
end

function skill()
for name, state in pairs(_G.Setting.skill) do
if state then
keyboard(name)
end end end

function bossskill()
for name, state in pairs(_G.Setting.bossskill) do
if state then
keyboard(name)
end end end

function getskhd()
if game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing") and game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing").Humanoid.Health > 0 then
if game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing").HumanoidRootPart.Position.Y <= -4 then
return {(game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing").HumanoidRootPart.CFrame*CFrame.new(0,50,0)).Position,1}
else
return {game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing").HumanoidRootPart,1}
end end
if game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") and game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing").Humanoid.Health > 0 then
return {game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing").HumanoidRootPart,1}
end
for i,v in pairs(game:GetService("Workspace").Island:GetChildren()) do
if string.find(v.Name, "Sea King") or string.find(v.Name, "Legacy Island") then
if v:FindFirstChild("HydraStand") then
return {v:FindFirstChild("HydraStand"),2}
elseif v:FindFirstChild("ChestSpawner") then
return {v:FindFirstChild("ChestSpawner"),2}
end end end end

function getgs()
for i=1,6 do
if game.Workspace:FindFirstChild("Chest"..i) then
return {game.Workspace:FindFirstChild("Chest"..i),2}
end end
if game.Workspace.GhostMonster:FindFirstChild("Ghost Ship") then
if game.Workspace.GhostMonster:FindFirstChild("Ghost Ship").Humanoid.Health>0 then
if game.Workspace.GhostMonster["Ghost Ship"]:FindFirstChild("HumanoidRootPart") then
return {game.Workspace.GhostMonster["Ghost Ship"]:FindFirstChild("HumanoidRootPart"),1}
end end end end

function getsetsail()
for i,v in pairs(game.Workspace.SeaMonster:GetChildren()) do      
if not string.find(v.Name,"Galleon") then 
if v:FindFirstChild("HumanoidRootPart") then
return v
end end end 
if getmob("FuryTentacle") then
if getmob("FuryTentacle"):FindFirstChildWhichIsA("BasePart") then
return v
end end end

function getship()
for i,v in pairs(game.Workspace.SeaMonster:GetChildren()) do      
if string.find(v.Name,"Galleon") then 
return v
end end end

function getplayer(x)
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name==x then            
return v
end end end

function playernear(x)
for i,v in pairs(game.Players:GetChildren()) do                    
if v.Name ~= game.Players.LocalPlayer.Name then
if v:FindFirstChild("PlayerStats") and v.PlayerStats:FindFirstChild("lvl") and v.PlayerStats:FindFirstChild("PVP") and  v.PlayerStats.PVP.Value then
if v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.Humanoid.Health > 0 and distance(v.Character:FindFirstChild("HumanoidRootPart").Position) < x then
return v
end end end end end

function rd_fruit(x) 
local args = {
	tc(shop_b3.Text),
	x
}
game:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("UseKey"):InvokeServer(unpack(args))
end

function _G.core
if not _G.index_key then return end
if _("bigmom") and _G.bigmom or _("seaeventvip") and _G.sss or _("saber") and _G.saber or _("skhd") and _G.skhd or _("gs") and _G.gs or _("oden") and _G.oden or _("setsail") and _G.ss or _("ship") and _G.ship then
return 3
end
if _("boss") or _("bossmulti") or _("dragon") and _G.dragon then
return 2
end
if _("level") or _("mobnear")  or _("material") or _("dailyquest") then
return 1
end
if _("pearl") or _("fish") or _G.combat_b2 or _G.teleport_b2 or _G.teleport_b4 then
return 0
end
return false
end

------------------------------------------------------------------------------------------------

--[[Main]]

make_textlabel(b_page1, "Main", 0.00000000)

make_select1(main_f1, main_b1, b_page1, _("tool_select"), 0.10000000)
main_b1.MouseButton1Down:connect(function()
_G.ntt_frame(main_bar1)
end)

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
if _G.core==3 then return end
local mob=CheckQuest()[1]
if getmob(mob) then
tp(getmob(mob).HumanoidRootPart.CFrame * CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=getmob(mob).HumanoidRootPart.CFrame 
else
tp(CheckQuest()[3])
end end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
if _("level") then
if _G.core==3 then return end
game:GetService("ReplicatedStorage").Chest.Remotes.Functions.Quest:InvokeServer("take",CheckQuest()[2])
end end) end end)

make_together(main_f3, main_b3, b_page1, "Auto Farm Mob Near", 0.170000000,"mobnear")
main_b3.MouseButton1Down:connect(function()
if main_b3.Text == "" then --on
main_b3.Text = "X"
_G.main_b3 = true 
elseif main_b3.Text == "X" then --off
main_b3.Text = ""
_G.main_b3 = false
end 
__("mobnear",_G.main_b3)
end)

make_slider_value(b_page1,"Distance Value",100,1000, 0.24,"mobnear_value")

spawn(function()    
while task.wait() do                  
pcall(function()
if  _("mobnear") then
if _G.core==3 then return end
for i,v1 in pairs(game.Workspace.Monster:GetChildren()) do      
if v1.ClassName == "Folder" then --name mob           
for i,v in pairs(v1:GetChildren()) do          
if v.ClassName=="Model" then         
if distance(v.HumanoidRootPart.Position) < _("mobnear_value") then     
if v.Humanoid.Health > 0 then         
tp(v.HumanoidRootPart.CFrame * CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=v.HumanoidRootPart.CFrame         
end end end end end end 
end end) end end)

make_textlabel(b_page1, "Material", 0.00000000)

make_select1(main_f4, main_b4, b_page1, _("material_select"), 0.2400000000)
main_b4.MouseButton1Down:connect(function()
_G.ntt_frame(main_bar2)
end)

make_selectscrollingframe(main_bar2, main, 0.310000, 0)
make_auto_selectbutton(main_b4,main_bar2,_G.table_material,"Material",0.05,"material_select")

make_together(main_f5, main_b5, b_page1, "Auto Farm Material", 0.310000000,"material")
main_b5.MouseButton1Down:connect(function()
if main_b5.Text == "" then --on
main_b5.Text = "X"
_G.main_b5 = true 
elseif main_b5.Text == "X" then --off
main_b5.Text = ""
_G.main_b5 = false
end 
__("material",_G.main_b5)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
if  _("material") then
if _G.core==3 then return end
if getmob(material()[1]) then
tp(getmob(material()[1]).HumanoidRootPart.CFrame * CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=getmob(material()[1]).HumanoidRootPart.CFrame
else
tp(material()[2])
end end end) end end)

make_together(main_f6, main_b6, b_page1, "Auto Farm Pear", 0.310000000,"pearl")
main_b6.MouseButton1Down:connect(function()
if main_b6.Text == "" then --on
main_b6.Text = "X"
_G.main_b6 = true 
elseif main_b6.Text == "X" then --off
main_b6.Text = ""
_G.main_b6 = false
end 
__("pearl",_G.main_b6)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
if _("pearl") and sea3() then
if _G.core==3 then return end
for i,v in pairs(game.Workspace.ClamFolder:GetChildren()) do
if #v:GetChildren()> 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.Clam.RootPart.CFrame
v.Clam.RootPart.Prompt.HoldDuration=0
game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)       
game:GetService("VirtualInputManager"):SendKeyEvent(false,"E",false,game)   
end end end end) end end)

make_textlabel(b_page1, "Daily Quest", 0.00000000)

make_select1(main_f7, main_b7, b_page1, _("dailyquest_select"), 0.2400000000)
main_b7.MouseButton1Down:connect(function()
_G.ntt_frame(main_bar3)
end)

make_selectscrollingframe(main_bar3, main, 0.310000, 0)
make_auto_selectbutton(main_b7,main_bar3,_G.table_dailyquest,"DailyQuest",0.05,"dailyquest_select")

make_together(main_f8, main_b8, b_page1, "Auto Daily Quest", 0.310000000,"dailyquest")
main_b8.MouseButton1Down:connect(function()
if main_b8.Text == "" then --on
main_b8.Text = "X"
_G.main_b8 = true 
elseif main_b8.Text == "X" then --off
main_b8.Text = ""
_G.main_b8 = false
end 
__("dailyquest",_G.main_b8)
end)

game:GetService('RunService').RenderStepped:connect(function()
pcall(function()
if _("dailyquest") then 
if _G.core==3 then return end
NameNpc=tc(main_b7.Text)
prlu=game.Players.LocalPlayer.PlayerGui
if prlu.MainGui.QuestFrame.QuestBoard.Visible then
if quest_track()=="Soldier [Lv. 1]" then
attackmob(CFrame.new(-1860,50,-4489),quest_track())
elseif quest_track()=="Find out Where's 'Old Man'" then
talknpc("Civilian Old")
elseif quest_track()=="King Snow [Lv. 450]" then
attackmob(CFrame.new(-5519,40,-1557),quest_track())
elseif quest_track()=="Soldier Fishman [Lv. 2150]" then
attackmob(CFrame.new(-1801,40,6451),quest_track())
elseif quest_track()=="Joey [Lv. 3000]" then
attackmob(CFrame.new(-5287,57,2066),quest_track())
elseif quest_track()=="Ancient Book" then
tp(game.Workspace.Island["H - Fiore"]["Lost Book"].Main.CFrame)
fireproximityprompt(game.Workspace.Island["H - Fiore"]["Lost Book"].Main.ProximityPrompt)
elseif quest_track()=="Hefty [Lv. 3550]" then
attackmob(CFrame.new(-10489,84,969),quest_track())
elseif quest_track()=="Deliver a Boxes" then
if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Name.."QuestBox") then
talknpc("Civilian Port")
else
tp(game.Workspace.SpawnItem.Box.CFrame)
fireproximityprompt(game.Workspace.SpawnItem.Box:FindFirstChildWhichIsA("ProximityPrompt"))
end
elseif quest_track()=="Tear down all Cultist's Poster" then
for i,v in pairs(game.Workspace.SpawnItem:GetChildren()) do        
if v.Name=="PosterQuest" and v.Decal.Transparency == 0 then
tp(v.CFrame)
fireproximityprompt(v.ProximityPrompt)
end end          
elseif quest_track()=="Floating Feather" then
for i,v in pairs(game.Workspace.SpawnItem:GetChildren()) do        
if v.Name=="Floating Feather" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.CFrame
fireproximityprompt(v.ProximityPrompt)
end end                      
elseif quest_track()=="Walk to Objective!" then
for i,v in pairs(game.Workspace.SpawnItem:GetChildren()) do        
if v.Name=="I'm not,YOU ARE!" and v:FindFirstChild("LeePunggQuestTracker") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.CFrame
end end                      
elseif quest_track()=="Just Dive?" then
for i,v in pairs(game.Workspace.SpawnItem:GetChildren()) do        
if v.Name=="Under The Sea~" and v:FindFirstChild("LeePunggQuestTracker") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.CFrame
end end                      
elseif quest_track()=="His treasure or my precious?" then
for i,v in pairs(game.Workspace.SpawnItem:GetChildren()) do        
if v.Name=="Catch me,If you can" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.CFrame
fireproximityprompt(v.PromptQuest)
end end                      
elseif quest_track()=="Find the lost bone" then
for i,v in pairs(game.Workspace.SpawnItem:GetChildren()) do        
if v.Name=="Bone Hunter" and v.Transparency == 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.CFrame
fireproximityprompt(v.PromptQuest)
end end                      
elseif quest_track()=="Fugitive [Lv. 4050]" then
attackmob(CFrame.new(2888,35,993),quest_track())
elseif quest_track()=="Deep Diver [Lv. 4000]" then
attackmob(CFrame.new(1674,47,1015),quest_track())
elseif quest_track()=="Solving Kraken's Codex (Easy)" then
talknpc("Lore Kraken Codex Giver")
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("LeePungg_PuzzleLibs") then
local args = {
    [1] = "Submit",
    [2] = {
        [1] = "Fallen",
        [2] = "Dark",
        [3] = "Heroic"
    }
}

game:GetService("Players").LocalPlayer.PlayerGui.LeePungg_PuzzleLibs.PuzzleRemote:InvokeServer(unpack(args))
else
local args = {
    [1] = {
        ["Quest"] = "Krakenci Codes",
        ["Gui"] = "PuzzleLibs"
    }
}

game:GetService("Players").LocalPlayer.PlayerGui.LoreGUI.LOREGUI_REMOTE:InvokeServer(unpack(args))
end
elseif quest_track()=="Hide?" then
for i,v in pairs(game.Workspace.SpawnItem:GetChildren()) do        
if v.Name=="Hide'n Seek!" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.CFrame
task.wait(0.5)
fireproximityprompt(v.PromptQuest)
task.wait(0.5)
end end                      
elseif quest_track()=="Remove Mosses" then
for i,v in pairs(game.Workspace.SpawnItem:GetChildren()) do        
if v.Name=="Mossy Must Gone" and v.PromptQuest.Enabled==true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.CFrame
fireproximityprompt(v.PromptQuest)
end end                      
elseif quest_track()=="Cyborg Gorilla [Lv. 4375]" then
attackmob(CFrame.new(5784,45,9463),quest_track())
elseif quest_track()=="Investigate Stranded Pillar?" then
for i,v in pairs(game.Workspace.SpawnItem:GetChildren()) do        
if v.Name=="The Pillar" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.CFrame
fireproximityprompt(v.PromptQuest)
end end                      
elseif quest_track()=="Solving Kraken's Codex (Hard)" then
talknpc("Lore Kraken Codex Giver")
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("LeePungg_PuzzleLibs") then
local args = {
    [1] = "Submit",
    [2] = {
        [1] = "Fearful",
        [2] = "Moon",
        [3] = "Night"
    }
}

game:GetService("Players").LocalPlayer.PlayerGui.LeePungg_PuzzleLibs.PuzzleRemote:InvokeServer(unpack(args))
else
local args = {
    [1] = {
        ["Quest"] = "Krakenci Codes",
        ["Gui"] = "PuzzleLibs"
    }
}

game:GetService("Players").LocalPlayer.PlayerGui.LoreGUI.LOREGUI_REMOTE:InvokeServer(unpack(args))
end
elseif quest_track()=="Ocean Gladiator [Lv. 4500]" then
attackmob(CFrame.new(22,44,-9066),quest_track())
elseif quest_track()=="Solving Kraken's Codex (Medium)" then
talknpc("Lore Kraken Codex Giver")
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("LeePungg_PuzzleLibs") then
local args = {
    [1] = "Submit",
    [2] = {
        [1] = "Moon",
        [2] = "Savior",
        [3] = "Bright"
    }
}

game:GetService("Players").LocalPlayer.PlayerGui.LeePungg_PuzzleLibs.PuzzleRemote:InvokeServer(unpack(args))
else
local args = {
    [1] = {
        ["Quest"] = "Krakenci Codes",
        ["Gui"] = "PuzzleLibs"
    }
}

game:GetService("Players").LocalPlayer.PlayerGui.LoreGUI.LOREGUI_REMOTE:InvokeServer(unpack(args))
end
end -- check quest
else -- quest false
talknpc(NameNpc)
end
end end) end)

make_textlabel(b_page1, "Start", 0.00000000)

make_together(main_f9, main_b9, b_page1, "Melee", 0.310000000,"melee")
main_b9.MouseButton1Down:connect(function()
if main_b9.Text == "" then --on
main_b9.Text = "X"
_G.main_b9 = true 
elseif main_b9.Text == "X" then --off
main_b9.Text = ""
_G.main_b9 = false
end 
__("melee",_G.main_b9)
end)


make_together(main_f10, main_b10, b_page1, "Defense", 0.310000000,"defense")
main_b10.MouseButton1Down:connect(function()
if main_b10.Text == "" then --on
main_b10.Text = "X"
_G.main_b10 = true 
elseif main_b10.Text == "X" then --off
main_b10.Text = ""
_G.main_b10 = false
end 
__("defense",_G.main_b10)
end)


make_together(main_f11, main_b11, b_page1, "Sword", 0.310000000,"sword")
main_b11.MouseButton1Down:connect(function()
if main_b11.Text == "" then --on
main_b11.Text = "X"
_G.main_b11 = true 
elseif main_b11.Text == "X" then --off
main_b11.Text = ""
_G.main_b11 = false
end 
__("sword",_G.main_b11)
end)


make_together(main_f12, main_b12, b_page1, "Fruit", 0.310000000,"fruit")
main_b12.MouseButton1Down:connect(function()
if main_b12.Text == "" then --on
main_b12.Text = "X"
_G.main_b12 = true 
elseif main_b12.Text == "X" then --off
main_b12.Text = ""
_G.main_b12 = false
end 
__("fruit",_G.main_b12)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
if _("melee") then
up_start("Melee")
end
if _("defense") then
up_start("Defense")
end
if _("sword") then
up_start("Sword")
end
if _("fruit") then
up_start("Fruit")
end end) end end)

make_textlabel(b_page1, "Setting", 0.00000000)

make_slider_value(b_page1,"Distance Value",8,30, 0.24,"y")

make_select1(setting_f1, setting_b1, b_page1, "Skill Select", 0.520000000)
setting_b1.MouseButton1Down:connect(function()
_G.ntt_frame(setting_bar1)
end)

make_selectscrollingframe(setting_bar1, main, 0.5900000, 0)
make_auto_selectbutton_v2(setting_bar1,_G.table_skill,0.05,_G.Setting.skill)

--[[Boss]]

make_textlabel(b_page2, "Main", 0.00000000)

make_select1(boss_f1, boss_b1, b_page2, _("bosstool_select"), 0.10000000)
boss_b1.MouseButton1Down:connect(function()
_G.ntt_frame(boss_bar1)
end)

make_selectscrollingframe(boss_bar1, main, 0.1700000, 0)
make_auto_selectbutton(boss_b1,boss_bar1,_G.table_tool,"Tool",0.05,"bosstool_select")

make_select1(boss_f2, boss_b2, b_page2, "Tool Multi Select", 0.520000000)
boss_b2.MouseButton1Down:connect(function()
_G.ntt_frame(boss_bar2)
end)

make_selectscrollingframe(boss_bar2, main, 0.5900000, 0)
make_auto_selectbutton_v2(boss_bar2,_G.table_tool,0.05,_G.Setting.bosstool_multi)

make_select1(boss_f3, boss_b3, b_page2, "Skill Select", 0.520000000)
boss_b3.MouseButton1Down:connect(function()
_G.ntt_frame(boss_bar3)
end)

make_selectscrollingframe(boss_bar3, main, 0.5900000, 0)
make_auto_selectbutton_v2(boss_bar3,_G.table_skill,0.05,_G.Setting.bossskill)

make_textlabel(b_page2, "Boss", 0.00000000)

if sea1() then
_G.table_boss=_G.Setting.boss_sea1
elseif sea2() then
_G.table_boss=_G.Setting.boss_sea2
elseif sea3() then
_G.table_boss=_G.Setting.boss_sea3
end

make_select1(boss_f4, boss_b4, b_page2, _("boss_select"), 0.10000000)
boss_b4.MouseButton1Down:connect(function()
_G.ntt_frame(boss_bar4)
end)

make_selectscrollingframe(boss_bar4, main, 0.1700000, 0)
make_auto_selectbutton(boss_b4,boss_bar4,tabletrue(_G.table_boss,2),"Boss",0.05,"boss_select")

make_together(boss_f5, boss_b5, b_page2, "Auto Kill Boss", 0.310000000,"boss")
boss_b5.MouseButton1Down:connect(function()
if boss_b5.Text == "" then --on
boss_b5.Text = "X"
_G.boss_b5 = true 
elseif boss_b5.Text == "X" then --off
boss_b5.Text = ""
_G.boss_b5 = false
end 
__("boss",_G.boss_b5)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
if _("boss") then
if _G.core==3 then return end
local mob=tc(boss_b4.Text)
if getmob(mob) then
tp(getmob(mob).HumanoidRootPart.CFrame*CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=getmob(mob).HumanoidRootPart.CFrame
bosstool()
else
tp(CFrame_Boss[mob])
end end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
if _G.core==3 then return end
if  _("boss") and _("bossquest") then
game:GetService("ReplicatedStorage").Chest.Remotes.Functions.Quest:InvokeServer("take","Kill 1 "..tc(boss_b4.Text))
end end) end end)

make_select1(boss_f6, boss_b6, b_page2, "Boss Multi Select", 0.520000000)
boss_b6.MouseButton1Down:connect(function()
_G.ntt_frame(boss_bar5)
end)

make_selectscrollingframe(boss_bar5, main, 0.5900000, 0)
make_auto_selectbutton_v2(boss_bar5,tabletrue(_G.table_boss,2),0.05,_G.table_boss)

make_together(boss_f7, boss_b7, b_page2, "Auto Kill Boss Multi", 0.310000000,"bossmulti")
boss_b7.MouseButton1Down:connect(function()
if boss_b7.Text == "" then --on
boss_b7.Text = "X"
_G.boss_b7 = true 
elseif boss_b7.Text == "X" then --off
boss_b7.Text = ""
_G.boss_b7 = false
end 
__("bossmulti",_G.boss_b7)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
if _("bossmulti") then
if _G.core==3 then return end
local mob=tabletrue(_G.table_boss,1)
if getmob(mob) then
tp(getmob(mob).HumanoidRootPart.CFrame*CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=getmob(mob).HumanoidRootPart.CFrame
bosstool()
else
tp(CFrame_Boss[mob])
end end end) end end)

spawn(function()    
while task.wait() do                  
pcall(function()
if _G.core==3 then return end
if _("bossmulti") and not getmob(tabletrue(_G.table_boss,1)) then
for name, state in pairs(CFrame_Boss) do
tp(state)
task.wait(1)
end end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
if _G.core==3 then return end
if  _("bossmulti") and _("bossquest") then
game:GetService("ReplicatedStorage").Chest.Remotes.Functions.Quest:InvokeServer("take","Kill 1 "..getmob(tabletrue(_G.table_boss,1)).Name:match("^(.-)%s*%["))
end end) end end)

make_together(boss_f8, boss_b8, b_page2, "Auto Quest Boss", 0.310000000,"bossquest")
boss_b8.MouseButton1Down:connect(function()
if boss_b8.Text == "" then --on
boss_b8.Text = "X"
_G.boss_b8 = true 
elseif boss_b8.Text == "X" then --off
boss_b8.Text = ""
_G.boss_b8 = false
end 
__("bossquest",_G.boss_b8)
end)

make_textlabel(b_page2, "More", 0.00000000)

if sea1() then

make_together(more_f1, more_b1, b_page2, "Auto Kill Boss Saber", 0.310000000,"saber")
more_b1.MouseButton1Down:connect(function()
if more_b1.Text == "" then --on
more_b1.Text = "X"
_G.more_b1 = true 
elseif more_b1.Text == "X" then --off
more_b1.Text = ""
_G.more_b1 = false
end 
__("saber",_G.more_b1)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
_G.saber=false
if _("saber") then
local mob="Expert Swordman"
if getmob(mob) then
_G.saber=true
tp(getmob(mob).HumanoidRootPart.CFrame*CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=getmob(mob).HumanoidRootPart.CFrame
end end end) end end)

elseif sea2() then

make_together(more_f1, more_b1, b_page2, "Auto Kill Seaking/Hydra", 0.310000000,"skhd")
more_b1.MouseButton1Down:connect(function()
if more_b1.Text == "" then --on
more_b1.Text = "X"
_G.more_b1 = true 
elseif more_b1.Text == "X" then --off
more_b1.Text = ""
_G.more_b1 = false
end 
__("skhd",_G.more_b1)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
more_f1.Text="Auto Kill Seaking/Hydra | "..gamepass_sea.SKTimeLabel.Text
_G.skhd=false
if _("skhd") and getskhd() then
_G.skhd=true
tp(getskhd()[1].CFrame)
if getskhd()[2]==1 then
_G.pos_skill=getskhd()[1].CFrame
end end end) end end)

make_together(more_f2, more_b2, b_page2, "Auto Kill Ghost Ship", 0.320000000,"gs")
more_b2.MouseButton1Down:connect(function()
if more_b2.Text == "" then --on
more_b2.Text = "X"
_G.more_b2 = true 
elseif more_b2.Text == "X" then --off
more_b2.Text = ""
_G.more_b2 = false
end 
__("gs",_G.more_b2)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
more_f2.Text="Auto Kill Ghost Ship | "..gamepass_sea.GSTimeLabel.Text
_G.gs=false
if _("gs") and getgs() then
_G.gs=true
if getgs()[2] == 1 then
tp(getgs()[1].CFrame)
_G.pos_skill=getgs()[1].CFrame
else
for i=1,6 do
if game.Workspace:FindFirstChild("Chest"..i) then
tp(game.Workspace["Chest"..i]["RootPart"].CFrame*CFrame.new(0,5,0))
task.wait(.2)
end end end
end end) end end)

make_together(more_f3, more_b3, b_page2, "Auto Kill Big Mom", 0.330000000,"bigmom")
more_b3.MouseButton1Down:connect(function()
if more_b3.Text == "" then --on
more_b3.Text = "X"
_G.more_b3 = true 
elseif more_b3.Text == "X" then --off
more_b3.Text = ""
_G.more_b3 = false
end 
__("bigmom",_G.more_b3)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
_G.bigmom=false
if _("bigmom") then
local mob="Ms. Mother"
if getmob(mob) then
_G.bigmom=true
tp(getmob(mob).HumanoidRootPart.CFrame*CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=getmob(mob).HumanoidRootPart.CFrame
end end end) end end)

make_together(more_f4, more_b4, b_page2, "Auto Kill Oden", 0.340000000,"oden")
more_b4.MouseButton1Down:connect(function()
if more_b4.Text == "" then --on
more_b4.Text = "X"
_G.more_b4 = true 
elseif more_b4.Text == "X" then --off
more_b4.Text = ""
_G.more_b4 = false
end 
__("oden",_G.more_b4)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
_G.oden=false
if _("oden") then
local mob="King Samurai"
if getmob(mob) then
_G.oden=true
tp(getmob(mob).HumanoidRootPart.CFrame*CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=getmob(mob).HumanoidRootPart.CFrame
end end end) end end)

make_together(more_f5, more_b5, b_page2, "Auto Summon/Kill Kaido", 0.340000000,"dragon")
more_b5.MouseButton1Down:connect(function()
if more_b5.Text == "" then --on
more_b5.Text = "X"
_G.more_b5 = true 
elseif more_b5.Text == "X" then --off
more_b5.Text = ""
_G.more_b5 = false
end 
__("dragon",_G.more_b5)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
_G.dragon=false
if _("dragon") then
if _G.core==3 then return end
if getmob("Dragon") then
_G.dragon=true
tp(getmob("Dragon").HumanoidRootPart.CFrame)
_G.pos_skill=getmob("Dragon").HumanoidRootPart.CFrame
else
talknpc("SummonDragon")
end end end) end end)

elseif sea3() then

make_together(more_f1, more_b1, b_page2, "Auto Set Sail", 0.310000000,"setsail")
more_b1.MouseButton1Down:connect(function()
if more_b1.Text == "" then --on
more_b1.Text = "X"
_G.more_b1 = true 
elseif more_b1.Text == "X" then --off
more_b1.Text = ""
_G.more_b1 = false
end 
__("setsail",_G.more_b1)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
if getsetsail() then
more_f1.Text="   Auto Boss Event | "..getsetsail().Name
_G.ss=true
else
more_f1.Text="   Auto Boss Event | "..game.Players.LocalPlayer.PlayerGui.MainGui.StarterFrame.LegacyPoseFrame.ThirdSea.TextLabel.Text
_G.ss=false
end
if _("setsail") and getsetsail() then
tp(getsetsail().HumanoidRootPart.CFrame*CFrame.new(0,_("y"),0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=getsetsail().HumanoidRootPart.CFrame
end end) end end)

make_together(more_f2, more_b2, b_page2, "Auto Kill Galleon", 0.320000000,"ship")
more_b2.MouseButton1Down:connect(function()
if more_b2.Text == "" then --on
more_b2.Text = "X"
_G.more_b2 = true 
elseif more_b2.Text == "X" then --off
more_b2.Text = ""
_G.more_b2 = false
end 
__("ship",_G.more_b2)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
_G.ship=false
if getship() then
_G.ship=true
more_f2.Text="Auto Kill Galleon | "..getship().Name
else
more_f2.Text="Auto Kill Galleon | Not Have"
end
if _("ship") and getship() then
tp(getship().HumanoidRootPart.CFrame)
end end) end end)

make_together(more_f3, more_b3, b_page2, "Teleport Island Race", 0.330000000,"islandrace")
more_b3.MouseButton1Down:connect(function()
if more_b3.Text == "" then --on
more_b3.Text = "X"
_G.more_b3 = true 
elseif more_b3.Text == "X" then --off
more_b3.Text = ""
_G.more_b3 = false
end 
__("islandrace",_G.more_b3)
end)

spawn(function()    
while task.wait() do                  
pcall(function()
more_f3.Text="Teleport Island Race | Not Spawn"
for i,v in pairs(game:GetService("Workspace").Island:GetChildren()) do
if string.find(v.Name,"Human") or string.find(v.Name,"Gale") or string.find(v.Name,"SeaKing") or string.find(v.Name,"Angel") or string.find(v.Name,"Animal") or string.find(v.Name,"Fish") or string.find(v.Name,"Demon") then
more_f3.Text="Teleport Island Race | "..v.Name
if _("islandrace") then
part=v:FindFirstChildWhichIsA("BasePart")
if part then
tp(part.CFrame*CFrame.new(0,20,0))
end end end end end) end end)

if _G.prenium then

make_textlabel(b_page2, "Prenium", 0.00000000)

make_together(pre_f1, pre_b1, b_page2, "   Auto Set Sail Vip", 0.590000,"seaeventvip")
pre_b1.MouseButton1Down:connect(function()
if pre_b1.Text == "" then
pre_b1.Text = "X"
_G.pre_b1 = true 
else
pre_b1.Text = ""
_G.pre_b1 = false
end
__("seaeventvip",_G.pre_b1)
end)

function setsailboss()
for i,v in pairs(game.Workspace.SeaMonster:GetChildren()) do      
if not string.find(v.Name,"Galleon") then 
return true
end end
if getmob("FuryTentacle") then
return true
end end

game:GetService("RunService").Stepped:Connect(function()
_G.ssv=false
pre_f1.Text="   Auto Boss Hop Event | Sever Live Count : "..#_G.setsail
for i,v in pairs(game.Workspace.SeaMonster:GetChildren()) do      
if not string.find(v.Name,"Galleon") then 
_G.ssv=true
if _("seaeventvip") and v:FindFirstChild("HumanoidRootPart") then
local cf=v.HumanoidRootPart.CFrame
_G.pos_skill=cf
tp(cf)
end end end 
if getmob("FuryTentacle") then
if _("seaeventvip") and getmob("FuryTentacle"):FindFirstChildWhichIsA("BasePart") then
local cf=getmob("FuryTentacle"):FindFirstChildWhichIsA("BasePart").CFrame
_G.pos_skill=cf
_G.ssv=true
tp(cf)
end end end)

spawn(function()     
while task.wait(2) do                 
pcall(function()
if _("seaeventvip") then
_G.setsail=_G.loadserver("v1","Set Sail")
end end) end end)

_G.sss=true
spawn(function()     
while task.wait() do                 
pcall(function()
if _("seaeventvip") and _G.ssv==false and setsailboss()==nil then
if _G.sss then
task.wait(10)
_G.sss=false
end
for i=1,#_G.setsail do
if string.find(_G.setsail[i],"NTT") then
code=decode(_G.setsail[i])
else
code=_G.setsail[i]
end
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, code, game.Players.LocalPlayer)
task.wait(0.5)
end
end end) end end)

spawn(function()             
while task.wait() do          
pcall(function()          
if _("seaeventvip") and _G.ssv==false and setsailboss()==nil then
tp(CFrame.new(0,10000,0))
 game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 0)
game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 0)
end end) end end)

end--[]

end --[]

--[[Dungeon]]

function inraid()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("DungeonUI") then
return true
else
return false
end end

function tpraid()
if sea1() then
return CFrame.new(-4610,30,-6009)
elseif sea2() then
return CFrame.new(-2428,54,-1566)
elseif sea3() then
return CFrame.new(10960,130,1250)
end end

cfrd={-70,70}
function dcf()
return cfrd[math.random(1,#cfrd)]
end

function dgetmob(x)
 for _, v in pairs(game.Workspace.MOB:GetChildren()) do
 if type(x) == "string" then
 if (string.find(v.Name,x) or v.Name==x) and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 and v:FindFirstChild("HumanoidRootPart") then
 return v
 end 
else
for i=1,#x do
if string.find(v.Name,x[i]) and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 and v:FindFirstChild("HumanoidRootPart") then
return v
end end
end end end

function inop()
if game.Workspace:FindFirstChild("OpeRoom"..game.Players.LocalPlayer.Name) then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game.Workspace:FindFirstChild("OpeRoom"..game.Players.LocalPlayer.Name).Position).Magnitude < 350 then
return true
else
return false
end
else 
return false
end end

function real()
for i,v in pairs(game.Workspace.Island:GetChildren()) do              
if string.find(v.Name,"(Real)") then
return v:FindFirstChild("Elevator"):FindFirstChild("MeshPart")
end end end

_G.dmob=500
if game.PlaceId==15759515082 then
_G.dmob=250
end

function dmob()
l={}
if inraid() and real() then
for i,v in pairs(game.Workspace.MOB:GetChildren()) do
if v.ClassName=="Model" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0  then
if (v.HumanoidRootPart.Position-real().Position).Magnitude < _("dungeon_attack") then
table.insert(l,v)
end end end end
return l
end

function checkskill()
for i,v in pairs(game.Workspace.Effects:GetChildren()) do
if (v.ClassName=="Part" or v.ClassName=="MeshPart" or v:FindFirstChildWhichIsA("BasePart")) and (string.find(v.Name,"Ball")
        or string.find(v.Name,"ball")
        or v.Name=="warning"
        or v.Name=="Warning"
        or string.find(v.Name,"Gravity")
        or string.find(v.Name,"gravity")
        or string.find(v.Name,"Ice,")
        or string.find(v.Name,"ice")
        or string.find(v.Name,"gun")
        or string.find(v.Name,"Dark")
        or string.find(v.Name,"dark")
        or string.find(v.Name,"fire")
        or string.find(v.Name,"Fire")
        or string.find(v.Name,"flame")
        or string.find(v.Name,"Flame")
        or string.find(v.Name,"meteo")
        or string.find(v.Name,"Meteo") 
        or string.find(v.Name,"gravity")
        or string.find(v.Name,"Gravity")) then
if distance(v:FindFirstChildWhichIsA("BasePart").Position) < 1000 then
return true
end end end end

table_boss_dungeon={
"Gravity Warden",
"Ice Warden",
"Flame Warden",
"Dark Warden",
"Crab",
"Shadowbane",
"Firelord",
"Darkbane",
"Volcanus",
"Heartbreaker",
"Mike"
}

dungeonskill={"Z","X","C","E","V"}

make_textlabel(b_page3, "Dungeon", 0.00000000)

make_select1(dungeon_f1, dungeon_b1, b_page3, _("dungeon_select"), 0.10000000)
dungeon_b1.MouseButton1Down:connect(function()
_G.ntt_frame(dungeon_bar1)
end)

_G.table_dungeon={"Easy","Normal","Hard"}

make_selectscrollingframe(dungeon_bar1, main, 0.1700000, 0)
make_auto_selectbutton(dungeon_b1,dungeon_bar1,_G.table_dungeon,"Dungeon",0.05,"dungeon_select")

make_together(dungeon_f2, dungeon_b2, b_page3, "Auto Dungeon | Need Ope V2 Kioru V2, Melee", 0.320000000,"dungeon")
dungeon_b2.MouseButton1Down:connect(function()
if dungeon_b2.Text == "" then --on
dungeon_b2.Text = "X"
_G.dungeon_b2 = true 
elseif dungeon_b2.Text == "X" then --off
dungeon_b2.Text = ""
_G.dungeon_b2 = false
end 
__("dungeon",_G.dungeon_b2)
end)

spawn(function()   
while task.wait(1) do       
pcall(function()
if _("dungeon") then
if inraid() then return end
if distance(tpraid())>10 then
tp(tpraid())
end
plg=game.Players.LocalPlayer.PlayerGui
if plg:FindFirstChild("ChooseMap") then
if plg.ChooseMap.ChooseMapFrame.MapFrame:FindFirstChild(tc(dungeon_b1.Text)) then
clickgui(plg.ChooseMap.ChooseMapFrame.MapFrame:FindFirstChild(tc(dungeon_b1.Text)))
end end end end) end end)

game:GetService("RunService").Stepped:Connect(function()
pcall(function()
if _("dungeon") and inraid() then
if dgetmob(table_boss_dungeon) or #dmob()>0 then
if inop() then
if #game.Workspace.MOB:GetChildren() > 0 then
click()
for i=1,#dungeonskill do
keyboard(dungeonskill[i])
end end 
else
opez()
end end end end) end)

game:GetService("RunService").Stepped:Connect(function()
pcall(function()
if _("dungeon") and inraid() then
ken()
end end) end)

game:GetService("RunService").Stepped:Connect(function()
pcall(function()
if  _("dungeon") and inraid() then
if dgetmob(table_boss_dungeon) then
if game.Players.LocalPlayer.Character.Humanoid.Health < game.Players.LocalPlayer.Character.Humanoid.MaxHealth * _("dungeon_race") / 100 then      
keyboard("R")
end end end end) end)

td2={"Sword","Combat"}
spawn(function()     
while task.wait() do                  
pcall(function()
if _("dungeon") and inop() and inraid() then
for i=1,#td2 do
tool(td2[i])
task.wait(.1)
end end end) end end)

spawn(function()     
while task.wait() do                 
pcall(function() 
if _("dungeon") and inraid() then
if dgetmob(table_boss_dungeon) then return end
if #dmob() <=0 then
tp(real().CFrame*CFrame.new(0,100,0))
else
for i=1,#dmob() do
tp(dmob()[i].HumanoidRootPart.CFrame*CFrame.new(dcf(),90,dcf()))
_G.pos_skill=dmob()[i].HumanoidRootPart.CFrame
task.wait(.1)
end end end end) end end)

game:GetService("RunService").Stepped:Connect(function()
pcall(function()
if _("dungeon") and inraid() then
if checkskill() then return end
if dgetmob(table_boss_dungeon) then
if dgetmob("Crab") then
tp(dgetmob("Crab").HumanoidRootPart.CFrame* CFrame.new(0,15,0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=dgetmob("Crab").HumanoidRootPart.CFrame
else
tp(dgetmob(table_boss_dungeon).HumanoidRootPart.CFrame* CFrame.new(0,8,0)*CFrame.Angles(math.rad(-90), 0, 0))
_G.pos_skill=dgetmob(table_boss_dungeon).HumanoidRootPart.CFrame
end end end end) end)

local angle = 0          
local radius = 450      
game:GetService("RunService").Stepped:Connect(function()            
pcall(function()
if  _("dungeon") and inraid() and real() and dgetmob(table_boss_dungeon) and checkskill() then                           
angle = angle + 20  -- tốc độ quay, càng lớn quay càng nhanh                           
local basePos = real().Position                         
local y = basePos.Y + 100                                                 
local x = basePos.X + math.cos(math.rad(angle)) * radius                            
local z = basePos.Z + math.sin(math.rad(angle)) * radius                           
local finalCF = CFrame.new(x, y, z)                            
local char = game.Players.LocalPlayer.Character                          
if char and char:FindFirstChild("HumanoidRootPart") then                              
char.HumanoidRootPart.CFrame = finalCF                           
end end end) end)

make_textlabel(b_page3, "Setting", 0.00000000)

make_slider_value(b_page3,"% Health On Race",1,100, 0.24,"dungeon_race")

make_slider_value(b_page3,"Distance Attack Mob",100,1000, 0.24,"dungeon_attack")

--[[Esp/Fish]]

make_textlabel(b_page4, "Esp", 0.00000000)

make_together(esp_f1, esp_b1, b_page4, "Esp Player", 0.310000000,"esp_prl")
esp_b1.MouseButton1Down:connect(function()
if esp_b1.Text == "" then --on
esp_b1.Text = "X"
_G.esp_b1 = true 
elseif esp_b1.Text == "X" then --off
esp_b1.Text = ""
_G.esp_b1 = false
end 
__("esp_prl",_G.esp_b1)
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _("esp_prl") then
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if not v.Character.Head:FindFirstChild("PlayerESP") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v.Character.Head
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "PlayerESP"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 100
                            TextLabel.TextStrokeTransparency = 0.000
                            TextLabel.TextWrapped = true
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.Head.Position).Magnitude)
                        if v:FindFirstChild("PlayerStats") then
                        local lvl =v.PlayerStats.lvl.Value
                        if v.PlayerStats.PVP.Value then
                        pvp="PVP : On"
                        else
                        pvp="PVP : Off"
                        end
                        v.Character.Head:FindFirstChild("PlayerESP").TextLabel.Text = v.Name.." | Level : "..lvl.." | "..pvp.." | "..Dis.." M"
                        end
                    end
                end
            else
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if v.Character.Head:FindFirstChild("PlayerESP") then
                            v.Character.Head.PlayerESP:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

make_together(esp_f2, esp_b2, b_page4, "Esp Fruit", 0.320000000,"esp_fruit")
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
            local folder = game.Workspace:FindFirstChild("AllDroppedFruit")
            if not folder then return end

            if _("esp_fruit") then
                for _, fruitModel in pairs(folder:GetChildren()) do
                    if fruitModel and fruitModel:IsA("Model") then
                        local handle = fruitModel:FindFirstChild("Handle")
                        if handle and handle:IsA("BasePart") then
                            if not handle:FindFirstChild("FruitESP") then
                                local BillboardGui = Instance.new("BillboardGui")
                                local TextLabel = Instance.new("TextLabel")

                                BillboardGui.Parent = handle
                                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                BillboardGui.Active = true
                                BillboardGui.Name = "FruitESP"
                                BillboardGui.AlwaysOnTop = true
                                BillboardGui.LightInfluence = 1
                                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 100
                            TextLabel.TextStrokeTransparency = 0.000
                            TextLabel.TextWrapped = true
                            end

                            local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local dis = 0
                            if hrp then
                                dis = math.floor((hrp.Position - handle.Position).Magnitude)
                            end

                            -- lấy tên fruit: ưu tiên cái tooltip name "bên dưới" (StringValue/Name tag), fallback = tên model
                            local fruitName = fruitModel.Name
                            local nameObj =
                                fruitModel:FindFirstChild("Name") or
                                fruitModel:FindFirstChild("FruitName") or
                                fruitModel:FindFirstChild("ToolTip") or
                                fruitModel:FindFirstChildWhichIsA("StringValue")

                            if nameObj then
                                if nameObj:IsA("StringValue") then
                                    fruitName = nameObj.Value
                                else
                                    fruitName = nameObj.Name
                                end
                            end

                            local gui = handle:FindFirstChild("FruitESP")
                            if gui and gui:FindFirstChild("TextLabel") then
                                gui.TextLabel.Text = fruitName .. " | " .. dis .. " M"
                            end
                        end
                    end
                end
            else
                -- tắt ESP: xóa hết FruitESP trên Handle
                for _, fruitModel in pairs(folder:GetChildren()) do
                    if fruitModel and fruitModel:IsA("Model") then
                        local handle = fruitModel:FindFirstChild("Handle")
                        if handle and handle:IsA("BasePart") then
                            local esp = handle:FindFirstChild("FruitESP")
                            if esp then esp:Destroy() end
                        end
                    end
                end
            end
        end)
    end
end)

make_textlabel(b_page4, "Fish", 0.00000000)

make_button(fish_f1, fish_b1, b_page4, "CFrame : ".._("fish_cf"),  0.030000)
fish_b1.MouseButton1Down:connect(function()
__("fish_cf","CFrame.new("..tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)..")")
fish_f1.Text="   CFrame : ".._("fish_cf")
end)

make_together(fish_f2, fish_b2 , b_page4, "Auto Fish",  0.100000,"fish")
fish_b2.MouseButton1Down:connect(function()
if fish_b2.Text == "" then --on
fish_b2.Text = "X"
_G.fish_b2 = true
elseif fish_b2.Text == "X" then --off
fish_b2.Text = ""
_G.fish_b2 = false
end 
__("fish",_G.fish_b2)
end)

spawn(function()     
while task.wait(1) do                   
pcall(function()
if _("fish") then
tooltip("")
local args = {
    [1] = "SW_Basic Rod_M1",
    [2] = {
        ["MouseHit"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,5),
        ["Charge"] = 100
    }
}
game:GetService("ReplicatedStorage").Chest.Remotes.Functions.SkillAction:InvokeServer(unpack(args))
end end) end end)

game:GetService("RunService").Stepped:Connect(function()
pcall(function()
if _("fish") then
loadstring("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=".._("fish_cf"))()
end end) end)

game:GetService("RunService").Stepped:Connect(function()
if _("fish") then
local plg=game.Players.LocalPlayer.PlayerGui
if plg:FindFirstChild("FishingUI") then
local bar=plg.FishingUI.FishingBackground.FishingBar
local fish=plg.FishingUI.FishingBackground.FishLabel
fish.Position = bar.Position
end  end end)

--[[Combat]]

make_textlabel(b_page5, "Combat", 0.5900000000)

make_select1(combat_f1, combat_b1, b_page5, _("combat_player"), 0.10000000)
combat_b1.MouseButton1Down:connect(function()
if combat_bar1.Visible==false then
combat_bar1:Destroy()
combat_bar1 = Instance.new("ScrollingFrame")
make_selectscrollingframe(combat_bar1, main, 0.1700000, 0)
make_auto_selectbutton(combat_b1,combat_bar1,getlistplayer(),"Player",0.05,"combat_player")
combat_bar1.Visible=true
else
combat_bar1.Visible=false
end end)

make_selectscrollingframe(combat_bar1, main, 0.1700000, 0)
make_auto_selectbutton(combat_b1,combat_bar1,getlistplayer(),"Player",0.05,"combat_player")

make_together(combat_f2, combat_b2, b_page5, "Teleport Player", 0.170000000,"fake")
combat_b2.MouseButton1Down:connect(function()
if combat_b2.Text == "" then 
combat_b2.Text = "X"
_G.combat_b2 = true 
elseif combat_b2.Text == "X" then 
combat_b2.Text = ""
_G.combat_b2 = false
end end)

spawn(function()     
while task.wait() do                   
pcall(function()
if _G.combat_b2 then
if getplayer(tc(combat_b1.Text)) then
tp(getplayer(tc(combat_b1.Text)).Character.HumanoidRootPart.CFrame*CFrame.new(0,10,0))
end end end) end end)

make_textlabel(b_page5, "Aim Skill", 0.5900000000)

make_together(combat_f3, combat_b3 , b_page5, "Aim Skill Player Select",  0.100000,"aimskill")
combat_b3.MouseButton1Down:connect(function()
if combat_b3.Text == "" then --on
combat_b3.Text = "X"
_G.combat_b3 = true
elseif combat_b3.Text == "X" then --off
combat_b3.Text = ""
_G.combat_b3 = false
end 
__("aimskill",_G.combat_b3)
end)

game:GetService("RunService").Stepped:Connect(function()
if _("aimskill") then
if getplayer(tc(combat_b1.Text)) then
_G.pos_skill=getplayer(tc(combat_b1.Text)).Character.HumanoidRootPart.CFrame
end end end)

make_together(combat_f4, combat_b4 , b_page5, "Aim Skill Player Near",  0.100000,"aimskill_near")
combat_b4.MouseButton1Down:connect(function()
if combat_b4.Text == "" then --on
combat_b4.Text = "X"
_G.combat_b4 = true
elseif combat_b4.Text == "X" then --off
combat_b4.Text = ""
_G.combat_b4 = false
end 
__("aimskill_near",_G.combat_b4)
end)

game:GetService("RunService").Stepped:Connect(function()
if _("aimskill_near") then
if playernear(_("aimskill_value")) then
_G.pos_skill=playernear(_("aimskill_value")).Character.HumanoidRootPart.CFrame
end end end)

make_slider_value(b_page5,"Distance Value",100,1000, 0.24,"aimskill_value")

make_textlabel(b_page5, "Aim Camara", 0.5900000000)

make_together(combat_f5, combat_b5 , b_page5, "Aim Camara Player Select",  0.100000,"aimcamara")
combat_b5.MouseButton1Down:connect(function()
if combat_b5.Text == "" then --on
combat_b5.Text = "X"
_G.combat_b5 = true
elseif combat_b5.Text == "X" then --off
combat_b5.Text = ""
_G.combat_b5 = false
end 
__("aimcamara",_G.combat_b5)
end)

game:GetService("RunService").Stepped:Connect(function()
if _("aimcamara") then
if getplayer(tc(combat_b1.Text)) then
aimCamera(getplayer(tc(combat_b1.Text)).Character.HumanoidRootPart.CFrame)
end end end)

make_together(combat_f6, combat_b6 , b_page5, "Aim Camara Player Near",  0.100000,"aimcamara_near")
combat_b6.MouseButton1Down:connect(function()
if combat_b6.Text == "" then --on
combat_b6.Text = "X"
_G.combat_b6 = true
elseif combat_b6.Text == "X" then --off
combat_b6.Text = ""
_G.combat_b6 = false
end 
__("aimcamara_near",_G.combat_b6)
end)

game:GetService("RunService").Stepped:Connect(function()
if _("aimcamara_near") then
if playernear(_("aimcamara_value")) then
aimCamera(playernear(_("aimcamara_value")).Character.HumanoidRootPart.CFrame)
end end end)

make_slider_value(b_page5,"Distance Value",100,1000, 0.24,"aimcamara_value")

--[[Shop]]

make_textlabel(b_page6, "Buy Key", 0.5900000000)

make_select1(shop_f1, shop_b1, b_page6, _("shop_select1"), 0.10000000)
shop_b1.MouseButton1Down:connect(function()
_G.ntt_frame(shop_bar1)
end)

make_selectscrollingframe(shop_bar1, main, 0.1700000, 0)
make_auto_selectbutton(shop_b1,shop_bar1,_G.table_key,"Key",0.05,"shop_select1")

make_together(shop_f2, shop_b2, b_page6, "Auto Buy Key", 0.320000000,"buykey")
shop_b2.MouseButton1Down:connect(function()
if shop_b2.Text == "" then --on
shop_b2.Text = "X"
_G.shop_b2 = true 
elseif shop_b2.Text == "X" then --off
shop_b2.Text = ""
_G.shop_b2 = false
end 
__("buykey",_G.shop_b2)
end)

make_slider_value(b_page6,"Key Value",1,100, 0.24,"shop_value")

spawn(function()     
while task.wait(1) do                   
pcall(function()
if _("buykey") then
local args = {
tc(shop_b1.Text),
_("shop_value")
}
game:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("BuyKey"):InvokeServer(unpack(args))
end end) end end)

make_textlabel(b_page6, "Random Fruit", 0.5900000000)

make_select1(shop_f3, shop_b3, b_page6, _("shop_select1"), 0.10000000)
shop_b3.MouseButton1Down:connect(function()
_G.ntt_frame(shop_bar2)
end)

make_selectscrollingframe(shop_bar2, main, 0.1700000, 0)
make_auto_selectbutton(shop_b3,shop_bar2,_G.table_key,"Key",0.05,"shop_select1")

make_together(shop_f4, shop_b4, b_page6, "Auto Random Fruit", 0.320000000,"randomfruit")
shop_b4.MouseButton1Down:connect(function()
if shop_b4.Text == "" then --on
shop_b4.Text = "X"
_G.shop_b4 = true 
elseif shop_b4.Text == "X" then --off
shop_b4.Text = ""
_G.shop_b4 = false
end 
__("randomfruit",_G.shop_b4)
end)

spawn(function()    
while task.wait() do                   
pcall(function()
if _("randomfruit") then
rd_fruit("Open1")
end end) end end)

--[[Server]]

make_textlabel(b_page7, "Server", 0.03)

make_textbox(server_t1, b_page7, "Enter Code Join Server", 0.10)

make_button(server_f1, server_b1, b_page7, "Join Server",  0.170000)
server_b1.MouseButton1Down:connect(function()
if string.find(server_t1.Text,"NTT") then
code=decode(server_t1.Text)
else
code=server_t1.Text
end
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, code, game.Players.LocalPlayer)
end)

make_button(server_f2, server_b2, b_page7, "Coppy Code Server",  0.24000)
server_b2.MouseButton1Down:connect(function()
setclipboard(game.JobId)
end)

make_button(server_f3, server_b3, b_page7, "Rejoin", 0.31)
server_b3.MouseButton1Down:connect(function()
game:GetService("TeleportService"):Teleport(game.PlaceId)
end)

make_button(server_f4, server_b4, b_page7, "Server Hop", 0.38)
server_b4.MouseButton1Down:connect(function()
hop()
end)

--[[Server Live]]

function listserver()
nums=1
server=_G.loadserver("v2",tc(sl_b1.Text))
for name, jobid in pairs(server) do
local name1 = Instance.new("TextLabel")
local name2 = Instance.new("TextButton")
make_button(name1, name2, b_page8, name.." || "..jobid, 0.03+(0.07*nums))
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

make_textlabel(b_page8, "Server Live", 0.03)

make_select1(sl_f1, sl_b1, b_page8, _("server_live"), 0.0300000000)
sl_b1.MouseButton1Down:connect(function()
_G.ntt_frame(sl_bar)
end)

_G.table_server={
"Boss KL",
"skhd",
"Ghost Ship",
"Set Sail",
"Island Race",
"BloodMoon"
}

make_selectscrollingframe(sl_bar, main, 0.1000000, 0)
make_auto_selectbutton(sl_b1,sl_bar,_G.table_server,"Server",0.05,"server_live")

samesever=sl_b1
spawn(function()     
while task.wait() do                  
pcall(function()
if samesever==sl_b1.Text then return end
if #b_page8:GetChildren() >=3 then
for i=3,#b_page8:GetChildren() do
if b_page8:GetChildren()[i] then
b_page8:GetChildren()[i]:Destroy()
end end 
else
samesever=sl_b1.Text
listserver()
end end) end end)

spawn(function()     
while task.wait(5) do                  
pcall(function()
if b_page8.Visible then
samesever=1
end end) end end)

--[[Teleport]]

_G.table_island={}
if sea1() then
for i=1,12 do
table.insert(_G.table_island,i)
end
elseif sea2() then
for i=1,8 do
table.insert(_G.table_island,i)
end
elseif sea3() then
for i=1,9 do
table.insert(_G.table_island,i)
end end

make_textlabel(b_page9, "Island", 0.03)

make_select1(teleport_f1, teleport_b1, b_page9, _("island_select"), 0.10000000)
teleport_b1.MouseButton1Down:connect(function()
_G.ntt_frame(teleport_bar1)
end)

make_selectscrollingframe(teleport_bar1, main, 0.1700000, 0)
make_auto_selectbutton(teleport_b1,teleport_bar1,_G.table_island,"Island",0.05,"island_select")

make_together(teleport_f2, teleport_b2, b_page9, "Teleport Island", 0.320000000,"fake")
teleport_b2.MouseButton1Down:connect(function()
if teleport_b2.Text == "" then --on
teleport_b2.Text = "X"
_G.teleport_b2 = true 
elseif teleport_b2.Text == "X" then --off
teleport_b2.Text = ""
_G.teleport_b2 = false
end end)

spawn(function()     
while task.wait() do                  
pcall(function()
if _G.teleport_b2 then
tp(island())
end end) end end)

make_textlabel(b_page9, "NPC", 0.03)

make_select1(teleport_f3, teleport_b3, b_page9, _("npc_select"), 0.10000000)
teleport_b3.MouseButton1Down:connect(function()
_G.ntt_frame(teleport_bar2)
end)

make_selectscrollingframe(teleport_bar2, main, 0.31000)
teleport_bar2.CanvasSize=UDim2.new(0,0,0,2000)
make_auto_selectbutton(teleport_b3,teleport_bar2,getnpctable(),"NPC",0.0125,"npc_select")

make_together(teleport_f4, teleport_b4, b_page9, "Teleport NPC", 0.320000000,"fake")
teleport_b4.MouseButton1Down:connect(function()
if teleport_b4.Text == "" then --on
teleport_b4.Text = "X"
_G.teleport_b4 = true 
elseif teleport_b4.Text == "X" then --off
teleport_b4.Text = ""
_G.teleport_b4 = false
end end)

spawn(function()     
while task.wait() do                  
pcall(function()
if _G.teleport_b4 then 
tp(game.Workspace.AllNPC[tc(teleport_b3.Text)].CFrame)
end end) end end)

--[[Player]]

make_textlabel(b_page10, "Player", 0.5900000000)

make_together(prl_f1, prl_b1, b_page10, "Walk On Water", 0.170000000,"water")
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

game:GetService('RunService').RenderStepped:connect(function()        
pcall(function()
if _("water") then
game.Workspace.SeaFolder.Sea.CanCollide=true
else
game.Workspace.SeaFolder.Sea.CanCollide=false
end end) end)

make_together(prl_f2, prl_b2, b_page10, "Walk Speed", 0.170000000,"walkspeed")
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

make_slider_value(b_page10,"Speed Value",30,500, 0.45,"speed_value")
	
game:GetService('RunService').RenderStepped:connect(function()
pcall(function()
if _("walkspeed") then            
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=_("speed_value")           
end end) end)

make_together(prl_f3, prl_b3, b_page10, "Jumpower", 0.170000000,"jumpower")
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
	
make_slider_value(b_page10,"Jump Value",30,500, 0.45,"jump_value")

spawn(function()    
while task.wait() do                
pcall(function()               
if _("jumppower") then           
game.Players.LocalPlayer.Character.Humanoid.JumpPower=_("jump_value")            
end end) end end)

make_together(prl_f4, prl_b4, b_page10, "Inf Jump", 0.170000000,"infjump")
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
pcall(function()
if _("infjump") then
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
end end) end)

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

--------

local hook1, hook2 = pcall(function()
    return getrawmetatable(game)
end)

if hook1 then
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg, false)

gg.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "InvokeServer" and tostring(self) == "SkillAction" then
    if _G.pos_skill then
    if _("dungeon") or _("aimskill") or _("aimskill_near") or (_G.core and (_G.core==1 or _G.core==2 or _G.core==3)) then
        if typeof(args[2]) == "table" and args[2].Type then
            if args[2].Type == "Up" then               
                    if not _G.index_key then return end
                    args[2].MouseHit = _G.pos_skill
                end
            end
        end
     end
        return old(self, unpack(args))
    end
    return old(self, ...)
end) 
else
spawn(function()     
while task.wait() do                  
pcall(function()
if _("dungeon") or _("aimskill") or _("aimskill_near") or (_G.core and (_G.core==1 or _G.core==2 or _G.core==3)) then
aimCamera(_G.pos_skill)
end end) end end)
end

spawn(function()     
while task.wait() do                  
pcall(function()
if _G.core==2 or _G.core==3 then
for name, state in pairs(_G.Setting.bosstool_multi) do
if state then
tool(name)
task.wait(0.1)
end end
return end
if _G.core==1 then
usetool()
end end) end end)

game:GetService("RunService").Stepped:Connect(function()
pcall(function()
if _G.core then
if _G.core==2 or _G.core==3 then
pcall(function()
click()
end)
bossskill()
return
end
if _G.core==1 then
click()
skill()
end end end) end)

spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                  if _("dungeon") or _G.core then
                   game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").PlatformStand = true
                   if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                     end                     
                        if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)                        
                     end
                  else	
                  game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").PlatformStand = false
                     if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                     end                     
                  end
            end)
        end)
    end)
    
spawn(function()     
while task.wait(1) do                  
pcall(function()
buso()
end) end end)

spawn(function()     
while task.wait() do                  
pcall(function()
if _G.core then
ken()
end end) end end)

t_play=0
game:GetService("RunService").Stepped:Connect(function(_, deltaTime)
pcall(function()
t_play=deltaTime+t_play
if t_play >= 0.1 then
dl = false
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("LoadingGUI") and game.Players.LocalPlayer.PlayerGui.LoadingGUI:FindFirstChild("Play") then
if game.Players.LocalPlayer.PlayerGui.LoadingGUI.Play.Visible == true then
clickgui(game.Players.LocalPlayer.PlayerGui.LoadingGUI.Play)
end end 
t_play=0
end end) end)

--[[Webhook]]

playerCount = #game:GetService("Players"):GetPlayers()
jobid=encode(game.JobId)

local function done(x)
if not x:FindFirstChild("done") then
local folder = Instance.new("Folder")
folder.Name = "done"
folder.Parent = x
end end

function upserver(name,title)
pcall(function()
loadstring(game:HttpGet('https://api-sever.nekokawaii.workers.dev/api/server?name='..name..'&title='..title..'&jobid='..jobid..'&time='..os.time()))()
end) end

spawn(function()    
while task.wait(1) do                  
pcall(function()
local tablemob={
"Expert Swordman",
"Ms. Mother",
"King Samurai",
"Dragon",
"Lore of Saber"
}
for i=1,#tablemob do
if getmob(tablemob[i]) and not getmob(tablemob[i]):FindFirstChild("done") then
done(getmob(tablemob[i]))
upserver("Boss KL",getmob(tablemob[i]).Name)
_G.webhook1(
"boss_kl",
getmob(tablemob[i]).Name,
playerCount,
jobid
)
end end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
for i,v in pairs(game:GetService("Workspace").Island:GetChildren()) do
if string.find(v.Name, "Sea King") or string.find(v.Name, "Legacy Island") then
--Hydra
if v:FindFirstChild("HydraStand") then
if not v:FindFirstChild("done") then
done(v)
upserver("skhd","Hydra")
_G.webhook1(
"hd",
"Hydra",
playerCount,
jobid
)
end end
--Seaking
if v:FindFirstChild("ChestSpawner") then
if not v:FindFirstChild("done") then
done(v)
upserver("skhd","SeaKing")
_G.webhook1(
"sk",
"Seaking",
playerCount,
jobid
)
end end
end end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
if game.Workspace.GhostMonster:FindFirstChild("Ghost Ship") then
if game.Workspace.GhostMonster:FindFirstChild("Ghost Ship").Humanoid.Health>0 then
if game.Workspace.GhostMonster["Ghost Ship"]:FindFirstChild("HumanoidRootPart") then
if not game.Workspace.GhostMonster["Ghost Ship"]:FindFirstChild("done") then
done(game.Workspace.GhostMonster["Ghost Ship"])
upserver("Ghost Ship","Ghost Ship")
_G.webhook1(
"gs",
"Ghost Ship",
playerCount,
jobid
)
end end end end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
if getship() then
if not getship():FindFirstChild("done") then
done(v)
_G.webhook1(
"ks",
getship().Name,
playerCount,
jobid
)
end end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
for i,v in pairs(game:GetService("Workspace").Island:GetChildren()) do
if string.find(v.Name,"Human") or string.find(v.Name,"Gale") or string.find(v.Name,"SeaKing") or string.find(v.Name,"Angel") or string.find(v.Name,"Animal") or string.find(v.Name,"Fish") or string.find(v.Name,"Demon") then
if not v:FindFirstChild("done") then
done(v)
upserver("Island Race",v.Name)
_G.webhook1(
"race",
v.Name,
playerCount,
jobid
)
end end end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
for i,v in pairs(game.Workspace.SeaMonster:GetChildren()) do      
if not string.find(v.Name,"Galleon") then 
if not v:FindFirstChild("done") then
done(v)
upserver("Set Sail",v.Name)
_G.webhook1(
"ss",
v.Name,
playerCount,
jobid
)
end end end end) end end)

_G.bm=true
spawn(function()    
while task.wait(1) do                  
pcall(function()
if  game:GetService("Lighting").Sky.MoonTextureId=="rbxassetid://5250084176" then
if _G.bm then 
_G.bm=false
upserver("BloodMoon","BloodMoon")
_G.webhook1(
"bm",
"Blood Moon",
playerCount,
jobid
)
end
else
_G.bm=true
end end) end end)

spawn(function()    
while task.wait(1) do                  
pcall(function()
_G.karken=false
if getmob("FuryTentacle") then
_G.karken=true
end 
if _G.karken then
if not game.Workspace.Monster.Boss:FindFirstChild("done") then
done(game.Workspace.Monster.Boss)
upserver("Set Sail","Karken")
_G.webhook1(
"ss",
"Karken",
playerCount,
jobid
)
end
else
if game.Workspace.Monster.Boss:FindFirstChild("done") then
game.Workspace.Monster.Boss:FindFirstChild("done"):Destroy()
end end end) end end)

local function deepPrint(tbl, indent)
data=""
    indent = indent or 0
    local padding = string.rep("  ", indent)

    if typeof(tbl) ~= "table" then
        print(padding .. tostring(tbl))
        return
    end

    for k, v in pairs(tbl) do
        if typeof(v) == "table" then
            print(padding .. "[" .. tostring(k) .. "] = {")
            deepPrint(v, indent + 1)
            print(padding .. "}")
        else
        if data == "" then
            data=padding .. "" .. tostring(k)
            else
            data=data.."\n"..padding .. "" .. tostring(k)
            end
        end
    end
end

deepPrint(game:GetService("ReplicatedStorage").Chest.Remotes.Functions.GetDFShop:InvokeServer())

_G.webhook2(
"stock_kl",
"Notification",
"Stock Fruit",
data
)  