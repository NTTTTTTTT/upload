if getgenv().RealKidHubRunning then
	warn("[RealKid] Script is already running")
	return
end

getgenv().RealKidHubRunning = true
local str = "https://webhook.trungdao2k4.workers.dev/"
local str2 = "TrauHub_Save.txt"
local tbl = { 2, 4, 8, 12 }
local n = 15
local n2 = 5
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local request_ = syn and syn.request or http and http.request or http_request or request
local request_2

if request_ then
	request_2 = request_
else
	request_2 = fluxus and fluxus.request
end

if not request_2 then
	localPlayer:Kick("Executor không hỗ trợ HTTP request")
	return
end

local function fn()
	return gethwid and gethwid() or ""
end

local function fn2()
	return game:GetService("RbxAnalyticsService"):GetClientId():gsub("[^a-zA-Z0-9%-]", "")
end

local function fn3(arg)
	return tostring(arg or ""):match("^%s*(.-)%s*$")
end

local function fn4(arg)
	local n3 = nil
	local n4 = nil
	local str3 = nil
	local v = nil
	local n5 = 35
	local flag = false
	local exitTo14 = nil
	local flag2, n6, exitTo2, exitTo, v2, flag3, flag4, flag5, flag6, n7, exitTo5, exitTo4, v3, flag7, flag8, flag9, n8, exitTo8, exitTo7, v4, flag10, flag11, flag12, n9, exitTo11, exitTo10, v5, flag13, flag14, flag15, n10, exitTo13, v6, flag16, v7

	while true do
		local v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, flag17, v44, v45, v46, flag18, v47, v48, flag19, v49, flag20, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, flag21, flag22, v60, v61, v62, v63, v64, statusCode, v65, v66, v67, v68, v69, v70, v71, v72, v73

		if not flag then
			local exitTo15 = nil
			local v74, v75, v76, v77, v78, v79, v80, v81, v82

			while true do
				if not (n5 <= 31) then
					if not (n5 <= 36) then
						if not (n5 <= 39) then
							exitTo15 = 93
							break
						elseif not (n5 <= 37) then
							if n5 <= 38 then
								n5 = arg

								if not n5 then
									if not n5 then
										n5 = 10
										flag = true
										if flag then
											exitTo15 = 41
											break
										end
									else
										exitTo15 = 97
										break
									end
								else
									v74 = n3
									v75 = n4
									v76 = str3
									v77 = v
									v78 = n5
									v79 = v74
									v80 = v75
									v81 = v76
									v82 = v77
									arg = v78
									n3 = v79
									n4 = v80
									str3 = v81
									v = v82
									n5 = 9

									if not n5 then
										n5 = 10
										flag = true
										if flag then
											exitTo15 = 41
											break
										end
									else
										exitTo15 = 96
										break
									end
								end
							else
								exitTo15 = 95
								break
							end
						else
							exitTo15 = 94
							break
						end
					else
						exitTo15 = 92
						break
					end
				else
					if not (n5 <= 25) then
						if not (n5 <= 28) then
							exitTo15 = 1
							break
						elseif not (n5 <= 26) then
							if not (n5 <= 27) then
								if not n4 then
									exitTo15 = 4
									break
								elseif not n4 then
									flag2 = v <= "MakeTab"
									upv11 = nil
									local exitTo3 = nil

									while true do
										n6 = 26
										exitTo2 = nil

										while true do
											local flag23 = n6 <= 20
											exitTo = nil

											while true do
												if not flag23 then
													if not (n6 <= 31) then
														if not (n6 <= 36) then
															if not (n6 <= 39) then
																if not (n6 <= 40) then
																	if not (n6 <= 41) then
																		local v83 = str3(v)

																		if n4 == 429 then
																			n6 = 20
																			flag23 = true
																		else
																			exitTo = 28
																			break
																		end
																	elseif not (n4 >= 500) then
																		n6 = 18
																		flag23 = true
																	else
																		exitTo = 27
																		break
																	end
																else
																	exitTo = 26
																	break
																end
															elseif not (n6 <= 37) then
																if n6 <= 38 then
																	v2 = n3

																	if not v2 then
																		n6 = 10
																		flag23 = true
																	else
																		exitTo = 25
																		break
																	end
																else
																	exitTo = 24
																	break
																end
															elseif not n3 then
																n6 = 21
																flag23 = false
															else
																exitTo = 23
																break
															end
														elseif not (n6 <= 33) then
															if not (n6 <= 34) then
																if not (n6 <= 35) then
																	if not n3 then
																		n6 = 25
																		flag23 = false
																	else
																		exitTo = 22
																		break
																	end
																else
																	exitTo = 21
																	break
																end
															else
																exitTo = 20
																break
															end
														else
															exitTo = 19
															break
														end
													elseif not (n6 <= 25) then
														if not (n6 <= 28) then
															exitTo = 15
															break
														elseif not (n6 <= 26) then
															if not (n6 <= 27) then
																if not str3 then
																	n6 = 31
																	flag23 = false
																else
																	exitTo = 18
																	break
																end
															elseif not v then
																n6 = 39
																flag23 = false
															else
																exitTo = 17
																break
															end
														elseif not n4(str3) then
															n6 = 15
															flag23 = true
														else
															exitTo = 16
															break
														end
													elseif not (n6 <= 22) then
														exitTo = 12
														break
													elseif n6 <= 21 then
														local sub = str3.sub
														flag3 = sub(sub, 1, 6) == "VALID|"

														if not flag3 then
															n6 = 8
															flag23 = true
														else
															exitTo = 14
															break
														end
													else
														exitTo = 13
														break
													end
												else
													if not (n6 <= 9) then
														if not (n6 <= 14) then
															if not (n6 <= 17) then
																if n6 <= 18 then
																	flag4 = n4 > 0

																	if flag4 then
																		n6 = 23
																		flag23 = false
																		continue
																	else
																		exitTo = 11
																		break
																	end
																else
																	exitTo = 10
																	break
																end
															else
																exitTo = 9
																break
															end
														elseif not (n6 <= 11) then
															if not (n6 <= 12) then
																if n6 <= 13 then
																	flag5 = n3.Success == false

																	if flag5 then
																		n6 = 14
																		flag23 = true
																		continue
																	else
																		exitTo = 8
																		break
																	end
																else
																	exitTo = 7
																	break
																end
															else
																exitTo = 6
																break
															end
														else
															exitTo = 5
															break
														end
													elseif not (n6 <= 4) then
														exitTo = 1
														break
													elseif not (n6 <= 1) then
														if not (n6 <= 2) then
															if not (n6 <= 3) then
																if not (n4 == 403) then
																	n6 = 41
																	flag23 = false
																	continue
																else
																	exitTo = 4
																	break
																end
															else
																exitTo = 3
																break
															end
														elseif not str3 then
															n6 = 7
															flag23 = true
															continue
														else
															exitTo = 2
															break
														end
													end

													break
												end
											end

											if exitTo == 1 then
												exitTo2 = 1
												break
											elseif exitTo == 2 then
												if not str3 then
													exitTo2 = 20
													break
												else
													n6 = 28
													continue
												end
											elseif exitTo == 3 then
												exitTo2 = 2
												break
											elseif exitTo == 4 then
												n6 = 32
												continue
											elseif exitTo == 5 then
												exitTo2 = 3
												break
											elseif exitTo == 6 then
												exitTo2 = 4
												break
											elseif exitTo == 7 then
												exitTo2 = 5
												break
											elseif exitTo == 8 then
												exitTo2 = 6
												break
											elseif exitTo == 9 then
												exitTo2 = 7
												break
											elseif exitTo == 10 then
												exitTo2 = 8
												break
											elseif exitTo == 11 then
												exitTo2 = 9
												break
											elseif exitTo == 12 then
												exitTo2 = 10
												break
											elseif exitTo == 13 then
												exitTo2 = 11
												break
											elseif exitTo == 14 then
												exitTo2 = 12
												break
											elseif exitTo == 15 then
												exitTo2 = 13
												break
											elseif exitTo == 16 then
												exitTo2 = 14
												break
											elseif exitTo == 17 then
												if not v then
													exitTo2 = 19
													break
												else
													n6 = 42
													continue
												end
											elseif exitTo == 18 then
												exitTo2 = 15
												break
											elseif exitTo == 19 then
												exitTo2 = 16
												break
											elseif exitTo == 20 then
												exitTo2 = 17
												break
											elseif exitTo == 21 then
												exitTo2 = 18
												break
											elseif exitTo == 22 then
												n6 = 30
												continue
											elseif exitTo == 23 then
												n6 = 40
												continue
											end

											break
										end

										if exitTo2 == 1 then
											exitTo3 = 1
											break
										elseif exitTo2 == 2 then
											exitTo3 = 2
											break
										elseif exitTo2 == 3 then
											exitTo3 = 3
											break
										elseif exitTo2 == 4 then
											exitTo3 = 4
											break
										elseif exitTo2 == 5 then
											exitTo3 = 5
											break
										elseif exitTo2 == 6 then
											exitTo3 = 6
											break
										elseif exitTo2 == 7 then
											exitTo3 = 7
											break
										elseif exitTo2 == 8 then
											exitTo3 = 8
											break
										elseif exitTo2 == 9 then
											exitTo3 = 9
											break
										elseif exitTo2 == 10 then
											exitTo3 = 10
											break
										elseif exitTo2 == 11 then
											exitTo3 = 11
											break
										elseif exitTo2 == 12 then
											exitTo3 = 12
											break
										elseif exitTo2 == 13 then
											exitTo3 = 13
											break
										elseif exitTo2 == 14 then
											exitTo3 = 14
											break
										elseif exitTo2 == 15 then
											if not str3 then
												exitTo3 = 15
												break
											else
												continue
											end
										end

										break
									end

									if exitTo3 == 1 then
										exitTo15 = 6
										break
									elseif exitTo3 == 2 then
										exitTo15 = 7
										break
									elseif exitTo3 == 3 then
										exitTo15 = 8
										break
									elseif exitTo3 == 4 then
										exitTo15 = 9
										break
									elseif exitTo3 == 5 then
										exitTo15 = 10
										break
									elseif exitTo3 == 6 then
										exitTo15 = 11
										break
									elseif exitTo3 == 7 then
										exitTo15 = 12
										break
									elseif exitTo3 == 8 then
										exitTo15 = 13
										break
									elseif exitTo3 == 9 then
										exitTo15 = 14
										break
									elseif exitTo3 == 10 then
										exitTo15 = 15
										break
									elseif exitTo3 == 11 then
										exitTo15 = 16
										break
									elseif exitTo3 == 12 then
										exitTo15 = 17
										break
									elseif exitTo3 == 13 then
										exitTo15 = 18
										break
									elseif exitTo3 == 14 then
										exitTo15 = 19
										break
									elseif exitTo3 == 15 then
										flag6 = flag2 <= "MakeTab"
										upv11 = nil
										local exitTo6 = nil

										while true do
											n7 = 26
											exitTo5 = nil

											while true do
												local flag23 = n7 <= 20
												exitTo4 = nil

												while true do
													if not flag23 then
														if not (n7 <= 31) then
															if not (n7 <= 36) then
																if not (n7 <= 39) then
																	if not (n7 <= 40) then
																		if not (n7 <= 41) then
																			local v83 = v(flag2)

																			if str3 == 429 then
																				n7 = 20
																				flag23 = true
																			else
																				exitTo4 = 26
																				break
																			end
																		elseif not (str3 >= 500) then
																			n7 = 18
																			flag23 = true
																		else
																			exitTo4 = 25
																			break
																		end
																	else
																		exitTo4 = 24
																		break
																	end
																elseif not (n7 <= 37) then
																	if n7 <= 38 then
																		v3 = n4

																		if not v3 then
																			n7 = 10
																			flag23 = true
																		else
																			exitTo4 = 23
																			break
																		end
																	else
																		exitTo4 = 22
																		break
																	end
																elseif not n4 then
																	n7 = 21
																	flag23 = false
																else
																	exitTo4 = 21
																	break
																end
															elseif not (n7 <= 33) then
																if not (n7 <= 34) then
																	if not (n7 <= 35) then
																		if not n4 then
																			n7 = 25
																			flag23 = false
																		else
																			exitTo4 = 20
																			break
																		end
																	else
																		exitTo4 = 19
																		break
																	end
																else
																	exitTo4 = 18
																	break
																end
															else
																exitTo4 = 17
																break
															end
														elseif not (n7 <= 25) then
															if not (n7 <= 28) then
																exitTo4 = 13
																break
															elseif not (n7 <= 26) then
																if not (n7 <= 27) then
																	if not v then
																		n7 = 31
																		flag23 = false
																	else
																		exitTo4 = 16
																		break
																	end
																elseif not flag2 then
																	n7 = 39
																	flag23 = false
																else
																	exitTo4 = 15
																	break
																end
															elseif not str3(v) then
																n7 = 15
																flag23 = true
															else
																exitTo4 = 14
																break
															end
														else
															exitTo4 = 12
															break
														end
													else
														if not (n7 <= 9) then
															if not (n7 <= 14) then
																if not (n7 <= 17) then
																	if n7 <= 18 then
																		flag7 = str3 > 0

																		if flag7 then
																			n7 = 23
																			flag23 = false
																			continue
																		else
																			exitTo4 = 11
																			break
																		end
																	else
																		exitTo4 = 10
																		break
																	end
																else
																	exitTo4 = 9
																	break
																end
															elseif not (n7 <= 11) then
																if not (n7 <= 12) then
																	if n7 <= 13 then
																		flag8 = n4.Success == false

																		if flag8 then
																			n7 = 14
																			flag23 = true
																			continue
																		else
																			exitTo4 = 8
																			break
																		end
																	else
																		exitTo4 = 7
																		break
																	end
																else
																	exitTo4 = 6
																	break
																end
															else
																exitTo4 = 5
																break
															end
														elseif not (n7 <= 4) then
															exitTo4 = 1
															break
														elseif not (n7 <= 1) then
															if not (n7 <= 2) then
																if not (n7 <= 3) then
																	if not (str3 == 403) then
																		n7 = 41
																		flag23 = false
																		continue
																	else
																		exitTo4 = 4
																		break
																	end
																else
																	exitTo4 = 3
																	break
																end
															elseif not v then
																n7 = 7
																flag23 = true
																continue
															else
																exitTo4 = 2
																break
															end
														end

														break
													end
												end

												if exitTo4 == 1 then
													exitTo5 = 1
													break
												elseif exitTo4 == 2 then
													if not v then
														exitTo5 = 18
														break
													else
														n7 = 28
														continue
													end
												elseif exitTo4 == 3 then
													exitTo5 = 2
													break
												elseif exitTo4 == 4 then
													n7 = 32
													continue
												elseif exitTo4 == 5 then
													exitTo5 = 3
													break
												elseif exitTo4 == 6 then
													exitTo5 = 4
													break
												elseif exitTo4 == 7 then
													exitTo5 = 5
													break
												elseif exitTo4 == 8 then
													exitTo5 = 6
													break
												elseif exitTo4 == 9 then
													exitTo5 = 7
													break
												elseif exitTo4 == 10 then
													exitTo5 = 8
													break
												elseif exitTo4 == 11 then
													exitTo5 = 9
													break
												elseif exitTo4 == 12 then
													exitTo5 = 10
													break
												elseif exitTo4 == 13 then
													exitTo5 = 11
													break
												elseif exitTo4 == 14 then
													exitTo5 = 12
													break
												elseif exitTo4 == 15 then
													if not flag2 then
														exitTo5 = 17
														break
													else
														n7 = 42
														continue
													end
												elseif exitTo4 == 16 then
													exitTo5 = 13
													break
												elseif exitTo4 == 17 then
													exitTo5 = 14
													break
												elseif exitTo4 == 18 then
													exitTo5 = 15
													break
												elseif exitTo4 == 19 then
													exitTo5 = 16
													break
												elseif exitTo4 == 20 then
													n7 = 30
													continue
												elseif exitTo4 == 21 then
													n7 = 40
													continue
												end

												break
											end

											if exitTo5 == 1 then
												exitTo6 = 1
												break
											elseif exitTo5 == 2 then
												exitTo6 = 2
												break
											elseif exitTo5 == 3 then
												exitTo6 = 3
												break
											elseif exitTo5 == 4 then
												exitTo6 = 4
												break
											elseif exitTo5 == 5 then
												exitTo6 = 5
												break
											elseif exitTo5 == 6 then
												exitTo6 = 6
												break
											elseif exitTo5 == 7 then
												exitTo6 = 7
												break
											elseif exitTo5 == 8 then
												exitTo6 = 8
												break
											elseif exitTo5 == 9 then
												exitTo6 = 9
												break
											elseif exitTo5 == 10 then
												exitTo6 = 10
												break
											elseif exitTo5 == 11 then
												exitTo6 = 11
												break
											elseif exitTo5 == 12 then
												exitTo6 = 12
												break
											elseif exitTo5 == 13 then
												if not v then
													exitTo6 = 13
													break
												else
													continue
												end
											end

											break
										end

										if exitTo6 == 1 then
											exitTo15 = 21
											break
										elseif exitTo6 == 2 then
											exitTo15 = 22
											break
										elseif exitTo6 == 3 then
											exitTo15 = 23
											break
										elseif exitTo6 == 4 then
											exitTo15 = 24
											break
										elseif exitTo6 == 5 then
											exitTo15 = 25
											break
										elseif exitTo6 == 6 then
											exitTo15 = 26
											break
										elseif exitTo6 == 7 then
											exitTo15 = 27
											break
										elseif exitTo6 == 8 then
											exitTo15 = 28
											break
										elseif exitTo6 == 9 then
											exitTo15 = 29
											break
										elseif exitTo6 == 10 then
											exitTo15 = 30
											break
										elseif exitTo6 == 11 then
											exitTo15 = 31
											break
										elseif exitTo6 == 12 then
											exitTo15 = 32
											break
										elseif exitTo6 == 13 then
											flag9 = flag6 <= "MakeTab"
											upv11 = nil
											local exitTo9 = nil

											while true do
												n8 = 26
												exitTo8 = nil

												while true do
													local flag23 = n8 <= 20
													exitTo7 = nil

													while true do
														if not flag23 then
															if not (n8 <= 31) then
																if not (n8 <= 36) then
																	if not (n8 <= 39) then
																		if not (n8 <= 40) then
																			if not (n8 <= 41) then
																				local v83 = flag2(flag6)

																				if v == 429 then
																					n8 = 20
																					flag23 = true
																				else
																					exitTo7 = 26
																					break
																				end
																			elseif not (v >= 500) then
																				n8 = 18
																				flag23 = true
																			else
																				exitTo7 = 25
																				break
																			end
																		else
																			exitTo7 = 24
																			break
																		end
																	elseif not (n8 <= 37) then
																		if n8 <= 38 then
																			v4 = str3

																			if not v4 then
																				n8 = 10
																				flag23 = true
																			else
																				exitTo7 = 23
																				break
																			end
																		else
																			exitTo7 = 22
																			break
																		end
																	elseif not str3 then
																		n8 = 21
																		flag23 = false
																	else
																		exitTo7 = 21
																		break
																	end
																elseif not (n8 <= 33) then
																	if not (n8 <= 34) then
																		if not (n8 <= 35) then
																			if not str3 then
																				n8 = 25
																				flag23 = false
																			else
																				exitTo7 = 20
																				break
																			end
																		else
																			exitTo7 = 19
																			break
																		end
																	else
																		exitTo7 = 18
																		break
																	end
																else
																	exitTo7 = 17
																	break
																end
															elseif not (n8 <= 25) then
																if not (n8 <= 28) then
																	exitTo7 = 13
																	break
																elseif not (n8 <= 26) then
																	if not (n8 <= 27) then
																		if not flag2 then
																			n8 = 31
																			flag23 = false
																		else
																			exitTo7 = 16
																			break
																		end
																	elseif not flag6 then
																		n8 = 39
																		flag23 = false
																	else
																		exitTo7 = 15
																		break
																	end
																elseif not v(flag2) then
																	n8 = 15
																	flag23 = true
																else
																	exitTo7 = 14
																	break
																end
															else
																exitTo7 = 12
																break
															end
														else
															if not (n8 <= 9) then
																if not (n8 <= 14) then
																	if not (n8 <= 17) then
																		if n8 <= 18 then
																			flag10 = v > 0

																			if flag10 then
																				n8 = 23
																				flag23 = false
																				continue
																			else
																				exitTo7 = 11
																				break
																			end
																		else
																			exitTo7 = 10
																			break
																		end
																	else
																		exitTo7 = 9
																		break
																	end
																elseif not (n8 <= 11) then
																	if not (n8 <= 12) then
																		if n8 <= 13 then
																			flag11 = str3.Success == false

																			if flag11 then
																				n8 = 14
																				flag23 = true
																				continue
																			else
																				exitTo7 = 8
																				break
																			end
																		else
																			exitTo7 = 7
																			break
																		end
																	else
																		exitTo7 = 6
																		break
																	end
																else
																	exitTo7 = 5
																	break
																end
															elseif not (n8 <= 4) then
																exitTo7 = 1
																break
															elseif not (n8 <= 1) then
																if not (n8 <= 2) then
																	if not (n8 <= 3) then
																		if not (v == 403) then
																			n8 = 41
																			flag23 = false
																			continue
																		else
																			exitTo7 = 4
																			break
																		end
																	else
																		exitTo7 = 3
																		break
																	end
																elseif not flag2 then
																	n8 = 7
																	flag23 = true
																	continue
																else
																	exitTo7 = 2
																	break
																end
															end

															break
														end
													end

													if exitTo7 == 1 then
														exitTo8 = 1
														break
													elseif exitTo7 == 2 then
														if not flag2 then
															exitTo8 = 18
															break
														else
															n8 = 28
															continue
														end
													elseif exitTo7 == 3 then
														exitTo8 = 2
														break
													elseif exitTo7 == 4 then
														n8 = 32
														continue
													elseif exitTo7 == 5 then
														exitTo8 = 3
														break
													elseif exitTo7 == 6 then
														exitTo8 = 4
														break
													elseif exitTo7 == 7 then
														exitTo8 = 5
														break
													elseif exitTo7 == 8 then
														exitTo8 = 6
														break
													elseif exitTo7 == 9 then
														exitTo8 = 7
														break
													elseif exitTo7 == 10 then
														exitTo8 = 8
														break
													elseif exitTo7 == 11 then
														exitTo8 = 9
														break
													elseif exitTo7 == 12 then
														exitTo8 = 10
														break
													elseif exitTo7 == 13 then
														exitTo8 = 11
														break
													elseif exitTo7 == 14 then
														exitTo8 = 12
														break
													elseif exitTo7 == 15 then
														if not flag6 then
															exitTo8 = 17
															break
														else
															n8 = 42
															continue
														end
													elseif exitTo7 == 16 then
														exitTo8 = 13
														break
													elseif exitTo7 == 17 then
														exitTo8 = 14
														break
													elseif exitTo7 == 18 then
														exitTo8 = 15
														break
													elseif exitTo7 == 19 then
														exitTo8 = 16
														break
													elseif exitTo7 == 20 then
														n8 = 30
														continue
													elseif exitTo7 == 21 then
														n8 = 40
														continue
													end

													break
												end

												if exitTo8 == 1 then
													exitTo9 = 1
													break
												elseif exitTo8 == 2 then
													exitTo9 = 2
													break
												elseif exitTo8 == 3 then
													exitTo9 = 3
													break
												elseif exitTo8 == 4 then
													exitTo9 = 4
													break
												elseif exitTo8 == 5 then
													exitTo9 = 5
													break
												elseif exitTo8 == 6 then
													exitTo9 = 6
													break
												elseif exitTo8 == 7 then
													exitTo9 = 7
													break
												elseif exitTo8 == 8 then
													exitTo9 = 8
													break
												elseif exitTo8 == 9 then
													exitTo9 = 9
													break
												elseif exitTo8 == 10 then
													exitTo9 = 10
													break
												elseif exitTo8 == 11 then
													exitTo9 = 11
													break
												elseif exitTo8 == 12 then
													exitTo9 = 12
													break
												elseif exitTo8 == 13 then
													if not flag2 then
														exitTo9 = 13
														break
													else
														continue
													end
												end

												break
											end

											if exitTo9 == 1 then
												exitTo15 = 42
												break
											elseif exitTo9 == 2 then
												exitTo15 = 43
												break
											elseif exitTo9 == 3 then
												exitTo15 = 44
												break
											elseif exitTo9 == 4 then
												exitTo15 = 45
												break
											elseif exitTo9 == 5 then
												exitTo15 = 46
												break
											elseif exitTo9 == 6 then
												exitTo15 = 47
												break
											elseif exitTo9 == 7 then
												exitTo15 = 48
												break
											elseif exitTo9 == 8 then
												exitTo15 = 49
												break
											elseif exitTo9 == 9 then
												exitTo15 = 50
												break
											elseif exitTo9 == 10 then
												exitTo15 = 51
												break
											elseif exitTo9 == 11 then
												exitTo15 = 52
												break
											elseif exitTo9 == 12 then
												exitTo15 = 53
												break
											elseif exitTo9 == 13 then
												flag12 = flag9 <= "MakeTab"
												upv11 = nil
												local exitTo12 = nil

												while true do
													n9 = 26
													exitTo11 = nil

													while true do
														local flag23 = n9 <= 20
														exitTo10 = nil

														while true do
															if not flag23 then
																if not (n9 <= 31) then
																	if not (n9 <= 36) then
																		if not (n9 <= 39) then
																			if not (n9 <= 40) then
																				if not (n9 <= 41) then
																					local v83 = flag6(flag9)

																					if flag2 == 429 then
																						n9 = 20
																						flag23 = true
																					else
																						exitTo10 = 26
																						break
																					end
																				elseif not (flag2 >= 500) then
																					n9 = 18
																					flag23 = true
																				else
																					exitTo10 = 25
																					break
																				end
																			else
																				exitTo10 = 24
																				break
																			end
																		elseif not (n9 <= 37) then
																			if n9 <= 38 then
																				v5 = v

																				if not v5 then
																					n9 = 10
																					flag23 = true
																				else
																					exitTo10 = 23
																					break
																				end
																			else
																				exitTo10 = 22
																				break
																			end
																		elseif not v then
																			n9 = 21
																			flag23 = false
																		else
																			exitTo10 = 21
																			break
																		end
																	elseif not (n9 <= 33) then
																		if not (n9 <= 34) then
																			if not (n9 <= 35) then
																				if not v then
																					n9 = 25
																					flag23 = false
																				else
																					exitTo10 = 20
																					break
																				end
																			else
																				exitTo10 = 19
																				break
																			end
																		else
																			exitTo10 = 18
																			break
																		end
																	else
																		exitTo10 = 17
																		break
																	end
																elseif not (n9 <= 25) then
																	if not (n9 <= 28) then
																		exitTo10 = 13
																		break
																	elseif not (n9 <= 26) then
																		if not (n9 <= 27) then
																			if not flag6 then
																				n9 = 31
																				flag23 = false
																			else
																				exitTo10 = 16
																				break
																			end
																		elseif not flag9 then
																			n9 = 39
																			flag23 = false
																		else
																			exitTo10 = 15
																			break
																		end
																	elseif not flag2(flag6) then
																		n9 = 15
																		flag23 = true
																	else
																		exitTo10 = 14
																		break
																	end
																else
																	exitTo10 = 12
																	break
																end
															else
																if not (n9 <= 9) then
																	if not (n9 <= 14) then
																		if not (n9 <= 17) then
																			if n9 <= 18 then
																				flag13 = flag2 > 0

																				if flag13 then
																					n9 = 23
																					flag23 = false
																					continue
																				else
																					exitTo10 = 11
																					break
																				end
																			else
																				exitTo10 = 10
																				break
																			end
																		else
																			exitTo10 = 9
																			break
																		end
																	elseif not (n9 <= 11) then
																		if not (n9 <= 12) then
																			if n9 <= 13 then
																				flag14 = v.Success == false

																				if flag14 then
																					n9 = 14
																					flag23 = true
																					continue
																				else
																					exitTo10 = 8
																					break
																				end
																			else
																				exitTo10 = 7
																				break
																			end
																		else
																			exitTo10 = 6
																			break
																		end
																	else
																		exitTo10 = 5
																		break
																	end
																elseif not (n9 <= 4) then
																	exitTo10 = 1
																	break
																elseif not (n9 <= 1) then
																	if not (n9 <= 2) then
																		if not (n9 <= 3) then
																			if not (flag2 == 403) then
																				n9 = 41
																				flag23 = false
																				continue
																			else
																				exitTo10 = 4
																				break
																			end
																		else
																			exitTo10 = 3
																			break
																		end
																	elseif not flag6 then
																		n9 = 7
																		flag23 = true
																		continue
																	else
																		exitTo10 = 2
																		break
																	end
																end

																break
															end
														end

														if exitTo10 == 1 then
															exitTo11 = 1
															break
														elseif exitTo10 == 2 then
															if not flag6 then
																exitTo11 = 18
																break
															else
																n9 = 28
																continue
															end
														elseif exitTo10 == 3 then
															exitTo11 = 2
															break
														elseif exitTo10 == 4 then
															n9 = 32
															continue
														elseif exitTo10 == 5 then
															exitTo11 = 3
															break
														elseif exitTo10 == 6 then
															exitTo11 = 4
															break
														elseif exitTo10 == 7 then
															exitTo11 = 5
															break
														elseif exitTo10 == 8 then
															exitTo11 = 6
															break
														elseif exitTo10 == 9 then
															exitTo11 = 7
															break
														elseif exitTo10 == 10 then
															exitTo11 = 8
															break
														elseif exitTo10 == 11 then
															exitTo11 = 9
															break
														elseif exitTo10 == 12 then
															exitTo11 = 10
															break
														elseif exitTo10 == 13 then
															exitTo11 = 11
															break
														elseif exitTo10 == 14 then
															exitTo11 = 12
															break
														elseif exitTo10 == 15 then
															if not flag9 then
																exitTo11 = 17
																break
															else
																n9 = 42
																continue
															end
														elseif exitTo10 == 16 then
															exitTo11 = 13
															break
														elseif exitTo10 == 17 then
															exitTo11 = 14
															break
														elseif exitTo10 == 18 then
															exitTo11 = 15
															break
														elseif exitTo10 == 19 then
															exitTo11 = 16
															break
														elseif exitTo10 == 20 then
															n9 = 30
															continue
														elseif exitTo10 == 21 then
															n9 = 40
															continue
														end

														break
													end

													if exitTo11 == 1 then
														exitTo12 = 1
														break
													elseif exitTo11 == 2 then
														exitTo12 = 2
														break
													elseif exitTo11 == 3 then
														exitTo12 = 3
														break
													elseif exitTo11 == 4 then
														exitTo12 = 4
														break
													elseif exitTo11 == 5 then
														exitTo12 = 5
														break
													elseif exitTo11 == 6 then
														exitTo12 = 6
														break
													elseif exitTo11 == 7 then
														exitTo12 = 7
														break
													elseif exitTo11 == 8 then
														exitTo12 = 8
														break
													elseif exitTo11 == 9 then
														exitTo12 = 9
														break
													elseif exitTo11 == 10 then
														exitTo12 = 10
														break
													elseif exitTo11 == 11 then
														exitTo12 = 11
														break
													elseif exitTo11 == 12 then
														exitTo12 = 12
														break
													elseif exitTo11 == 13 then
														if not flag6 then
															exitTo12 = 13
															break
														else
															continue
														end
													end

													break
												end

												if exitTo12 == 1 then
													exitTo15 = 62
													break
												elseif exitTo12 == 2 then
													exitTo15 = 63
													break
												elseif exitTo12 == 3 then
													exitTo15 = 64
													break
												elseif exitTo12 == 4 then
													exitTo15 = 65
													break
												elseif exitTo12 == 5 then
													exitTo15 = 66
													break
												elseif exitTo12 == 6 then
													exitTo15 = 67
													break
												elseif exitTo12 == 7 then
													exitTo15 = 68
													break
												elseif exitTo12 == 8 then
													exitTo15 = 69
													break
												elseif exitTo12 == 9 then
													exitTo15 = 70
													break
												elseif exitTo12 == 10 then
													exitTo15 = 71
													break
												elseif exitTo12 == 11 then
													exitTo15 = 72
													break
												elseif exitTo12 == 12 then
													exitTo15 = 73
													break
												elseif exitTo12 == 13 then
													flag15 = flag12 <= "MakeTab"
													upv11 = nil
													n10 = 26
													local flag23 = n10 <= 20
													exitTo13 = nil

													while true do
														if not flag23 then
															if not (n10 <= 31) then
																if not (n10 <= 36) then
																	if not (n10 <= 39) then
																		if not (n10 <= 40) then
																			if not (n10 <= 41) then
																				exitTo13 = 11
																				break
																			elseif not (flag6 >= 500) then
																				n10 = 18
																				flag23 = 18 <= 20
																			else
																				exitTo13 = 12
																				break
																			end
																		else
																			exitTo13 = 10
																			break
																		end
																	elseif not (n10 <= 37) then
																		if n10 <= 38 then
																			v6 = flag2

																			if not v6 then
																				n10 = 10
																				flag23 = 10 <= 20
																			else
																				exitTo13 = 9
																				break
																			end
																		else
																			exitTo13 = 8
																			break
																		end
																	else
																		exitTo13 = 7
																		break
																	end
																else
																	exitTo13 = 6
																	break
																end
															else
																exitTo13 = 5
																break
															end
														else
															if not (n10 <= 9) then
																if not (n10 <= 14) then
																	if not (n10 <= 17) then
																		if n10 <= 18 then
																			flag16 = flag6 > 0

																			if flag16 then
																				n10 = 23
																				flag23 = 23 <= 20
																				continue
																			else
																				exitTo13 = 4
																				break
																			end
																		else
																			exitTo13 = 3
																			break
																		end
																	else
																		exitTo13 = 2
																		break
																	end
																else
																	exitTo13 = 1
																	break
																end
															end

															break
														end
													end

													if exitTo13 == 1 then
														exitTo15 = 82
														break
													elseif exitTo13 == 2 then
														exitTo15 = 83
														break
													elseif exitTo13 == 3 then
														exitTo15 = 84
														break
													elseif exitTo13 == 4 then
														exitTo15 = 85
														break
													elseif exitTo13 == 5 then
														exitTo15 = 86
														break
													elseif exitTo13 == 6 then
														exitTo15 = 87
														break
													elseif exitTo13 == 7 then
														exitTo15 = 88
														break
													elseif exitTo13 == 8 then
														exitTo15 = 89
														break
													elseif exitTo13 == 9 then
														v74 = flag6
														v75 = flag9
														v76 = flag12
														v77 = flag15
														v78 = v6
														v79 = v74
														v80 = v75
														v81 = v76
														v82 = v77
														arg = v78
														n3 = v79
														n4 = v80
														str3 = v81
														v = v82
														n5 = 9

														if not n5 then
															n5 = 10
															flag = true

															if not flag then
																continue
															else
																exitTo15 = 41
																break
															end
														else
															exitTo15 = 91
															break
														end
													else
														exitTo15 = 90
														break
													end
												elseif exitTo11 == 14 then
													exitTo15 = 74
													break
												elseif exitTo11 == 15 then
													exitTo15 = 75
													break
												elseif exitTo11 == 16 then
													exitTo15 = 76
													break
												elseif exitTo11 == 17 then
													exitTo15 = 77
													break
												elseif exitTo11 == 18 then
													exitTo15 = 78
													break
												elseif exitTo10 == 22 then
													exitTo15 = 79
													break
												elseif exitTo10 == 23 then
													v74 = flag2
													v75 = flag6
													v76 = flag9
													v77 = flag12
													v78 = v5
													v79 = v74
													v80 = v75
													v81 = v76
													v82 = v77
													arg = v78
													n3 = v79
													n4 = v80
													str3 = v81
													v = v82
													n5 = 9

													if not n5 then
														n5 = 10
														flag = true

														if not flag then
															continue
														else
															exitTo15 = 41
															break
														end
													else
														exitTo15 = 81
														break
													end
												else
													exitTo15 = 80
													break
												end
											elseif exitTo8 == 14 then
												exitTo15 = 54
												break
											elseif exitTo8 == 15 then
												exitTo15 = 55
												break
											elseif exitTo8 == 16 then
												exitTo15 = 56
												break
											elseif exitTo8 == 17 then
												exitTo15 = 57
												break
											elseif exitTo8 == 18 then
												exitTo15 = 58
												break
											elseif exitTo7 == 22 then
												exitTo15 = 59
												break
											elseif exitTo7 == 23 then
												v74 = v
												v75 = flag2
												v76 = flag6
												v77 = flag9
												v78 = v4
												v79 = v74
												v80 = v75
												v81 = v76
												v82 = v77
												arg = v78
												n3 = v79
												n4 = v80
												str3 = v81
												v = v82
												n5 = 9

												if not n5 then
													n5 = 10
													flag = true

													if not flag then
														continue
													else
														exitTo15 = 41
														break
													end
												else
													exitTo15 = 61
													break
												end
											else
												exitTo15 = 60
												break
											end
										elseif exitTo5 == 14 then
											exitTo15 = 33
											break
										elseif exitTo5 == 15 then
											exitTo15 = 34
											break
										elseif exitTo5 == 16 then
											exitTo15 = 35
											break
										elseif exitTo5 == 17 then
											exitTo15 = 36
											break
										elseif exitTo5 == 18 then
											exitTo15 = 37
											break
										elseif exitTo4 == 22 then
											exitTo15 = 38
											break
										elseif exitTo4 == 23 then
											v74 = str3
											v75 = v
											v76 = flag2
											v77 = flag6
											v78 = v3
											v79 = v74
											v80 = v75
											v81 = v76
											v82 = v77
											arg = v78
											n3 = v79
											n4 = v80
											str3 = v81
											v = v82
											n5 = 9

											if not n5 then
												n5 = 10
												flag = true

												if not flag then
													continue
												else
													exitTo15 = 41
													break
												end
											else
												exitTo15 = 40
												break
											end
										else
											exitTo15 = 39
											break
										end
									else
										exitTo15 = 20
										break
									end
								else
									exitTo15 = 5
									break
								end
							else
								exitTo15 = 3
								break
							end
						else
							exitTo15 = 2
							break
						end
					end

					break
				end
			end

			if exitTo15 == 1 then
				local v83 = arg
				local v84 = n3
				local v85 = n4
				local v86 = str3
				local v87 = v
				local v88 = n5
				local v89 = v83
				local v90 = v84
				local v91 = v85
				local v92 = v86
				local v93 = v87

				if not (v88 <= 29) then
					if v88 <= 30 then
						local v94 = v89
						local v95 = v90
						local v96 = v91
						local v97 = v92
						local v98 = v93
						local v99 = v94
						local v100, v101, v102, v103, v104

						if v99 then
							local v105 = v94
							v100 = v95
							v101 = v96
							v102 = v97
							v103 = v98
							v104 = v105
							n5 = 38
						else
							v100 = v95
							v101 = v96
							v102 = v97
							v103 = v98
							v104 = v99
							n5 = v104
						end

						if not n5 then
							local v105 = v100
							local v106 = v101
							local v107 = v102
							local v108 = v103
							arg = v104
							n3 = v105
							n4 = v106
							str3 = v107
							v = v108
							n5 = 22
						else
							local v105 = v100
							local v106 = v101
							local v107 = v102
							local v108 = v103
							arg = v104
							n3 = v105
							n4 = v106
							str3 = v107
							v = v108
						end
					else
						arg = v89
						n3 = v90
						local v94 = v92
						n4 = 0
						str3 = v94
						v = v93
						n5 = 26
					end
				else
					local v94 = v89
					local v95 = v90
					local v96 = v92
					local v97 = v93
					local v98 = v94
					local v99 = fn3
					local body = v98.Body

					if not body then
						local v100 = v95
						local v101 = v96
						local v102 = v97
						arg = v98
						n3 = v100
						n4 = v99
						str3 = v101
						v = v102
						n5 = 16
					else
						local v100 = v95
						arg = v98
						local v101 = v99
						local v102 = body
						local v103 = v97
						n3 = v100
						n4 = v101
						str3 = v102
						v = v103
						n5 = 27
					end
				end

				flag = n5 <= 20
				continue
			elseif exitTo15 == 2 then
				local v83 = n3(n4)

				if not v83 then
					n5 = 15
					flag = true
				else
					local v84 = n4
					local v85 = str3
					local v86 = v
					local v87 = v83
					local v88 = v84
					local v89 = v85
					local v90 = v86
					n3 = v87
					n4 = v88
					str3 = v89
					v = v90
					n5 = 29
					flag = n5 <= 20
					continue
				end

				continue
			elseif exitTo15 == 3 then
				if not str3 then
					n5 = 39
					flag = false
					continue
				elseif not str3 then
					exitTo14 = 8
					break
				else
					n5 = 42
					flag = n5 <= 20
					continue
				end
			elseif exitTo15 == 4 then
				n5 = 31
				flag = false
				continue
			elseif exitTo15 == 5 then
				n5 = 26
				flag = n5 <= 20
				continue
			elseif exitTo15 == 6 then
				exitTo14 = 9
				break
			elseif exitTo15 == 7 then
				exitTo14 = 10
				break
			elseif exitTo15 == 8 then
				if n6 <= 10 then
					exitTo14 = 75
					break
				else
					arg = n3
					n3 = n4
					v8 = v
					v9 = flag2
					v10 = v8
					v11 = v9
					n4 = arg.Status
					str3 = v10
					v = v11
					n5 = 2
					flag = n5 <= 20
					continue
				end
			elseif exitTo15 == 9 then
				exitTo14 = 11
				break
			elseif exitTo15 == 10 then
				local v83 = n4
				v12 = str3
				v13 = v
				v14 = flag2
				str3 = v83
				v15 = v12
				v16 = v13
				v17 = v14
				arg = str3 == 0
				n3 = str3
				n4 = v15
				str3 = v16
				v = v17
				n5 = 37
				flag = n5 <= 20
				continue
			elseif exitTo15 == 11 then
				v18 = n4
				v19 = str3
				v20 = v
				v21 = flag2
				v22 = flag5
				v23 = v18
				v24 = v19
				v25 = v20
				v26 = v21
				arg = v22
				n3 = v23
				n4 = v24
				str3 = v25
				v = v26
				n5 = 37
				flag = n5 <= 20
				continue
			elseif exitTo15 == 12 then
				if not (n6 <= 15) then
					if not (n6 <= 16) then
						v27 = n4
						v28 = str3
						v29 = v
						v30 = flag2
						v31 = v27
						v32 = v28
						v33 = v29
						v34 = v30
						arg = v28 == "RATE_LIMITED"
						n3 = v31
						n4 = v32
						str3 = v33
						v = v34
						n5 = 36
					else
						v = flag2
						local body = n3.body
						arg = n3
						n3 = n4
						n4 = str3
						str3 = body
						n5 = 27
					end
				else
					arg = n3
					v35 = str3
					v36 = v
					v37 = flag2
					v38 = v35
					v39 = v36
					v40 = v37
					n3 = 0
					n4 = v38
					str3 = v39
					v = v40
					n5 = 29
				end

				flag = n5 <= 20
				continue
			elseif exitTo15 == 13 then
				exitTo14 = 12
				break
			elseif exitTo15 == 14 then
				arg = n3
				n3 = n4
				n4 = str3
				v41 = flag2
				v42 = flag4
				v43 = v41
				str3 = v42
				v = v43
				n5 = 24
				flag = n5 <= 20
				continue
			elseif exitTo15 == 15 then
				exitTo14 = 13
				break
			else
				local v83, v84, v85, v86, v87, v88, v89, v90

				if exitTo15 == 16 then
					v83 = n4
					v84 = str3
					v85 = v
					v86 = flag2
					v87 = v83
					v88 = v84
					v89 = v85
					v90 = v86
					arg = v84 == "SERVER_TEMPORARY_ERROR"
					n3 = v87
					n4 = v88
					str3 = v89
					v = v90
					n5 = 38
					flag = n5 <= 20
					continue
				else
					local v91, v92, v93, v94, v95, v96, v97, v98, v99

					if exitTo15 == 17 then
						v91 = n4
						v92 = str3
						v93 = v
						v94 = flag2
						v95 = flag3
						v96 = v91
						v97 = v92
						v98 = v93
						v99 = v94
						arg = v95
						n3 = v96
						n4 = v97
						str3 = v98
						v = v99
						n5 = 33
						flag = n5 <= 20
						continue
					elseif exitTo15 == 18 then
						exitTo14 = 14
						break
					elseif exitTo15 == 19 then
						exitTo14 = 15
						break
					else
						local v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117

						if exitTo15 == 20 then
							if exitTo2 == 16 then
								if not (n6 <= 32) then
									local v118 = n3

									if v118 then
										local v119 = n3
										v100 = n4
										v101 = str3
										v102 = v
										v103 = flag2
										v = v119
										n5 = 5

										if not n5 then
											v104 = v100
											v105 = v101
											v106 = v102
											v107 = v103
											arg = v
											n3 = v104
											n4 = v105
											str3 = v106
											v = v107
											n5 = 34
										else
											v108 = v100
											v109 = v101
											v110 = v102
											v111 = v103
											arg = v
											n3 = v108
											n4 = v109
											str3 = v110
											v = v111
										end
									else
										v100 = n4
										v101 = str3
										v102 = v
										v103 = flag2
										v = v118
										n5 = v

										if not n5 then
											v104 = v100
											v105 = v101
											v106 = v102
											v107 = v103
											arg = v
											n3 = v104
											n4 = v105
											str3 = v106
											v = v107
											n5 = 34
										else
											v108 = v100
											v109 = v101
											v110 = v102
											v111 = v103
											arg = v
											n3 = v108
											n4 = v109
											str3 = v110
											v = v111
										end
									end

									flag = n5 <= 20
									continue
								else
									exitTo14 = 20
									break
								end
							elseif exitTo2 == 17 then
								v112 = n4
								v113 = v
								v114 = flag2
								v115 = v112
								v116 = v113
								v117 = v114
								arg = str3 == "HWID_MISMATCH"
								n3 = v115
								n4 = str3
								str3 = v116
								v = v117
								n5 = 5
								flag = n5 <= 20
								continue
							elseif exitTo2 == 18 then
								exitTo14 = 16
								break
							elseif exitTo2 == 19 then
								exitTo14 = 17
								break
							elseif exitTo2 == 20 then
								exitTo14 = 18
								break
							elseif exitTo == 24 then
								v = flag2
								arg = n3
								n3 = n4
								n4 = str3
								str3 = ""
								n5 = 42
								flag = n5 <= 20
								continue
							elseif exitTo == 25 then
								v74 = n4
								v75 = str3
								v76 = v
								v77 = flag2
								v78 = v2
								v79 = v74
								v80 = v75
								v81 = v76
								v82 = v77
								arg = v78
								n3 = v79
								n4 = v80
								str3 = v81
								v = v82
								n5 = 9

								if not n5 then
									n5 = 10
									flag = true
								else
									flag = n5 <= 20
									continue
								end

								continue
							else
								exitTo14 = 19
								break
							end
						elseif exitTo15 == 21 then
							exitTo14 = 21
							break
						elseif exitTo15 == 22 then
							exitTo14 = 22
							break
						elseif exitTo15 == 23 then
							if n7 <= 10 then
								exitTo14 = 74
								break
							else
								arg = n4
								n3 = str3
								v8 = flag2
								v9 = flag6
								v10 = v8
								v11 = v9
								n4 = arg.Status
								str3 = v10
								v = v11
								n5 = 2
								flag = n5 <= 20
								continue
							end
						elseif exitTo15 == 24 then
							exitTo14 = 23
							break
						elseif exitTo15 == 25 then
							v12 = v
							v13 = flag2
							v14 = flag6
							v15 = v12
							v16 = v13
							v17 = v14
							arg = str3 == 0
							n3 = str3
							n4 = v15
							str3 = v16
							v = v17
							n5 = 37
							flag = n5 <= 20
							continue
						elseif exitTo15 == 26 then
							v18 = str3
							v19 = v
							v20 = flag2
							v21 = flag6
							v22 = flag8
							v23 = v18
							v24 = v19
							v25 = v20
							v26 = v21
							arg = v22
							n3 = v23
							n4 = v24
							str3 = v25
							v = v26
							n5 = 37
							flag = n5 <= 20
							continue
						elseif exitTo15 == 27 then
							if not (n7 <= 15) then
								if not (n7 <= 16) then
									v27 = str3
									v28 = v
									v29 = flag2
									v30 = flag6
									v31 = v27
									v32 = v28
									v33 = v29
									v34 = v30
									arg = v28 == "RATE_LIMITED"
									n3 = v31
									n4 = v32
									str3 = v33
									v = v34
									n5 = 36
									flag = n5 <= 20
									continue
								else
									local v118 = flag6
									local body = n4.body
									arg = n4
									n3 = str3
									n4 = v
									str3 = body
									v = v118
									n5 = 27
								end
							else
								arg = n4
								v35 = v
								v36 = flag2
								v37 = flag6
								v38 = v35
								v39 = v36
								v40 = v37
								n3 = 0
								n4 = v38
								str3 = v39
								v = v40
								n5 = 29
								flag = n5 <= 20
								continue
							end

							flag = n5 <= 20
							continue
						elseif exitTo15 == 28 then
							exitTo14 = 24
							break
						elseif exitTo15 == 29 then
							arg = n4
							n3 = str3
							n4 = v
							v41 = flag6
							v42 = flag7
							v43 = v41
							str3 = v42
							v = v43
							n5 = 24
							flag = n5 <= 20
							continue
						elseif exitTo15 == 30 then
							if not (n7 <= 22) then
								exitTo14 = 72
								break
							elseif n7 <= 21 then
								exitTo14 = 73
								break
							else
								v83 = str3
								v84 = v
								v85 = flag2
								v86 = flag6
								v87 = v83
								v88 = v84
								v89 = v85
								v90 = v86
								arg = v84 == "SERVER_TEMPORARY_ERROR"
								n3 = v87
								n4 = v88
								str3 = v89
								v = v90
								n5 = 38
								flag = n5 <= 20
								continue
							end
						elseif exitTo15 == 31 then
							exitTo14 = 25
							break
						elseif exitTo15 == 32 then
							exitTo14 = 26
							break
						elseif exitTo15 == 33 then
							if not (n7 <= 32) then
								local v118 = n4

								if v118 then
									local v119 = n4
									v100 = str3
									v101 = v
									v102 = flag2
									v103 = flag6
									v = v119
									n5 = 5

									if not n5 then
										v104 = v100
										v105 = v101
										v106 = v102
										v107 = v103
										arg = v
										n3 = v104
										n4 = v105
										str3 = v106
										v = v107
										n5 = 34
									else
										v108 = v100
										v109 = v101
										v110 = v102
										v111 = v103
										arg = v
										n3 = v108
										n4 = v109
										str3 = v110
										v = v111
									end
								else
									v100 = str3
									v101 = v
									v102 = flag2
									v103 = flag6
									v = v118
									n5 = v

									if not n5 then
										v104 = v100
										v105 = v101
										v106 = v102
										v107 = v103
										arg = v
										n3 = v104
										n4 = v105
										str3 = v106
										v = v107
										n5 = 34
									else
										v108 = v100
										v109 = v101
										v110 = v102
										v111 = v103
										arg = v
										n3 = v108
										n4 = v109
										str3 = v110
										v = v111
									end
								end

								flag = n5 <= 20
								continue
							else
								exitTo14 = 31
								break
							end
						elseif exitTo15 == 34 then
							v112 = str3
							v113 = flag2
							v114 = flag6
							str3 = v
							v115 = v112
							v116 = v113
							v117 = v114
							arg = str3 == "HWID_MISMATCH"
							n3 = v115
							n4 = str3
							str3 = v116
							v = v117
							n5 = 5
							flag = n5 <= 20
							continue
						elseif exitTo15 == 35 then
							exitTo14 = 27
							break
						elseif exitTo15 == 36 then
							exitTo14 = 28
							break
						elseif exitTo15 == 37 then
							exitTo14 = 29
							break
						elseif exitTo15 == 38 then
							local v118 = flag6
							arg = n4
							n3 = str3
							n4 = v
							str3 = ""
							v = v118
							n5 = 42
							flag = n5 <= 20
							continue
						elseif exitTo15 == 39 then
							exitTo14 = 30
							break
						elseif exitTo15 == 40 then
							flag = n5 <= 20
							continue
						elseif exitTo15 == 41 then
							if not (n5 <= 9) then
								if not (n5 <= 14) then
									if not (n5 <= 17) then
										if n5 <= 18 then
											flag17 = n3 > 0

											if flag17 then
												n5 = 23
												flag = false
											else
												v41 = v
												v42 = flag17
												v43 = v41
												str3 = v42
												v = v43
												n5 = 24
												flag = n5 <= 20
												continue
											end

											continue
										else
											v44 = v
											v45 = n5

											if v45 <= 19 then
												v46 = v44
												str3 = n3 >= 300
												v = v46
												n5 = 24
												flag = n5 <= 20
												continue
											else
												exitTo14 = 7
												break
											end
										end
									else
										if not (n5 <= 15) then
											flag18 = n5 <= 16

											if not flag18 then
												v27 = n3
												v28 = n4
												v29 = str3
												v30 = v
												v31 = v27
												v32 = v28
												v33 = v29
												v34 = v30
												arg = v28 == "RATE_LIMITED"
												n3 = v31
												n4 = v32
												str3 = v33
												v = v34
												n5 = 36
												flag = n5 <= 20
												continue
											else
												v47 = v
												v48 = v47
												str3 = arg.body
												v = v48
												n5 = 27
											end
										else
											v35 = n4
											v36 = str3
											v37 = v
											v38 = v35
											v39 = v36
											v40 = v37
											n3 = 0
											n4 = v38
											str3 = v39
											v = v40
											n5 = 29
											flag = n5 <= 20
											continue
										end

										flag = n5 <= 20
										continue
									end
								elseif not (n5 <= 11) then
									if not (n5 <= 12) then
										if n5 <= 13 then
											flag19 = arg.Success == false

											if flag19 then
												n5 = 14
												flag = true
											else
												v18 = n3
												v19 = n4
												v20 = str3
												v21 = v
												v22 = flag19
												v23 = v18
												v24 = v19
												v25 = v20
												v26 = v21
												arg = v22
												n3 = v23
												n4 = v24
												str3 = v25
												v = v26
												n5 = 37
												flag = n5 <= 20
												continue
											end
										else
											v49 = n3
											v12 = n4
											v13 = str3
											v14 = v
											str3 = v49
											v15 = v12
											v16 = v13
											v17 = v14
											arg = str3 == 0
											n3 = str3
											n4 = v15
											str3 = v16
											v = v17
											n5 = 37
											flag = n5 <= 20
											continue
										end

										continue
									else
										exitTo14 = 6
										break
									end
								else
									flag20 = n5 <= 10

									if flag20 then
										exitTo14 = 5
										break
									else
										v8 = str3
										v9 = v
										v10 = v8
										v11 = v9
										n4 = arg.Status
										str3 = v10
										v = v11
										n5 = 2
										flag = n5 <= 20
										continue
									end
								end
							elseif not (n5 <= 4) then
								if not (n5 <= 6) then
									exitTo14 = 3
									break
								else
									v50 = arg
									v51 = n3
									v52 = n4
									v53 = str3
									v54 = v
									v55 = n5
									v56 = v50
									v57 = v51
									v58 = v52
									v59 = v53
									v7 = v54
									flag21 = v55 <= 5

									if not flag21 then
										exitTo14 = 4
										break
									else
										arg = v56
										n3 = v57
										n4 = v58
										str3 = v59
										v = v7

										if not arg then
											n5 = 17
											flag = true
										else
											n5 = 36
											flag = n5 <= 20
											continue
										end

										continue
									end
								end
							elseif not (n5 <= 1) then
								flag22 = n5 <= 2

								if not flag22 then
									if not (n5 <= 3) then
										if not (n3 == 403) then
											n5 = 41
											flag = false
										else
											n5 = 32
											flag = n5 <= 20
											continue
										end

										continue
									else
										exitTo14 = 2
										break
									end
								elseif not n4 then
									n5 = 7
									flag = true
									continue
								elseif not n4 then
									exitTo14 = 1
									break
								else
									n5 = 28
									flag = n5 <= 20
									continue
								end
							else
								v60 = n4
								v61 = str3
								v62 = v
								v63 = n5

								if not (v63 <= 0) then
									v64 = tonumber
									statusCode = arg.StatusCode

									if not statusCode then
										v65 = v60
										v66 = v61
										v67 = v62
										n3 = v64
										n4 = v65
										str3 = v66
										v = v67
										n5 = 11
									else
										v68 = v61
										v69 = v62
										v70 = v64
										v71 = statusCode
										v72 = v68
										v73 = v69
										n3 = v70
										n4 = v71
										str3 = v72
										v = v73
										n5 = 2
									end

									flag = n5 <= 20
									continue
								end
							end
						elseif exitTo15 == 42 then
							exitTo14 = 32
							break
						elseif exitTo15 == 43 then
							exitTo14 = 33
							break
						elseif exitTo15 == 44 then
							if n8 <= 10 then
								exitTo14 = 71
								break
							else
								arg = str3
								n3 = v
								v8 = flag6
								v9 = flag9
								v10 = v8
								v11 = v9
								n4 = arg.Status
								str3 = v10
								v = v11
								n5 = 2
								flag = n5 <= 20
								continue
							end
						elseif exitTo15 == 45 then
							exitTo14 = 34
							break
						elseif exitTo15 == 46 then
							v12 = flag2
							v13 = flag6
							v14 = flag9
							str3 = v
							v15 = v12
							v16 = v13
							v17 = v14
							arg = str3 == 0
							n3 = str3
							n4 = v15
							str3 = v16
							v = v17
							n5 = 37
							flag = n5 <= 20
							continue
						elseif exitTo15 == 47 then
							v18 = v
							v19 = flag2
							v20 = flag6
							v21 = flag9
							v22 = flag11
							v23 = v18
							v24 = v19
							v25 = v20
							v26 = v21
							arg = v22
							n3 = v23
							n4 = v24
							str3 = v25
							v = v26
							n5 = 37
							flag = n5 <= 20
							continue
						elseif exitTo15 == 48 then
							if not (n8 <= 15) then
								if not (n8 <= 16) then
									v27 = v
									v28 = flag2
									v29 = flag6
									v30 = flag9
									v31 = v27
									v32 = v28
									v33 = v29
									v34 = v30
									arg = v28 == "RATE_LIMITED"
									n3 = v31
									n4 = v32
									str3 = v33
									v = v34
									n5 = 36
									flag = n5 <= 20
									continue
								else
									local v118 = flag9
									arg = str3
									n3 = v
									n4 = flag2
									str3 = str3.body
									v = v118
									n5 = 27
								end
							else
								arg = str3
								v35 = flag2
								v36 = flag6
								v37 = flag9
								v38 = v35
								v39 = v36
								v40 = v37
								n3 = 0
								n4 = v38
								str3 = v39
								v = v40
								n5 = 29
								flag = n5 <= 20
								continue
							end

							flag = n5 <= 20
							continue
						elseif exitTo15 == 49 then
							exitTo14 = 35
							break
						elseif exitTo15 == 50 then
							arg = str3
							n3 = v
							n4 = flag2
							v41 = flag9
							v42 = flag10
							v43 = v41
							str3 = v42
							v = v43
							n5 = 24
							flag = n5 <= 20
							continue
						elseif exitTo15 == 51 then
							if not (n8 <= 22) then
								exitTo14 = 69
								break
							elseif n8 <= 21 then
								exitTo14 = 70
								break
							else
								v83 = v
								v84 = flag2
								v85 = flag6
								v86 = flag9
								v87 = v83
								v88 = v84
								v89 = v85
								v90 = v86
								arg = v84 == "SERVER_TEMPORARY_ERROR"
								n3 = v87
								n4 = v88
								str3 = v89
								v = v90
								n5 = 38
								flag = n5 <= 20
								continue
							end
						elseif exitTo15 == 52 then
							exitTo14 = 36
							break
						elseif exitTo15 == 53 then
							exitTo14 = 37
							break
						elseif exitTo15 == 54 then
							if not (n8 <= 32) then
								local v118 = str3

								if v118 then
									local v119 = str3
									v100 = v
									v101 = flag2
									v102 = flag6
									v103 = flag9
									v = v119
									n5 = 5

									if not n5 then
										v104 = v100
										v105 = v101
										v106 = v102
										v107 = v103
										arg = v
										n3 = v104
										n4 = v105
										str3 = v106
										v = v107
										n5 = 34
									else
										v108 = v100
										v109 = v101
										v110 = v102
										v111 = v103
										arg = v
										n3 = v108
										n4 = v109
										str3 = v110
										v = v111
									end
								else
									v100 = v
									v101 = flag2
									v102 = flag6
									v103 = flag9
									v = v118
									n5 = v

									if not n5 then
										v104 = v100
										v105 = v101
										v106 = v102
										v107 = v103
										arg = v
										n3 = v104
										n4 = v105
										str3 = v106
										v = v107
										n5 = 34
									else
										v108 = v100
										v109 = v101
										v110 = v102
										v111 = v103
										arg = v
										n3 = v108
										n4 = v109
										str3 = v110
										v = v111
									end
								end

								flag = n5 <= 20
								continue
							else
								exitTo14 = 43
								break
							end
						elseif exitTo15 == 55 then
							v112 = v
							v113 = flag6
							v114 = flag9
							str3 = flag2
							v115 = v112
							v116 = v113
							v117 = v114
							arg = str3 == "HWID_MISMATCH"
							n3 = v115
							n4 = str3
							str3 = v116
							v = v117
							n5 = 5
							flag = n5 <= 20
							continue
						elseif exitTo15 == 56 then
							exitTo14 = 38
							break
						elseif exitTo15 == 57 then
							exitTo14 = 39
							break
						elseif exitTo15 == 58 then
							exitTo14 = 40
							break
						elseif exitTo15 == 59 then
							exitTo14 = 41
							break
						elseif exitTo15 == 60 then
							exitTo14 = 42
							break
						elseif exitTo15 == 61 then
							flag = n5 <= 20
							continue
						elseif exitTo15 == 62 then
							exitTo14 = 44
							break
						elseif exitTo15 == 63 then
							exitTo14 = 45
							break
						elseif exitTo15 == 64 then
							if n9 <= 10 then
								exitTo14 = 68
								break
							else
								arg = v
								n3 = flag2
								v8 = flag9
								v9 = flag12
								v10 = v8
								v11 = v9
								n4 = arg.Status
								str3 = v10
								v = v11
								n5 = 2
								flag = n5 <= 20
								continue
							end
						elseif exitTo15 == 65 then
							exitTo14 = 46
							break
						elseif exitTo15 == 66 then
							v12 = flag6
							v13 = flag9
							v14 = flag12
							str3 = flag2
							v15 = v12
							v16 = v13
							v17 = v14
							arg = str3 == 0
							n3 = str3
							n4 = v15
							str3 = v16
							v = v17
							n5 = 37
							flag = n5 <= 20
							continue
						elseif exitTo15 == 67 then
							v18 = flag2
							v19 = flag6
							v20 = flag9
							v21 = flag12
							v22 = flag14
							v23 = v18
							v24 = v19
							v25 = v20
							v26 = v21
							arg = v22
							n3 = v23
							n4 = v24
							str3 = v25
							v = v26
							n5 = 37
							flag = n5 <= 20
							continue
						elseif exitTo15 == 68 then
							if not (n9 <= 15) then
								if not (n9 <= 16) then
									v27 = flag2
									v28 = flag6
									v29 = flag9
									v30 = flag12
									v31 = v27
									v32 = v28
									v33 = v29
									v34 = v30
									arg = v28 == "RATE_LIMITED"
									n3 = v31
									n4 = v32
									str3 = v33
									v = v34
									n5 = 36
									flag = n5 <= 20
									continue
								else
									exitTo14 = 67
									break
								end
							else
								arg = v
								v35 = flag6
								v36 = flag9
								v37 = flag12
								v38 = v35
								v39 = v36
								v40 = v37
								n3 = 0
								n4 = v38
								str3 = v39
								v = v40
								n5 = 29
								flag = n5 <= 20
								continue
							end
						elseif exitTo15 == 69 then
							exitTo14 = 47
							break
						elseif exitTo15 == 70 then
							arg = v
							n3 = flag2
							n4 = flag6
							v41 = flag12
							v42 = flag13
							v43 = v41
							str3 = v42
							v = v43
							n5 = 24
							flag = n5 <= 20
							continue
						elseif exitTo15 == 71 then
							if not (n9 <= 22) then
								exitTo14 = 65
								break
							elseif n9 <= 21 then
								exitTo14 = 66
								break
							else
								v83 = flag2
								v84 = flag6
								v85 = flag9
								v86 = flag12
								v87 = v83
								v88 = v84
								v89 = v85
								v90 = v86
								arg = v84 == "SERVER_TEMPORARY_ERROR"
								n3 = v87
								n4 = v88
								str3 = v89
								v = v90
								n5 = 38
								flag = n5 <= 20
								continue
							end
						elseif exitTo15 == 72 then
							exitTo14 = 48
							break
						elseif exitTo15 == 73 then
							exitTo14 = 49
							break
						elseif exitTo15 == 74 then
							if not (n9 <= 32) then
								local v118 = v

								if v118 then
									v100 = flag2
									v101 = flag6
									v102 = flag9
									v103 = flag12
									n5 = 5

									if not n5 then
										v104 = v100
										v105 = v101
										v106 = v102
										v107 = v103
										arg = v
										n3 = v104
										n4 = v105
										str3 = v106
										v = v107
										n5 = 34
									else
										v108 = v100
										v109 = v101
										v110 = v102
										v111 = v103
										arg = v
										n3 = v108
										n4 = v109
										str3 = v110
										v = v111
									end
								else
									v100 = flag2
									v101 = flag6
									v102 = flag9
									v103 = flag12
									v = v118
									n5 = v

									if not n5 then
										v104 = v100
										v105 = v101
										v106 = v102
										v107 = v103
										arg = v
										n3 = v104
										n4 = v105
										str3 = v106
										v = v107
										n5 = 34
									else
										v108 = v100
										v109 = v101
										v110 = v102
										v111 = v103
										arg = v
										n3 = v108
										n4 = v109
										str3 = v110
										v = v111
									end
								end

								flag = n5 <= 20
								continue
							else
								exitTo14 = 55
								break
							end
						elseif exitTo15 == 75 then
							v112 = flag2
							v113 = flag9
							v114 = flag12
							str3 = flag6
							v115 = v112
							v116 = v113
							v117 = v114
							arg = str3 == "HWID_MISMATCH"
							n3 = v115
							n4 = str3
							str3 = v116
							v = v117
							n5 = 5
							flag = n5 <= 20
							continue
						elseif exitTo15 == 76 then
							exitTo14 = 50
							break
						elseif exitTo15 == 77 then
							exitTo14 = 51
							break
						elseif exitTo15 == 78 then
							exitTo14 = 52
							break
						elseif exitTo15 == 79 then
							exitTo14 = 53
							break
						elseif exitTo15 == 80 then
							exitTo14 = 54
							break
						elseif exitTo15 == 81 then
							flag = n5 <= 20
							continue
						elseif exitTo15 == 82 then
							if not (n10 <= 11) then
								exitTo14 = 63
								break
							elseif n10 <= 10 then
								exitTo14 = 64
								break
							else
								arg = flag2
								n3 = flag6
								v8 = flag12
								v9 = flag15
								v10 = v8
								v11 = v9
								n4 = arg.Status
								str3 = v10
								v = v11
								n5 = 2
								flag = n5 <= 20
								continue
							end
						elseif exitTo15 == 83 then
							if not (n10 <= 15) then
								if not (n10 <= 16) then
									v27 = flag6
									v28 = flag9
									v29 = flag12
									v30 = flag15
									v31 = v27
									v32 = v28
									v33 = v29
									v34 = v30
									arg = v28 == "RATE_LIMITED"
									n3 = v31
									n4 = v32
									str3 = v33
									v = v34
									n5 = 36
									flag = n5 <= 20
									continue
								else
									exitTo14 = 62
									break
								end
							else
								arg = flag2
								v35 = flag9
								v36 = flag12
								v37 = flag15
								v38 = v35
								v39 = v36
								v40 = v37
								n3 = 0
								n4 = v38
								str3 = v39
								v = v40
								n5 = 29
								flag = n5 <= 20
								continue
							end
						elseif exitTo15 == 84 then
							exitTo14 = 56
							break
						elseif exitTo15 == 85 then
							arg = flag2
							n3 = flag6
							n4 = flag9
							v41 = flag15
							v42 = flag16
							v43 = v41
							str3 = v42
							v = v43
							n5 = 24
							flag = n5 <= 20
							continue
						elseif exitTo15 == 86 then
							exitTo14 = 57
							break
						elseif exitTo15 == 87 then
							exitTo14 = 58
							break
						elseif exitTo15 == 88 then
							exitTo14 = 59
							break
						elseif exitTo15 == 89 then
							exitTo14 = 60
							break
						elseif exitTo15 == 90 then
							exitTo14 = 61
							break
						elseif exitTo15 == 91 then
							flag = n5 <= 20
							continue
						elseif exitTo15 == 92 then
							if not (n5 <= 33) then
								if not (n5 <= 34) then
									if not (n5 <= 35) then
										if not arg then
											n5 = 25
											flag = false
										else
											n5 = 30
											flag = n5 <= 20
											continue
										end

										continue
									else
										exitTo14 = 77
										break
									end
								else
									local v118 = n4
									v112 = n3
									v113 = str3
									v114 = v
									str3 = v118
									v115 = v112
									v116 = v113
									v117 = v114
									arg = str3 == "HWID_MISMATCH"
									n3 = v115
									n4 = str3
									str3 = v116
									v = v117
									n5 = 5
									flag = n5 <= 20
									continue
								end
							elseif not (n5 <= 32) then
								local v118 = arg

								if v118 then
									local v119 = arg
									v100 = n3
									v101 = n4
									v102 = str3
									v103 = v
									v = v119
									n5 = 5

									if not n5 then
										v104 = v100
										v105 = v101
										v106 = v102
										v107 = v103
										arg = v
										n3 = v104
										n4 = v105
										str3 = v106
										v = v107
										n5 = 34
									else
										v108 = v100
										v109 = v101
										v110 = v102
										v111 = v103
										arg = v
										n3 = v108
										n4 = v109
										str3 = v110
										v = v111
									end
								else
									v100 = n3
									v101 = n4
									v102 = str3
									v103 = v
									v = v118
									n5 = v

									if not n5 then
										v104 = v100
										v105 = v101
										v106 = v102
										v107 = v103
										arg = v
										n3 = v104
										n4 = v105
										str3 = v106
										v = v107
										n5 = 34
									else
										v108 = v100
										v109 = v101
										v110 = v102
										v111 = v103
										arg = v
										n3 = v108
										n4 = v109
										str3 = v110
										v = v111
									end
								end

								flag = n5 <= 20
								continue
							else
								exitTo14 = 76
								break
							end
						elseif exitTo15 == 93 then
							if not (n5 <= 40) then
								if not (n5 <= 41) then
									local v118 = n4(str3)

									if n3 == 429 then
										n5 = 20
										flag = true
										continue
									else
										exitTo14 = 79
										break
									end
								else
									local flag23 = n3 >= 500

									if not flag23 then
										n5 = 18
										flag = true
									else
										local v118 = v
										local v119 = flag23
										local v120 = v118
										str3 = v119
										v = v120
										n5 = 24
										flag = n5 <= 20
										continue
									end

									continue
								end
							else
								exitTo14 = 78
								break
							end
						else
							if exitTo15 == 94 then
								if not arg then
									n5 = 21
									flag = false
								else
									n5 = 40
									flag = n5 <= 20
									continue
								end
							elseif exitTo15 == 95 then
								local v118 = v
								str3 = ""
								v = v118
								n5 = 42
								flag = n5 <= 20
								continue
							elseif exitTo15 == 96 then
								flag = n5 <= 20
								continue
							elseif exitTo15 == 97 then
								flag = n5 <= 20
								continue
							elseif not (n5 <= 22) then
								local v118 = arg
								local v119 = n3
								local v120 = n4
								local v121 = str3
								local v122 = v
								local v123 = n5
								local v124 = v118
								local v125 = v119
								local v126 = v120
								local v127 = v121
								local v128 = v122

								if not (v123 <= 23) then
									if not (v123 <= 24) then
										local v129 = v125
										local v130 = v127
										local v131 = v129
										local v132 = v130
										arg = v126 == "SERVER_CONFIG_ERROR"
										n3 = v131
										n4 = v126
										str3 = v132
										v = v128
										n5 = 30
										flag = n5 <= 20
										continue
									else
										arg = v124
										n3 = v125
										n4 = v126
										str3 = v127
										v = v128

										if not str3 then
											n5 = 13
											flag = true
										else
											n5 = 0
											flag = n5 <= 20
											continue
										end
									end
								else
									arg = v124
									n3 = v125
									n4 = v126
									str3 = v127
									v = v128
									local flag23 = n3 < 200

									if not flag23 then
										n5 = 19
										flag = true
									else
										local v129 = v
										local v130 = flag23
										local v131 = v129
										str3 = v130
										v = v131
										n5 = 24
										flag = n5 <= 20
										continue
									end
								end
							elseif n5 <= 21 then
								local sub = n4.sub
								local flag23 = sub(sub, 1, 6) == "VALID|"

								if not flag23 then
									n5 = 8
									flag = true
								else
									v91 = n3
									v92 = n4
									v93 = str3
									v94 = v
									v95 = flag23
									v96 = v91
									v97 = v92
									v98 = v93
									v99 = v94
									arg = v95
									n3 = v96
									n4 = v97
									str3 = v98
									v = v99
									n5 = 33
									flag = n5 <= 20
									continue
								end
							else
								v83 = n3
								v84 = n4
								v85 = str3
								v86 = v
								v87 = v83
								v88 = v84
								v89 = v85
								v90 = v86
								arg = v84 == "SERVER_TEMPORARY_ERROR"
								n3 = v87
								n4 = v88
								str3 = v89
								v = v90
								n5 = 38
								flag = n5 <= 20
								continue
							end

							continue
						end
					end
				end
			end

			break
		else
			if not (n5 <= 9) then
				if not (n5 <= 14) then
					if not (n5 <= 17) then
						if n5 <= 18 then
							flag17 = n3 > 0

							if flag17 then
								n5 = 23
								flag = false
							else
								v41 = v
								v42 = flag17
								v43 = v41
								str3 = v42
								v = v43
								n5 = 24
								flag = n5 <= 20
								continue
							end

							continue
						else
							v44 = v
							v45 = n5

							if v45 <= 19 then
								v46 = v44
								str3 = n3 >= 300
								v = v46
								n5 = 24
								flag = n5 <= 20
								continue
							else
								exitTo14 = 7
								break
							end
						end
					else
						if not (n5 <= 15) then
							flag18 = n5 <= 16

							if not flag18 then
								v27 = n3
								v28 = n4
								v29 = str3
								v30 = v
								v31 = v27
								v32 = v28
								v33 = v29
								v34 = v30
								arg = v28 == "RATE_LIMITED"
								n3 = v31
								n4 = v32
								str3 = v33
								v = v34
								n5 = 36
								flag = n5 <= 20
								continue
							else
								v47 = v
								v48 = v47
								str3 = arg.body
								v = v48
								n5 = 27
							end
						else
							v35 = n4
							v36 = str3
							v37 = v
							v38 = v35
							v39 = v36
							v40 = v37
							n3 = 0
							n4 = v38
							str3 = v39
							v = v40
							n5 = 29
							flag = n5 <= 20
							continue
						end

						flag = n5 <= 20
						continue
					end
				elseif not (n5 <= 11) then
					if not (n5 <= 12) then
						if n5 <= 13 then
							flag19 = arg.Success == false

							if flag19 then
								n5 = 14
								flag = true
							else
								v18 = n3
								v19 = n4
								v20 = str3
								v21 = v
								v22 = flag19
								v23 = v18
								v24 = v19
								v25 = v20
								v26 = v21
								arg = v22
								n3 = v23
								n4 = v24
								str3 = v25
								v = v26
								n5 = 37
								flag = n5 <= 20
								continue
							end
						else
							v49 = n3
							v12 = n4
							v13 = str3
							v14 = v
							str3 = v49
							v15 = v12
							v16 = v13
							v17 = v14
							arg = str3 == 0
							n3 = str3
							n4 = v15
							str3 = v16
							v = v17
							n5 = 37
							flag = n5 <= 20
							continue
						end

						continue
					else
						exitTo14 = 6
						break
					end
				else
					flag20 = n5 <= 10

					if flag20 then
						exitTo14 = 5
						break
					else
						v8 = str3
						v9 = v
						v10 = v8
						v11 = v9
						n4 = arg.Status
						str3 = v10
						v = v11
						n5 = 2
						flag = n5 <= 20
						continue
					end
				end
			elseif not (n5 <= 4) then
				if not (n5 <= 6) then
					exitTo14 = 3
					break
				else
					v50 = arg
					v51 = n3
					v52 = n4
					v53 = str3
					v54 = v
					v55 = n5
					v56 = v50
					v57 = v51
					v58 = v52
					v59 = v53
					v7 = v54
					flag21 = v55 <= 5

					if not flag21 then
						exitTo14 = 4
						break
					else
						arg = v56
						n3 = v57
						n4 = v58
						str3 = v59
						v = v7

						if not arg then
							n5 = 17
							flag = true
						else
							n5 = 36
							flag = n5 <= 20
							continue
						end

						continue
					end
				end
			elseif not (n5 <= 1) then
				flag22 = n5 <= 2

				if not flag22 then
					if not (n5 <= 3) then
						if not (n3 == 403) then
							n5 = 41
							flag = false
						else
							n5 = 32
							flag = n5 <= 20
							continue
						end

						continue
					else
						exitTo14 = 2
						break
					end
				elseif not n4 then
					n5 = 7
					flag = true
					continue
				elseif not n4 then
					exitTo14 = 1
					break
				else
					n5 = 28
					flag = n5 <= 20
					continue
				end
			else
				v60 = n4
				v61 = str3
				v62 = v
				v63 = n5

				if not (v63 <= 0) then
					v64 = tonumber
					statusCode = arg.StatusCode

					if not statusCode then
						v65 = v60
						v66 = v61
						v67 = v62
						n3 = v64
						n4 = v65
						str3 = v66
						v = v67
						n5 = 11
					else
						v68 = v61
						v69 = v62
						v70 = v64
						v71 = statusCode
						v72 = v68
						v73 = v69
						n3 = v70
						n4 = v71
						str3 = v72
						v = v73
						n5 = 2
					end

					flag = n5 <= 20
					continue
				end
			end

			break
		end
	end

	if exitTo14 ~= 1 then
		if exitTo14 == 2 then
			return false, "SERVER_TEMPORARY_ERROR"
		end

		if exitTo14 == 3 then
			error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1605)")
		end

		if exitTo14 == 4 then
			local v8 = v7
			local tbl2 = { action = "auth", hwid = fn() }
			error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1731)")
		end

		if exitTo14 ~= 5 then
			if exitTo14 == 6 then
				return arg, n3
			end

			if exitTo14 == 7 then
				return true, "RATE_LIMITED"
			end

			if exitTo14 == 8 then
				error("devirt: store below the stack VM's frame (register -54) (at 144:818)")
			end

			if exitTo14 == 9 then
				if not (n6 <= 6) then
					error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1605)")
				end

				error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1500)")
			end

			if exitTo14 == 10 then
				return false, "SERVER_TEMPORARY_ERROR"
			end

			if exitTo14 == 11 then
				return n3, n4
			end

			if exitTo14 == 12 then
				error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2648)")
			end

			if exitTo14 == 13 then
				error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:556)")
			end

			if exitTo14 == 14 then
				error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:649)")
			end

			if exitTo14 == 15 then
				error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:757)")
			end

			if exitTo14 == 16 then
				error("devirt: stack depth 4 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2736)")
			end

			if exitTo14 == 17 then
				error("devirt: store below the stack VM's frame (register -53) (at 144:818)")
			end

			if exitTo14 ~= 18 then
				if exitTo14 == 19 then
					if exitTo == 26 then
						return false, "SERVER_TEMPORARY_ERROR"
					end

					if exitTo == 27 then
						error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:113)")
					end

					if exitTo == 28 then
						error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:71)")
					end

					error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1872)")
				end

				if exitTo14 ~= 20 then
					if exitTo14 == 21 then
						if not (n7 <= 6) then
							error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1605)")
						end

						error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1500)")
					end

					if exitTo14 == 22 then
						return false, "SERVER_TEMPORARY_ERROR"
					end

					if exitTo14 == 23 then
						return n4, str3
					end

					if exitTo14 == 24 then
						error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2648)")
					end

					if exitTo14 == 25 then
						error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:649)")
					end

					if exitTo14 == 26 then
						error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:757)")
					end

					if exitTo14 == 27 then
						error("devirt: stack depth 5 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2736)")
					end

					if exitTo14 == 28 then
						error("devirt: store below the stack VM's frame (register -52) (at 144:818)")
					end

					if exitTo14 ~= 29 then
						if exitTo14 == 30 then
							if exitTo4 == 24 then
								return false, "SERVER_TEMPORARY_ERROR"
							end

							if exitTo4 == 25 then
								error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:113)")
							end

							if exitTo4 == 26 then
								error("devirt: stack depth 17 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:71)")
							end

							error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1872)")
						end

						if exitTo14 ~= 31 then
							if exitTo14 == 32 then
								if not (n8 <= 6) then
									error("devirt: stack depth 17 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1605)")
								end

								error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1500)")
							end

							if exitTo14 == 33 then
								return false, "SERVER_TEMPORARY_ERROR"
							end

							if exitTo14 == 34 then
								return str3, v
							end

							if exitTo14 == 35 then
								error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2648)")
							end

							if exitTo14 == 36 then
								error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:649)")
							end

							if exitTo14 == 37 then
								error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:757)")
							end

							if exitTo14 == 38 then
								error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2697)")
							end

							if exitTo14 == 39 then
								error("devirt: store below the stack VM's frame (register -51) (at 144:818)")
							end

							if exitTo14 ~= 40 then
								if exitTo14 == 41 then
									local v8 = flag9
									error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2861)")
								end

								if exitTo14 == 42 then
									if exitTo7 == 24 then
										return false, "SERVER_TEMPORARY_ERROR"
									end

									if exitTo7 == 25 then
										error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:113)")
									end

									if exitTo7 == 26 then
										error("devirt: stack depth 18 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:71)")
									end

									error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1872)")
								end

								if exitTo14 ~= 43 then
									if exitTo14 == 44 then
										if not (n9 <= 6) then
											error("devirt: stack depth 18 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1605)")
										end

										error("devirt: stack depth 17 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1500)")
									end

									if exitTo14 == 45 then
										return false, "SERVER_TEMPORARY_ERROR"
									end

									if exitTo14 == 46 then
										return v, flag2
									end

									if exitTo14 == 47 then
										error("devirt: stack depth 17 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2648)")
									end

									if exitTo14 == 48 then
										error("devirt: stack depth 17 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:649)")
									end

									if exitTo14 == 49 then
										error("devirt: stack depth 17 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:757)")
									end

									if exitTo14 == 50 then
										error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2697)")
									end

									if exitTo14 == 51 then
										error("devirt: store below the stack VM's frame (register -50) (at 144:818)")
									end

									if exitTo14 == 52 then
										error("devirt: read below the stack VM's frame (register -34) (at 144:2173)")
									end

									if exitTo14 == 53 then
										local v8 = flag12
										error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2861)")
									end

									if exitTo14 == 54 then
										if exitTo10 == 24 then
											return false, "SERVER_TEMPORARY_ERROR"
										end

										if exitTo10 == 25 then
											error("devirt: stack depth 17 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:113)")
										end

										if exitTo10 == 26 then
											error("devirt: stack depth 19 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:71)")
										end

										error("devirt: stack depth 17 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1872)")
									end

									if exitTo14 ~= 55 then
										if exitTo14 == 56 then
											error("devirt: stack depth 18 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2648)")
										end

										if exitTo14 == 57 then
											error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1205)")
										end

										if exitTo14 == 58 then
											error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1220)")
										end

										if exitTo14 == 59 then
											error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:1164)")
										end

										if exitTo14 == 60 then
											local v8 = flag15
											error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2861)")
										end

										if exitTo14 == 61 then
											if exitTo13 == 10 then
												return false, "SERVER_TEMPORARY_ERROR"
											end

											if exitTo13 == 11 then
												error("devirt: table.move with symbolic end (at 144:15)")
											end

											if exitTo13 == 12 then
												error("devirt: stack depth 18 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:113)")
											end

											error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2200)")
										end

										if exitTo14 == 62 then
											error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2456)")
										end

										if exitTo14 == 63 then
											error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2230)")
										end

										if exitTo14 ~= 64 then
											if exitTo14 == 65 then
												error("devirt: stack depth 17 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:556)")
											end

											if exitTo14 == 66 then
												error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:249)")
											end

											if exitTo14 == 67 then
												error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2456)")
											end

											if exitTo14 ~= 68 then
												if exitTo14 == 69 then
													error("devirt: stack depth 16 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:556)")
												end

												if exitTo14 == 70 then
													error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:249)")
												end

												if exitTo14 ~= 71 then
													if exitTo14 == 72 then
														error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:556)")
													end

													if exitTo14 == 73 then
														error("devirt: stack depth 14 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:249)")
													end

													if exitTo14 ~= 74 then
														if exitTo14 ~= 75 then
															if exitTo14 == 76 then
																return true, "SERVER_CONFIG_ERROR"
															end

															if exitTo14 == 77 then
																error("devirt: stack depth 3 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2736)")
															end

															if exitTo14 == 78 then
																return false, "SERVER_TEMPORARY_ERROR"
															end

															if exitTo14 == 79 then
																error("devirt: stack depth 15 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:71)")
															end

															return false, "SERVER_TEMPORARY_ERROR"
														end
													end
												end
											end
										end

										error("devirt: stack depth 5 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2246)")
									end
								end

								return true, "SERVER_CONFIG_ERROR"
							end

							error("devirt: read below the stack VM's frame (register -34) (at 144:2173)")
						end

						return true, "SERVER_CONFIG_ERROR"
					end

					error("devirt: read below the stack VM's frame (register -34) (at 144:2173)")
				end

				return true, "SERVER_CONFIG_ERROR"
			end

			error("devirt: read below the stack VM's frame (register -34) (at 144:2173)")
		end

		error("devirt: stack depth 5 at 144:1206 (seen [6, 7, 8, 9, 10, 11, 12, 13]) (at 144:2246)")
	end

	error("devirt: read below the stack VM's frame (register -34) (at 144:2173)")
end

local ok, result = pcall(function()
	return game:HttpGet("https://raw.githubusercontent.com/traurobloxdeptrai/oii/refs/heads/main/uia")
end)

local ok2, result2 = pcall(function()
	return ok and loadstring(result)()
end)

if not ok2 or type(result2) ~= "table" then
	localPlayer:Kick("Không thể tải giao diện xác thực")
	return
end

result2:CreateUI({
	Title = "RealKid HUB",
	Subtitle = "Xin Chào Anh Em",
	Backend = { BaseURL = "https://realkidkey.site/", WorkerURL = str },
})

local ui = result2.UI
local flag = false
local flag2 = false

local function fn5(arg)
	pcall(function()
		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "RealKid Hub", Text = arg, Duration = 5 })
	end)
end

local function fn6(arg, arg2)
	if writefile then
		pcall(writefile, "TrauHub_Save.txt", arg)
	end

	ui.CheckKeyBtn.Text = "✅ THÀNH CÔNG!"
	ui.StatusLabel.Text = "🚀 Đang tải dữ liệu RealKid Hub..."

	if not arg2 then
		fn5("✅ Xác thực thành công! Key của bạn còn hạn.")
	end

	task.wait(0.8)

	if ui.ScreenGui then
		ui.ScreenGui:Destroy()
	end

	if ui.Blur then
		ui.Blur:Destroy()
	end

	flag = true
end

local function fn7(arg, arg2)
	local str3 = nil
	local str4 = nil
	local n3 = 8

	while true do
		local flag3 = false
		local exitTo = nil

		while true do
			if not flag3 then
				if not (n3 <= 8) then
					if not (n3 <= 9) then
						if n3 <= 10 then
							if not str3 then
								exitTo = 6
								break
							else
								n3 = 3
								flag3 = n3 <= 5
							end
						else
							str4 = "⏳ Đang kết nối server..."
							n3 = 2
							flag3 = true
						end
					else
						str4 = "⏳ RealKid Hub đang kiểm tra Key cũ..."
						n3 = 5
						flag3 = true
					end
				elseif not (n3 <= 6) then
					if not (n3 <= 7) then
						local v = flag2

						if not v then
							exitTo = 5
							break
						else
							local v2 = str4
							local v3 = v
							local v4 = v2
							str3 = v3
							str4 = v4
							n3 = 10
							flag3 = n3 <= 5
						end
					else
						local v = str4
						str3 = flag
						str4 = v
						n3 = 10
						flag3 = n3 <= 5
					end
				elseif not (fn3(arg) == "") then
					n3 = 1
					flag3 = true
				else
					n3 = 0
					flag3 = n3 <= 5
				end
			else
				if not (n3 <= 2) then
					if not (n3 <= 3) then
						if not (n3 <= 4) then
							if not str4 then
								exitTo = 4
								break
							else
								n3 = 2
								flag3 = n3 <= 5
								continue
							end
						else
							exitTo = 3
							break
						end
					else
						exitTo = 2
						break
					end
				elseif not (n3 <= 0) then
					if not (n3 <= 1) then
						exitTo = 1
						break
					else
						local v = str4
						flag2 = true
						ui.CheckKeyBtn.Text = "⏳ Đang xác thực..."
						local statusLabel = ui.StatusLabel

						if arg2 then
							local v2 = v
							arg = statusLabel
							str3 = "Text"
							str4 = v2
							n3 = 9
							flag3 = n3 <= 5
							continue
						else
							arg = statusLabel
							str3 = "Text"
							str4 = arg2
							n3 = 5
							flag3 = true
							continue
						end
					end
				end

				break
			end
		end

		if exitTo == 1 then
			arg[str3] = str4
			error("devirt: storing a non-empty VM table into a register (at 202:551)")
		end

		if exitTo == 2 then
			return
		end

		if exitTo == 3 then
			return
		end

		if exitTo == 4 then
			n3 = 11
			continue
		end

		if exitTo == 5 then
			n3 = 7
			continue
		end

		if exitTo == 6 then
			n3 = 6
			continue
		end
		break
	end

	fn5("❌ Vui lòng nhập Key để vào RealKid Hub!")
end

ui.GetKeyBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://realkidkey.site/")
	end

	ui.GetKeyBtn.Text = "✅ ĐÃ COPY LINK!"
	fn5("🔗 Link lấy Key (Hạn 3 ngày) đã copy vào Clipboard!")
	task.wait(2)
	ui.GetKeyBtn.Text = "LẤY KEY"
end)

ui.CheckKeyBtn.MouseButton1Click:Connect(function()
	fn7(ui.KeyInput.Text, false)
end)

if isfile and isfile("TrauHub_Save.txt") and readfile then
	local v = fn3(readfile("TrauHub_Save.txt"))
	ui.KeyInput.Text = v
	fn7(v, true)
end

repeat
	task.wait(0.1)
until flag

repeat
	wait()
until game:IsLoaded()

repeat
	wait()
until game:GetService("Players").LocalPlayer

local localPlayer2 = game:GetService("Players").LocalPlayer
local str3 = "RealKidHub/save2/" .. localPlayer2.Name .. ".json"
local v = isfile and readfile and isfile(str3)
local selectedTeam = nil

if v then
	local ok3, result3 = pcall(function()
		return game:GetService("HttpService"):JSONDecode(readfile(str3))
	end)

	local flag3 = ok3 and type(result3) == "table"
	local flag4

	if flag3 then
		flag4 = result3.selected_team == "Marines" or result3.selected_team == "Pirates"
	else
		flag4 = flag3
	end

	local v2 = nil

	if flag4 then
		selectedTeam = result3.selected_team
	else
		selectedTeam = v2
	end
end

getgenv().Team = selectedTeam or "Marines"
local commF = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_")

while not localPlayer2.Character do
	pcall(function()
		commF:InvokeServer("SetTeam", getgenv().Team or "Pirates")
	end)

	task.wait(1)
end

while true do
	wait()
	if not (game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
		continue
	end
	break
end

repeat
	wait()
until workspace:FindFirstChild("Map")

require(game:GetService("ReplicatedStorage").Reparent).Unparent = function()
	return nil
end

task.wait(0.4)

if not game:IsLoaded() then
	game.Loaded:Wait()
end

ply = game:GetService("Players")
plr = ply.LocalPlayer
local character = plr.Character or plr.CharacterAdded:Wait()
local loading

repeat
	loading = plr.PlayerGui:WaitForChild("Main", 9e9):WaitForChild("Loading", 9e9)
	task.wait()
until loading

Root = character:WaitForChild("HumanoidRootPart")
Energy = character:WaitForChild("Energy").Value
replicated = game:GetService("ReplicatedStorage")
Lv = plr:WaitForChild("Data"):WaitForChild("Level").Value
TeleportService = game:GetService("TeleportService")
TW = game:GetService("TweenService")
Lighting = game:GetService("Lighting")
Enemies = workspace:WaitForChild("Enemies")
vim1 = game:GetService("VirtualInputManager")
vim2 = game:GetService("VirtualUser")
TeamSelf = plr.Team
RunSer = game:GetService("RunService")
Stats = game:GetService("Stats")
Boss = {}
BringConnections = {}
MaterialList = {}
NPCList = {}
shouldTween = false
SoulGuitar = false
KenTest = true
debug = false
Sec = 0.3
ClickState = 0
Num_self = 25

plr.CharacterAdded:Connect(function(character2)
	character = character2
	Root = character2:WaitForChild("HumanoidRootPart")
end)

World1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
World2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
World3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089
Dungeons = game.PlaceId == 73902483975735

if World1 then
	Boss = {
		"The Gorilla King",
		"Chef",
		"The Saw",
		"Yeti",
		"Mob Leader",
		"Vice Admiral",
		"Saber Expert",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
		"Ice Admiral",
		"Greybeard",
	}
elseif World2 then
	Boss = {
		"Diamond",
		"Jeremy",
		"Orbitus",
		"Don Swan",
		"Smoke Admiral",
		"Awakened Ice Admiral",
		"Tide Keeper",
		"Darkbeard",
		"Cursed Captain",
		"Order",
	}
elseif World3 then
	Boss = {
		"Stone",
		"Hydra Leader",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"Cake Queen",
		"Longma",
		"Soul Reaper",
	}
end

if World1 then
	MaterialList = { "Leather + Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail" }
elseif World2 then
	MaterialList = {
		"Leather + Scrap Metal",
		"Radioactive Material",
		"Ectoplasm",
		"Mystic Droplet",
		"Magma Ore",
		"Vampire Fang",
	}
elseif World3 then
	MaterialList = {
		"Scrap Metal",
		"Demonic Wisp",
		"Conjured Cocoa",
		"Dragon Scale",
		"Gunpowder",
		"Fish Tail",
		"Mini Tusk",
	}
end

local tbl2 = {
	["Pirate Millionaire"] = CFrame.new(-704.59, 102.5, 5696.68),
	["Pistol Billionaire"] = CFrame.new(-218.3, 140.39, 6088.68),
	["Dragon Crew Warrior"] = CFrame.new(6729, 51.73, -1060.57),
	["Dragon Crew Archer"] = CFrame.new(6758.26, 565.17, 281.79),
	["Hydra Enforcer"] = CFrame.new(4623.86, 1002.3, 507.84),
	["Female Islander"] = CFrame.new(4692.79, 797.98, 858.85),
	["Venomous Assailant"] = CFrame.new(4674.93, 1132.46, 996.31),
	["Marine Commodore"] = CFrame.new(2388.91, 74.3, -7524.43),
	["Marine Rear Admiral"] = CFrame.new(3714.29, 124, -7171.65),
	["Fishman Raider"] = CFrame.new(-10421.25, 331.83, -8364.91),
	["Fishman Captain"] = CFrame.new(-10836.7, 331.83, -8647.97),
	["Forest Pirate"] = CFrame.new(-13473.57, 408.23, -7787.35),
	["Mythological Pirate"] = CFrame.new(-13703.03, 469.85, -7050.03),
	["Jungle Pirate"] = CFrame.new(-11823.74, 331.8, -10593.36),
	["Musketeer Pirate"] = CFrame.new(-13406.02, 391.61, -9783.03),
	["Reborn Skeleton"] = CFrame.new(-8766.81, 142.17, 6061.28),
	["Living Zombie"] = CFrame.new(-10196.96, 138.69, 5955.21),
	["Demonic Soul"] = CFrame.new(-9493.12, 172.17, 6149.69),
	["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
	["Peanut Scout"] = CFrame.new(-1948.4, 9.74, -9984.92),
	["Peanut President"] = CFrame.new(-1992.94, 38.17, -10579.06),
	["Ice Cream Chef"] = CFrame.new(-553.52, 65.88, -11056.8),
	["Ice Cream Commander"] = CFrame.new(-577.62, 65.88, -11308.41),
	["Cookie Crafter"] = CFrame.new(-2380.2, 37.86, -12148.1),
	["Cake Guard"] = CFrame.new(-1552.51, 37.86, -12462.44),
	["Baking Staff"] = CFrame.new(-1869.13, 37.86, -12945.68),
	["Head Baker"] = CFrame.new(-2323.23, 53.57, -12864.22),
	["Cocoa Warrior"] = CFrame.new(77.92, 24.8, -12247.26),
	["Chocolate Bar Battler"] = CFrame.new(717.46, 24.8, -12637.87),
	["Sweet Thief"] = CFrame.new(-140.26, 24.71, -12652.31),
	["Candy Rebel"] = CFrame.new(56.08, 24.86, -12953),
	["Candy Pirate"] = CFrame.new(-1372.53, 32.11, -14506.54),
	["Snow Demon"] = CFrame.new(-865.98, 13.21, -14589.03),
	["Island Boy"] = CFrame.new(-16736.23, 20.54, -131.72),
	["Isle Outlaw"] = CFrame.new(-16122.41, 10.64, -257.35),
	["Sun-kissed Warrior"] = CFrame.new(-16357.31, 20.64, 1005.65),
	["Isle Champion"] = CFrame.new(-16787.32, 20.64, 992.13),
	["Serpent Hunter"] = CFrame.new(-16599.71, 70.59, 1757.91),
	Ghost = CFrame.new(5255.41, 16.63, 455.98),
}

EquipWeapon = function(arg)
	if not arg then
		return
	end
	local character2 = plr.Character
	local v2 = plr.Backpack:FindFirstChild(arg)

	if character2 and character2:FindFirstChild("Humanoid") and v2 then
		character2.Humanoid:EquipTool(v2)
	end
end

weaponSc = function(arg)
	for _, child in pairs(plr.Backpack:GetChildren()) do
		if child:IsA("Tool") then
			if child.ToolTip == arg then
				EquipWeapon(child.Name)
			end
		end
	end
end

local function fn8(arg, arg2)
	local flag3 = not arg
	if flag3 and getgenv().RealKidMenuHopOpening and tick() - getgenv().RealKidMenuHopOpening < 5 then
		return
	end

	if flag3 then
		getgenv().RealKidMenuHopOpening = tick()
	end

	local HttpService2 = game:GetService("HttpService")
	local serverBrowser = game:GetService("ReplicatedStorage"):WaitForChild("__ServerBrowser")
	local str4 = "https://shoptrauroblox.site/api.php"
	local request_3 = request or http_request or syn and syn.request or fluxus and fluxus.request
	local request_4

	if request_3 then
		request_4 = request_3
	else
		request_4 = http and http.request
	end

	local tbl3 = {}

	local function fn9(arg3)
		local flag4 = false
		local flag5 = false
		local v2 = nil

		task.spawn(function()
			local ok3, result3 = pcall(function()
				if request_4 then
					local v3 = request_4({ Url = arg3, Method = "GET" })
					return type(v3) == "table" and v3.Body or v3
				end
				return game:HttpGet(arg3)
			end)

			flag5 = ok3
			v2 = result3
			flag4 = true
		end)

		local n3 = tick() + 5

		while true do
			task.wait()
			if not (flag4 or tick() >= n3) then
				continue
			end
			break
		end

		if not flag4 then
			return nil
		end
		return flag5 and type(v2) == "string" and v2 or nil
	end

	local function fn10(arg3)
		local str5 = tostring(arg3 or "")
		if str5:sub(1, 4) ~= "RK2." then
			return ""
		end

		if tbl3[str5] then
			return tbl3[str5]
		end
		local ok3, result3 = pcall(HttpService2.JSONDecode, HttpService2, fn9(str4 .. "?resolve=" .. HttpService2:UrlEncode(str5)) or "")
		ok3 = ok3 and type(result3) == "table"
		local str6

		if ok3 then
			str6 = tostring(result3.jobId or "")
		else
			str6 = ok3
		end

		str6 = str6 or ""

		if #str6 ~= 36 or str6:find("[^%x%-]") or select(2, str6:gsub("-", "")) ~= 4 then
			str6 = ""
		end

		tbl3[str5] = str6
		return str6
	end

	local function fn11(arg3)
		local v2 = fn9(str4 .. "?placeId=" .. tostring(game.PlaceId) .. (arg3 and "&target=" .. HttpService2:UrlEncode(arg3) or ""))
		if not v2 then
			return {}
		end
		local ok3, result3 = pcall(HttpService2.JSONDecode, HttpService2, v2)
		return ok3 and type(result3) == "table" and result3 or {}
	end

	local function fn12(arg3)
		local tbl4 = {}
		local tbl5 = {}
		local v2 = ipairs
		local tbl6 = arg3 or {}

		for _, v3 in v2(tbl6) do
			for _, v4 in ipairs(fn11(v3)) do
				local str5 = tostring(v4.jobId or "")
				local flag4 = v3 == "Berries"

				if flag4 then
					flag4 = ":" .. tostring(v4.name or "")
				end

				local str6 = str5 .. (flag4 or "")

				if str6 ~= "" and not tbl5[str6] then
					tbl5[str6] = true
					table.insert(tbl4, v4)
				end
			end
		end

		table.sort(tbl4, function(arg4, arg5)
			return (tonumber(arg4.updated_at) or 0) > (tonumber(arg5.updated_at) or 0)
		end)

		return tbl4
	end

	local function fn13(arg3, arg4)
		if arg3 and arg3 ~= "" and arg3 ~= game.JobId then
			if not pcall(function()
				serverBrowser:InvokeServer("teleport", arg3)
			end) then
				return false
			end

			if arg4 then
				local n3 = tick() + 5

				while true do
					task.wait(0.1)
					local robloxPromptGui = game:GetService("CoreGui"):FindFirstChild("RobloxPromptGui")
					local errorPrompt = robloxPromptGui and robloxPromptGui:FindFirstChild("promptOverlay") and robloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
					local tbl4 = {}

					if errorPrompt then
						for _, descendant in ipairs(errorPrompt:GetDescendants()) do
							if descendant:IsA("TextLabel") then
								tbl4[#tbl4 + 1] = descendant.Text
							end
						end
					end

					if errorPrompt and errorPrompt.Visible and table.concat(tbl4, " "):find("772", 1, true) then
						return false
					end

					if not (n3 <= tick()) then
						continue
					end
					break
				end

				return false
			end

			return true
		end

		return false
	end

	if arg then
		arg2 = arg2 or {}
		local v2 = ipairs
		local v3 = fn12(arg)

		for _, v4 in v2(v3) do
			local v5 = fn10(v4.jobId)

			if v5 ~= "" and v5 ~= game.JobId and not arg2[v5] then
				arg2[v5] = true
				if fn13(v5, true) then
					return true
				end
			end
		end

		if next(arg2) then
			table.clear(arg2)
		end

		return false
	end

	local v2 = getrawmetatable(game)
	local namecall = v2.__namecall
	setreadonly(v2, false)
	v2.__namecall = getgenv().RealKidOriginalNamecall

	local ok3, result3 = pcall(function()
		return loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Library/refs/heads/main/redz-V5-remake/main.luau"))()
	end)

	v2.__namecall = namecall
	setreadonly(v2, true)
	if not ok3 or not result3 then
		return
	end

	if not isfolder("realkid_hop_data") then
		makefolder("realkid_hop_data")
	end

	local str5 = "realkid_hop_data" .. "\\" .. game:GetService("Players").LocalPlayer.Name

	if not isfolder(str5) then
		makefolder(str5)
	end

	local v3 = result3:MakeWindow({ Title = "RealKid Hub", SubTitle = "Menu Hop", ScriptFolder = str5 })

	local function fn14(arg3, arg4, arg5)
		local v4 = v3:MakeTab({ Title = arg3 })
		local tbl4 = {}
		local flag4 = false
		v4:AddSection(arg4)

		v4:AddButton({
			Name = "Làm mới danh sách",
			Debounce = 5,
			Callback = function()
				if flag4 then
					return
				end
				flag4 = true

				if not pcall(function()
					v3:Notify({ Title = "Đang quét", Content = "Đang tải dữ liệu...", Duration = 2 })

					for _, v5 in ipairs(tbl4) do
						pcall(function()
							v5:Destroy()
						end)
					end

					tbl4 = {}
					local v5 = fn12(arg5)
					local n3 = 0

					if #v5 > 0 then
						table.insert(tbl4, v4:AddParagraph("Kết quả", "Tìm thấy " .. #v5 .. " server VIP"))

						for _, v6 in ipairs(v5) do
							local str6 = tostring(v6.jobId or "")

							if str6:sub(1, 4) == "RK2." then
								n3 += 1
								local str7 = v6.name == "Core" and "Nhà Máy"

								if not str7 then
									str7 = tostring(v6.name or "Không xác định")
								end

								table.insert(tbl4, v4:AddButton({
									Name = string.format("Vào Server %d: %s", n3, str7),
									Debounce = 3,
									Callback = function()
										v3:Notify({ Title = "Đang Hop", Content = "Chuẩn bị bay tới server", Duration = 3 })
										task.wait(1)
										fn13(fn10(str6))
									end,
								}))
							end
						end
					end

					if n3 == 0 then
						v3:Notify({ Title = "Trống", Content = "Hiện tại không có server nào hoạt động", Duration = 3 })
					end
				end) then
					v3:Notify({ Title = "Lỗi", Content = "Không thể tải danh sách server", Duration = 3 })
				end

				flag4 = false
			end,
		})
	end

	local tbl4 = {
		{ Name = "Fruits", Section = "Săn Trái Hop", Targets = { "AllFruits" } },
		{ Name = "Berries", Section = "Săn Berry", Targets = { "Berries" } },
		{
			Name = "Pink Pig Berry",
			Section = "Săn Berry",
			Targets = { "Pink Pig Berry" },
			HideTab = true,
		},
		{
			Name = "Red Cherry Berry",
			Section = "Săn Berry",
			Targets = { "Red Cherry Berry" },
			HideTab = true,
		},
		{
			Name = "White Cloud Berry",
			Section = "Săn Berry",
			Targets = { "White Cloud Berry" },
			HideTab = true,
		},
		{ Name = "Server 4 Hours", Section = "Server đủ 4 tiếng", Targets = { "Server 4 Hours" } },
		{ Name = "Pirate Raid", Section = "Săn Hải Tặc", Targets = { "Pirate Raid" } },
		{
			Name = "Haki Colors",
			Section = "Săn Công Thức Haki Màu",
			Targets = { "Snow White", "Pure Red", "Winter Sky" },
		},
		{
			Name = "Rip Indra",
			Section = "Rip Indra",
			Targets = { "Rip_Indra", "rip_indra", "rip_indra True Form" },
		},
		{ Name = "Dough King", Section = "Dough King", Targets = { "Dough King" } },
		{ Name = "Cake Queen", Section = "Cake Queen", Targets = { "Cake Queen" } },
		{ Name = "Cake Prince", Section = "Cake Prince", Targets = { "Cake Prince" } },
		{ Name = "Elite Hunter", Section = "Elite Hunter", Targets = { "Diablo", "Deandre", "Urban" } },
		{ Name = "Darkbeard", Section = "Darkbeard", Targets = { "Darkbeard" } },
		{ Name = "Cursed Captain", Section = "Cursed Captain", Targets = { "Cursed Captain" } },
		{
			Name = "Tyrant of Skies",
			Section = "Tyrant of the Skies",
			Targets = { "Tyrant of the Skies" },
		},
		{ Name = "Soul Reaper", Section = "Soul Reaper", Targets = { "Soul Reaper" } },
		{
			Name = "Mirage Island",
			Section = "Mirage Island",
			Targets = { "Mirage Island", "MysticIsland" },
		},
		{
			Name = "Kitsune Island",
			Section = "Kitsune Island",
			Targets = { "Kitsune Island", "KitsuneIsland" },
		},
		{
			Name = "Prehistoric Island",
			Section = "Prehistoric Island",
			Targets = { "Prehistoric Island", "PrehistoricIsland" },
		},
		{ Name = "Near Full Moon", Section = "Sắp Trăng Tròn", Targets = { "Near Full Moon" } },
		{ Name = "Full Moon", Section = "Đang Trăng Tròn", Targets = { "Full Moon 5/5" } },
		{
			Name = "Legendary Swords",
			Section = "Legendary Swords (Sea 2)",
			Targets = { "Shizu", "Oroshi", "Saishi" },
		},
		{ Name = "Factory Raid", Section = "Săn Nhà Máy", Targets = { "Core", "Factory Core" } },
		{ Name = "Sweet Chalice", Section = "Sweet Chalice", Targets = { "Sweet Chalice" } },
		{ Name = "Fist of Darkness", Section = "Fist of Darkness", Targets = { "Fist of Darkness" } },
		{ Name = "God's Chalice", Section = "God's Chalice", Targets = { "God's Chalice" } },
	}

	local tbl5 = {}
	local tbl6 = {}
	local v4 = nil
	local flag4 = false
	local n3 = 0
	local tbl7 = {}

	for _, v5 in ipairs(tbl4) do
		table.insert(tbl5, v5.Name)
		tbl6[v5.Name] = v5.Targets
	end

	local tbl8 = {
		"Galley Pirate",
		"Swan Pirate",
		"Galley Captain",
		"Raider",
		"Mercenary",
		"Vampire",
		"Zombie",
		"Snow Trooper",
		"Winter Warrior",
		"Lab Subordinate",
		"Horned Warrior",
		"Magma Ninja",
		"Lava Pirate",
		"Ship Deckhand",
		"Ship Engineer",
		"Ship Steward",
		"Ship Officer",
		"Arctic Warrior",
		"Snow Lurker",
		"Sea Soldier",
		"Water Fighter",
	}

	local function fn15(arg3)
		local tbl9

		if type(arg3) == "table" then
			tbl9 = arg3
		else
			tbl9 = { arg3 }
		end

		local v5 = replicated

		for _, v6 in ipairs({ workspace:FindFirstChild("Enemies"), v5 }) do
			if v6 then
				for _, child in ipairs(v6:GetChildren()) do
					local humanoid = child:FindFirstChild("Humanoid")
					local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
					if child:IsA("Model") and table.find(tbl9, child.Name) and (v6 == replicated or humanoid and humanoidRootPart and humanoid.Health > 0) then
						return true
					end
				end
			end
		end

		return false
	end

	local tbl9 = {
		["Mirage Island"] = { "Mirage Island", "MysticIsland" },
		["Kitsune Island"] = { "Kitsune Island", "KitsuneIsland" },
		["Prehistoric Island"] = { "Prehistoric Island", "PrehistoricIsland" },
	}

	local function fn16(arg3)
		local flag5 = tbl9[arg3]
		local worldOrigin = workspace:FindFirstChild("_WorldOrigin")
		local map = workspace:FindFirstChild("Map")
		worldOrigin = worldOrigin and worldOrigin:FindFirstChild("Locations")

		if flag5 then
			flag5 = worldOrigin and worldOrigin:FindFirstChild(flag5[1]) ~= nil or map and map:FindFirstChild(flag5[2]) ~= nil
		end

		return flag5 or false
	end

	local function fn17()
		for _, child in ipairs(workspace:GetChildren()) do
			if child.Name ~= "Fruit1" and (child:IsA("Tool") or child:IsA("Model")) and string.find(child.Name, "Fruit", 1, true) and (child:FindFirstChild("Handle") or child:FindFirstChildWhichIsA("BasePart")) then
				return true
			end
		end

		return false
	end

	local tbl10 = { ["Sweet Chalice"] = true, ["Fist of Darkness"] = true, ["God's Chalice"] = true }

	local function fn18(arg3)
		local v5 = ipairs
		local Players2 = game:GetService("Players")

		for _, player in v5(Players2:GetPlayers()) do
			local backpack = player:FindFirstChild("Backpack")
			local character2 = player.Character
			if backpack and backpack:FindFirstChild(arg3) or character2 and character2:FindFirstChild(arg3) then
				return true
			end
		end

		return false
	end

	local function fn19(arg3, arg4)
		local str6 = arg3 == "Haki Colors" and "ColorsDealer"
		local str7

		if str6 then
			str7 = str6
		else
			str7 = arg3 == "Legendary Swords" and "LegendarySwordDealer"
		end

		if not str7 then
			return false
		end

		local ok4, result4 = pcall(function()
			return replicated.Remotes.CommF_:InvokeServer(str7, "1")
		end)

		return ok4 and table.find(arg4, result4) ~= nil
	end

	local function fn20(arg3)
		local ok4, result4 = pcall(function()
			if type(Getmoon) == "function" then
				return Getmoon()
			end
			local sky = Lighting:FindFirstChild("Sky") or Lighting:FindFirstChild("FantasySky")
			return sky and sky.MoonTextureId or ""
		end)

		if not ok4 then
			return false
		end
		local clockTime = Lighting.ClockTime

		if arg3 == "Full Moon" then
			local flag5 = result4 == "http://www.roblox.com/asset/?id=9709149431"
			local flag6

			if flag5 then
				flag6 = clockTime <= 5 or clockTime > 18
			else
				flag6 = flag5
			end

			return flag6
		end

		if arg3 == "Near Full Moon" then
			return result4 == "http://www.roblox.com/asset/?id=9709149052" or result4 == "http://www.roblox.com/asset/?id=9709149431" and clockTime > 12 and clockTime <= 18
		end
		return false
	end

	local function fn21(arg3, arg4)
		if arg3 == "Server 4 Hours" then
			local locations = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")

			if locations then
				for _, child in ipairs(locations:GetChildren()) do
					local attribute = child:GetAttribute("TimeIn")
					if type(attribute) == "number" then
						local n4 = os.time() - attribute
						return n4 >= 14400 and n4 < 16200
					end
				end
			end

			return false
		end

		if arg3 == "Berries" or arg3 == "Pink Pig Berry" or arg3 == "Red Cherry Berry" or arg3 == "White Cloud Berry" then
			local tbl11 = { ["Pink Pig Berry"] = true, ["Red Cherry Berry"] = true, ["White Cloud Berry"] = true }

			for _, v5 in ipairs(game:GetService("CollectionService"):GetTagged("BerryBush")) do
				for _, v6 in pairs(v5:GetAttributes()) do
					if tbl11[v6] and (arg3 == "Berries" or table.find(arg4, v6)) then
						return true
					end
				end
			end

			return false
		end

		if arg3 == "Fruits" or table.find(arg4, "AllFruits") then
			return fn17()
		end

		if tbl9[arg3] then
			return fn16(arg3)
		end

		if arg3 == "Pirate Raid" then
			return fn15(tbl8)
		end

		if tbl10[arg3] then
			return fn18(arg3)
		end

		if arg3 == "Full Moon" or arg3 == "Near Full Moon" then
			return fn20(arg3)
		end

		if arg3 == "Haki Colors" or arg3 == "Legendary Swords" then
			return fn19(arg3, arg4)
		end
		return fn15(arg4)
	end

	local function fn22(arg3, arg4, arg5, arg6)
		v3:Notify({
			Title = "Auto Hop",
			Content = "Đã tìm thấy " .. tostring(arg3) .. " trong server hiện tại",
			Duration = 4,
		})

		local now = nil

		while flag4 and arg5 == n3 and v4 == arg3 do
			if fn21(arg3, arg4) then
				now = nil
			else
				now = now or tick()
				if tick() - now >= arg6 then
					break
				end
			end

			task.wait(1)
		end

		if flag4 and arg5 == n3 and v4 == arg3 then
			v3:Notify({ Title = "Auto Hop", Content = tostring(arg3) .. " đã hết, tiếp tục hop", Duration = 3 })
		end

		return false
	end

	local function fn23(arg3, arg4)
		local v5 = tbl6[arg3]

		if not v5 then
			flag4 = false
			v3:Notify({ Title = "Auto Hop", Content = "Chưa chọn sự kiện", Duration = 3 })
			return true
		end

		local n4 = (arg3 == "Fruits" or arg3 == "Pirate Raid") and 5 or 3
		local v6 = fn21(arg3, v5)

		if not v6 then
			task.wait(n4)
			if not flag4 or arg4 ~= n3 or v4 ~= arg3 then
				return true
			end
			v6 = fn21(arg3, v5)
		end

		if v6 then
			return fn22(arg3, v5, arg4, n4)
		end
		local v7 = fn12(v5)

		for _, v8 in ipairs(v7) do
			local v9 = fn10(v8.jobId)

			if v9 and v9 ~= "" and v9 ~= game.JobId and not tbl7[v9] then
				tbl7[v9] = true
				v3:Notify({ Title = "Auto Hop", Content = "Đang hop " .. tostring(arg3), Duration = 3 })
				task.wait(0.5)
				fn13(v9, true)

				v3:Notify({
					Title = "Auto Hop",
					Content = "Server đầy/lỗi dịch chuyển, thử server khác",
					Duration = 3,
				})
			end
		end

		if next(tbl7) then
			tbl7 = {}
		end

		v3:Notify({ Title = "Auto Hop", Content = "Chưa tìm thấy server cho " .. tostring(arg3), Duration = 3 })
		return false
	end

	local v5 = v3:MakeTab({ Title = "Auto Hop" })
	v5:AddSection("Auto Hop")

	v5:AddDropdown({
		Name = "Select Event",
		Options = tbl5,
		Flag = "SelectedAutoHopEvent",
		Callback = function(arg3)
			v4 = arg3
			tbl7 = {}
		end,
	})

	v5:AddToggle({
		Name = "Auto Hop Selected Event",
		Default = false,
		Flag = "AutoHopSelectedEvent",
		Callback = function(arg3)
			flag4 = arg3
			n3 += 1
			tbl7 = {}
			local v6 = n3

			if arg3 then
				task.spawn(function()
					task.wait(0.5)

					while true do
						if flag4 and v6 == n3 then
							if not fn23(v4, v6) then
								task.wait(5)
								continue
							end
						end

						break
					end
				end)
			end
		end,
	})

	for _, v6 in ipairs(tbl4) do
		if not v6.HideTab then
			fn14(v6.Name, v6.Section, v6.Targets)
		end
	end
end

local rocks = workspace:FindFirstChild("Rocks")

if rocks then
	rocks:Destroy()
end

if World1 or World2 or World3 then
	local lightingLayers = game:GetService("Lighting"):FindFirstChild("LightingLayers")

	if lightingLayers and lightingLayers:FindFirstChild("DarkFog") then
		lightingLayers.DarkFog:Destroy()
	end

	task.spawn(function()
		pcall(function()
			local waterCFrame = game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("WaterCFrame", 3)

			if waterCFrame then
				waterCFrame.Disabled = true
			end
		end)
	end)
end

local index = {}
index.__index = index

index.Alive = function(arg)
	arg = arg and arg:FindFirstChild("Humanoid")
	return arg and arg.Health > 0
end

index.Kill = function(arg, arg2, arg3, arg4)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	local humanoid = arg:FindFirstChild("Humanoid")
	if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
		return
	end
	task.wait(Sec)
	EquipWeapon(_G.SelectWeapon)
	local tool = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
	local toolTip = tool and tool.ToolTip or ""
	tool = tool and tool.Name or ""
	local magicFastFruit = toolTip == "Blox Fruit" or _G.MagicFastFruit
	arg4 = arg4 or _G.FarmHeight
	local flag3 = typeof(arg3) == "CFrame" and arg3
	local cframe

	if flag3 then
		cframe = flag3
	else
		cframe = typeof(arg3) == "Vector3" and CFrame.new(arg3) or humanoidRootPart.CFrame
	end

	PosMon = cframe.Position

	if string.find(tool, "Gas") then
		_tp(cframe * CFrame.new(0, 0, 15))
	elseif magicFastFruit then
		_tp(cframe * CFrame.new(0, 10, 0) * CFrame.Angles(0, 1.5707963267948966, 0))
	else
		_tp(cframe * CFrame.new(0, arg4, 0) * CFrame.Angles(0, 3.1415926535897931, 0))
	end

	if RandomCFrame then
		magicFastFruit = magicFastFruit and 20 or arg4
		local v2 = ipairs
		local tbl3 = {}
		local cframe2 = CFrame.new(0, magicFastFruit, 25)
		local cframe3 = CFrame.new(25, magicFastFruit, 0)
		local cframe4 = CFrame.new(-25, magicFastFruit, 0)
		local cframe5 = CFrame.new(0, magicFastFruit, 25)
		local cframe6 = CFrame.new
		tbl3[1] = cframe2
		tbl3[2] = cframe3
		tbl3[3] = cframe4
		tbl3[4] = cframe5

		do
			local values = table.pack(cframe6(-25, magicFastFruit, 0))
			table.move(values, 1, values.n, 5, tbl3)
		end

		for _, v3 in v2(tbl3) do
			task.wait(0.5)

			if humanoid.Health > 0 then
				_tp(cframe * v3)
			end
		end
	end
end

index.SeaSkillEffects = setmetatable({}, { __mode = "k" })
index.SeaSkillDodgeUntil = 0

index.KillSea = function(arg, arg2)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return
	end

	if not arg:GetAttribute("Locked") then
		arg:SetAttribute("Locked", humanoidRootPart.CFrame)
	end

	if _G.SelectWeapon and type(EquipWeapon) == "function" then
		EquipWeapon(_G.SelectWeapon)
	end

	local character2 = game.Players.LocalPlayer.Character
	character2 = character2 and character2:FindFirstChildOfClass("Tool")
	local toolTip = character2 and character2.ToolTip or ""
	local name = character2 and character2.Name or ""
	local magicFastFruit = toolTip == "Blox Fruit" or _G.MagicFastFruit
	local now = tick()

	if workspace:FindFirstChild("_WorldOrigin") then
		for _, child in ipairs(workspace._WorldOrigin:GetChildren()) do
			if (child.Name == "ChargeUp" or child.Name == "SpinSlash") and not index.SeaSkillEffects[child] then
				index.SeaSkillEffects[child] = true
				index.SeaSkillDodgeUntil = now + 1.25
			end
		end
	end

	local flag3 = now < index.SeaSkillDodgeUntil

	if string.find(name, "Gas") then
		local position = humanoidRootPart.Position
		_tp(CFrame.lookAt((humanoidRootPart.CFrame * CFrame.new(0, 3, 15)).Position, position))
	elseif magicFastFruit then
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(0, 1.5707963267948966, 0))
	elseif flag3 then
		_tp(arg:GetPivot() * CFrame.new(0, 200, 0))
	else
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 45, 0))
	end
end

index.Sword = function(arg, arg2, arg3)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	local humanoid = arg:FindFirstChild("Humanoid")
	if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
		return
	end

	if not arg:GetAttribute("Locked") then
		arg:SetAttribute("Locked", humanoidRootPart.CFrame)
	end

	PosMon = arg:GetAttribute("Locked").Position + Vector3.new(0, 3, 0)
	task.wait(Sec)

	if arg3 then
		EquipWeapon(arg3)
	else
		weaponSc("Sword")
	end

	if not humanoidRootPart.Parent then
		return
	end
	_tp(humanoidRootPart.CFrame * CFrame.new(0, 30, 0))

	if RandomCFrame then
		local v2 = ipairs
		local tbl3 = {}
		local cframe = CFrame.new(0, 30, 25)
		local cframe2 = CFrame.new(25, 30, 0)
		local cframe3 = CFrame.new(-25, 30, 0)
		local cframe4 = CFrame.new(0, 30, 25)
		local cframe5 = CFrame.new
		tbl3[1] = cframe
		tbl3[2] = cframe2
		tbl3[3] = cframe3
		tbl3[4] = cframe4

		do
			local values = table.pack(cframe5(-25, 30, 0))
			table.move(values, 1, values.n, 5, tbl3)
		end

		for _, v3 in v2(tbl3) do
			task.wait(Sec)
			_tp(humanoidRootPart.CFrame * v3)
		end
	end
end

index.Mas = function(arg, arg2)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	local humanoid = arg:FindFirstChild("Humanoid")
	if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
		return
	end

	if not arg:GetAttribute("Locked") then
		arg:SetAttribute("Locked", humanoidRootPart.CFrame)
	end

	local flag3 = humanoid.Health / humanoid.MaxHealth * 100 <= _G.MasteryHealthPercent
	PosMon = arg:GetAttribute("Locked").Position + (flag3 and Vector3.new(0, 20, 0) or Vector3.new(0, 3, 0))
	task.wait(0.1)
	if not humanoidRootPart.Parent then
		return
	end

	if flag3 then
		weaponSc("Blox Fruit")
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 20, 0))
		UseGlobalSkills("Blox Fruit")
	else
		weaponSc("Melee")
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 30, 0))
	end
end

index.Masgun = function(arg, arg2)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	local humanoid = arg:FindFirstChild("Humanoid")
	if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
		return
	end

	if not arg:GetAttribute("Locked") then
		arg:SetAttribute("Locked", humanoidRootPart.CFrame)
	end

	local flag3 = humanoid.Health / humanoid.MaxHealth * 100 <= _G.MasteryHealthPercent
	PosMon = arg:GetAttribute("Locked").Position + Vector3.new(0, 3, 0)
	task.wait(0.1)
	if not humanoidRootPart.Parent then
		return
	end

	if flag3 then
		weaponSc("Gun")
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 35, 8))
		UseGlobalSkills("Gun")
	else
		weaponSc("Melee")
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 30, 0))
	end
end

CheckCakePrinceSkill = function()
	local character2 = plr.Character
	character2 = character2 and character2:FindFirstChild("HumanoidRootPart")
	if not character2 then
		return false
	end

	for _, child in ipairs(workspace._WorldOrigin:GetChildren()) do
		if (child.Name == "Ring" or child.Name == "Fist") and child:IsA("BasePart") and (child.Position - character2.Position).Magnitude < 300 then
			return true
		end
	end

	return false
end

statsSetings = function(arg, arg2)
	if arg == "Melee" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Melee", arg2)
		end
	elseif arg == "Defense" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Defense", arg2)
		end
	elseif arg == "Sword" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Sword", arg2)
		end
	elseif arg == "Gun" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Gun", arg2)
		end
	elseif arg == "Devil" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", arg2)
		end
	end
end

local tbl3 = {}

if Boss then
	for i = 1, #Boss do
		tbl3[Boss[i]] = true
	end
end

local n3 = 0
local n4 = 0

BringEnemy = function(arg, arg2)
	if not _B then
		for _, child in ipairs(workspace.Enemies:GetChildren()) do
			local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
			humanoidRootPart = humanoidRootPart and humanoidRootPart:FindFirstChild("dutditattach")

			if humanoidRootPart then
				humanoidRootPart:Destroy()
			end
		end

		return
	end

	if not index.Alive(plr.Character) then
		return
	end
	arg = arg or PosMon
	local position

	if typeof(arg) == "CFrame" then
		position = arg.Position
	else
		position = arg
	end

	local flag3 = typeof(position) ~= "Vector3"

	if not flag3 then
		flag3 = not (plr.Character and plr.Character:FindFirstChild("HumanoidRootPart"))
	end

	if flag3 then
		return
	end
	local now = tick()
	if now - n4 < 0.2 then
		return
	end
	n4 = now

	if sethiddenproperty and now - n3 >= 1 then
		n3 = now
		pcall(sethiddenproperty, plr, "SimulationRadius", 2000)
	end

	local bringRange = _G.BringRange or 0
	local mobM = _G.MobM or 0
	local n5 = 0

	for _, child in ipairs(workspace.Enemies:GetChildren()) do
		local humanoid = child:FindFirstChild("Humanoid")
		local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

		if humanoid and humanoidRootPart then
			local dutditattach = humanoidRootPart:FindFirstChild("dutditattach")

			if tbl3[child.Name] or arg2 and not arg2[child.Name] or humanoid.Health <= 0 or (humanoidRootPart.Position - position).Magnitude > bringRange or n5 >= mobM then
				if dutditattach then
					dutditattach:Destroy()
				end
			else
				local flag4 = humanoidRootPart.ReceiveAge == 0 and not humanoidRootPart.Anchored

				if isnetworkowner then
					local ok3, result3 = pcall(isnetworkowner, humanoidRootPart)

					if ok3 and result3 == true then
						flag4 = not humanoidRootPart.Anchored
					end
				end

				if not flag4 then
					if dutditattach then
						dutditattach:Destroy()
					end
				else
					n5 += 1

					if not dutditattach then
						local walkSpeed = humanoid.WalkSpeed
						local jumpPower = humanoid.JumpPower
						local autoRotate = humanoid.AutoRotate
						local platformStand = humanoid.PlatformStand
						local tbl4 = {}

						for _, child2 in ipairs(child:GetChildren()) do
							if child2:IsA("BasePart") then
								tbl4[child2] = child2.CanCollide
							end
						end

						dutditattach = Instance.new("Attachment")
						dutditattach.Name = "dutditattach"
						dutditattach.Parent = humanoidRootPart
						local random = math.random
						dutditattach:SetAttribute("SavedOffset", Vector3.new(math.random(-3, 3), 0, random(-3, 3)))

						dutditattach.Destroying:Connect(function()
							if humanoid.Parent and humanoid.Health > 0 then
								local v2 = humanoid
								local v3 = humanoid
								local v4 = humanoid
								local v5 = jumpPower
								local v6 = autoRotate
								local v7 = platformStand
								humanoid.WalkSpeed = walkSpeed
								v2.JumpPower = v5
								v3.AutoRotate = v6
								v4.PlatformStand = v7
							end

							for k, v2 in pairs(tbl4) do
								if k.Parent then
									k.CanCollide = v2
								end
							end
						end)
					end

					for _, child2 in ipairs(child:GetChildren()) do
						if child2:IsA("BasePart") and child2.CanCollide then
							child2.CanCollide = false
						end
					end

					humanoid.WalkSpeed = 0
					humanoid.JumpPower = 0
					humanoid.AutoRotate = false

					if not humanoid.PlatformStand then
						humanoid.PlatformStand = true
					end

					humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
					humanoidRootPart.AssemblyAngularVelocity = Vector3.zero

					if not dutditattach:FindFirstChild("dutditaglin") then
						local alignPosition = Instance.new("AlignPosition")
						local oneAttachment = Enum.PositionAlignmentMode.OneAttachment
						local position2 = position + dutditattach:GetAttribute("SavedOffset")
						alignPosition.Name = "dutditaglin"
						alignPosition.Attachment0 = dutditattach
						alignPosition.Mode = oneAttachment
						alignPosition.MaxForce = 1000000
						alignPosition.MaxVelocity = 350
						alignPosition.Responsiveness = 40
						alignPosition.Position = position2
						alignPosition.Parent = dutditattach
						local alignOrientation = Instance.new("AlignOrientation")
						local oneAttachment2 = Enum.OrientationAlignmentMode.OneAttachment
						local cframe = CFrame.new()
						alignOrientation.Name = "dutditorient"
						alignOrientation.Attachment0 = dutditattach
						alignOrientation.Mode = oneAttachment2
						alignOrientation.MaxTorque = 1000000
						alignOrientation.Responsiveness = 40
						alignOrientation.CFrame = cframe
						alignOrientation.Parent = dutditattach
					else
						local dutditaglin = dutditattach:FindFirstChild("dutditaglin")

						if dutditaglin then
							local position2 = position + (dutditattach:GetAttribute("SavedOffset") or Vector3.zero)

							if (dutditaglin.Position - position2).Magnitude > 0.1 then
								dutditaglin.Position = position2
							end
						end
					end
				end
			end
		end
	end
end

Useskills = function(arg, arg2)
	if ({ Melee = true, Sword = true, ["Blox Fruit"] = true, Gun = true })[arg] then
		weaponSc(arg)
		local v2 = Enum.KeyCode[arg2]

		if v2 then
			local n5 = tonumber(_G.GlobalSkillHold and _G.GlobalSkillHold[arg2]) or 0.01

			task.spawn(function()
				vim1:SendKeyEvent(true, v2, false, game)
				task.wait(n5)
				vim1:SendKeyEvent(false, v2, false, game)
			end)
		end
	elseif arg == "nil" and arg2 == "Y" then
		task.spawn(function()
			vim1:SendKeyEvent(true, Enum.KeyCode.Y, false, game)
			task.wait(0.01)
			vim1:SendKeyEvent(false, Enum.KeyCode.Y, false, game)
		end)
	end
end

local v2 = getrawmetatable(game)
local namecall = v2.__namecall

if not getgenv().RealKidOriginalNamecall then
	getgenv().RealKidOriginalNamecall = namecall
end

setreadonly(v2, false)
v2.__namecall = newcclosure(function(...)local U,I={...},tostring((getnamecallmethod()));if I=="FireServer"then if tostring(U[1])=="RemoteEvent"then local J=U[2];local t=tostring(J);if t~="true"and t~="false"then if(_G.FarmMastery_G and not SoulGuitar or _G.FarmMastery_Dev or _G.FarmBlazeEM or _G.Prehis_Skills or _G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.AutoTrialRace or _G.Defeating or _G.Auto_RaceV3 or _G.AimMethod and ABmethod=="Auto Aimbots")and MousePos~=nil then local t=typeof(J);if t=="Vector3"or t=="vector"then U[2]=MousePos;return  namecall (unpack(U));elseif t=="table"then local t={};for s,E in pairs(J)do local J=typeof(E);if J=="Vector3"or J=="vector"then t[s]=MousePos;elseif J=="CFrame"and typeof(E.Rotation)=="CFrame"then t[s]=CFrame.new(MousePos)*E.Rotation;else t[s]=E;end;end;U[2]=t;return  namecall (unpack(U));end;end;end;end;elseif I=="InvokeServer"then local I=U[1];if typeof(I)=="Instance"and I.ClassName=="RemoteFunction"and I.Name~="CommF_"then local I=tostring(U[2]);if I=="X"or I=="Z"or I=="C"or I=="V"then if(_G.Auto_RaceV3 or _G.AimMethod and ABmethod=="Auto Aimbots")and MousePos~=nil then if I=="Z"or I=="C"or I=="V"then U[3]=MousePos;elseif I=="X"then U[3]=MousePos;if _G.AimTarget then U[4]=_G.AimTarget;end;end;return  namecall (unpack(U));end;end;end;end;return  namecall (...);end)
setreadonly(v2, true)

GetConnectionEnemies = function(arg, arg2)
	local character2 = plr.Character
	character2 = character2 and character2:FindFirstChild("HumanoidRootPart")
	if not character2 then
		return nil
	end
	local position = character2.Position
	local flag3 = typeof(arg) == "table"
	local huge = math.huge
	local v3 = nil

	for _, child in ipairs(Enemies:GetChildren()) do
		if child:IsA("Model") then
			if flag3 and table.find(arg, child.Name) or not flag3 and child.Name == arg then
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
				local humanoid = child:FindFirstChild("Humanoid")

				if humanoidRootPart and humanoid and humanoid.Health > 0 then
					local magnitude = (humanoidRootPart.Position - position).Magnitude

					if magnitude < huge then
						huge = magnitude
						v3 = child
					end
				end
			end
		end
	end

	if not v3 and not arg2 then
		for _, child in ipairs(replicated:GetChildren()) do
			if child:IsA("Model") then
				if flag3 and table.find(arg, child.Name) or not flag3 and child.Name == arg then
					local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
					local humanoid = child:FindFirstChild("Humanoid")
					if humanoidRootPart and humanoid and humanoid.Health > 0 then
						return child
					end
				end
			end
		end
	end

	return v3
end

LowCpu = function()
	local v3 = workspace
	local Lighting_ = game:GetService("Lighting")
	local terrain = v3.Terrain
	terrain.WaterWaveSize = 0
	terrain.WaterWaveSpeed = 0
	terrain.WaterReflectance = 0
	terrain.WaterTransparency = 0
	Lighting_.GlobalShadows = false
	Lighting_.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"

	for _, descendant in ipairs(game:GetDescendants()) do
		if descendant:IsA("BasePart") and not descendant:IsA("Terrain") then
			descendant.Material = "Plastic"
			descendant.Reflectance = 0

			if descendant:IsA("MeshPart") then
				descendant.TextureID = 10385902758728956
			end
		elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
			descendant.Transparency = 1
		elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
			descendant.Lifetime = NumberRange.new(0)
		elseif descendant:IsA("Explosion") then
			descendant.BlastPressure = 1
			descendant.BlastRadius = 1
		elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
			descendant.Enabled = false
		end
	end

	for _, child in ipairs(Lighting_:GetChildren()) do
		if child:IsA("PostEffect") then
			child.Enabled = false
		end
	end
end

local function fn9()
	local character2 = plr.Character
	return character2 and character2:FindFirstChild("HumanoidRootPart")
end

CheckBoat = function()
	local v3 = fn9()
	if not v3 then
		return nil
	end
	local n5 = 7000
	local v4 = nil

	for _, child in pairs(workspace.Boats:GetChildren()) do
		local vehicleSeat = child:FindFirstChildWhichIsA("VehicleSeat")

		if vehicleSeat then
			local magnitude = (v3.Position - vehicleSeat.Position).Magnitude
			if not (magnitude <= 3000) then
				continue
			end

			if _G.TargetBoatOwner == "My Boat" then
				local value = child:FindFirstChild("Owner") and child.Owner.Value

				if value then
					local name = plr.Name
					value = tostring(child.Owner.Value) == name
				end

				if value then
					return child
				end
				continue
			end

			if _G.TargetBoatOwner == "Nearest Boat" then
				if magnitude < n5 then
					n5 = magnitude
					v4 = child
				end
			end
		end
	end

	if _G.TargetBoatOwner == "Nearest Boat" then
		return v4
	end
	return nil
end

CheckEnemiesBoat = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "FishBoat" and child:FindFirstChild("Health") and child.Health.Value > 0 and child:FindFirstChild("Engine") then
			if (child.Engine.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckPirateGrandBrigade = function(arg)
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if (child.Name == "PirateGrandBrigade" or child.Name == "PirateBrigade") and child:FindFirstChild("Health") and child.Health.Value > 0 and child:FindFirstChild("Engine") then
			if (child.Engine.Position - v3.Position).Magnitude <= (arg or 1200) then
				return true
			end
		end
	end

	return false
end

CheckShark = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Shark" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckTerrorShark = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Terrorshark" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1600 then
				return true
			end
		end
	end

	return false
end

CheckPiranha = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Piranha" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckFishCrew = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Fish Crew Member" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckHauntedCrew = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Haunted Crew Member" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckSeaBeast = function()
	local character2 = game.Players.LocalPlayer.Character
	if not character2 or not character2:FindFirstChild("HumanoidRootPart") then
		return false
	end
	local humanoidRootPart = character2.HumanoidRootPart

	for _, child in pairs(workspace.SeaBeasts:GetChildren()) do
		if child.Name == "SeaBeast1" and child:FindFirstChild("HumanoidRootPart") then
			if child:FindFirstChild("Health") and child.Health.Value > 0 then
				if (child.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude <= 1200 then
					return true
				end
			end
		end
	end

	return false
end

CheckFrozenDimension = function()
	local locations = workspace._WorldOrigin.Locations
	if locations and locations:FindFirstChild("Frozen Dimension") then
		return true
	end
	return false
end

collectFruits = function(arg)
	if arg then
		local character2 = plr.Character

		for _, child in pairs(workspace:GetChildren()) do
			if string.find(child.Name, "Fruit") then
				child.Handle.CFrame = character2.HumanoidRootPart.CFrame
			end
		end
	end
end

Getmoon = function()
	if World1 then
		return Lighting.FantasySky.MoonTextureId
	end

	if World2 then
		return Lighting.FantasySky.MoonTextureId
	end

	if World3 then
		return Lighting.Sky.MoonTextureId
	end
end

DropFruits = function()
	local v3 = next
	local children, v4 = plr.Backpack:GetChildren()

	for _, v5 in v3, children, v4 do
		if string.find(v5.Name, "Fruit") then
			EquipWeapon(v5.Name)
			task.wait(0.1)

			if plr.PlayerGui.Main.Dialogue.Visible == true then
				plr.PlayerGui.Main.Dialogue.Visible = false
			end

			EquipWeapon(v5.Name)
			plr.Character:FindFirstChild(v5.Name).EatRemote:InvokeServer("Drop")
		end
	end

	for _, child in pairs(plr.Character:GetChildren()) do
		if string.find(child.Name, "Fruit") then
			EquipWeapon(child.Name)
			task.wait(0.1)

			if plr.PlayerGui.Main.Dialogue.Visible == true then
				plr.PlayerGui.Main.Dialogue.Visible = false
			end

			EquipWeapon(child.Name)
			plr.Character:FindFirstChild(child.Name).EatRemote:InvokeServer("Drop")
		end
	end
end

GetBP = function(arg)
	return plr.Backpack:FindFirstChild(arg) or plr.Character:FindFirstChild(arg)
end

error("devirt: value <luasym.LuaFunc object at 0x000001CAB9EB2020> in an expression (at 104:1806)")
