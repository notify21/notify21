repeat
	wait();
until game.Players.LocalPlayer 
local a = "https://raw.githubusercontent.com/";
local b = "xSync-gg/Source/main/V3%20Ui";
local a = a .. b;
local a = loadstring(game:HttpGet(a))();
local a = a:Window("Blox Fruit");
local c = a:Tab("Main", "rbxassetid://15712703260");
local d = a:Tab("Setting", "rbxassetid://15712711639");
local e = a:Tab("Other Farm", "rbxassetid://15712717270");
local f = a:Tab("Stats", "rbxassetid://15712723981");
local g = a:Tab("Teleport", "rbxassetid://15712738876");
local h = a:Tab("Player", "rbxassetid://15712750195");
local i = a:Tab("Devil Fruit", "rbxassetid://15712758182");
local j = a:Tab("Raid", "rbxassetid://15712763124");
local k = a:Tab("Shop", "rbxassetid://15712767144");
local l = a:Tab("Misc", "rbxassetid://15712771666");
local m = a:Tab("Race V4", "rbxassetid://15712776421");
local n = a:Tab("Event", "rbxassetid://15806749681");
assert(getrawmetatable);
grm = getrawmetatable(game);
setreadonly(grm, false);
old = grm.__namecall;
grm.__namecall = newcclosure(function(self, ...)
	local args = {...};
	if (tostring(args[1]) == "TeleportDetect") then
		return;
	elseif (tostring(args[1]) == "CHECKER_1") then
		return;
	elseif (tostring(args[1]) == "CHECKER") then
		return;
	elseif (tostring(args[1]) == "GUI_CHECK") then
		return;
	elseif (tostring(args[1]) == "OneMoreTime") then
		return;
	elseif (tostring(args[1]) == "checkingSPEED") then
		return;
	elseif (tostring(args[1]) == "BANREMOTE") then
		return;
	elseif (tostring(args[1]) == "PERMAIDBAN") then
		return;
	elseif (tostring(args[1]) == "KICKREMOTE") then
		return;
	elseif (tostring(args[1]) == "BR_KICKPC") then
		return;
	elseif (tostring(args[1]) == "BR_KICKMOBILE") then
		return;
	end
	return old(self, ...);
end);
getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync;
getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play;
_G.setfflag = true;
spawn(function()
	while wait() do
		if _G.setfflag then
			setfflag("AbuseReportScreenshot", "False");
			setfflag("AbuseReportScreenshotPercentage", "0");
		end
	end
end);
_G.SafeFarm = true;
spawn(function()
	while wait() do
		if _G.SafeFarm then
			for o, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
				if v:IsA("LocalScript") then
					if ((v.Name == "General") or (v.Name == "Shiftlock") or (v.Name == "FallDamage") or (v.Name == "4444") or (v.Name == "CamBob") or (v.Name == "JumpCD") or (v.Name == "Looking") or (v.Name == "Run")) then
						v:Destroy();
					end
				end
			end
			for o, v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
				if v:IsA("LocalScript") then
					if ((v.Name == "RobloxMotor6DBugFix") or (v.Name == "Clans") or (v.Name == "Codes") or (v.Name == "CustomForceField") or (v.Name == "MenuBloodSp") or (v.Name == "PlayerList")) then
						v:Destroy();
					end
				end
			end
		else
			game.Players.LocalPlayer:Kick("Please don't turn off safe farm if you don't want to get banned");
		end
	end
end);
if (game.PlaceId == 2753915549) then
	World1 = true;
elseif (game.PlaceId == 4442272183) then
	World2 = true;
elseif (game.PlaceId == 7449423635) then
	World3 = true;
end
function CheckQuest()
	local p = game.Players.LocalPlayer.Data.Level.Value;
	local q = 0;
	for NameQuest, r in pairs(require(game.ReplicatedStorage.Quests)) do
		if ((NameQuest ~= "BartiloQuest") and (NameQuest ~= "CitizenQuest")) then
			for LevelQuest, s in pairs(r) do
				for t, u in pairs(s.Task) do
					QuestReq2 = u;
				end
				if (QuestReq2 ~= 1) then
					if ((s.LevelReq <= p) and (s.LevelReq >= q)) then
						RealQuestData = {NameQuest=NameQuest,LevelQuest=LevelQuest,LevelPassed=true,NameMon=s.Name,LevelReq=s.LevelReq};
						q = s.LevelReq;
					end
				end
			end
		end
	end
	if ((p >= 700) and World1) then
		Mon = "Galley Captain";
		LevelQuest = 2;
		NameQuest = "FountainQuest";
	elseif ((p >= 1500) and World2) then
		Mon = "Water Fighter";
		LevelQuest = 2;
		NameQuest = "ForgottenQuest";
	else
		Mon = RealQuestData.NameMon;
		LevelQuest = RealQuestData.LevelQuest;
		NameQuest = RealQuestData.NameQuest;
	end
	NameMon = relmon[Mon] or Mon;
	CFrameQuest = QuestPoint[NameQuest] + Vector3.new(0, 100, 0);
	CFrameMon = EnemySpawn[NameMon];
end
relmon = {["Gorilla King"]="The Gorilla King",["Mil. Soldier"]="Military Soldier",["Mil. Spy"]="Military Spy",["Swan's Pirate"]="Swan Pirate"};
EnemySpawn = {};
function SpawnPoint()
	for o, v in pairs(game.Workspace.Enemies:GetChildren()) do
		if (v and v.HumanoidRootPart) then
			if not EnemySpawn[v.Name] then
				EnemySpawn[v.Name] = v.HumanoidRootPart.CFrame;
			end
		end
	end
	for o, v in pairs(game:GetService("Workspace")['_WorldOrigin'].EnemySpawns:GetChildren()) do
		if (v.Name and not table.find(EnemySpawn, v.Name)) then
			EnemySpawn[v.Name:gsub(" .Lv. %d+.", "")] = v.CFrame;
		end
	end
	for o, v in pairs(getnilinstances()) do
		if (v and v.Name and not EnemySpawn[v.Name:gsub(" .Lv. %d+.", "")]) then
			if (math.random(10, 70) == 25) then
				task.wait();
			end
			local w = gqgqj(v);
			if w then
				EnemySpawn[v.Name:gsub(" .Lv. %d+.", "")] = w;
			end
		end
	end
end
function gqgqj(a)
	if (a and a:FindFirstChild("HumanoidRootPart")) then
		return a.HumanoidRootPart.CFrame;
	end
	if a:GetAttribute("CFrame") then
		return a.CFrame;
	end
end
SpawnPoint();
function CFrameQuest()
	QuestPoses = {};
	for x, v in pairs(getnilinstances()) do
		if (v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("QuestBBG") and (v.Head.QuestBBG.Title.Text == "QUEST") and (v.Name ~= "Villager")) then
			QuestPoses[v.Name] = v:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, -2, 2);
		end
	end
	for x, v in pairs(game.Workspace.NPCs:GetDescendants()) do
		if ((v.Name == "QuestBBG") and (v.Title.Text == "QUEST") and (v.Parent.Parent.Name ~= "Villager")) then
			QuestPoses[v.Parent.Parent.Name] = v.Parent.Parent.HumanoidRootPart.CFrame * CFrame.new(0, -2, 2);
		end
	end
	DialoguesList = {};
	for x, v in pairs(require(game.ReplicatedStorage.DialoguesList)) do
		DialoguesList[v] = x;
	end
	local y = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC);
	local z = {};
	for A, v in pairs(debug.getprotos(y)) do
		if (#debug.getconstants(v) == 1) then
			table.insert(z, debug.getconstant(v, 1));
		end
	end
	local B = false;
	local C = {};
	for A, v in pairs(debug.getconstants(y)) do
		if (type(v) == "string") then
			if (v == "Players") then
				B = false;
			end
			if not B then
				if (v == "Blox Fruit Dealer") then
					B = true;
				end
			else
			end
			if B then
				table.insert(C, v);
			end
		end
	end
	local D = {};
	QuestPoint = {};
	for A, v in pairs(C) do
		if QuestPoses[v] then
			D[z[A]] = C[A];
		end
	end
	for x, v in next, D do
		QuestPoint[x] = QuestPoses[v];
	end
	QuestPoint['SkyExp1Quest'] = CFrame.new(-7857.28516, 5544.34033, -382.321503, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998);
end
CFrameQuest();
CheckQuest();
print(NameQuest, NameMon);
function Hop()
	local E = game.PlaceId;
	local F = {};
	local G = "";
	local H = os.date("!*t").hour;
	local I = false;
	function TPReturner()
		local J;
		if (G == "") then
			J = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. E .. "/servers/Public?sortOrder=Asc&limit=100"));
		else
			J = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. E .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. G));
		end
		local K = "";
		if (J.nextPageCursor and (J.nextPageCursor ~= "null") and (J.nextPageCursor ~= nil)) then
			G = J.nextPageCursor;
		end
		local L = 0;
		for o, v in pairs(J.data) do
			local M = true;
			K = tostring(v.id);
			if (tonumber(v.maxPlayers) > tonumber(v.playing)) then
				for t, N in pairs(F) do
					if (L ~= 0) then
						if (K == tostring(N)) then
							M = false;
						end
					elseif (tonumber(H) ~= tonumber(N)) then
						local O = pcall(function()
							F = {};
							table.insert(F, H);
						end);
					end
					L = L + 1;
				end
				if (M == true) then
					table.insert(F, K);
					wait();
					pcall(function()
						wait();
						game:GetService("TeleportService"):TeleportToPlaceInstance(E, K, game.Players.LocalPlayer);
					end);
					wait(4);
				end
			end
		end
	end
	function Teleport()
		while wait() do
			pcall(function()
				TPReturner();
				if (G ~= "") then
					TPReturner();
				end
			end);
		end
	end
	Teleport();
end
function UpdateIslandESP()
	for o, v in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v.Name ~= "Sea") then
					if not v:FindFirstChild("NameEsp") then
						local P = Instance.new("BillboardGui", v);
						P.Name = "NameEsp";
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = "GothamBold";
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(7, 236, 240);
					else
						v['NameEsp'].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				v:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(R)
	return R == nil;
end
local function round(S)
	return math.floor(tonumber(S) + 0.5);
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for o, v in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if (not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild("NameEsp" .. Number)) then
						local P = Instance.new("BillboardGui", v.Character.Head);
						P.Name = "NameEsp" .. Number;
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v.Character.Head;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = Enum.Font.GothamSemibold;
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. " Distance";
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						if (v.Team == game.Players.LocalPlayer.Team) then
							Q.TextColor3 = Color3.new(0, 255, 0);
						else
							Q.TextColor3 = Color3.new(255, 0, 0);
						end
					else
						v.Character.Head["NameEsp" .. Number].TextLabel.Text = v.Name .. " | " .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. " Distance\nHealth : " .. round((v.Character.Humanoid.Health * 100) / v.Character.Humanoid.MaxHealth) .. "%";
					end
				elseif v.Character.Head:FindFirstChild("NameEsp" .. Number) then
					v.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for o, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name, "Chest") then
				if ChestESP then
					if string.find(v.Name, "Chest") then
						if not v:FindFirstChild("NameEsp" .. Number) then
							local P = Instance.new("BillboardGui", v);
							P.Name = "NameEsp" .. Number;
							P.ExtentsOffset = Vector3.new(0, 1, 0);
							P.Size = UDim2.new(1, 200, 1, 30);
							P.Adornee = v;
							P.AlwaysOnTop = true;
							local Q = Instance.new("TextLabel", P);
							Q.Font = Enum.Font.GothamSemibold;
							Q.FontSize = "Size14";
							Q.TextWrapped = true;
							Q.Size = UDim2.new(1, 0, 1, 0);
							Q.TextYAlignment = "Top";
							Q.BackgroundTransparency = 1;
							Q.TextStrokeTransparency = 0.5;
							if (v.Name == "Chest1") then
								Q.TextColor3 = Color3.fromRGB(109, 109, 109);
								Q.Text = "Chest 1" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							end
							if (v.Name == "Chest2") then
								Q.TextColor3 = Color3.fromRGB(173, 158, 21);
								Q.Text = "Chest 2" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							end
							if (v.Name == "Chest3") then
								Q.TextColor3 = Color3.fromRGB(85, 255, 255);
								Q.Text = "Chest 3" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							end
						else
							v["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
						end
					end
				elseif v:FindFirstChild("NameEsp" .. Number) then
					v:FindFirstChild("NameEsp" .. Number):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for o, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then
					if not v.Handle:FindFirstChild("NameEsp" .. Number) then
						local P = Instance.new("BillboardGui", v.Handle);
						P.Name = "NameEsp" .. Number;
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v.Handle;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = Enum.Font.GothamSemibold;
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(255, 255, 255);
						Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
					else
						v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
					end
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				v.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for o, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v.Name == "Flower2") or (v.Name == "Flower1")) then
				if FlowerESP then
					if not v:FindFirstChild("NameEsp" .. Number) then
						local P = Instance.new("BillboardGui", v);
						P.Name = "NameEsp" .. Number;
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = Enum.Font.GothamSemibold;
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v.Name == "Flower1") then
							Q.Text = "Blue Flower" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							Q.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v.Name == "Flower2") then
							Q.Text = "Red Flower" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							Q.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
					end
				elseif v:FindFirstChild("NameEsp" .. Number) then
					v:FindFirstChild("NameEsp" .. Number):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for o, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild("NameEsp" .. Number) then
					local P = Instance.new("BillboardGui", v.Handle);
					P.Name = "NameEsp" .. Number;
					P.ExtentsOffset = Vector3.new(0, 1, 0);
					P.Size = UDim2.new(1, 200, 1, 30);
					P.Adornee = v.Handle;
					P.AlwaysOnTop = true;
					local Q = Instance.new("TextLabel", P);
					Q.Font = Enum.Font.GothamSemibold;
					Q.FontSize = "Size14";
					Q.TextWrapped = true;
					Q.Size = UDim2.new(1, 0, 1, 0);
					Q.TextYAlignment = "Top";
					Q.BackgroundTransparency = 1;
					Q.TextStrokeTransparency = 0.5;
					Q.TextColor3 = Color3.fromRGB(255, 0, 0);
					Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				v.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
			end
		end
	end
	for o, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild("NameEsp" .. Number) then
					local P = Instance.new("BillboardGui", v.Handle);
					P.Name = "NameEsp" .. Number;
					P.ExtentsOffset = Vector3.new(0, 1, 0);
					P.Size = UDim2.new(1, 200, 1, 30);
					P.Adornee = v.Handle;
					P.AlwaysOnTop = true;
					local Q = Instance.new("TextLabel", P);
					Q.Font = Enum.Font.GothamSemibold;
					Q.FontSize = "Size14";
					Q.TextWrapped = true;
					Q.Size = UDim2.new(1, 0, 1, 0);
					Q.TextYAlignment = "Top";
					Q.BackgroundTransparency = 1;
					Q.TextStrokeTransparency = 0.5;
					Q.TextColor3 = Color3.fromRGB(255, 174, 0);
					Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				v.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
			end
		end
	end
	for o, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild("NameEsp" .. Number) then
					local P = Instance.new("BillboardGui", v.Handle);
					P.Name = "NameEsp" .. Number;
					P.ExtentsOffset = Vector3.new(0, 1, 0);
					P.Size = UDim2.new(1, 200, 1, 30);
					P.Adornee = v.Handle;
					P.AlwaysOnTop = true;
					local Q = Instance.new("TextLabel", P);
					Q.Font = Enum.Font.GothamSemibold;
					Q.FontSize = "Size14";
					Q.TextWrapped = true;
					Q.Size = UDim2.new(1, 0, 1, 0);
					Q.TextYAlignment = "Top";
					Q.BackgroundTransparency = 1;
					Q.TextStrokeTransparency = 0.5;
					Q.TextColor3 = Color3.fromRGB(251, 255, 0);
					Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				v.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
			end
		end
	end
end
function UpdateIslandESP()
	for o, v in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v.Name ~= "Sea") then
					if not v:FindFirstChild("NameEsp") then
						local P = Instance.new("BillboardGui", v);
						P.Name = "NameEsp";
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = "GothamBold";
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(7, 236, 240);
					else
						v['NameEsp'].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				v:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(R)
	return R == nil;
end
local function round(S)
	return math.floor(tonumber(S) + 0.5);
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for o, v in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if (not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild("NameEsp" .. Number)) then
						local P = Instance.new("BillboardGui", v.Character.Head);
						P.Name = "NameEsp" .. Number;
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v.Character.Head;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = Enum.Font.GothamSemibold;
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. " Distance";
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						if (v.Team == game.Players.LocalPlayer.Team) then
							Q.TextColor3 = Color3.new(0, 255, 0);
						else
							Q.TextColor3 = Color3.new(255, 0, 0);
						end
					else
						v.Character.Head["NameEsp" .. Number].TextLabel.Text = v.Name .. " | " .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. " Distance\nHealth : " .. round((v.Character.Humanoid.Health * 100) / v.Character.Humanoid.MaxHealth) .. "%";
					end
				elseif v.Character.Head:FindFirstChild("NameEsp" .. Number) then
					v.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for o, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name, "Chest") then
				if ChestESP then
					if string.find(v.Name, "Chest") then
						if not v:FindFirstChild("NameEsp" .. Number) then
							local P = Instance.new("BillboardGui", v);
							P.Name = "NameEsp" .. Number;
							P.ExtentsOffset = Vector3.new(0, 1, 0);
							P.Size = UDim2.new(1, 200, 1, 30);
							P.Adornee = v;
							P.AlwaysOnTop = true;
							local Q = Instance.new("TextLabel", P);
							Q.Font = Enum.Font.GothamSemibold;
							Q.FontSize = "Size14";
							Q.TextWrapped = true;
							Q.Size = UDim2.new(1, 0, 1, 0);
							Q.TextYAlignment = "Top";
							Q.BackgroundTransparency = 1;
							Q.TextStrokeTransparency = 0.5;
							if (v.Name == "Chest1") then
								Q.TextColor3 = Color3.fromRGB(109, 109, 109);
								Q.Text = "Chest 1" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							end
							if (v.Name == "Chest2") then
								Q.TextColor3 = Color3.fromRGB(173, 158, 21);
								Q.Text = "Chest 2" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							end
							if (v.Name == "Chest3") then
								Q.TextColor3 = Color3.fromRGB(85, 255, 255);
								Q.Text = "Chest 3" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							end
						else
							v["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
						end
					end
				elseif v:FindFirstChild("NameEsp" .. Number) then
					v:FindFirstChild("NameEsp" .. Number):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for o, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then
					if not v.Handle:FindFirstChild("NameEsp" .. Number) then
						local P = Instance.new("BillboardGui", v.Handle);
						P.Name = "NameEsp" .. Number;
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v.Handle;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = Enum.Font.GothamSemibold;
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(255, 255, 255);
						Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
					else
						v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
					end
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				v.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for o, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v.Name == "Flower2") or (v.Name == "Flower1")) then
				if FlowerESP then
					if not v:FindFirstChild("NameEsp" .. Number) then
						local P = Instance.new("BillboardGui", v);
						P.Name = "NameEsp" .. Number;
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = Enum.Font.GothamSemibold;
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v.Name == "Flower1") then
							Q.Text = "Blue Flower" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							Q.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v.Name == "Flower2") then
							Q.Text = "Red Flower" .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
							Q.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance";
					end
				elseif v:FindFirstChild("NameEsp" .. Number) then
					v:FindFirstChild("NameEsp" .. Number):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for o, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild("NameEsp" .. Number) then
					local P = Instance.new("BillboardGui", v.Handle);
					P.Name = "NameEsp" .. Number;
					P.ExtentsOffset = Vector3.new(0, 1, 0);
					P.Size = UDim2.new(1, 200, 1, 30);
					P.Adornee = v.Handle;
					P.AlwaysOnTop = true;
					local Q = Instance.new("TextLabel", P);
					Q.Font = Enum.Font.GothamSemibold;
					Q.FontSize = "Size14";
					Q.TextWrapped = true;
					Q.Size = UDim2.new(1, 0, 1, 0);
					Q.TextYAlignment = "Top";
					Q.BackgroundTransparency = 1;
					Q.TextStrokeTransparency = 0.5;
					Q.TextColor3 = Color3.fromRGB(255, 0, 0);
					Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				v.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
			end
		end
	end
	for o, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild("NameEsp" .. Number) then
					local P = Instance.new("BillboardGui", v.Handle);
					P.Name = "NameEsp" .. Number;
					P.ExtentsOffset = Vector3.new(0, 1, 0);
					P.Size = UDim2.new(1, 200, 1, 30);
					P.Adornee = v.Handle;
					P.AlwaysOnTop = true;
					local Q = Instance.new("TextLabel", P);
					Q.Font = Enum.Font.GothamSemibold;
					Q.FontSize = "Size14";
					Q.TextWrapped = true;
					Q.Size = UDim2.new(1, 0, 1, 0);
					Q.TextYAlignment = "Top";
					Q.BackgroundTransparency = 1;
					Q.TextStrokeTransparency = 0.5;
					Q.TextColor3 = Color3.fromRGB(255, 174, 0);
					Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				v.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
			end
		end
	end
	for o, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild("NameEsp" .. Number) then
					local P = Instance.new("BillboardGui", v.Handle);
					P.Name = "NameEsp" .. Number;
					P.ExtentsOffset = Vector3.new(0, 1, 0);
					P.Size = UDim2.new(1, 200, 1, 30);
					P.Adornee = v.Handle;
					P.AlwaysOnTop = true;
					local Q = Instance.new("TextLabel", P);
					Q.Font = Enum.Font.GothamSemibold;
					Q.FontSize = "Size14";
					Q.TextWrapped = true;
					Q.Size = UDim2.new(1, 0, 1, 0);
					Q.TextYAlignment = "Top";
					Q.BackgroundTransparency = 1;
					Q.TextStrokeTransparency = 0.5;
					Q.TextColor3 = Color3.fromRGB(251, 255, 0);
					Q.Text = v.Name .. " \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance";
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				v.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
			end
		end
	end
end
spawn(function()
	while wait() do
		pcall(function()
			if MobESP then
				for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if not v:FindFirstChild("MobEap") then
							local T = Instance.new("BillboardGui");
							local U = Instance.new("TextLabel");
							T.Parent = v;
							T.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							T.Active = true;
							T.Name = "MobEap";
							T.AlwaysOnTop = true;
							T.LightInfluence = 1;
							T.Size = UDim2.new(0, 200, 0, 50);
							T.StudsOffset = Vector3.new(0, 2.5, 0);
							U.Parent = T;
							U.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							U.BackgroundTransparency = 1;
							U.Size = UDim2.new(0, 200, 0, 50);
							U.Font = Enum.Font.GothamBold;
							U.TextColor3 = Color3.fromRGB(7, 236, 240);
							U.Text.Size = 35;
						end
						local V = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude);
						v.MobEap.TextLabel.Text = v.Name .. " - " .. V .. " Distance";
					end
				end
			else
				for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v:FindFirstChild("MobEap") then
						v.MobEap:Destroy();
					end
				end
			end
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if SeaESP then
				for o, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if not v:FindFirstChild("Seaesps") then
							local T = Instance.new("BillboardGui");
							local U = Instance.new("TextLabel");
							T.Parent = v;
							T.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							T.Active = true;
							T.Name = "Seaesps";
							T.AlwaysOnTop = true;
							T.LightInfluence = 1;
							T.Size = UDim2.new(0, 200, 0, 50);
							T.StudsOffset = Vector3.new(0, 2.5, 0);
							U.Parent = T;
							U.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							U.BackgroundTransparency = 1;
							U.Size = UDim2.new(0, 200, 0, 50);
							U.Font = Enum.Font.GothamBold;
							U.TextColor3 = Color3.fromRGB(7, 236, 240);
							U.Text.Size = 35;
						end
						local V = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude);
						v.Seaesps.TextLabel.Text = v.Name .. " - " .. V .. " Distance";
					end
				end
			else
				for o, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
					if v:FindFirstChild("Seaesps") then
						v.Seaesps:Destroy();
					end
				end
			end
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if NpcESP then
				for o, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if not v:FindFirstChild("NpcEspes") then
							local T = Instance.new("BillboardGui");
							local U = Instance.new("TextLabel");
							T.Parent = v;
							T.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							T.Active = true;
							T.Name = "NpcEspes";
							T.AlwaysOnTop = true;
							T.LightInfluence = 1;
							T.Size = UDim2.new(0, 200, 0, 50);
							T.StudsOffset = Vector3.new(0, 2.5, 0);
							U.Parent = T;
							U.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							U.BackgroundTransparency = 1;
							U.Size = UDim2.new(0, 200, 0, 50);
							U.Font = Enum.Font.GothamBold;
							U.TextColor3 = Color3.fromRGB(7, 236, 240);
							U.Text.Size = 35;
						end
						local V = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude);
						v.NpcEspes.TextLabel.Text = v.Name .. " - " .. V .. " Distance";
					end
				end
			else
				for o, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
					if v:FindFirstChild("NpcEspes") then
						v.NpcEspes:Destroy();
					end
				end
			end
		end);
	end
end);
function isnil(R)
	return R == nil;
end
local function round(S)
	return math.floor(tonumber(S) + 0.5);
end
Number = math.random(1, 1000000);
function UpdateIslandMirageESP()
	for o, v in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if MirageIslandESP then
				if (v.Name == "Mirage Island") then
					if not v:FindFirstChild("NameEsp") then
						local P = Instance.new("BillboardGui", v);
						P.Name = "NameEsp";
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = "Code";
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v['NameEsp'].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " M";
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				v:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(R)
	return R == nil;
end
local function round(S)
	return math.floor(tonumber(S) + 0.5);
end
Number = math.random(1, 1000000);
function UpdateAfdESP()
	for o, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if AfdESP then
				if (v.Name == "Advanced Fruit Dealer") then
					if not v:FindFirstChild("NameEsp") then
						local P = Instance.new("BillboardGui", v);
						P.Name = "NameEsp";
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = "Code";
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v['NameEsp'].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " M";
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				v:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function UpdateAuraESP()
	for o, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if AuraESP then
				if (v.Name == "Master of Enhancement") then
					if not v:FindFirstChild("NameEsp") then
						local P = Instance.new("BillboardGui", v);
						P.Name = "NameEsp";
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = "Code";
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v['NameEsp'].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " M";
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				v:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function UpdateLSDESP()
	for o, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if LADESP then
				if (v.Name == "Legendary Sword Dealer") then
					if not v:FindFirstChild("NameEsp") then
						local P = Instance.new("BillboardGui", v);
						P.Name = "NameEsp";
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = "Code";
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v['NameEsp'].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " M";
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				v:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function UpdateGeaESP()
	for o, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
		pcall(function()
			if GearESP then
				if (v.Name == "MeshPart") then
					if not v:FindFirstChild("NameEsp") then
						local P = Instance.new("BillboardGui", v);
						P.Name = "NameEsp";
						P.ExtentsOffset = Vector3.new(0, 1, 0);
						P.Size = UDim2.new(1, 200, 1, 30);
						P.Adornee = v;
						P.AlwaysOnTop = true;
						local Q = Instance.new("TextLabel", P);
						Q.Font = "Code";
						Q.FontSize = "Size14";
						Q.TextWrapped = true;
						Q.Size = UDim2.new(1, 0, 1, 0);
						Q.TextYAlignment = "Top";
						Q.BackgroundTransparency = 1;
						Q.TextStrokeTransparency = 0.5;
						Q.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v['NameEsp'].TextLabel.Text = v.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " M";
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				v:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function InfAb()
	if InfAbility then
		if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local W = Instance.new("ParticleEmitter");
			W.Acceleration = Vector3.new(0, 0, 0);
			W.Archivable = true;
			W.Drag = 20;
			W.EmissionDirection = Enum.NormalId.Top;
			W.Enabled = true;
			W.Lifetime = NumberRange.new(0, 0);
			W.LightInfluence = 0;
			W.LockedToPart = true;
			W.Name = "Agility";
			W.Rate = 500;
			local X = {NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 4)};
			W.Size = NumberSequence.new(X);
			W.RotSpeed = NumberRange.new(9999, 99999);
			W.Rotation = NumberRange.new(0, 0);
			W.Speed = NumberRange.new(30, 30);
			W.SpreadAngle = Vector2.new(0, 0, 0, 0);
			W.Texture = "";
			W.VelocityInheritance = 0;
			W.ZOffset = 2;
			W.Transparency = NumberSequence.new(0);
			W.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0));
			W.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
		end
	elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end
local Y = game:GetService("Players").LocalPlayer;
local Z = Y.Character.Energy.Value;
function infinitestam()
	Y.Character.Energy.Changed:connect(function()
		if InfiniteEnergy then
			Y.Character.Energy.Value = Z;
		end
	end);
end
spawn(function()
	pcall(function()
		while wait(0.1) do
			if InfiniteEnergy then
				wait(0.1);
				Z = Y.Character.Energy.Value;
				infinitestam();
			end
		end
	end);
end);
function NoDodgeCool()
	if nododgecool then
		for o, v in next, getgc() do
			if game:GetService("Players").LocalPlayer.Character.Dodge then
				if ((typeof(v) == "function") and (getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge)) then
					for _, a0 in next, getupvalues(v) do
						if (tostring(a0) == "0.1") then
							repeat
								wait(0.1);
								setupvalue(v, _, 0);
							until not nododgecool 
						end
					end
				end
			end
		end
	end
end
function fly()
	local a1 = game:GetService("Players").LocalPlayer:GetMouse("");
	localplayer = game:GetService("Players").LocalPlayer;
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart");
	local a2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	local a3 = 25;
	local a4 = {a=false,d=false,w=false,s=false};
	local a5;
	local a6;
	local function a7()
		local a8 = Instance.new("BodyPosition", a2);
		local a9 = Instance.new("BodyGyro", a2);
		a8.Name = "EPIXPOS";
		a8.maxForce = Vector3.new(math.huge, math.huge, math.huge);
		a8.position = a2.Position;
		a9.maxTorque = Vector3.new(8999999488, 8999999488, 8999999488);
		a9.CFrame = a2.CFrame;
		repeat
			wait();
			localplayer.Character.Humanoid.PlatformStand = true;
			local aa = (a9.CFrame - a9.CFrame.p) + a8.position;
			if (not a4.w and not a4.s and not a4.a and not a4.d) then
				speed = 1;
			end
			if a4.w then
				aa = aa + (workspace.CurrentCamera.CoordinateFrame.lookVector * speed);
				speed = speed + a3;
			end
			if a4.s then
				aa = aa - (workspace.CurrentCamera.CoordinateFrame.lookVector * speed);
				speed = speed + a3;
			end
			if a4.d then
				aa = aa * CFrame.new(speed, 0, 0);
				speed = speed + a3;
			end
			if a4.a then
				aa = aa * CFrame.new(-speed, 0, 0);
				speed = speed + a3;
			end
			if (speed > a3) then
				speed = a3;
			end
			a8.position = aa.p;
			if a4.w then
				a9.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad(speed * 15), 0, 0);
			elseif a4.s then
				a9.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 15), 0, 0);
			else
				a9.CFrame = workspace.CurrentCamera.CoordinateFrame;
			end
		until not Fly 
		if a9 then
			a9:Destroy();
		end
		if a8 then
			a8:Destroy();
		end
		flying = false;
		localplayer.Character.Humanoid.PlatformStand = false;
		speed = 0;
	end
	a5 = a1.KeyDown:connect(function(ab)
		if (not a2 or not a2.Parent) then
			flying = false;
			a5:disconnect();
			a6:disconnect();
			return;
		end
		if (ab == "w") then
			a4.w = true;
		elseif (ab == "s") then
			a4.s = true;
		elseif (ab == "a") then
			a4.a = true;
		elseif (ab == "d") then
			a4.d = true;
		end
	end);
	a6 = a1.KeyUp:connect(function(ab)
		if (ab == "w") then
			a4.w = false;
		elseif (ab == "s") then
			a4.s = false;
		elseif (ab == "a") then
			a4.a = false;
		elseif (ab == "d") then
			a4.d = false;
		end
	end);
	a7();
end
function Click()
	game:GetService("VirtualUser"):CaptureController();
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
end
function AutoHaki()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
	end
end
function UnEquipWeapon(ac)
	if game.Players.LocalPlayer.Character:FindFirstChild(ac) then
		_G.NotAutoEquip = true;
		wait(0.5);
		game.Players.LocalPlayer.Character:FindFirstChild(ac).Parent = game.Players.LocalPlayer.Backpack;
		wait(0.1);
		_G.NotAutoEquip = false;
	end
end
function EquipWeapon(ad)
	if not _G.NotAutoEquip then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ad) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ad);
			wait(0.1);
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
		end
	end
end
local function ae(...)
	local af = {...};
	local ag = af[1];
	local ah;
	if (type(ag) == "vector") then
		ah = ag;
	elseif (type(ag) == "userdata") then
		ah = ag.Position;
	elseif (type(ag) == "number") then
		ah = CFrame.new(unpack(af));
		ah = ah.p;
	end
	local ai;
	local aj = math.huge;
	if game.Players.LocalPlayer.Team then
		for o, v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do
			local ak = (ah - v:GetModelCFrame().p).Magnitude;
			if (ak < aj) then
				aj = ak;
				ai = v.Name;
			end
		end
		if ai then
			return ai;
		end
	end
end
local function al(...)
	local af = {...};
	local ag = af[1];
	local ah;
	if (type(ag) == "vector") then
		ah = CFrame.new(ag);
	elseif (type(ag) == "userdata") then
		ah = ag;
	elseif (type(ag) == "number") then
		ah = CFrame.new(unpack(af));
	end
	if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0) then
		if tween then
			tween:Cancel();
		end
		repeat
			wait();
		until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 
		wait(0.2);
	end
	local am = {};
	local Distance = (ah.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;
	if (Distance < 10) then
		Speed = 20000;
	elseif (Distance < 25) then
		Speed = 10000;
	elseif (Distance < 50) then
		Speed = 5000;
	elseif (Distance < 150) then
		Speed = 2500;
	elseif (Distance < 250) then
		Speed = 1250;
	elseif (Distance < 500) then
		Speed = 700;
	elseif (Distance < 750) then
		Speed = 500;
	elseif (Distance >= 1000) then
		Speed = 350;
	end
	local an = game:service("TweenService");
	local ao = TweenInfo.new((ah.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / Speed, Enum.EasingStyle.Linear);
	local ap, err = pcall(function()
		if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
			local aq = Instance.new("Highlight");
			aq.FillColor = Color3.new(0.266667, 0.854902, 0.921569);
			aq.OutlineColor = Color3.new(0.266667, 0.854902, 0.921569);
			aq.Parent = game.Players.LocalPlayer.Character;
		end
		tween = an:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], ao, {CFrame=ah});
		tween:Play();
	end);
	function StopTween()
		tween:Cancel();
	end
	function WaitTween()
		tween.Completed:Wait();
	end
	return am;
end
function al(ar)
	pcall(function()
		game.Players.LocalPlayer.Character.Humanoid.Sit = false;
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false;
	end);
	if ((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - ar.Position).Magnitude <= 200) then
		pcall(function()
			tweenz:Cancel();
		end);
		game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.CFrame = ar;
	else
		local an = game:service("TweenService");
		local ao = TweenInfo.new((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - ar.Position).Magnitude / 325, Enum.EasingStyle.Linear);
		tween, err = pcall(function()
			if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
				local aq = Instance.new("Highlight");
				aq.FillColor = Color3.new(0.266667, 0.854902, 0.921569);
				aq.OutlineColor = Color3.new(0.266667, 0.854902, 0.921569);
				aq.Parent = game.Players.LocalPlayer.Character;
			end
			tweenz = an:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], ao, {CFrame=ar});
			tweenz:Play();
		end);
		if not tween then
			return err;
		end
	end
	function _TweenCanCle()
		tweenz:Cancel();
	end
end
function TP1(Pos)
	Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	if (game.Players.LocalPlayer.Character.Humanoid.Sit == true) then
		game.Players.LocalPlayer.Character.Humanoid.Sit = false;
	end
	pcall(function()
		tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / 210, Enum.EasingStyle.Linear), {CFrame=Pos});
	end);
	tween:Play();
	if (Distance <= 250) then
		tween:Cancel();
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos;
	end
	if (_G.StopTween == true) then
		tween:Cancel();
		_G.Clip = false;
	end
end
function ae(as)
	return math.floor((as.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude);
end
function BTP(at)
	pcall(function()
		if (((at.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500) and not Auto_Raid and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
			repeat
				wait();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = at;
				wait(0);
				game.Players.LocalPlayer.Character.Head:Destroy();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = at;
			until ((at.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0) 
		end
	end);
end
function TelePPlayer(au)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = au;
end
function TPB(av)
	local an = game:service("TweenService");
	local ao = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - av.Position).Magnitude / 300, Enum.EasingStyle.Linear);
	tween = an:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, ao, {CFrame=av});
	tween:Play();
	local am = {};
	am.Stop = function(self)
		tween:Cancel();
	end;
	return am;
end
function TPP(av)
	if ((game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0) or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")) then
		tween:Cancel();
		repeat
			wait();
		until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and (game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0) 
		wait(7);
		return;
	end
	local an = game:service("TweenService");
	local ao = TweenInfo.new((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - av.Position).Magnitude / 325, Enum.EasingStyle.Linear);
	tween = an:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], ao, {CFrame=av});
	tween:Play();
	local am = {};
	am.Stop = function(self)
		tween:Cancel();
	end;
	return am;
end
getgenv().ToTargets = function(at)
	task.spawn(function()
		pcall(function()
			if (game:GetService("Players").LocalPlayer:DistanceFromCharacter(at.Position) <= 250) then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = at;
			elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then
				local aw = Instance.new("Part", game.Players.LocalPlayer.Character);
				aw.Size = Vector3.new(1, 0.5, 1);
				aw.Name = "Root";
				aw.Anchored = true;
				aw.Transparency = 1;
				aw.CanCollide = false;
				aw.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0);
			end
			local ax = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - at.Position).Magnitude;
			local ay = game:service("TweenService");
			local az = TweenInfo.new((at.Position - game.Players.LocalPlayer.Character.Root.Position).Magnitude / 300, Enum.EasingStyle.Linear);
			local aA, aB = pcall(function()
				local aC = ay:Create(game.Players.LocalPlayer.Character.Root, az, {CFrame=at});
				aC:Play();
			end);
			if not aA then
				return aB;
			end
			game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
			if (aA and game.Players.LocalPlayer.Character:FindFirstChild("Root")) then
				pcall(function()
					if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - at.Position).Magnitude >= 20) then
						spawn(function()
							pcall(function()
								if ((game.Players.LocalPlayer.Character.Root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
								else
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Root.CFrame;
								end
							end);
						end);
					elseif (((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - at.Position).Magnitude >= 10) and ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - at.Position).Magnitude < 20)) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = at;
					elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - at.Position).Magnitude < 10) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = at;
					end
				end);
			end
		end);
	end);
end;
Type = 1;
spawn(function()
	while wait(0) do
		if (Type == 1) then
			Pos = CFrame.new(0, PosY, -30);
		elseif (Type == 2) then
			Pos = CFrame.new(30, PosY, 0);
		elseif (Type == 3) then
			Pos = CFrame.new(0, PosY, 30);
		elseif (Type == 4) then
			Pos = CFrame.new(-30, PosY, 0);
		end
	end
end);
spawn(function()
	while wait(0) do
		Type = 1;
		wait(0);
		Type = 2;
		wait(0);
		Type = 3;
		wait(0);
		Type = 4;
		wait(0);
		Type = 5;
		wait(0);
	end
end);
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if (_G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki) then
			if not game:GetService("Workspace"):FindFirstChild("LOL") then
				local aD = Instance.new("Part");
				aD.Name = "LOL";
				aD.Parent = game.Workspace;
				aD.Anchored = true;
				aD.Transparency = 1;
				aD.Size = Vector3.new(30, -0.5, 30);
			elseif game:GetService("Workspace"):FindFirstChild("LOL") then
				game.Workspace['LOL'].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0);
			end
		elseif game:GetService("Workspace"):FindFirstChild("LOL") then
			game:GetService("Workspace"):FindFirstChild("LOL"):Destroy();
		end
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.DomadicAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.AutoFrozenDimension or (_G.AutoFKitsune == true)) then
				if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local aE = Instance.new("BodyVelocity");
					aE.Name = "BodyClip";
					aE.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
					aE.MaxForce = Vector3.new(100000, 100000, 100000);
					aE.Velocity = Vector3.new(0, 0, 0);
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if (_G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.DomadicAutoDriveBoat or _G.AutoFrozenDimension or (_G.AutoFKitsune == true)) then
				for t, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false;
					end
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or _G.AutoTushitaSword or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.DomadicAutoDriveBoat or _G.bjirFishBoat or (_G.KillGhostShip == true)) then
				if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
					local aq = Instance.new("Highlight");
					aq.FillColor = Color3.new(0, 255, 0);
					aq.OutlineColor = Color3.new(0, 255, 0);
					aq.Parent = game.Players.LocalPlayer.Character;
				end
			end
		end
	end);
end);
function InstancePos(a8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a8;
end
function TP3(a8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a8;
end
spawn(function()
	while wait() do
		if (_G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFactory or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoRaidPirate or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.AttackDummy or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Farmfast or _G.RaidPirate or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.bjirFishBoat or (_G.KillGhostShip == true)) then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true);
			end);
		end
	end
end);
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if (_G.AutoClick or Fastattack) then
			pcall(function()
				game:GetService("VirtualUser"):CaptureController();
				game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 1, 0, 1));
			end);
		end
	end);
end);
function StopTween(as)
	if not as then
		_G.StopTween = true;
		wait();
		al(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
		wait();
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy();
		end
		_G.StopTween = false;
		_G.Clip = false;
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
		game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy();
	end
end
spawn(function()
	pcall(function()
		while wait() do
			for o, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then
						SelectWeaponGun = v.Name;
					end
				end
			end
		end
	end);
end);
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
function EquipWeaponSword()
	pcall(function()
		for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if ((v.ToolTip == "Sword") and v:IsA("Tool")) then
				local aF = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(aF);
			end
		end
	end);
end
function CheckPirateBoat()
	local aG = {"PirateGrandBrigade","PirateBrigade"};
	for x, v in next, game:GetService("Workspace").Enemies:GetChildren() do
		if (table.find(aG, v.Name) and v:FindFirstChild("Health") and (v.Health.Value > 0)) then
			return v;
		end
	end
end
function CheckPirateBoat()
	local aG = {"FishBoat"};
	for x, v in next, game:GetService("Workspace").Enemies:GetChildren() do
		if (table.find(aG, v.Name) and v:FindFirstChild("Health") and (v.Health.Value > 0)) then
			return v;
		end
	end
end
function EquipAllWeapon()
	pcall(function()
		for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if (v:IsA("Tool") and not ((v.Name == "Summon Sea Beast") or (v.Name == "Water Body") or (v.Name == "Awakening"))) then
				local aF = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(aF);
				wait(1);
			end
		end
	end);
end
function InMyNetWork(aH)
	if isnetworkowner then
		return isnetworkowner(aH);
	else
		if ((aH.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode) then
			return true;
		end
		return false;
	end
end
local aI = require(game.ReplicatedStorage.Util.CameraShaker);
aI:Stop();
local aJ = game.Players.LocalPlayer;
local aK = require(aJ.PlayerScripts.CombatFramework.Particle);
local aL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib);
local aM = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"));
local aN = getupvalues(aM)[2];
function CurrentWeapon()
	local aO = aN.activeController;
	local aP = aO.blades[1];
	if not aP then
		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
	end
	pcall(function()
		while aP.Parent ~= game.Players.LocalPlayer.Character do
			aP = aP.Parent;
		end
	end);
	if not aP then
		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
	end
	return aP;
end
function getAllBladeHitsPlayers(aP)
	local aQ = {};
	for o = 1, #game:GetService("Workspace").Characters:GetChildren() do
		local aR = game:GetService("Workspace").Characters:GetChildren()[o];
		local aS = aR:FindFirstChildOfClass("Humanoid");
		if ((aR.Name ~= game.Players.LocalPlayer.Name) and aS and aS.RootPart and (aS.Health > 0) and (game.Players.LocalPlayer:DistanceFromCharacter(aS.RootPart.Position) < (aP + 5))) then
			table.insert(aQ, aS.RootPart);
		end
	end
	return aQ;
end
function getAllBladeHits(aP)
	local aQ = {};
	for o = 1, #game:GetService("Workspace").Enemies:GetChildren() do
		local aR = game:GetService("Workspace").Enemies:GetChildren()[o];
		local aS = aR:FindFirstChildOfClass("Humanoid");
		if (aS and aS.RootPart and (aS.Health > 0) and (game.Players.LocalPlayer:DistanceFromCharacter(aS.RootPart.Position) < (aP + 5))) then
			table.insert(aQ, aS.RootPart);
		end
	end
	return aQ;
end
function AttackFunction()
	if (aN.activeController and aN.activeController.equipped) then
		for aT = 1, 1 do
			local aU = getAllBladeHits(100);
			if (#aU > 0) then
				local aV = debug.getupvalue(aN.activeController.attack, 5);
				local aW = debug.getupvalue(aN.activeController.attack, 4);
				local aX = debug.getupvalue(aN.activeController.attack, 7);
				local aY = ((aV * 798405) + (aW * 727595)) % debug.getupvalue(aN.activeController.attack, 6);
				local aZ = (aW * 798405)(function()
					aY = ((aY * debug.getupvalue(aN.activeController.attack, 6)) + aZ) % 1099511627776;
					aV = math.floor(aY / debug.getupvalue(aN.activeController.attack, 6));
					aW = aY - (aV * debug.getupvalue(aN.activeController.attack, 6));
				end)();
				aX = aX + 1;
				debug.setupvalue(aN.activeController.attack, 5, aV);
				debug.setupvalue(aN.activeController.attack, 6, debug.getupvalue(aN.activeController.attack, 6));
				debug.setupvalue(aN.activeController.attack, 4, aW);
				debug.setupvalue(aN.activeController.attack, 7, aX);
				for A, v in pairs(aN.activeController.animator.anims.basic) do
					v:Play(0.01, 0.01, 0.01);
				end
				if (game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and aN.activeController.blades and aN.activeController.blades[1]) then
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(CurrentWeapon()));
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor((aY / 1099511627776) * 16777215), aX);
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", aU, aT, "");
				end
			end
		end
	end
end
function DropFruit()
	pcall(function()
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Position = UDim2.new(10.1, 0, 0.1, 0);
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true;
		local a_ = game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame;
		wait(0.3);
		for o, v in pairs(a_:GetChildren()) do
			if string.find(v.Name, "-") then
				for t, b0 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
					FruitStoreF = string.split(b0.Name, " ")[1];
					FruitStoreR = FruitStoreF .. "-" .. FruitStoreF;
					if (v.Name == FruitStoreR) then
						game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(b0.Name):Destroy();
					end
				end
			end
		end
		for o, v in pairs(a_:GetChildren()) do
			if string.find(v.Name, "-") then
				for t, b1 in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					FruitStoreF = string.split(b1.Name, " ")[1];
					FruitStoreR = FruitStoreF .. "-" .. FruitStoreF;
					if (v.Name == FruitStoreR) then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild(b1.Name):Destroy();
					end
				end
			end
		end
	end);
end
c:Dropdown("Select Weapon", {"Melee","Sword","Fruit","Gun"}, function(value)
	_G.SelectWeapon = value;
end);
_G.SelectWeapon = _G.SelectWeapon or "Melee";
task.spawn(function()
	while wait() do
		pcall(function()
			if (_G.SelectWeapon == "Melee") then
				for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Sword") then
				for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v.ToolTip == "Sword") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Gun") then
				for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v.ToolTip == "Gun") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Fruit") then
				for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v.ToolTip == "Blox Fruit") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name;
						end
					end
				end
			end
		end);
	end
end);
FastAttack = {"Slow","Fast","Extreme"};
c:Dropdown("Fast Attack Speed", FastAttack, function(value)
	SelectSpeedFast = value;
end);
SelectSpeedFast = "Fast" or SelectSpeedFast;
if (SelectSpeedFast == "Slow") then
	_G.Fast_Delay = 5;
elseif (SelectSpeedFast == "Fast") then
	_G.Fast_Delay = 0.025;
elseif (SelectSpeedFast == "Extreme") then
	_G.Fast_Delay = 0.001;
end
c:Seperator("Main Farm");
local b2 = c:Label("");
local b3 = c:Label("");
spawn(function()
	while task.wait() do
		if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
			b2:Set("Monster : ...");
			b3:Set("Quest : ..." .. " | Level : ...");
		elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
			pcall(function()
				CheckQuest();
				b2:Set("Monster : " .. Mon);
				b3:Set("Quest : " .. NameQuest .. " | Level : " .. LevelQuest);
			end);
		end
	end
end);
c:Dropdown("Farm Mode", {"Quest","No Quest"}, function(value)
	FarmMode = value;
end);
FarmMode = FarmMode or "Quest";
c:Toggle("Auto Farm Level", false, function(value)
	_G.AutoFarm = value;
	StopTween(_G.AutoFarm);
end);
spawn(function()
	while wait() do
		if ((FarmMode == "Quest") and _G.AutoFarm) then
			pcall(function()
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(b4, NameMon) then
					StartMagnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMagnet = false;
					CheckQuest();
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500) then
							BTP(CFrameQuest);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500) then
							TP1(CFrameQuest);
						end
					else
						TP1(CFrameQuest);
					end
					if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
								if (v.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMon = v.HumanoidRootPart.CFrame;
											TP1(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
											StartMagnet = true;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										until not _G.AutoFarm or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
									else
										StartMagnet = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						StartMagnet = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
							TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15, 10, 2));
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if ((FarmMode == "No Quest") and _G.AutoFarm) then
			pcall(function()
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(b4, NameMon) then
					StartMagnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMagnet = false;
					CheckQuest();
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 1500) then
							BTP(CFrameMon);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 1500) then
							TP1(CFrameMon);
						end
					else
						TP1(CFrameMon);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
								if (v.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMon = v.HumanoidRootPart.CFrame;
											TP1(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
											StartMagnet = true;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										until not _G.AutoFarm or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
									else
										StartMagnet = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						StartMagnet = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
							TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15, 10, 2));
						end
					end
				end
			end);
		end
	end
end);
if World1 then
	c:Toggle("Auto Farm Level Fast [1 -> 300]", false, function(value)
		_G.Farmfast = value;
		StopTween(_G.Farmfast);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
						_G.AutoFarm = false;
						_G.Farmfast = true;
					end
				end
			end
		end);
	end);
	spawn(function()
		while wait() do
			if (_G.Farmfast and World1) then
				pcall(function()
					if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == "Shanda") then
								if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										StardMag = true;
										FastMon = v.HumanoidRootPart.CFrame;
										v.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
										TP1(v.HumanoidRootPart.CFrame * Pos);
										game:GetService("VirtualUser"):CaptureController();
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									until not _G.Farmfast or not v.Parent or (v.Humanoid.Health <= 0) 
									StardMag = false;
									TP1(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531));
									UnEquipWeapon(_G.SelectWeapon);
								end
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
						TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2));
					end
				end);
			end
		end
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 75) then
						_G.Farmfast = false;
						_G.AutoPlayerHunter = true;
					end
				end
			end
		end);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 200) then
						_G.AutoFarm = true;
						_G.AutoPlayerHunter = false;
					end
				end
			end
		end);
	end);
end
c:Toggle("Auto Farm Nearest", false, function(value)
	_G.AutoFarmNearest = value;
	StopTween(_G.AutoFarmNearest);
end);
spawn(function()
	while wait() do
		if _G.AutoFarmNearest then
			for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (v.Name and v:FindFirstChild("Humanoid")) then
					if (v.Humanoid.Health > 0) then
						repeat
							wait();
							EquipWeapon(_G.SelectWeapon);
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local args = {[1]="Buso"};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
							end
							al(v.HumanoidRootPart.CFrame * Pos);
							v.HumanoidRootPart.CanCollide = false;
							Fastattack = true;
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame);
							AutoFarmNearestMagnet = true;
							PosMon = v.HumanoidRootPart.CFrame;
						until not _G.AutoFarmNearest or not v.Parent or (v.Humanoid.Health <= 0) 
						AutoFarmNearestMagnet = false;
						Fastattack = false;
					end
				end
			end
		end
	end
end);
c:Seperator("Cake Farm");
local b5 = c:Label("");
spawn(function()
	while wait() do
		pcall(function()
			if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
				b5:Set("Need Kill : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41));
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
				b5:Set("Need Kill : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40));
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
				b5:Set("Need Kill : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39));
			else
				b5:Set("Boss Is Spawning");
			end
		end);
	end
end);
c:Dropdown("Farm Mode", {"No Quest","Quest","Mastery"}, function(value)
	CakeFMode = value;
end);
CakeFMode = CakeFMode or "No Quest";
c:Toggle("Auto Farm Cake Prince", false, function(value)
	_G.AutoDoughtBoss = value;
	StopTween(_G.AutoDoughtBoss);
end);
spawn(function()
	while wait() do
		pcall(function()
			if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
				KillMob = tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41)) - 500;
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
				KillMob = tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 40, 41)) - 500;
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
				KillMob = tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 41, 41)) - 500;
			end
		end);
	end
end);
local b6 = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375);
spawn(function()
	while wait() do
		if ((CakeFMode == "No Quest") and _G.AutoDoughtBoss) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Cake Prince") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoDoughtBoss or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					al(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
				else
					if (KillMob == 0) then
					end
					if (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v.Name == "Cookie Crafter") or (v.Name == "Cake Guard") or (v.Name == "Baking Staff") or (v.Name == "Head Baker")) then
									if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											MagnetDought = true;
											PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame;
											al(v.HumanoidRootPart.CFrame * Pos);
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										until not _G.AutoDoughtBoss or not v.Parent or (v.Humanoid.Health <= 0) or (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0) 
									end
								end
							end
						else
							if BypassTP then
								if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - b6.Position).Magnitude > 1500) then
									BTP(b6);
								elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - b6.Position).Magnitude < 1500) then
									al(b6);
								end
							else
								al(b6);
							end
							MagnetDought = false;
							UnEquipWeapon(_G.SelectWeapon);
							al(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375));
							if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
								al(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
								al(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
								al(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
								al(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
							end
						end
					elseif game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
						al(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					end
				end
			end);
		end
	end
end);
local b7 = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.8030205e-8, 0.288177818, 6.930119e-8, 1, 7.519312e-8, -0.288177818, -5.2032135e-8, 0.957576931);
spawn(function()
	while wait() do
		if ((CakeFMode == "Quest") and _G.AutoDoughtBoss and World3) then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v.Name == "Cake Prince") or (v.Name == "Dough King")) then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoDoughtBoss or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
					al(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2));
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if ((CakeFMode == "Quest") and _G.AutoDoughtBoss and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince")) then
			pcall(function()
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(b4, "Cookie Crafter") then
					MagnetDought = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					MagnetDought = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - b7.Position).Magnitude > 1500) then
							BTP(b7);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - b7.Position).Magnitude < 1500) then
							al(b7);
						end
					else
						al(b7);
					end
					if ((b7.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest1", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
								if ((v.Name == "Cookie Crafter") or (v.Name == "Cake Guard") or (v.Name == "Baking Staff") or (v.Name == "Head Baker")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMonCake = v.HumanoidRootPart.CFrame;
											al(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
											MagnetDought = true;
											PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										until not _G.AutoDoughtBoss or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) or (v.Humanoid.Health <= 0) or (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0) 
									else
										MagnetDought = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						MagnetDought = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
							al(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2));
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if ((CakeFMode == "Mastery") and _G.AutoDoughtBoss and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince")) then
			pcall(function()
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(b4, "Cookie Crafter") then
					Magnet = false;
					UseSkillKub = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					MagnetDought = false;
					UseSkill = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - b7.Position).Magnitude > 1500) then
							BTP(b7);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - b7.Position).Magnitude < 1500) then
							al(b7);
						end
					else
						al(b7);
					end
					if ((b7.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest1", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
								if ((v.Name == "Cookie Crafter") or (v.Name == "Cake Guard") or (v.Name == "Baking Staff") or (v.Name == "Head Baker")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
										HealthMs = (v.Humanoid.MaxHealth * _G.Kill_At) / 100;
										repeat
											task.wait();
											if (v.Humanoid.Health <= HealthMs) then
												AutoHaki();
												EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value);
												TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0));
												v.HumanoidRootPart.CanCollide = false;
												PosMonCake = v.HumanoidRootPart.CFrame;
												PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
												UseSkillKub = true;
											else
												UseSkillKub = false;
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												TP1(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												PosMonCake = v.HumanoidRootPart.CFrame;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
											end
											MagnetDought = true;
											PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										until not _G.AutoDoughtBoss or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
									else
										UseSkillKub = false;
										MagnetDought = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						MagnetDought = false;
						UseSkillKub = false;
						local b8 = game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter");
						if b8 then
							TP1(b8.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10));
						elseif (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1) then
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true;
							task.wait();
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false;
						end
					end
				end
			end);
		end
	end
end);
c:Toggle("Auto Kill Cake Prince V2", false, function(value)
	_G.Autodoughking = value;
	StopTween(_G.Autodoughking);
end);
spawn(function()
	while wait() do
		if (_G.Autodoughking and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Dough King") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.Autodoughking or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.AutodoughkingHop then
						Hop();
					end
				end
			end);
		end
	end
end);
c:Toggle("Auto Spawn Cake Prince", true, function(value)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", value);
end);
c:Seperator("Bone Farm");
BoneCheck = c:Label("");
spawn(function()
	while wait() do
		pcall(function()
			BoneCheck:Set("Total Bone : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check"));
		end);
	end
end);
c:Dropdown("Farm Mode", {"No Quest","Quest","Mastery"}, function(value)
	BoneFMode = value;
end);
BoneFMode = BoneFMode or "No Quest";
c:Toggle("Auto Farm Bone", false, function(value)
	_G.Auto_Bone = value;
	StopTween(_G.Auto_Bone);
end);
local b9 = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375);
spawn(function()
	while wait() do
		if ((BoneFMode == "No Quest") and _G.Auto_Bone and World3) then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v.Name == "Reborn Skeleton") or (v.Name == "Living Zombie") or (v.Name == "Demonic Soul") or (v.Name == "Posessed Mummy")) then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									StartMagnetBoneMon = true;
									PosMonBone = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.Auto_Bone or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - b9.Position).Magnitude > 1500) then
							BTP(b9);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - b9.Position).Magnitude < 1500) then
							al(b9);
						end
					else
						al(b9);
					end
					UnEquipWeapon(_G.SelectWeapon);
					StartMagnetBoneMon = false;
					al(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375));
					for o, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if (v.Name == "Reborn Skeleton") then
							al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						elseif (v.Name == "Living Zombie") then
							al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						elseif (v.Name == "Demonic Soul") then
							al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						elseif (v.Name == "Posessed Mummy") then
							al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end
					end
				end
			end);
		end
	end
end);
local ba = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
spawn(function()
	while wait() do
		if ((BoneFMode == "Quest") and _G.Auto_Bone and World3) then
			pcall(function()
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(b4, "Demonic Soul") then
					StartMagnetBoneMon = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMagnetBoneMon = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ba.Position).Magnitude > 1500) then
							BTP(ba);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ba.Position).Magnitude < 1500) then
							al(ba);
						end
					else
						al(ba);
					end
					if ((ba.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
								if ((v.Name == "Reborn Skeleton") or (v.Name == "Living Zombie") or (v.Name == "Demonic Soul") or (v.Name == "Posessed Mummy")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMonBone = v.HumanoidRootPart.CFrame;
											al(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
											StartMagnetBoneMon = true;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										until not _G.Auto_Bone or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
									else
										StartMagnetBoneMon = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						StartMagnetBoneMon = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]") then
							al(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2));
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if ((BoneFMode == "Mastery") and _G.Auto_Bone and World3) then
			pcall(function()
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(b4, "Demonic Soul") then
					StartMagnetBoneMon = false;
					UseSkillKub = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMagnetBoneMon = false;
					UseSkillKub = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ba.Position).Magnitude > 1500) then
							BTP(ba);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ba.Position).Magnitude < 1500) then
							al(ba);
						end
					else
						al(ba);
					end
					if ((ba.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
								if ((v.Name == "Reborn Skeleton") or (v.Name == "Living Zombie") or (v.Name == "Demonic Soul") or (v.Name == "Posessed Mummy")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										HealthMs = (v.Humanoid.MaxHealth * _G.Kill_At) / 100;
										repeat
											task.wait();
											if (v.Humanoid.Health <= HealthMs) then
												AutoHaki();
												EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value);
												TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0));
												v.HumanoidRootPart.CanCollide = false;
												PosMonBone = v.HumanoidRootPart.CFrame;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
												UseSkillKub = true;
											else
												UseSkillKub = false;
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												TP1(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												PosMonBone = v.HumanoidRootPart.CFrame;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
											end
											StartMagnetBoneMon = true;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										until not _G.Auto_Bone or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
									else
										UseSkillKub = false;
										StartMagnetBoneMon = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						StartMagnetBoneMon = false;
						UseSkillKub = false;
						local b8 = game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul");
						if b8 then
							TP1(b8.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10));
						elseif (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1) then
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true;
							task.wait();
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false;
						end
					end
				end
			end);
		end
	end
end);
c:Toggle("Auto Random Surprise", false, function(value)
	_G.Auto_Random_Bone = value;
end);
spawn(function()
	pcall(function()
		while wait(0) do
			if _G.Auto_Random_Bone then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
			end
		end
	end);
end);
c:Toggle("Auto Pray", false, function(value)
	_G.Pray = value;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Pray then
				TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1);
			end
		end
	end);
end);
c:Toggle("Auto Try Luck", false, function(value)
	_G.Trylux = value;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Trylux then
				TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
			end
		end
	end);
end);
c:Seperator("Mastery Farm");
c:Toggle("Auto Farm Fruit Mastery", false, function(value)
	_G.AutoFarmFruitMastery = value;
	StopTween(_G.AutoFarmFruitMastery);
	if (_G.AutoFarmFruitMastery == false) then
		UseSkill = false;
	end
end);
spawn(function()
	while wait() do
		if _G.AutoFarmFruitMastery then
			pcall(function()
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(b4, NameMon) then
					Magnet = false;
					UseSkill = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMasteryFruitMagnet = false;
					UseSkill = false;
					CheckQuest();
					repeat
						wait();
						TP1(CFrameQuest);
					until ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not _G.AutoFarmFruitMastery 
					if ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5) then
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
						wait(0.1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
								if (v.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										HealthMs = (v.Humanoid.MaxHealth * _G.Kill_At) / 100;
										repeat
											task.wait();
											if (v.Humanoid.Health <= HealthMs) then
												AutoHaki();
												EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value);
												TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0));
												v.HumanoidRootPart.CanCollide = false;
												PosMonMasteryFruit = v.HumanoidRootPart.CFrame;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
												UseSkill = true;
											else
												UseSkill = false;
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												TP1(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												PosMonMasteryFruit = v.HumanoidRootPart.CFrame;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
											end
											StartMasteryFruitMagnet = true;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										until not _G.AutoFarmFruitMastery or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
									else
										UseSkill = false;
										StartMasteryFruitMagnet = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						StartMasteryFruitMagnet = false;
						UseSkill = false;
						local b8 = game:GetService("ReplicatedStorage"):FindFirstChild(Mon);
						if b8 then
							TP1(b8.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10));
						elseif (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1) then
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true;
							task.wait();
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false;
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if UseSkill then
			pcall(function()
				CheckQuest();
				for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value;
					elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value;
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
						if _G.SkillZ then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(2);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
						if _G.SkillZ then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(2);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
						if (_G.SkillZ and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1))) then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillV then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						if _G.SkillZ then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillV then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			if UseSkill then
				for o, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
					if (v.Name == "NotificationTemplate") then
						if string.find(v.Text, "Skill locked!") then
							v:Destroy();
						end
					end
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			if UseSkill then
				local args = {[1]=PosMonMasteryFruit.Position};
				game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args));
			end
		end);
	end);
end);
spawn(function()
	while wait() do
		if UseSkillKub then
			pcall(function()
				for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value;
					elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value;
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
						if _G.SkillZ then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(2);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
						if _G.SkillZ then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(2);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
						if (_G.SkillZ and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1))) then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillV then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						if _G.SkillZ then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillV then
							local args = {[1]=PosMonMasteryFruit.Position};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			if UseSkillKub then
				for o, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
					if (v.Name == "NotificationTemplate") then
						if string.find(v.Text, "Skill locked!") then
							v:Destroy();
						end
					end
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			if UseSkillKub then
				local args = {[1]=PosMonMasteryFruit.Position};
				game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args));
			end
		end);
	end);
end);
c:Toggle("Auto Farm Gun Mastery", false, function(value)
	_G.AutoFarmGunMastery = value;
	StopTween(_G.AutoFarmGunMastery);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoFarmGunMastery then
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(b4, NameMon) then
					Magnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMasteryGunMagnet = false;
					CheckQuest();
					TP1(CFrameQuest);
					if ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						pcall(function()
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == Mon) then
									repeat
										task.wait();
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
											HealthMin = (v.Humanoid.MaxHealth * _G.Kill_At) / 100;
											if (v.Humanoid.Health <= HealthMin) then
												EquipWeapon(SelectWeaponGun);
												TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0));
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(2, 2, 1);
												v.Head.CanCollide = false;
												local args = {[1]=v.HumanoidRootPart.Position,[2]=v.HumanoidRootPart};
												game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args));
											else
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												v.Head.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												TP1(v.HumanoidRootPart.CFrame * Pos);
												game:GetService("VirtualUser"):CaptureController();
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											end
											StartMasteryGunMagnet = true;
											PosMonMasteryGun = v.HumanoidRootPart.CFrame;
										else
											StartMasteryGunMagnet = false;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
										end
									until (v.Humanoid.Health <= 0) or (_G.AutoFarmGunMastery == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
									StartMasteryGunMagnet = false;
								end
							end
						end);
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						_G.AutoFarmGunMastery = false;
						local b8 = game:GetService("ReplicatedStorage"):FindFirstChild(Mon);
						if b8 then
							TP1(b8.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10));
						elseif (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1) then
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true;
							task.wait();
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false;
						end
					end
				end
			end
		end
	end);
end);
c:Toggle("Auto Farm Sword Mastery", false, function(value)
	_G.AutoSwordMastery = value;
	StopTween(_G.AutoSwordMastery);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoSwordMastery then
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(b4, NameMon) then
					Magnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					AutoSwordMasteryMag = false;
					CheckQuest();
					TP1(CFrameQuest);
					if ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						pcall(function()
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == Mon) then
									repeat
										task.wait();
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
											HealthMin = (v.Humanoid.MaxHealth * _G.Kill_At) / 100;
											if (v.Humanoid.Health <= HealthMin) then
												EquipWeaponSword();
												TP1(v.HumanoidRootPart.CFrame * Pos);
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												game:GetService("VirtualUser"):CaptureController();
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
												v.Head.CanCollide = false;
											else
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												v.Head.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												TP1(v.HumanoidRootPart.CFrame * Pos);
												game:GetService("VirtualUser"):CaptureController();
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											end
											AutoSwordMasteryMag = true;
											PosMon = v.HumanoidRootPart.CFrame;
										else
											AutoSwordMasteryMag = false;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
										end
									until (v.Humanoid.Health <= 0) or (_G.AutoSwordMastery == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
									AutoSwordMasteryMag = false;
								end
							end
						end);
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						AutoSwordMasteryMag = false;
						local b8 = game:GetService("ReplicatedStorage"):FindFirstChild(Mon);
						if b8 then
							TP1(b8.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10));
						elseif (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1) then
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true;
							task.wait();
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false;
						end
					end
				end
			end
		end
	end);
end);
c:Toggle("Use Skill Z", true, function(value)
	_G.SkillZ = value;
end);
c:Toggle("Use Skill X", true, function(value)
	_G.SkillX = value;
end);
c:Toggle("Use Skill C", true, function(value)
	_G.SkillC = value;
end);
c:Toggle("Use Skill V", true, function(value)
	_G.SkillV = value;
end);
c:Slider("Kill Monster At ..% Health", 0, 100, 30, function(value)
	_G.Kill_At = value;
end);
_G.Kill_At = 30;
c:Seperator("Boss Farm");
local bb = {};
for o, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	if string.find(v.Name, "Boss") then
		if (v.Name == "Ice Admiral") then
		else
			table.insert(bb, v.Name);
		end
	end
end
local bc = {};
local bd = {"The Gorilla King","Bobby","The Saw","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Saber Expert","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Greybeard","Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Awakened Ice Admiral","Tide Keeper","Order","Darkbeard","Cursed Captain","Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","Longma","Cake Queen","Soul Reaper","Rip_Indra","Cake Prince","Dough King"};
if (World1 or World2 or World3) then
	for t, be in pairs(bd) do
		if game:GetService("ReplicatedStorage"):FindFirstChild(be) then
			table.insert(bc, be);
		end
	end
end
for t, Q in pairs(bb) do
	table.insert(bc, Q);
end
local bf = c:Dropdown("Select Boss", bc, function(value)
	_G.SelectBoss = value;
end);
c:Button("Refresh Boss List", function()
	bf:Clear();
	wait(0.1);
	for o, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
		if ((v.Name == "rip_indra") or (v.Name == "Ice Admiral") or (v.Name == "Saber Expert") or (v.Name == "The Saw") or (v.Name == "Greybeard") or (v.Name == "Mob Leader") or (v.Name == "The Gorilla King") or (v.Name == "Bobby") or (v.Name == "Yeti") or (v.Name == "Vice Admiral") or (v.Name == "Warden") or (v.Name == "Chief Warden") or (v.Name == "Swan") or (v.Name == "Magma Admiral") or (v.Name == "Fishman Lord") or (v.Name == "Wysper") or (v.Name == "Thunder God") or (v.Name == "Cyborg") or (v.Name == "Don Swan") or (v.Name == "Diamond") or (v.Name == "Jeremy") or (v.Name == "Fajita") or (v.Name == "Smoke Admiral") or (v.Name == "Awakened Ice Admiral") or (v.Name == "Tide Keeper") or (v.Name == "Order") or (v.Name == "Darkbeard") or (v.Name == "Stone") or (v.Name == "Island Empress") or (v.Name == "Kilo Admiral") or (v.Name == "Captain Elephant") or (v.Name == "Beautiful Pirate") or (v.Name == "Cake Queen") or (v.Name == "rip_indra True Form") or (v.Name == "Longma") or (v.Name == "Soul Reaper") or (v.Name == "Cake Prince") or (v.Name == "Dough King")) then
			bf:Add(v.Name);
		end
	end
end);
c:Toggle("Auto Farm Selected Boss", false, function(value)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	_G.AutoFarmBoss = value;
	StopTween(_G.AutoFarmBoss);
end);
spawn(function()
	while wait() do
		if (_G.AutoFarmBoss and BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == _G.SelectBoss) then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoFarmBoss or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
					if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500) then
						al(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					else
						BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if (_G.AutoFarmBoss and not BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == _G.SelectBoss) then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									al(v.HumanoidRootPart.CFrame * Farm_pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoFarmBoss or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
					al(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7));
				end
			end);
		end
	end
end);
c:Toggle("Auto Farm All Boss", false, function(value)
	_G.AutoAllBoss = value;
	StopTween(_G.AutoAllBoss);
end);
spawn(function()
	while wait() do
		if _G.AutoAllBoss then
			pcall(function()
				for o, v in pairs(game.ReplicatedStorage:GetChildren()) do
					if ((v.Name == "rip_indra") or (v.Name == "Ice Admiral") or (v.Name == "Saber Expert") or (v.Name == "The Saw") or (v.Name == "Greybeard") or (v.Name == "Mob Leader") or (v.Name == "The Gorilla King") or (v.Name == "Bobby") or (v.Name == "Yeti") or (v.Name == "Vice Admiral") or (v.Name == "Warden") or (v.Name == "Chief Warden") or (v.Name == "Swan") or (v.Name == "Magma Admiral") or (v.Name == "Fishman Lord") or (v.Name == "Wysper") or (v.Name == "Thunder God") or (v.Name == "Cyborg") or (v.Name == "Don Swan") or (v.Name == "Diamond") or (v.Name == "Jeremy") or (v.Name == "Fajita") or (v.Name == "Smoke Admiral") or (v.Name == "Awakened Ice Admiral") or (v.Name == "Tide Keeper") or (v.Name == "Order") or (v.Name == "Darkbeard") or (v.Name == "Stone") or (v.Name == "Island Empress") or (v.Name == "Kilo Admiral") or (v.Name == "Captain Elephant") or (v.Name == "Beautiful Pirate") or (v.Name == "Cake Queen") or (v.Name == "rip_indra True Form") or (v.Name == "Longma") or (v.Name == "Soul Reaper") or (v.Name == "Cake Prince") or (v.Name == "Dough King")) then
						if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000) then
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.SelectWeapon);
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								v.Head.CanCollide = false;
								v.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
								al(v.HumanoidRootPart.CFrame * Pos);
								game:GetService("VirtualUser"):CaptureController();
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v.Humanoid.Health <= 0) or (_G.AutoAllBoss == false) or not v.Parent 
						end
					elseif _G.AutoAllBossHop then
						Hop();
					end
				end
			end);
		end
	end
end);
c:Seperator("Monster Farm");
if World1 then
	tableMon = {"Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"};
elseif World2 then
	tableMon = {"Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"};
elseif World3 then
	tableMon = {"Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy","Peanut Scout","Peanut President","Ice Cream Chef","Ice Cream Commander","Cookie Crafter","Cake Guard","Baking Staff","Head Baker","Cocoa Warrior","Chocolate Bar Battler","Sweet Thief","Candy Rebel","Candy Pirate","Snow Demon","Isle Outlaw","Island Boy","Sun-kissed Warrior","Isle Champion"};
end
c:Dropdown("Select Monster", tableMon, function(value)
	_G.SelectMob = value;
end);
c:Toggle("Auto Farm Selected Monster", false, function(value)
	_G.AutoFarmMob = value;
	StopTween(_G.AutoFarmMob);
end);
spawn(function()
	while wait() do
		if _G.AutoFarmMob then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectMob) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == _G.SelectMob) then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									SelectMag = true;
									PosMon = v.HumanoidRootPart.CFrame;
									v.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.AutoFarmMob or not v.Parent or (v.Humanoid.Health <= 0) 
								SelectMag = false;
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectMob) then
					al(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectMob).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2));
				end
			end);
		end
	end
end);
d:Toggle("Auto Click", false, function(value)
	_G.AutoClick = value;
end);
d:Toggle("Black Screen", false, function(value)
	_G.StartBlackScreen = value;
end);
spawn(function()
	while wait() do
		if _G.StartBlackScreen then
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500);
		else
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500);
		end
	end
end);
d:Toggle("White Screen", false, function(value)
	_G.WhiteScreen = value;
	if (_G.WhiteScreen == true) then
		game:GetService("RunService"):Set3dRenderingEnabled(false);
	elseif (_G.WhiteScreen == false) then
		game:GetService("RunService"):Set3dRenderingEnabled(true);
	end
end);
spawn(function()
	while wait() do
		if _G.WhiteScreen then
			for o, v in pairs(game.Workspace['_WorldOrigin']:GetChildren()) do
				if ((v.Name == "CurvedRing") or (v.Name == "SlashHit") or (v.Name == "DamageCounter") or (v.Name == "SwordSlash") or (v.Name == "SlashTail") or (v.Name == "Sounds")) then
					v:Destroy();
				end
			end
		end
	end
end);
d:Toggle("Invisible Monster", false, function(value)
	_G.inv = value;
	while wait() do
		if _G.inv then
			pcall(function()
				for o, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v.ClassName == "MeshPart") then
						v.Transparency = 1;
					end
				end
				for o, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v.Name == "Head") then
						v.Transparency = 1;
					end
				end
				for o, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v.ClassName == "Accessory") then
						v.Handle.Transparency = 1;
					end
				end
				for o, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v.ClassName == "Decal") then
						v.Transparency = 1;
					end
				end
			end);
		end
	end
end);
d:Toggle("Bypass TP", false, function(value)
	BypassTP = value;
end);
d:Toggle("Remove Notification", false, function(value)
	_G.Remove_trct = value;
end);
spawn(function()
	while wait() do
		if _G.Remove_trct then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false;
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true;
		end
	end
end);
d:Toggle("Remove Damage Text", true, function(value)
	_G.KobenHeegeen = value;
end);
spawn(function()
	while wait() do
		if _G.KobenHeegeen then
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false;
		else
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true;
		end
	end
end);
d:Toggle("Remove Death Effect", true, function(value)
	_G.Remove_Effect = value;
end);
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if _G.Remove_Effect then
			for o, v in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
				if (v.Name == "Death") then
					v:Destroy();
				end
			end
		end
	end);
end);
d:Toggle("Anti AFK", true, function()
	local bg = game:GetService("VirtualUser");
	repeat
		wait();
	until game:IsLoaded() 
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new());
		bg:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
		wait(1);
		bg:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	end);
end);
d:Toggle("Auto Rejoin", true, function()
	_G.AutoRejoin = value;
end);
spawn(function()
	while wait() do
		if _G.AutoRejoin then
			getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(bh)
				if ((bh.Name == "ErrorPrompt") and bh:FindFirstChild("MessageArea") and bh.MessageArea:FindFirstChild("ErrorFrame")) then
					game:GetService("TeleportService"):Teleport(game.PlaceId);
				end
			end);
		end
	end
end);
d:Toggle("Walk On Water", true, function()
	_G.WalkWater = value;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.WalkWater then
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000);
			else
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000);
			end
		end);
	end
end);
d:Toggle("Auto Set Spawn Point", true, function(value)
	_G.Set = value;
end);
spawn(function()
	while wait() do
		if _G.Set then
			pcall(function()
				local args = {[1]="SetSpawnPoint"};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			end);
		end
	end
end);
d:Toggle("Auto Turn On Buso Haki", true, function(value)
	_G.AUTOHAKI = value;
end);
spawn(function()
	while wait(0.1) do
		if _G.AUTOHAKI then
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local args = {[1]="Buso"};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			end
		end
	end
end);
d:Toggle("Fast Attack", true, function(value)
	_G.FastAttack = value;
end);
task.spawn(function()
	pcall(function()
		while task.wait(_G.Fast_Delay) do
			if (Fastattack or FastAttack or _G.FastAttack) then
				AttackFunction();
			end
		end
	end);
end);
d:Toggle("Bring Mob", true, function(value)
	_G.BringMonster = value;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.AutoFarm and StartMagnet and (v.Name == Mon) and ((Mon == "Factory Staff") or (Mon == "Monkey") or (Mon == "Dragon Crew Warrior") or (Mon == "Dragon Crew Archer")) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0) and ((v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220)) then
						v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v.HumanoidRootPart.CFrame = PosMon;
						v.Humanoid:ChangeState(14);
						v.HumanoidRootPart.CanCollide = false;
						v.Head.CanCollide = false;
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.AutoFarm and StartMagnet and (v.Name == Mon) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0) and ((v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v.HumanoidRootPart.CFrame = PosMon;
						v.Humanoid:ChangeState(14);
						v.HumanoidRootPart.CanCollide = false;
						v.Head.CanCollide = false;
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
				end
			end
		end);
	end
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.AutoFarm and StartMagnet and (v.Name == Mon) and ((Mon == "Factory Staff") or (Mon == "Monkey") or (Mon == "Dragon Crew Warrior") or (Mon == "Dragon Crew Archer")) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0) and ((v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250)) then
						v.HumanoidRootPart.Size = Vector3.new(150, 150, 150);
						v.HumanoidRootPart.CFrame = PosMon;
						v.Humanoid:ChangeState(14);
						v.HumanoidRootPart.CanCollide = false;
						v.Head.CanCollide = false;
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.AutoFarm and StartMagnet and (v.Name == Mon) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0) and ((v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v.HumanoidRootPart.Size = Vector3.new(150, 150, 150);
						v.HumanoidRootPart.CFrame = PosMon;
						v.Humanoid:ChangeState(14);
						v.HumanoidRootPart.CanCollide = false;
						v.Head.CanCollide = false;
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
					if (_G.AutoEctoplasm and StartEctoplasmMagnet) then
						if (string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0) and ((v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.HumanoidRootPart.CFrame = EctoplasmMon;
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.AutoRengoku and StartRengokuMagnet) then
						if (((v.Name == "Snow Lurker") or (v.Name == "Arctic Warrior")) and ((v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = RengokuMon;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.AutoMusketeerHat and StartMagnetMusketeerhat) then
						if ((v.Name == "Forest Pirate") and ((v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = MusketeerHatMon;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.AutoObservationHakiV2 and Mangnetcitzenmon) then
						if ((v.Name == "Forest Pirate") and ((v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = PosHee;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Auto_EvoRace and StartEvoMagnet) then
						if ((v.Name == "Zombie") and ((v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = PosMonEvo;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.AutoBartilo and AutoBartiloBring) then
						if ((v.Name == "Swan Pirate") and ((v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = PosMonBarto;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.AutoFarmFruitMastery and StartMasteryFruitMagnet) then
						if (v.Name == "Monkey") then
							if (((v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v.Humanoid:ChangeState(14);
								v.HumanoidRootPart.CanCollide = false;
								v.Head.CanCollide = false;
								v.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v.Name == "Factory Staff") then
							if (((v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v.Humanoid:ChangeState(14);
								v.HumanoidRootPart.CanCollide = false;
								v.Head.CanCollide = false;
								v.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v.Name == Mon) then
							if (((v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v.Humanoid:ChangeState(14);
								v.HumanoidRootPart.CanCollide = false;
								v.Head.CanCollide = false;
								v.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.AutoFarmGunMastery and StartMasteryGunMagnet) then
						if (v.Name == "Monkey") then
							if (((v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v.Humanoid:ChangeState(14);
								v.HumanoidRootPart.CanCollide = false;
								v.Head.CanCollide = false;
								v.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v.Name == "Factory Staff") then
							if (((v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v.Humanoid:ChangeState(14);
								v.HumanoidRootPart.CanCollide = false;
								v.Head.CanCollide = false;
								v.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v.Name == Mon) then
							if (((v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v.Humanoid:ChangeState(14);
								v.HumanoidRootPart.CanCollide = false;
								v.Head.CanCollide = false;
								v.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.Auto_Bone and StartMagnetBoneMon) then
						if (((v.Name == "Reborn Skeleton") or (v.Name == "Living Zombie") or (v.Name == "Demonic Soul") or (v.Name == "Posessed Mummy")) and ((v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = PosMonBone;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.AutoFarmCandy and StartCandyMagnet) then
						if (((v.Name == "Ice Cream Chef") or (v.Name == "Ice Cream Commander")) and ((v.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = CandyMon;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (StardFarm and FarmMag) then
						if (((v.Name == "Cocoa Warrior") or (v.Name == "Chocolate Bar Battler") or (v.Name == "Sweet Thief") or (v.Name == "Candy Rebel")) and ((v.HumanoidRootPart.Position - PosGG.Position).Magnitude <= 250) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = PosGG;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Farmfast and StardMag) then
						if (((v.Name == "Shanda") or (v.Name == "Shanda")) and ((v.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = FastMon;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.AutoDoughtBoss and MagnetDought) then
						if (((v.Name == "Cookie Crafter") or (v.Name == "Cake Guard") or (v.Name == "Baking Staff") or (v.Name == "Head Baker")) and ((v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= _G.BringMode) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v.Humanoid:ChangeState(14);
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while true do
		wait();
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
		end
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (MakoriGayMag and _G.BringMonster) then
				for o, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if (not string.find(v.Name, "Boss") and ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosGay;
							v.Humanoid.JumpPower = 0;
							v.Humanoid.WalkSpeed = 0;
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v.HumanoidRootPart.Transparency = 1;
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							v.Humanoid:ChangeState(11);
							v.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (_G.AutoSwordMastery and AutoSwordMasteryMag and _G.BringMonster) then
				for o, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if (not string.find(v.Name, "Boss") and ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon;
							v.Humanoid.JumpPower = 0;
							v.Humanoid.WalkSpeed = 0;
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v.HumanoidRootPart.Transparency = 1;
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							v.Humanoid:ChangeState(11);
							v.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (Min_XT_Is_Kak and _G.BringMonster) then
				for o, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if (not string.find(v.Name, "Boss") and ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosNarathiwat;
							v.Humanoid.JumpPower = 0;
							v.Humanoid.WalkSpeed = 0;
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v.HumanoidRootPart.Transparency = 1;
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							v.Humanoid:ChangeState(11);
							v.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if ((_G.AutoFarmNearest and AutoFarmNearestMagnet) or (SelectMag and _G.BringMonster)) then
				for o, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if (not string.find(v.Name, "Boss") and ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon;
							v.Humanoid.JumpPower = 0;
							v.Humanoid.WalkSpeed = 0;
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v.HumanoidRootPart.Transparency = 1;
							v.HumanoidRootPart.CanCollide = false;
							v.Head.CanCollide = false;
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy();
							end
							v.Humanoid:ChangeState(11);
							v.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
d:Slider("Bring Mob Distance", 0, 350, 300, function(value)
	_G.BringMode = value;
end);
_G.BringMode = 300;
d:Slider("Farm Distance", 0, 50, 35, function(value)
	PosY = value;
end);
PosX = 1;
PosY = 35;
PosZ = 40;
e:Toggle("Auto Second Sea", false, function(value)
	_G.AutoSecondSea = value;
	StopTween(_G.AutoSecondSea);
end);
spawn(function()
	while wait() do
		if _G.AutoSecondSea then
			pcall(function()
				local bi = game:GetService("Players").LocalPlayer.Data.Level.Value;
				if ((bi >= 700) and World1) then
					if ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
						local bj = CFrame.new(4849.29883, 5.65138149, 719.611877);
						repeat
							al(bj);
							wait();
						until ((bj.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.AutoSecondSea == false) 
						wait(1.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
						wait(0.5);
						EquipWeapon("Key");
						repeat
							al(CFrame.new(1347.7124, 37.3751602, -1325.6488));
							wait();
						until ((Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.AutoSecondSea == false) 
						wait(0.5);
					elseif ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == "Ice Admiral") then
									if (not v.Humanoid.Health <= 0) then
										if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
											OldCFrameSecond = v.HumanoidRootPart.CFrame;
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												v.HumanoidRootPart.CFrame = OldCFrameSecond;
												al(v.HumanoidRootPart.CFrame * Pos);
												game:GetService("VirtualUser"):CaptureController();
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
												sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											until not _G.AutoSecondSea or not v.Parent or (v.Humanoid.Health <= 0) 
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
									end
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
							al(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5, 10, 7));
						end
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Third Sea", false, function(value)
	_G.AutoThirdSea = value;
	StopTween(_G.AutoThirdSea);
end);
spawn(function()
	while wait() do
		if _G.AutoThirdSea then
			pcall(function()
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500) and World2) then
					_G.AutoFarm = false;
					if (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "General") == 0) then
						al(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016));
						if ((CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
						end
						wait(1.8);
						if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == "rip_indra") then
									OldCFrameThird = v.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										al(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CFrame = OldCFrameThird;
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										game:GetService("VirtualUser"):CaptureController();
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until (_G.AutoThirdSea == false) or (v.Humanoid.Health <= 0) or not v.Parent 
								end
							end
						elseif (not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and ((CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000)) then
							al(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016));
						end
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Factory", false, function(value)
	_G.AutoFactory = value;
	StopTween(_G.AutoFactory);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoFactory then
				if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v.Name == "Core") and (v.Humanoid.Health > 0)) then
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.SelectWeapon);
								al(CFrame.new(448.46756, 199.356781, -441.389252));
								game:GetService("VirtualUser"):CaptureController();
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
							until (v.Humanoid.Health <= 0) or (_G.AutoFactory == false) 
						end
					end
				else
					al(CFrame.new(448.46756, 199.356781, -441.389252));
				end
			end
		end);
	end
end);
e:Toggle("Auto Pirate Raid", false, function(value)
	_G.RaidPirate = value;
	StopTween(_G.RaidPirate);
end);
spawn(function()
	while wait() do
		if _G.RaidPirate then
			pcall(function()
				local bk = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058e-9, 0.380223751, 3.588102e-8, 1, -1.06665446e-7, -0.380223751, 1.1229711e-7, 0.924894512);
				if ((CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (_G.RaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
							if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									al(v.HumanoidRootPart.CFrame * Pos);
									Click();
								until (v.Humanoid.Health <= 0) or not v.Parent or not _G.RaidPirate 
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bk.Position).Magnitude > 1500) then
							BTP(bk);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bk.Position).Magnitude < 1500) then
							al(bk);
						end
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Soul Guitar", false, function(value)
	_G.AutoNevaSoulGuitar = value;
	StopTween(_G.AutoNevaSoulGuitar);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoNevaSoulGuitar then
				if (GetWeaponInventory("Soul Guitar") == false) then
					if ((CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000) then
						if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy", true);
						elseif (game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0) then
							if (game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0) then
								Quest2 = true;
								repeat
									wait();
									al(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875));
								until ((CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not _G.AutoNevaSoulGuitar 
								wait(1);
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector);
								wait(1);
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector);
								wait(1);
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector);
								wait(1);
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector);
								wait(1);
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector);
								wait(1);
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector);
								wait(1);
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector);
								wait(1);
							elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
								if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
									Quest4 = true;
									repeat
										wait();
										al(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625));
									until ((CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not _G.AutoNevaSoulGuitar 
									wait(1);
									al(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector);
									wait(1);
									al(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
									wait(1);
									al(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
									wait(1);
									al(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector);
									wait(1);
									al(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
								else
									Quest3 = true;
								end
							else
								if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
									local args = {[1]="GuitarPuzzleProgress",[2]="Ghost"};
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
								end
								if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
									for o, v in pairs(game.Workspace.Enemies:GetChildren()) do
										if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
											if (v.Name == "Living Zombie") then
												EquipWeapon(_G.SelectWeapon);
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
												v.HumanoidRootPart.Transparency = 1;
												v.Humanoid.JumpPower = 0;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0);
												al(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875));
												game:GetService("VirtualUser"):CaptureController();
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											end
										end
									end
								else
									al(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875));
								end
							end
						elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Error") then
							print("Go to Grave");
							al(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125));
						elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Nothing") then
							print("Wait Next Night");
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true);
						end
					else
						al(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125));
					end
				elseif _G.soulGuitarhop then
					hop();
				end
			end
		end);
	end
end);
e:Toggle("Auto Kill Arena Trainer", false, function(value)
	_G.Namfon = value;
	StopTween(_G.Namfon);
end);
local bl = CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312);
spawn(function()
	while wait() do
		if (_G.Namfon and World3) then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy")) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") or game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") or game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy")) then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v.Name == "Training Dummy") or (v.Name == "Training Dummy") or (v.Name == "Training Dummy")) then
									if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
										repeat
											wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											Fastattack = true;
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											al(v.HumanoidRootPart.CFrame * Pos);
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										until (_G.Namfon == false) or (v.Humanoid.Health <= 0) or not v.Parent 
										Fastattack = false;
									end
								end
							end
						else
							if BypassTP then
								if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bl.Position).Magnitude > 1500) then
									BTP(bl);
								elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bl.Position).Magnitude < 1500) then
									al(bl);
								end
							else
								al(bl);
							end
							al(CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312));
							if game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
								al(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame * MethodFarm);
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
								al(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame * MethodFarm);
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
								al(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame * MethodFarm);
							end
						end
					end
				elseif (_G.AutoArenaTrainerHop and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer") == "I don't have anything for you right now. Come back later.")) then
					hop();
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer");
				end
			end);
		end
	end
end);
e:Toggle("Auto Kill Rip_Indra", false, function(value)
	_G.AutoDarkDagger = value;
	StopTween(_G.AutoDarkDagger);
end);
local bm = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoDarkDagger then
				if (game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v.Name == ("rip_indra True Form" or (v.Name == "rip_indra"))) and (v.Humanoid.Health > 0) and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670), workspace.CurrentCamera.CFrame);
								end);
							until (_G.AutoDarkDagger == false) or (v.Humanoid.Health <= 0) 
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bm.Position).Magnitude > 1500) then
							BTP(bm);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bm.Position).Magnitude < 1500) then
							al(bm);
						end
					else
						al(bm);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781));
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.AutoDarkDagger_Hop and _G.AutoDarkDagger and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
				Hop();
			end
		end
	end);
end);
e:Toggle("Auto Press Haki Button", false, function(value)
	Open_Color_Haki = value;
	StopTween(Open_Color_Haki);
end);
spawn(function()
	while wait(0.3) do
		pcall(function()
			if Open_Color_Haki then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
				wait(0.5);
				repeat
					al(CFrame.new(-5420.16602, 1084.9657, -2666.8208));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10) 
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
				wait(0.5);
				repeat
					al(CFrame.new(-5414.41357, 309.865753, -2212.45776));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10) 
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White");
				wait(0.5);
				repeat
					al(CFrame.new(-4971.47559, 331.565765, -3720.02954));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10) 
				wait(0.5);
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
				wait(3);
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
			end
		end);
	end
end);
e:Toggle("Auto Kill White Beard", false, function(value)
	_G.Autogay = value;
	StopTween(_G.Autogay);
end);
local bn = CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375);
spawn(function()
	while wait() do
		if (_G.Autogay and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Greybeard") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.Autogay or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bn.Position).Magnitude > 1500) then
							BTP(bn);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bn.Position).Magnitude < 1500) then
							al(bn);
						end
					else
						al(bn);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.Autogayhop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Swan Glasses", false, function(value)
	_G.AutoFarmSwanGlasses = value;
	StopTween(_G.AutoFarmSwanGlasses);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoFarmSwanGlasses then
				if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v.Name == "Don Swan") and (v.Humanoid.Health > 0) and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670));
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								end);
							until (_G.AutoFarmSwanGlasses == false) or (v.Humanoid.Health <= 0) 
						end
					end
				else
					repeat
						task.wait();
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625));
					until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) or (_G.AutoFarmSwanGlasses == false) 
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if (_G.AutoFarmSwanGlasses and _G.AutoFarmSwanGlasses_Hop and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan") and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan")) then
				Hop();
			end
		end
	end);
end);
e:Toggle("Auto Musketeer Hat", false, function(value)
	_G.AutoMusketeerHat = value;
	StopTween(_G.AutoMusketeerHat);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.AutoMusketeerHat then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == "Forest Pirate") then
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											al(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											MusketeerHatMon = v.HumanoidRootPart.CFrame;
											StartMagnetMusketeerhat = true;
										end);
									until (_G.AutoMusketeerHat == false) or not v.Parent or (v.Humanoid.Health <= 0) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
									StartMagnetMusketeerhat = false;
								end
							end
						else
							StartMagnetMusketeerhat = false;
							al(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
						end
					else
						al(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
						if ((Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
						end
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false)) then
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == "Captain Elephant") then
									OldCFrameElephant = v.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											al(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.CFrame = OldCFrameElephant;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										end);
									until (_G.AutoMusketeerHat == false) or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
								end
							end
						else
							al(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375));
						end
					else
						al(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
						if ((CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
						end
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2)) then
					al(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125));
				end
			end
		end
	end);
end);
e:Toggle("Auto Rainbow Haki", false, function(value)
	_G.Auto_Rainbow_Haki = value;
	StopTween(_G.Auto_Rainbow_Haki);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Auto_Rainbow_Haki then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					al(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875));
					if ((Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
						wait(1.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
					end
				elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == "Stone") then
								OldCFrameRainbow = v.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									al(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Auto_Rainbow_Haki == false) or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
							end
						end
					else
						al(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.000020325184, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199));
					end
				elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == "Island Empress") then
								OldCFrameRainbow = v.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									al(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Auto_Rainbow_Haki == false) or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
							end
						end
					else
						al(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, "-0", -0.994878292, "-0", 1, "-0", 0.994878292, 0, -0.101080291));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == "Kilo Admiral") then
								OldCFrameRainbow = v.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									al(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v.HumanoidRootPart.CFrame = OldCFrameRainbow;
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Auto_Rainbow_Haki == false) or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
							end
						end
					else
						al(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, "-0", -0.143904909, "-0", 1.00000012, "-0", 0.143904924, 0, -0.989591479));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == "Captain Elephant") then
								OldCFrameRainbow = v.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									al(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v.HumanoidRootPart.CFrame = OldCFrameRainbow;
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Auto_Rainbow_Haki == false) or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
							end
						end
					else
						al(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.988499e-8, 0.69961375, -1.0206575e-7, 1, -9.943831e-9, -0.69961375, -6.4301524e-8, 0.714521289));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == "Beautiful Pirate") then
								OldCFrameRainbow = v.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									al(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v.HumanoidRootPart.CFrame = OldCFrameRainbow;
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Auto_Rainbow_Haki == false) or (v.Humanoid.Health <= 0) or not v.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
							end
						end
					else
						al(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359));
					end
				else
					al(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875));
					if ((Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
						wait(1.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
					end
				end
			end
		end
	end);
end);
e:Toggle("Auto Evo Race V2", false, function(value)
	_G.Auto_EvoRace = value;
	StopTween(_G.Auto_EvoRace);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Auto_EvoRace then
				if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 0) then
						al(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.390141e-8, -0.68292886, 3.5996322e-8, 1, 5.5066703e-8, 0.68292886, 1.5642467e-8, -0.730484903));
						if ((Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
							wait(1.3);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2");
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 1) then
						pcall(function()
							if (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1")) then
								al(game:GetService("Workspace").Flower1.CFrame);
							elseif (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2")) then
								al(game:GetService("Workspace").Flower2.CFrame);
							elseif (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3")) then
								if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
									for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (v.Name == "Zombie") then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												al(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												game:GetService("VirtualUser"):CaptureController();
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
												PosMonEvo = v.HumanoidRootPart.CFrame;
												StartEvoMagnet = true;
											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or (v.Humanoid.Health <= 0) or (_G.Auto_EvoRace == false) 
											StartEvoMagnet = false;
										end
									end
								else
									StartEvoMagnet = false;
									al(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234));
								end
							end
						end);
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 2) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3");
					end
				end
			end
		end
	end);
end);
e:Toggle("Auto Bartilo Quest", false, function(value)
	_G.AutoBartilo = value;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.AutoBartilo then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
							Ms = "Swan Pirate";
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == Ms) then
									pcall(function()
										repeat
											task.wait();
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v.HumanoidRootPart.Transparency = 1;
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											al(v.HumanoidRootPart.CFrame * Pos);
											PosMonBarto = v.HumanoidRootPart.CFrame;
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											AutoBartiloBring = true;
										until not v.Parent or (v.Humanoid.Health <= 0) or (_G.AutoBartilo == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
										AutoBartiloBring = false;
									end);
								end
							end
						else
							repeat
								al(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582));
								wait();
							until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582)).Magnitude <= 10) 
						end
					else
						repeat
							al(CFrame.new(-456.28952, 73.0200958, 299.895966));
							wait();
						until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10) 
						wait(1.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1);
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1)) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
						Ms = "Jeremy";
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == Ms) then
								OldCFrameBartlio = v.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									EquipWeapon(_G.SelectWeapon);
									AutoHaki();
									v.HumanoidRootPart.Transparency = 1;
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v.HumanoidRootPart.CFrame = OldCFrameBartlio;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until not v.Parent or (v.Humanoid.Health <= 0) or (_G.AutoBartilo == false) 
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
						repeat
							al(CFrame.new(-456.28952, 73.0200958, 299.895966));
							wait();
						until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10) 
						wait(1.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo");
						wait(1);
						repeat
							al(CFrame.new(2099.88159, 448.931, 648.997375));
							wait();
						until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10) 
						wait(2);
					else
						repeat
							al(CFrame.new(2099.88159, 448.931, 648.997375));
							wait();
						until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10) 
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2)) then
					repeat
						al(CFrame.new(-1850.49329, 13.1789551, 1750.89685));
						wait();
					until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10) 
					wait(1);
					repeat
						al(CFrame.new(-1858.87305, 19.3777466, 1712.01807));
						wait();
					until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10) 
					wait(1);
					repeat
						al(CFrame.new(-1803.94324, 16.5789185, 1750.89685));
						wait();
					until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10) 
					wait(1);
					repeat
						al(CFrame.new(-1858.55835, 16.8604317, 1724.79541));
						wait();
					until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10) 
					wait(1);
					repeat
						al(CFrame.new(-1869.54224, 15.987854, 1681.00659));
						wait();
					until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10) 
					wait(1);
					repeat
						al(CFrame.new(-1800.0979, 16.4978027, 1684.52368));
						wait();
					until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10) 
					wait(1);
					repeat
						al(CFrame.new(-1819.26343, 14.795166, 1717.90625));
						wait();
					until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10) 
					wait(1);
					repeat
						al(CFrame.new(-1813.51843, 14.8604736, 1724.79541));
						wait();
					until not _G.AutoBartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10) 
				end
			end
		end
	end);
end);
e:Toggle("Auto Holy Torch", false, function(value)
	_G.AutoHolyTorch = value;
	StopTween(_G.AutoHolyTorch);
end);
spawn(function()
	while wait(0.5) do
		pcall(function()
			if _G.AutoHolyTorch then
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch")) then
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					until (Vector3.new(-10752.4434, 415.261749, -9367.43848) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
					wait(2);
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229));
					until (Vector3.new(-11671.6289, 333.78125, -9474.31934) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
					wait(2);
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642));
					until (Vector3.new(-12133.1406, 521.507446, -10654.292) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
					wait(2);
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228));
					until (Vector3.new(-13336.127, 484.521179, -6985.31689) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
					wait(2);
					EquipWeapon("Holy Torch");
					repeat
						wait(0.2);
						TP1(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108));
					until (Vector3.new(-13487.623, 336.436188, -7924.53857) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
					wait(2);
					Com();
					wait(20);
				end
			end
		end);
	end
end);
e:Seperator("Elite Hunter");
local bo = e:Label("");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
				bo:Set("Status : Elite Spawn!");
			else
				bo:Set("Status : Elite Not Spawn");
			end
		end);
	end
end);
local bp = e:Label("");
spawn(function()
	pcall(function()
		while wait() do
			bp:Set("Elite Progress : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"));
		end
	end);
end);
e:Toggle("Auto Elite Hunter", false, function(value)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	_G.AutoElitehunter = value;
	StopTween(_G.AutoElitehunter);
end);
local bq = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188);
spawn(function()
	while wait() do
		if (_G.AutoElitehunter and World3) then
			pcall(function()
				local b4 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bq.Position).Magnitude > 1500) then
							BTP(bq);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bq.Position).Magnitude < 1500) then
							al(bq);
						end
					else
						al(bq);
					end
					if ((Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter");
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (string.find(b4, "Diablo") or string.find(b4, "Deandre") or string.find(b4, "Urban")) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v.Name == "Diablo") or (v.Name == "Deandre") or (v.Name == "Urban")) then
									if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											al(v.HumanoidRootPart.CFrame * Pos);
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.AutoElitehunter == false) or (v.Humanoid.Health <= 0) or not v.Parent 
									end
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
							al(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
							al(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
							al(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						elseif _G.AutoEliteHunterHop then
							Hop();
						else
							al(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188));
						end
					end
				end
			end);
		end
	end
end);
e:Seperator("Observation Haki");
local br = e:Label("");
spawn(function()
	while wait() do
		pcall(function()
			br:Set("Observation Level : " .. math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value));
		end);
	end
end);
e:Toggle("Auto Farm Observation Haki", false, function(value)
	_G.AutoObservation = value;
	StopTween(_G.AutoObservation);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoObservation then
				repeat
					task.wait();
					if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):SetKeyDown("0x65");
						wait(2);
						game:GetService("VirtualUser"):SetKeyUp("0x65");
					end
				until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation 
			end
		end);
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoObservation then
				if (game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000) then
					game:GetService("StarterGui"):SetCore("SendNotification", {Title="Observation",Text="You Are Maxed Point",Icon="rbxassetid://15689000757",Duration=2.5});
					wait(2);
				elseif World2 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
							until (_G.AutoObservation == false) or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") 
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)) + wait(1);
								if (not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.AutoObservation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.AutoObservation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") 
						end
					else
						al(CFrame.new(-5478.39209, 15.9775667, -5246.9126));
					end
				elseif World1 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
							until (_G.AutoObservation == false) or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") 
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
								wait(1);
								if (not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.AutoObservation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.AutoObservation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") 
						end
					else
						al(CFrame.new(5533.29785, 88.1079102, 4852.3916));
					end
				elseif World3 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
							until (_G.AutoObservation == false) or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") 
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
								wait(1);
								if (not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.AutoObservation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.AutoObservation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") 
						end
					else
						al(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
					end
				end
			end
		end
	end);
end);
e:Toggle("Auto Observation Haki V2", false, function(value)
	_G.AutoObservationv2 = value;
	StopTween(_G.AutoObservationv2);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoObservationv2 then
				if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3) then
					_G.AutoMusketeerHat = false;
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) then
						repeat
							al(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625));
							wait();
						until not _G.AutoObservationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10) 
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
					elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl")) then
						repeat
							al(CFrame.new(-10920.125, 624.20275878906, -10266.995117188));
							wait();
						until not _G.AutoObservationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10) 
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start");
						wait(1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
					else
						for o, v in pairs(game:GetService("Workspace"):GetDescendants()) do
							if ((v.Name == "Apple") or (v.Name == "Banana") or (v.Name == "Pineapple")) then
								v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
								wait();
								firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Handle, 0);
								wait();
							end
						end
					end
				else
					_G.AutoMusketeerHat = true;
				end
			end
		end);
	end
end);
e:Seperator("Lengedary Sword");
LegendSwords = e:Label("");
spawn(function()
	pcall(function()
		while wait() do
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
				LegendSwords:Set("Sword Spawn : Shisui");
			elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2") then
				LegendSwords:Set("Sword Spawn : Wando");
			elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3") then
				LegendSwords:Set("Sword Spawn : Saddi");
			else
				LegendSwords:Set("Not Found Lengedary Sword");
			end
		end
	end);
end);
e:Toggle("Auto Buy Lengedary Sword", false, function(value)
	_G.AutoBuyLegendarySword = value;
end);
spawn(function()
	while wait() do
		if _G.AutoBuyLegendarySword then
			pcall(function()
				local args = {[1]="LegendarySwordDealer",[2]="1"};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
				local args = {[1]="LegendarySwordDealer",[2]="2"};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
				local args = {[1]="LegendarySwordDealer",[2]="3"};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
				if (_G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2) then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
e:Seperator("Enchancement Colour");
ColorHaki = e:Label("");
local bs = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1");
spawn(function()
	pcall(function()
		while wait() do
			if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1") then
				ColorHaki:Set(bs);
			else
				ColorHaki:Set("Not Found HakiDealer");
			end
		end
	end);
end);
e:Toggle("Auto Buy Enchancement Colour", false, function(value)
	_G.AutoBuyEnchancementColour = valu;
end);
spawn(function()
	while wait() do
		if _G.AutoBuyEnchancementColour then
			local args = {[1]="ColorsDealer",[2]="2"};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			if (_G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1) then
				wait(10);
				Hop();
			end
		end
	end
end);
e:Seperator("Auto Material");
e:Toggle("Auto Farm Radioactive", false, function(value)
	Radioactive = value;
	StopTween(Radioactive);
end);
local bt = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312);
spawn(function()
	while wait() do
		if (Radioactive and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Factory Staff") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not Radioactive or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bt.Position).Magnitude > 1500) then
							BTP(bt);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bt.Position).Magnitude < 1500) then
							al(bt);
						end
					else
						al(bt);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Mystic Droplet", false, function(value)
	_G.Makori_gay = value;
	StopTween(_G.Makori_gay);
end);
local bu = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875);
spawn(function()
	while wait() do
		if (_G.Makori_gay and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Water Fighter") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.Makori_gay or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bu.Position).Magnitude > 1500) then
							BTP(bu);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bu.Position).Magnitude < 1500) then
							al(bu);
						end
					else
						al(bu);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Magma Ore", false, function(value)
	_G.Umm = value;
	StopTween(_G.Umm);
end);
local bv = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875);
spawn(function()
	while wait() do
		if (_G.Umm and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Military Spy") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.Umm or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bv.Position).Magnitude > 1500) then
							BTP(bv);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bv.Position).Magnitude < 1500) then
							al(bv);
						end
					else
						al(bv);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
local bw = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375);
spawn(function()
	while wait() do
		if (_G.Umm and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Lava Pirate") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.Umm or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bw.Position).Magnitude > 1500) then
							BTP(bw);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bw.Position).Magnitude < 1500) then
							al(bw);
						end
					else
						al(bw);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Angel Wing", false, function(value)
	_G.Auto_Wing = value;
	StopTween(_G.Auto_Wing);
end);
local bx = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375);
spawn(function()
	while wait() do
		if (_G.Auto_Wing and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Royal Soldier") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.Auto_Wing or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bx.Position).Magnitude > 1500) then
							BTP(bx);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bx.Position).Magnitude < 1500) then
							al(bx);
						end
					else
						al(bx);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Leather", false, function(value)
	_G.Leather = value;
	StopTween(_G.Leather);
end);
local by = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625);
spawn(function()
	while wait() do
		if (_G.Leather and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Pirate") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.Leather or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - by.Position).Magnitude > 1500) then
							BTP(by);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - by.Position).Magnitude < 1500) then
							al(by);
						end
					else
						al(by);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
local bz = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375);
spawn(function()
	while wait() do
		if (_G.Leather and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Marine Captain") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.Leather or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bz.Position).Magnitude > 1500) then
							BTP(bz);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bz.Position).Magnitude < 1500) then
							al(bz);
						end
					else
						al(bz);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
local bA = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375);
spawn(function()
	while wait() do
		if (_G.Leather and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Jungle Pirate") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.Leather or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bA.Position).Magnitude > 1500) then
							BTP(bA);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bA.Position).Magnitude < 1500) then
							al(bA);
						end
					else
						al(bA);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Scrap Metal", false, function(value)
	Scrap = value;
	StopTween(Scrap);
end);
local bB = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125);
spawn(function()
	while wait() do
		if (Scrap and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Brute") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not Scrap or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bB.Position).Magnitude > 1500) then
							BTP(bB);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bB.Position).Magnitude < 1500) then
							al(bB);
						end
					else
						al(bB);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
local bC = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125);
spawn(function()
	while wait() do
		if (Scrap and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Mercenary") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not Scrap or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bC.Position).Magnitude > 1500) then
							BTP(bC);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bC.Position).Magnitude < 1500) then
							al(bC);
						end
					else
						al(bC);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
local bD = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875);
spawn(function()
	while wait() do
		if (Scrap and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Pirate Millionaire") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not Scrap or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bD.Position).Magnitude > 1500) then
							BTP(bD);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bD.Position).Magnitude < 1500) then
							al(bD);
						end
					else
						al(bD);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Conjured Cocoa", false, function(value)
	Cocoafarm = value;
	StopTween(Cocoafarm);
end);
local bE = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375);
spawn(function()
	while wait() do
		if (Cocoafarm and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Chocolate Bar Battler") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not Cocoafarm or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bE.Position).Magnitude > 1500) then
							BTP(bE);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bE.Position).Magnitude < 1500) then
							al(bE);
						end
					else
						al(bE);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Dragon Scale", false, function(value)
	Dragon_Scale = value;
	StopTween(Dragon_Scale);
end);
local bF = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125);
spawn(function()
	while wait() do
		if (Dragon_Scale and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Dragon Crew Warrior") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not Dragon_Scale or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bF.Position).Magnitude > 1500) then
							BTP(bF);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bF.Position).Magnitude < 1500) then
							al(bF);
						end
					else
						al(bF);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Gunpowder", false, function(value)
	Gunpowder = value;
	StopTween(Gunpowder);
end);
local bG = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875);
spawn(function()
	while wait() do
		if (Gunpowder and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Pistol Billionaire") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not Gunpowder or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bG.Position).Magnitude > 1500) then
							BTP(bG);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bG.Position).Magnitude < 1500) then
							al(bG);
						end
					else
						al(bG);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Fish Tail", false, function(value)
	Fish = value;
	StopTween(Fish);
end);
local bH = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875);
spawn(function()
	while wait() do
		if (Fish and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Fishman Captain") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not Fish or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bH.Position).Magnitude > 1500) then
							BTP(bH);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bH.Position).Magnitude < 1500) then
							al(bH);
						end
					else
						al(bH);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Mini Tusk", false, function(value)
	MiniHee = value;
	StopTween(MiniHee);
end);
local bI = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125);
spawn(function()
	while wait() do
		if (MiniHee and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Mythological Pirate") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									MakoriGayMag = true;
									PosGay = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not MiniHee or not v.Parent or (v.Humanoid.Health <= 0) 
								MakoriGayMag = false;
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bI.Position).Magnitude > 1500) then
							BTP(bI);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bI.Position).Magnitude < 1500) then
							al(bI);
						end
					else
						al(bI);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.StardHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Farm Ectoplasm", false, function(value)
	_G.AutoEctoplasm = value;
	StopTween(_G.AutoEctoplasm);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoEctoplasm then
				if (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v.Name == "Ship Deckhand") or (v.Name == "Ship Engineer") or (v.Name == "Ship Steward") or (v.Name == "Ship Officer")) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								if string.find(v.Name, "Ship") then
									v.HumanoidRootPart.CanCollide = false;
									v.Head.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									EctoplasmMon = v.HumanoidRootPart.CFrame;
									StartEctoplasmMagnet = true;
								else
									StartEctoplasmMagnet = false;
									al(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
								end
							until (_G.AutoEctoplasm == false) or not v.Parent or (v.Humanoid.Health <= 0) 
						end
					end
				else
					al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					StartEctoplasmMagnet = false;
					local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
					if (Distance > 18000) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
					end
					al(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
				end
			end
		end
	end);
end);
e:Seperator("Auto Sword");
e:Toggle("Auto Buddy Sword", false, function(value)
	_G.AutoBudySword = value;
	StopTween(_G.AutoBudySword);
end);
local bJ = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875);
spawn(function()
	while wait() do
		if (_G.AutoBudySword and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Cake Queen") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoBudySword or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bJ.Position).Magnitude > 1500) then
							BTP(bJ);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bJ.Position).Magnitude < 1500) then
							al(bJ);
						end
					else
						al(bJ);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.AutoBudySwordHop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Cursed Dual Katana", false, function(value)
	Auto_Cursed_Dual_Katana = value;
	StopTween(Auto_Cursed_Dual_Katana);
end);
spawn(function()
	while wait() do
		pcall(function()
			if Auto_Cursed_Dual_Katana then
				if (game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama")) then
					if (game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita")) then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
							EquipWeapon("Tushita");
						end
					elseif (game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama")) then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
							EquipWeapon("Yama");
						end
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", "Tushita");
				end
			end
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if Auto_Cursed_Dual_Katana then
				if (GetMaterial("Alucard Fragment") == 0) then
					Auto_Quest_Yama_1 = true;
					Auto_Quest_Yama_2 = false;
					Auto_Quest_Yama_3 = false;
					Auto_Quest_Tushita_1 = false;
					Auto_Quest_Tushita_2 = false;
					Auto_Quest_Tushita_3 = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
				elseif (GetMaterial("Alucard Fragment") == 1) then
					Auto_Quest_Yama_1 = false;
					Auto_Quest_Yama_2 = true;
					Auto_Quest_Yama_3 = false;
					Auto_Quest_Tushita_1 = false;
					Auto_Quest_Tushita_2 = false;
					Auto_Quest_Tushita_3 = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
				elseif (GetMaterial("Alucard Fragment") == 2) then
					Auto_Quest_Yama_1 = false;
					Auto_Quest_Yama_2 = false;
					Auto_Quest_Yama_3 = true;
					Auto_Quest_Tushita_1 = false;
					Auto_Quest_Tushita_2 = false;
					Auto_Quest_Tushita_3 = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
				elseif (GetMaterial("Alucard Fragment") == 3) then
					Auto_Quest_Yama_1 = false;
					Auto_Quest_Yama_2 = false;
					Auto_Quest_Yama_3 = false;
					Auto_Quest_Tushita_1 = true;
					Auto_Quest_Tushita_2 = false;
					Auto_Quest_Tushita_3 = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
				elseif (GetMaterial("Alucard Fragment") == 4) then
					Auto_Quest_Yama_1 = false;
					Auto_Quest_Yama_2 = false;
					Auto_Quest_Yama_3 = false;
					Auto_Quest_Tushita_1 = false;
					Auto_Quest_Tushita_2 = true;
					Auto_Quest_Tushita_3 = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
				elseif (GetMaterial("Alucard Fragment") == 5) then
					Auto_Quest_Yama_1 = false;
					Auto_Quest_Yama_2 = false;
					Auto_Quest_Yama_3 = false;
					Auto_Quest_Tushita_1 = false;
					Auto_Quest_Tushita_2 = false;
					Auto_Quest_Tushita_3 = true;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
				elseif (GetMaterial("Alucard Fragment") == 6) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]")) then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]")) then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v.Name == "Cursed Skeleton Boss") or (v.Name == "Cursed Skeleton")) then
									if (v.Humanoid.Health > 0) then
										EquipWeapon(Sword);
										al(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ));
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										Click();
									end
								end
							end
						end
					elseif ((CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						wait(1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						wait(1);
						al(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
						wait(1.5);
						game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
						wait(1.5);
						al(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875));
					else
						al(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
					end
				end
			end
		end);
	end
end);
spawn(function()
	while wait() do
		if Auto_Quest_Yama_1 then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Mythological Pirate") then
							repeat
								wait();
								al(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2));
							until (Auto_Cursed_Dual_Katana == false) or (Auto_Quest_Yama_1 == false) 
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
						end
					end
				else
					al(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875));
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if Auto_Quest_Yama_2 then
				for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v:FindFirstChild("HazeESP") then
						v.HazeESP.Size = UDim2.new(50, 50, 50, 50);
						v.HazeESP.MaxDistance = "inf";
					end
				end
				for o, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
					if v:FindFirstChild("HazeESP") then
						v.HazeESP.Size = UDim2.new(50, 50, 50, 50);
						v.HazeESP.MaxDistance = "inf";
					end
				end
			end
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and ((v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300)) then
					v.HumanoidRootPart.CFrame = PosMonsEsp;
					v.HumanoidRootPart.CanCollide = false;
					v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
					if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
						local bK = Instance.new("BodyVelocity", v.HumanoidRootPart);
						bK.MaxForce = Vector3.new(1, 1, 1) * math.huge;
						bK.Velocity = Vector3.new(0, 0, 0);
					end
				end
			end
		end);
	end
end);
spawn(function()
	while wait() do
		if Auto_Quest_Yama_2 then
			pcall(function()
				for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v:FindFirstChild("HazeESP") then
						repeat
							wait();
							if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000) then
								al(v.HumanoidRootPart.CFrame * Pos);
							else
								EquipWeapon(Sword);
								al(v.HumanoidRootPart.CFrame * Pos);
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								Click();
								if ((v.Humanoid.Health <= 0) and v.Humanoid:FindFirstChild("Animator")) then
									v.Humanoid.Animator:Destroy();
								end
							end
						until (Auto_Cursed_Dual_Katana == false) or (Auto_Quest_Yama_2 == false) or not v.Parent or (v.Humanoid.Health <= 0) or not v:FindFirstChild("HazeESP") 
					else
						for bL, bM in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
							if bM:FindFirstChild("HazeESP") then
								if ((bM.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000) then
									al(bM.HumanoidRootPart.CFrameMon * Farm_Mode);
								else
									al(bM.HumanoidRootPart.CFrame * Farm_Mode);
								end
							end
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if Auto_Quest_Yama_3 then
			pcall(function()
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
					al(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame);
				elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
					repeat
						wait();
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]")) then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v.Name == "Cursed Skeleton") or (v.Name == "Cursed Skeleton") or (v.Name == "Hell's Messenger")) then
									if (v.Humanoid.Health > 0) then
										repeat
											wait();
											EquipWeapon(Sword);
											al(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											Click();
											if ((v.Humanoid.Health <= 0) and v.Humanoid:FindFirstChild("Animator")) then
												v.Humanoid.Animator:Destroy();
											end
										until (v.Humanoid.Health <= 0) or not v.Parent or (Auto_Quest_Yama_3 == false) 
									end
								end
							end
						else
							wait(5);
							al(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame);
							wait(1.5);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							al(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame);
							wait(1.5);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							al(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame);
							wait(1.5);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							al(game:GetService("Workspace").Map.HellDimension.Exit.CFrame);
						end
					until (Auto_Cursed_Dual_Katana == false) or (Auto_Quest_Yama_3 == false) or (GetMaterial("Alucard Fragment") == 3) 
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == "Soul Reaper") then
								if (v.Humanoid.Health > 0) then
									repeat
										wait();
										al(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ));
									until (Auto_Cursed_Dual_Katana == false) or (Auto_Quest_Yama_3 == false) or game:GetService("Workspace").Map:FindFirstChild("HellDimension") 
								end
							end
						end
					else
						al(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625));
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if Auto_Quest_Tushita_1 then
			al(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125));
			wait(5);
			al(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625));
			wait(5);
			al(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875));
		end
	end
end);
spawn(function()
	while wait() do
		if Auto_Quest_Tushita_2 then
			pcall(function()
				if ((CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
							if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000) then
								repeat
									wait();
									EquipWeapon(Sword);
									al(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									Click();
									if ((v.Humanoid.Health <= 0) and v.Humanoid:FindFirstChild("Animator")) then
										v.Humanoid.Animator:Destroy();
									end
								until (v.Humanoid.Health <= 0) or not v.Parent or (Auto_Quest_Tushita_2 == false) 
							end
						end
					end
				else
					al(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125));
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if Auto_Quest_Tushita_3 then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
						for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == "Cake Queen") then
								if (v.Humanoid.Health > 0) then
									repeat
										wait();
										EquipWeapon(Sword);
										al(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										Click();
										if ((v.Humanoid.Health <= 0) and v.Humanoid:FindFirstChild("Animator")) then
											v.Humanoid.Animator:Destroy();
										end
									until (Auto_Cursed_Dual_Katana == false) or (Auto_Quest_Tushita_3 == false) or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") 
								end
							end
						end
					else
						al(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375));
					end
				elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
					repeat
						wait();
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]")) then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v.Name == "Cursed Skeleton") or (v.Name == "Cursed Skeleton") or (v.Name == "Heaven's Guardian")) then
									if (v.Humanoid.Health > 0) then
										repeat
											wait();
											EquipWeapon(Sword);
											al(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											Click();
											if ((v.Humanoid.Health <= 0) and v.Humanoid:FindFirstChild("Animator")) then
												v.Humanoid.Animator:Destroy();
											end
										until (v.Humanoid.Health <= 0) or not v.Parent or (Auto_Quest_Tushita_3 == false) 
									end
								end
							end
						else
							wait(5);
							al(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame);
							wait(1.5);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							al(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame);
							wait(1.5);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							al(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame);
							wait(1.5);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							al(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame);
						end
					until not Auto_Cursed_Dual_Katana or not Auto_Quest_Tushita_3 or (GetMaterial("Alucard Fragment") == 6) 
				end
			end);
		end
	end
end);
e:Toggle("Auto Tushita", false, function(value)
	_G.Autotushita = value;
	StopTween(_G.Autotushita);
end);
local bN = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125);
spawn(function()
	while wait() do
		if (_G.Autotushita and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Longma") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.Autotushita or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bN.Position).Magnitude > 1500) then
							BTP(bN);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bN.Position).Magnitude < 1500) then
							al(bN);
						end
					else
						al(bN);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.Autotushitahop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Yama", false, function(value)
	_G.AutoYama = value;
	StopTween(_G.AutoYama);
end);
spawn(function()
	while wait() do
		if _G.AutoYama then
			if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
				repeat
					wait(0.1);
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama 
			end
		end
	end
end);
e:Toggle("Auto Cavander", false, function(value)
	_G.AutoCarvender = value;
	StopTween(_G.AutoCarvender);
end);
local bO = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
spawn(function()
	while wait() do
		if (_G.AutoCarvender and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Beautiful Pirate") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoCarvender or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bO.Position).Magnitude > 1500) then
							BTP(bO);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bO.Position).Magnitude < 1500) then
							al(bO);
						end
					else
						al(bO);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.AutoCavanderhop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Twin Hook", false, function(value)
	_G.AutoTwinHook = value;
	StopTween(_G.AutoTwinHook);
end);
local bP = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625);
spawn(function()
	while wait() do
		if (_G.AutoTwinHook and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Captain Elephant") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoTwinHook or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bP.Position).Magnitude > 1500) then
							BTP(bP);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bP.Position).Magnitude < 1500) then
							al(bP);
						end
					else
						al(bP);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.AutoTwinHook_Hop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Hallow Scythe", false, function(value)
	_G.AutoFarmBossHallow = value;
	StopTween(_G.AutoFarmBossHallow);
end);
spawn(function()
	while wait() do
		if _G.AutoFarmBossHallow then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name, "Soul Reaper") then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								al(v.HumanoidRootPart.CFrame * Pos);
								game:GetService("VirtualUser"):CaptureController();
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670));
								v.HumanoidRootPart.Transparency = 1;
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v.Humanoid.Health <= 0) or (_G.AutoFarmBossHallow == false) 
						end
					end
				elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
					repeat
						al(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125));
						wait();
					until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 
					EquipWeapon("Hallow Essence");
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
					al(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
				elseif _G.AutoFarmBossHallowHop then
					Hop();
				end
			end);
		end
	end
end);
e:Toggle("Auto Dragon Trident", false, function(value)
	_G.Auto_Dragon_Trident = value;
	StopTween(_G.Auto_Dragon_Trident);
end);
local bQ = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125);
spawn(function()
	while wait() do
		if (_G.Auto_Dragon_Trident and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Tide Keeper") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.Auto_Dragon_Trident or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bQ.Position).Magnitude > 1500) then
							BTP(bQ);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bQ.Position).Magnitude < 1500) then
							al(bQ);
						end
					else
						al(bQ);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.Auto_Dragon_Trident_Hop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Waden Sword", false, function(value)
	_G.Autowaden = value;
	StopTween(_G.Autowaden);
end);
local bR = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
spawn(function()
	while wait() do
		if (_G.Autowaden and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Chief Warden") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.Autowaden or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bQ.Position).Magnitude > 1500) then
							BTP(bQ);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bQ.Position).Magnitude < 1500) then
							al(bQ);
						end
					else
						al(bQ);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.Autowadenhop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Pole V1", false, function(value)
	_G.Autopole = value;
	StopTween(_G.Autopole);
end);
local bS = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625);
spawn(function()
	while wait() do
		if (_G.Autopole and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Thunder God") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.Autopole or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bS.Position).Magnitude > 1500) then
							BTP(bS);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bS.Position).Magnitude < 1500) then
							al(bS);
						end
					else
						al(bQ);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					elseif _G.Autopolehop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Shark Saw", false, function(value)
	_G.Autosaw = value;
	StopTween(_G.Autosaw);
end);
local bT = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094);
spawn(function()
	while wait() do
		if (_G.Autosaw and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "The Saw") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.Autosaw or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bT.Position).Magnitude > 1500) then
							BTP(bT);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bT.Position).Magnitude < 1500) then
							al(bT);
						end
					else
						al(bT);
					end
					UnEquipWeapon(_G.SelectWeapon);
					al(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094));
					if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
						al(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2, 40, 2));
					elseif _G.Autosawhop then
						Hop();
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Saber", false, function(value)
	_G.Auto_Saber = value;
	StopTween(_G.Auto_Saber);
end);
spawn(function()
	while task.wait() do
		if (_G.Auto_Saber and (game.Players.LocalPlayer.Data.Level.Value >= 200)) then
			pcall(function()
				if (game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0) then
					if (game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0) then
						if ((CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
							al(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame;
							wait(1);
						else
							al(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279));
						end
					elseif (game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0) then
						if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch")) then
							EquipWeapon("Torch");
							al(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.2879909e-9, 0.761243105, -5.706529e-10, 1, 1.2058454e-9, -0.761243105, 3.4754488e-10, -0.648466587));
						else
							al(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, -0.258850515, 0.965917408));
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
						wait(0.5);
						EquipWeapon("Cup");
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup);
						wait(0);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")) then
							al(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == "Mob Leader") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
										if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
												al(v.HumanoidRootPart.CFrame * Pos);
												game:GetService("VirtualUser"):CaptureController();
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
												sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											until (v.Humanoid.Health <= 0) or not _G.Auto_Saber 
										end
									end
									if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										al(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode);
									end
								end
							end
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
						wait(0.5);
						EquipWeapon("Relic");
						wait(0.5);
						al(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494));
					end
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							if (v.Name == "Saber Expert") then
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									al(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									FarmPos = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), workspace.CurrentCamera.CFrame);
								until (v.Humanoid.Health <= 0) or not _G.Auto_Saber 
								if (v.Humanoid.Health <= 0) then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
								end
							end
						end
					end
				end
			end);
		end
	end
end);
e:Toggle("Auto Rengoku", false, function(value)
	_G.AutoRengoku = value;
	StopTween(_G.AutoRengoku);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoRengoku then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key")) then
					EquipWeapon("Hidden Key");
					al(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875));
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (((v.Name == "Snow Lurker") or (v.Name == "Arctic Warrior")) and (v.Humanoid.Health > 0)) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v.HumanoidRootPart.CanCollide = false;
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								RengokuMon = v.HumanoidRootPart.CFrame;
								al(v.HumanoidRootPart.CFrame * Pos);
								game:GetService("VirtualUser"):CaptureController();
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								StartRengokuMagnet = true;
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (_G.AutoRengoku == false) or not v.Parent or (v.Humanoid.Health <= 0) 
							StartRengokuMagnet = false;
						end
					end
				else
					StartRengokuMagnet = false;
					al(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188));
				end
			end
		end
	end);
end);
e:Seperator("Auto Melee");
e:Toggle("Auto Superhuman", false, function(value)
	_G.AutoSuperhuman = value;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoSuperhuman then
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or (game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 150000))) then
					UnEquipWeapon("Combat");
					wait(0.1);
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
				end
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")) then
					_G.SelectWeapon = "Superhuman";
				end
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")) then
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299)) then
						_G.SelectWeapon = "Black Leg";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299)) then
						_G.SelectWeapon = "Electro";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299)) then
						_G.SelectWeapon = "Fishman Karate";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299)) then
						_G.SelectWeapon = "Dragon Claw";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
				end
			end
		end
	end);
end);
e:Toggle("Auto Death Step", false, function(value)
	_G.AutoDeathStep = value;
end);
spawn(function()
	while wait() do
		wait();
		if _G.AutoDeathStep then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449)) then
					_G.SelectWeapon = "Black Leg";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
			end
		end
	end
end);
e:Toggle("Auto Sharkman Karate", false, function(value)
	_G.AutoSharkman = value;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoSharkman then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
				if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")) then
						al(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
					else
						Ms = "Tide Keeper";
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == Ms) then
									OldCFrameShark = v.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v.Head.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v.HumanoidRootPart.CFrame = OldCFrameShark;
										al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
										game:GetService("VirtualUser"):CaptureController();
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670));
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until not v.Parent or (v.Humanoid.Health <= 0) or (_G.AutoSharkman == false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") 
								end
							end
						else
							al(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-8, 0.885206044, 4.0332897e-9, 1, 1.3534751e-8, -0.885206044, -2.7260627e-9, 0.465199202));
							wait(3);
						end
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
				end
			end
		end
	end);
end);
e:Toggle("Auto Sharkman Karate", false, function(value)
	_G.AutoSharkman = value;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoSharkman then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
				if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")) then
						al(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
					else
						Ms = "Tide Keeper";
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == Ms) then
									OldCFrameShark = v.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v.Head.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v.HumanoidRootPart.CFrame = OldCFrameShark;
										al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
										game:GetService("VirtualUser"):CaptureController();
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670));
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until not v.Parent or (v.Humanoid.Health <= 0) or (_G.AutoSharkman == false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") 
								end
							end
						else
							al(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-8, 0.885206044, 4.0332897e-9, 1, 1.3534751e-8, -0.885206044, -2.7260627e-9, 0.465199202));
							wait(3);
						end
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
				end
			end
		end
	end);
end);
e:Toggle("Auto Electric Claw", false, function(value)
	_G.AutoElectricClaw = value;
	StopTween(_G.AutoElectricClaw);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399)) then
						_G.SelectWeapon = "Electro";
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
				end
			end
			if _G.AutoElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						if (_G.AutoFarm == false) then
							repeat
								task.wait();
								al(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.AutoElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10) 
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								al(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
							until not _G.AutoElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10) 
							wait(1);
							repeat
								task.wait();
								al(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.AutoElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10) 
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						elseif (_G.AutoFarm == true) then
							_G.AutoFarm = false;
							wait(1);
							repeat
								task.wait();
								al(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.AutoElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10) 
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								al(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
							until not _G.AutoElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10) 
							wait(1);
							repeat
								task.wait();
								al(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.AutoElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10) 
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
							_G.SelectWeapon = "Electric Claw";
							wait(0.1);
							_G.AutoFarm = true;
						end
					end
				end
			end
		end
	end);
end);
e:Toggle("Auto Dragon Talon", false, function(value)
	_G.AutoDragonTalon = value;
end);
spawn(function()
	while wait() do
		if _G.AutoDragonTalon then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399)) then
					_G.SelectWeapon = "Dragon Claw";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
			end
		end
	end
end);
e:Toggle("Auto Godhuman", false, function(value)
	_G.Auto_God_Human = value;
end);
spawn(function()
	while task.wait() do
		if _G.Auto_God_Human then
			pcall(function()
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
						end
					else
						game.StarterGui:SetCore("SendNotification", {Title="Notification",Text="Not Have Superhuman",Icon="rbxassetid://15689000757",Duration=2.5});
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
						end
					else
						game.StarterGui:SetCore("SendNotification", {Title="Notification",Text="Not Have Death Step",Icon="rbxassetid://15689000757",Duration=2.5});
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						end
					else
						game.StarterGui:SetCore("SendNotification", {Title="Notification",Text="Not Have SharkMan Karate",Icon="rbxassetid://15689000757",Duration=2.5});
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
						end
					else
						game.StarterGui:SetCore("SendNotification", {Title="Notification",Text="Not Have Electric Claw",Icon="rbxassetid://15689000757",Duration=2.5});
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400))) then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
								game.StarterGui:SetCore("SendNotification", {Title="Notification",Text="Not Have Enough Material",Icon="rbxassetid://15689000757",Duration=2.5});
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
							end
						end
					else
						game.StarterGui:SetCore("SendNotification", {Title="Notification",Text="Not Have Dragon Talon",Icon="rbxassetid://15689000757",Duration=2.5});
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
				end
			end);
		end
	end
end);
local bU = f:Label("");
spawn(function()
	while wait() do
		pcall(function()
			bU:Set("Available Point : " .. tostring(game:GetService("Players")['LocalPlayer'].Data.Points.Value));
		end);
	end
end);
local bV = f:Label("");
spawn(function()
	while wait() do
		pcall(function()
			bV:Set("Melee : " .. game.Players.localPlayer.Data.Stats.Melee.Level.Value);
		end);
	end
end);
local bW = f:Label("");
spawn(function()
	while wait() do
		pcall(function()
			bW:Set("Defense : " .. game.Players.localPlayer.Data.Stats.Defense.Level.Value);
		end);
	end
end);
local Sword = f:Label("");
spawn(function()
	while wait() do
		pcall(function()
			Sword:Set("Sword : " .. game.Players.localPlayer.Data.Stats.Sword.Level.Value);
		end);
	end
end);
local bX = f:Label("");
spawn(function()
	while wait() do
		pcall(function()
			bX:Set("Gun : " .. game.Players.localPlayer.Data.Stats.Gun.Level.Value);
		end);
	end
end);
local bY = f:Label("");
spawn(function()
	while wait() do
		pcall(function()
			bY:Set("Fruit : " .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value);
		end);
	end
end);
f:Seperator("Auto Stats");
f:Toggle("Auto Stats Melee", false, function(value)
	melee = value;
end);
f:Toggle("Auto Stats Defense", false, function(value)
	defense = value;
end);
f:Toggle("Auto Stats Sword", false, function(value)
	sword = value;
end);
f:Toggle("Auto Stats Gun", false, function(value)
	gun = value;
end);
f:Toggle("Auto Stats Fruit", false, function(value)
	demonfruit = value;
end);
spawn(function()
	while wait() do
		if (game.Players.localPlayer.Data.Points.Value >= PointStats) then
			if melee then
				local args = {[1]="AddPoint",[2]="Melee",[3]=PointStats};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			end
			if defense then
				local args = {[1]="AddPoint",[2]="Defense",[3]=PointStats};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			end
			if sword then
				local args = {[1]="AddPoint",[2]="Sword",[3]=PointStats};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			end
			if gun then
				local args = {[1]="AddPoint",[2]="Gun",[3]=PointStats};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			end
			if demonfruit then
				local args = {[1]="AddPoint",[2]="Demon Fruit",[3]=PointStats};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			end
		end
	end
end);
f:Slider("Point To Add", 0, 2550, 1, function(value)
	PointStats = value;
end);
PointStats = 1;
g:Seperator("World Teleport");
g:Button("Teleport To Frist Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain");
end);
g:Button("Teleport To Second Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
end);
g:Button("Teleport To Third Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
end);
g:Seperator("Island Teleport");
if World1 then
	g:Dropdown("Select Island", {"WindMill","Marine","Middle Town","Jungle","Pirate Village","Desert","Snow Island","MarineFord","Colosseum","Sky Island 1","Sky Island 2","Sky Island 3","Prison","Magma Village","Under Water Island","Fountain City","Shank Room","Mob Island"}, function(value)
		_G.SelectIsland = value;
	end);
end
if World2 then
	g:Dropdown("Select Island", {"The Cafe","Frist Spot","Dark Area","Flamingo Mansion","Flamingo Room","Green Zone","Factory","Colossuim","Zombie Island","Two Snow Mountain","Punk Hazard","Cursed Ship","Ice Castle","Forgotten Island","Ussop Island","Mini Sky Island"}, function(value)
		_G.SelectIsland = value;
	end);
end
if World3 then
	g:Dropdown("Select Island", {"Mansion","Port Town","Great Tree","Castle On The Sea","MiniSky","Hydra Island","Floating Turtle","Haunted Castle","Ice Cream Island","Peanut Island","Cake Island","Cocoa Island","Candy Island New","Tiki Outpost"}, function(value)
		_G.SelectIsland = value;
	end);
end
g:Toggle("Teleport To Selected Island", false, function(value)
	_G.TeleportIsland = value;
	if (_G.TeleportIsland == true) then
		repeat
			wait();
			if (_G.SelectIsland == "WindMill") then
				al(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594));
			elseif (_G.SelectIsland == "Marine") then
				al(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156));
			elseif (_G.SelectIsland == "Middle Town") then
				al(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094));
			elseif (_G.SelectIsland == "Jungle") then
				al(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754));
			elseif (_G.SelectIsland == "Pirate Village") then
				al(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969));
			elseif (_G.SelectIsland == "Desert") then
				al(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688));
			elseif (_G.SelectIsland == "Snow Island") then
				al(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469));
			elseif (_G.SelectIsland == "MarineFord") then
				al(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313));
			elseif (_G.SelectIsland == "Colosseum") then
				al(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969));
			elseif (_G.SelectIsland == "Sky Island 1") then
				al(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063));
			elseif (_G.SelectIsland == "Sky Island 2") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			elseif (_G.SelectIsland == "Sky Island 3") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
			elseif (_G.SelectIsland == "Prison") then
				al(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656));
			elseif (_G.SelectIsland == "Magma Village") then
				al(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875));
			elseif (_G.SelectIsland == "Under Water Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			elseif (_G.SelectIsland == "Fountain City") then
				al(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813));
			elseif (_G.SelectIsland == "Shank Room") then
				al(CFrame.new(-1442.16553, 29.8788261, -28.3547478));
			elseif (_G.SelectIsland == "Mob Island") then
				al(CFrame.new(-2850.20068, 7.39224768, 5354.99268));
			elseif (_G.SelectIsland == "The Cafe") then
				al(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828));
			elseif (_G.SelectIsland == "Frist Spot") then
				al(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375));
			elseif (_G.SelectIsland == "Dark Area") then
				al(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375));
			elseif (_G.SelectIsland == "Flamingo Mansion") then
				al(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234));
			elseif (_G.SelectIsland == "Flamingo Room") then
				al(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688));
			elseif (_G.SelectIsland == "Green Zone") then
				al(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344));
			elseif (_G.SelectIsland == "Factory") then
				al(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617));
			elseif (_G.SelectIsland == "Colossuim") then
				al(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641));
			elseif (_G.SelectIsland == "Zombie Island") then
				al(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094));
			elseif (_G.SelectIsland == "Two Snow Mountain") then
				al(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938));
			elseif (_G.SelectIsland == "Punk Hazard") then
				al(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125));
			elseif (_G.SelectIsland == "Cursed Ship") then
				al(CFrame.new(923.40197753906, 125.05712890625, 32885.875));
			elseif (_G.SelectIsland == "Ice Castle") then
				al(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188));
			elseif (_G.SelectIsland == "Forgotten Island") then
				al(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875));
			elseif (_G.SelectIsland == "Ussop Island") then
				al(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781));
			elseif (_G.SelectIsland == "Mini Sky Island") then
				al(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375));
			elseif (_G.SelectIsland == "Great Tree") then
				al(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625));
			elseif (_G.SelectIsland == "Castle On The Sea") then
				al(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375));
			elseif (_G.SelectIsland == "MiniSky") then
				al(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125));
			elseif (_G.SelectIsland == "Port Town") then
				al(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375));
			elseif (_G.SelectIsland == "Hydra Island") then
				al(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625));
			elseif (_G.SelectIsland == "Floating Turtle") then
				al(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625));
			elseif (_G.SelectIsland == "Mansion") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
			elseif (_G.SelectIsland == "Haunted Castle") then
				al(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562));
			elseif (_G.SelectIsland == "Ice Cream Island") then
				al(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625));
			elseif (_G.SelectIsland == "Peanut Island") then
				al(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375));
			elseif (_G.SelectIsland == "Cake Island") then
				al(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375));
			elseif (_G.SelectIsland == "Cocoa Island") then
				al(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375));
			elseif (_G.SelectIsland == "Candy Island New⛄") then
				al(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625));
			elseif (_G.SelectIsland == "Tiki Outpost") then
				al(CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099));
			end
		until not _G.TeleportIsland 
	end
	StopTween(_G.TeleportIsland);
end);
g:Seperator("NPC Teleport");
if World1 then
	g:Dropdown("Select NPC", {"Random Devil Fruit","Blox Fruits Dealer","Remove Devil Fruit","Ability Teacher","Dark Step","Electro","Fishman Karate"}, function(value)
		_G.SelectNPC = value;
	end);
end
if World2 then
	g:Dropdown("Select NPC", {"Dargon Berath","Mtsterious Man","Mysterious Scientist","Awakening Expert","Nerd","Bar Manager","Blox Fruits Dealer","Trevor","Enhancement Editor","Pirate Recruiter","Marines Recruiter","Chemist","Cyborg","Ghoul Mark","Guashiem","El Admin","El Rodolfo","Arowe"}, function(value)
		_G.SelectNPC = value;
	end);
end
if World3 then
	g:Dropdown("Select NPC", {"Blox Fruits Dealer","Remove Devil Fruit","Horned Man","Hungey Man","Previous Hero","Butler","Lunoven","Trevor","Elite Hunter","Player Hunter","Uzoth"}, function(value)
		_G.SelectNPC = value;
	end);
end
g:Toggle("Teleport To Selected NPC", false, function(value)
	_G.TeleportNPC = value;
	if (_G.TeleportNPC == true) then
		repeat
			wait();
			if (_G.SelectNPC == "Dargon Berath") then
				al(CFrame.new(703.372986, 186.985519, 654.522034, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Mtsterious Man") then
				al(CFrame.new(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -9.064003e-9, 0.92552036, -8.95582e-9, 1, 1.3457893e-8, -0.92552036, -1.3385269e-8, 0.378697902));
			elseif (_G.SelectNPC == "Mysterious Scientist") then
				al(CFrame.new(-6437.87793, 250.645355, -4498.92773, 0.502376854, -1.0122363e-8, -0.864648759, 2.3410609e-8, 1, 1.8950865e-9, 0.864648759, -2.1194001e-8, 0.502376854));
			elseif (_G.SelectNPC == "Awakening Expert") then
				al(CFrame.new(-408.098846, 16.0459061, 247.432846, 0.028394036, 6.1759914e-10, 0.999596894, -5.5790594e-9, 1, -4.5937248e-10, -0.999596894, -5.5637677e-9, 0.028394036));
			elseif (_G.SelectNPC == "Nerd") then
				al(CFrame.new(-401.783722, 73.0859299, 262.306702, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Bar Manager") then
				al(CFrame.new(-385.84726, 73.0458984, 316.088806, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Blox Fruits Dealer") then
				al(CFrame.new(-450.725464, 73.0458984, 355.636902, -0.780352175, -2.7266168e-8, 0.625340283, 9.785165e-9, 1, 5.581288e-8, -0.625340283, 4.967276e-8, -0.780352175));
			elseif (_G.SelectNPC == "Trevor") then
				al(CFrame.new(-341.498322, 331.886444, 643.024963, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Plokster") then
				al(CFrame.new(-1885.16016, 88.3838196, -1912.28723, -0.513468027, 0, 0.858108759, 0, 1, 0, -0.858108759, 0, -0.513468027));
			elseif (_G.SelectNPC == "Enhancement Editor") then
				al(CFrame.new(-346.820221, 72.9856339, 1194.36218, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Pirate Recruiter") then
				al(CFrame.new(-428.072998, 72.9495239, 1445.32422, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Marines Recruiter") then
				al(CFrame.new(-1349.77295, 72.9853363, -1045.12964, 0.866493046, 0, -0.499189168, 0, 1, 0, 0.499189168, 0, 0.866493046));
			elseif (_G.SelectNPC == "Chemist") then
				al(CFrame.new(-2777.45288, 72.9919434, -3572.25732, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Ghoul Mark") then
				al(CFrame.new(635.172546, 125.976357, 33219.832, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Cyborg") then
				al(CFrame.new(629.146851, 312.307373, -531.624146, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Guashiem") then
				al(CFrame.new(937.953003, 181.083359, 33277.9297, 1, -8.601264e-8, 3.817739e-17, 8.601264e-8, 1, -1.899696e-16, -3.8177373e-17, 1.899696e-16, 1));
			elseif (_G.SelectNPC == "El Admin") then
				al(CFrame.new(1322.80835, 126.345039, 33135.8789, 0.988783717, -8.697976e-8, -0.149354503, 8.622238e-8, 1, -1.1546192e-8, 0.149354503, -1.4610141e-9, 0.988783717));
			elseif (_G.SelectNPC == "El Rodolfo") then
				al(CFrame.new(941.228699, 40.4686775, 32778.9922, -0.818029106, -1.1952438e-8, 0.575176775, -1.2874165e-8, 1, 2.4705387e-9, -0.575176775, -5.383948e-9, -0.818029106));
			elseif (_G.SelectNPC == "Arowe") then
				al(CFrame.new(-1994.51038, 125.519142, -72.2622986, -0.16715166, -6.5541734e-8, -0.985931218, -7.1331556e-8, 1, -5.438366e-8, 0.985931218, 6.1237685e-8, -0.16715166));
			elseif (_G.SelectNPC == "Random Devil Fruit") then
				al(CFrame.new(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 2.7421654e-8, 0.829979479, 5.8327323e-8, 1, 6.1603793e-9, -0.829979479, 5.1846712e-8, -0.557794094));
			elseif (_G.SelectNPC == "Blox Fruits Dealer") then
				al(CFrame.new(-923.255066, 7.67800522, 1608.61011, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Remove Devil Fruit") then
				al(CFrame.new(5664.80469, 64.677681, 867.85907, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Ability Teacher") then
				al(CFrame.new(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -9.2633016e-8, 0.500262439, -7.337594e-8, 1, 5.816689e-8, -0.500262439, 1.3657975e-8, -0.865874112));
			elseif (_G.SelectNPC == "Dark Step") then
				al(CFrame.new(-987.873047, 13.7778397, 3989.4978, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Electro") then
				al(CFrame.new(-5389.49561, 13.283, -2149.80151, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Fishman Karate") then
				al(CFrame.new(61581.8047, 18.8965912, 987.832703, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif (_G.SelectNPC == "Random Devil Fruit") then
				al(CFrame.new(-12491, 337, -7449));
			elseif (_G.SelectNPC == "Blox Fruits Dealer") then
				al(CFrame.new(-12511, 337, -7448));
			elseif (_G.SelectNPC == "Remove Devil Fruit") then
				al(CFrame.new(-5571, 1089, -2661));
			elseif (_G.SelectNPC == "Horned Man") then
				al(CFrame.new(-11890, 931, -8760));
			elseif (_G.SelectNPC == "Hungey Man") then
				al(CFrame.new(-10919, 624, -10268));
			elseif (_G.SelectNPC == "Previous Hero") then
				al(CFrame.new(-10368, 332, -10128));
			elseif (_G.SelectNPC == "Butler") then
				al(CFrame.new(-5125, 316, -3130));
			elseif (_G.SelectNPC == "Lunoven") then
				al(CFrame.new(-5117, 316, -3093));
			elseif (_G.SelectNPC == "Elite Hunter") then
				al(CFrame.new(-5420, 314, -2828));
			elseif (_G.SelectNPC == "Player Hunter") then
				al(CFrame.new(-5559, 314, -2840));
			elseif (_G.SelectNPC == "Uzoth") then
				al(CFrame.new(-9785, 852, 6667));
			end
		until not _G.TeleportNPC 
	end
	StopTween(_G.TeleportNPC);
end);
local bZ = h:Label("");
spawn(function()
	while wait() do
		pcall(function()
			for o, v in pairs(game:GetService("Players"):GetPlayers()) do
				if (o == 12) then
					bZ:Set("Players :" .. " " .. o .. " " .. "/" .. " " .. "12" .. " " .. "(Max)");
				elseif (o == 1) then
					bZ:Set("Player :" .. " " .. o .. " " .. "/" .. " " .. "12");
				else
					bZ:Set("Players :" .. " " .. o .. " " .. "/" .. " " .. "12");
				end
			end
		end);
	end
end);
Playerslist = {};
for o, v in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Playerslist, v.Name);
end
local b_ = h:Dropdown("Select Player", Playerslist, function(value)
	_G.SelectPly = value;
end);
h:Button("Refresh Player List", function()
	Playerslist = {};
	b_:Clear();
	for o, v in pairs(game:GetService("Players"):GetChildren()) do
		b_:Add(v.Name);
	end
end);
h:Toggle("Spectate Selected Player", false, function(value)
	SpectatePlys = value;
	local c0 = game:GetService("Players").LocalPlayer.Character.Humanoid;
	local c1 = game:GetService("Players"):FindFirstChild(_G.SelectPly);
	repeat
		wait(0.1);
		game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid;
	until SpectatePlys == false 
	game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid;
end);
h:Toggle("Teleport To Selected Player", false, function(value)
	_G.Teleport = bool;
	if (_G.Teleport == false) then
		game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1);
	end
	while _G.Teleport do
		task.wait();
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0);
		game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
		game:GetService("VirtualUser"):CaptureController();
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
	end
end);
h:Toggle("Auto Kill Selected Player", false, function(value)
	_G.Auto_Kill_Ply = value;
	StopTween(_G.Auto_Kill_Ply);
end);
spawn(function()
	while wait() do
		if _G.Auto_Kill_Ply then
			pcall(function()
				if (_G.SelectPly ~= nil) then
					if game.Players:FindFirstChild(_G.SelectPly) then
						if (game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false;
								al(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0));
								spawn(function()
									pcall(function()
										if (_G.SelectWeapon == SelectWeaponGun) then
											local args = {[1]=game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,[2]=game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart};
											game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args));
										else
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										end
									end);
								end);
							until (game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0) or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply 
						end
					end
				end
			end);
		end
	end
end);
h:Seperator("Player Quest");
h:Button("Get Kill Player Quest", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
end);
h:Toggle("Auto Kill Player Quest", false, function(value)
	_G.AutoPlayerHunter = value;
	StopTween(_G.AutoPlayerHunter);
end);
spawn(function()
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.AutoPlayerHunter then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.AutoPlayerHunter then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
				end
			end
		end
	end);
end);
spawn(function()
	while wait() do
		if _G.AutoPlayerHunter then
			if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
			else
				for o, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v.Name) then
						repeat
							wait();
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local args = {[1]="Buso"};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
							end
							EquipWeapon(_G.SelectWeapon);
							Useskill = true;
							al(v.HumanoidRootPart.CFrame * CFrame.new(1, 7, 3));
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
						until (_G.AutoPlayerHunter == false) or (v.Humanoid.Health <= 0) 
						Useskill = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
					end
				end
			end
		end
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if Useskill then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
			end
		end);
	end
end);
h:Seperator("ESP");
h:Toggle("ESP Player", false, function(value)
	ESPPlayer = value;
	UpdatePlayerChams();
end);
h:Toggle("ESP Chest", false, function(value)
	ChestESP = value;
	UpdateChestChams();
end);
h:Toggle("ESP Devil Fruit", false, function(value)
	DevilFruitESP = value;
	while DevilFruitESP do
		wait();
		UpdateDevilChams();
	end
end);
h:Toggle("ESP Real Fruit", false, function(value)
	RealFruitESP = value;
	UpdateRealFruitChams();
end);
h:Toggle("ESP Flower", false, function(value)
	FlowerESP = value;
	UpdateFlowerChams();
end);
spawn(function()
	while wait(2) do
		if FlowerESP then
			UpdateFlowerChams();
		end
		if DevilFruitESP then
			UpdateDevilChams();
		end
		if ChestESP then
			UpdateChestChams();
		end
		if ESPPlayer then
			UpdatePlayerChams();
		end
		if RealFruitESP then
			UpdateRealFruitChams();
		end
	end
end);
h:Toggle("ESP Island", false, function(value)
	IslandESP = value;
	while IslandESP do
		wait();
		UpdateIslandESP();
	end
end);
h:Toggle("ESP NPC", false, function(value)
	NpcESP = value;
end);
h:Toggle("ESP Sea Beast", false, function(value)
	SeaESP = value;
end);
h:Toggle("ESP Mob", false, function(value)
	MobESP = value;
end);
h:Toggle("ESP Mirage Island", false, function(value)
	MirageIslandESP = value;
	while MirageIslandESP do
		wait();
		UpdateIslandMirageESP();
	end
end);
h:Toggle("ESP Advanced Fruit Dealer", false, function(value)
	AfdESP = value;
	while AfdESP do
		wait();
		UpdateAfdESP();
	end
end);
h:Toggle("ESP Blue Gear", false, function(value)
	GearESP = value;
	while GearESP do
		wait();
		UpdateGeaESP();
	end
end);
table.foreach(i, print);
i:Button("Random Fruit", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy");
end);
i:Button("Open Devil Fruit Shop", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true;
end);
i:Toggle("Auto Teleport To Fruit", false, function(value)
	_G.Tweenfruit = value;
	StopTween(_G.Tweenfruit);
end);
spawn(function()
	while wait(0.1) do
		if _G.Tweenfruit then
			for o, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					al(v.Handle.CFrame);
				end
			end
		end
	end
end);
i:Toggle("Auto Random Fruit", false, function(value)
	_G.Random_Auto = value;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Random_Auto then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy");
			end
		end
	end);
end);
i:Toggle("Auto Bring Fruit", false, function(value)
	_G.Grabfruit = value;
end);
spawn(function()
	while wait(0.1) do
		if _G.Grabfruit then
			for o, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame;
				end
			end
		end
	end
end);
i:Toggle("Auto Store Fruit", false, function(value)
	_G.AutoStoreFruit = value;
end);
spawn(function()
	while wait() do
		if _G.AutoStoreFruit then
			pcall(function()
				DropFruit();
				wait();
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Kilo-Kilo", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Falcon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Revive-Revive", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Human-Human: Buddha", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "String-String", game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Phoenix", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Paw-Paw", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"));
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Leopard-Leopard", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"));
				end
			end);
		end
	end
end);
i:Toggle("Auto Drop Fruit", false, function(value)
	_G.DropFruit = value;
end);
spawn(function()
	while wait() do
		if _G.DropFruit then
			pcall(function()
				for o, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
					if string.find(v.Name, "Fruit") then
						EquipWeapon(v.Name);
						wait(0.1);
						if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true) then
							game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false;
						end
						EquipWeapon(v.Name);
						game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop");
					end
				end
				for o, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if string.find(v.Name, "Fruit") then
						EquipWeapon(v.Name);
						wait(0.1);
						if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true) then
							game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false;
						end
						EquipWeapon(v.Name);
						game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop");
					end
				end
			end);
		end
	end
end);
i:Toggle("Fruit Notification", false, function(value)
	_G.FruitCheck = value;
end);
spawn(function()
	while wait(0.1) do
		if _G.FruitCheck then
			for o, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					require(game:GetService("ReplicatedStorage").Notification).new("Fruit Spawn"):Display();
					wait();
					setthreadcontext(5);
				end
			end
		end
	end
end);
FruitList = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Venom-Venom","Shadow-Shadow","Control-Control","Soul-Soul","Dragon-Dragon","Leopard-Leopard"};
local c2 = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {};
ShopDevilSell = {};
for o, v in next, c2 do
	table.insert(Table_DevilFruitSniper, v.Name);
	if v.OnSale then
		table.insert(ShopDevilSell, v.Name);
	end
end
i:Seperator("Auto Buy Fruits");
_G.SelectFruit = "";
i:Dropdown("Select Fruit", Table_DevilFruitSniper, function(value)
	_G.SelectFruit = value;
end);
i:Toggle("Auto Buy Selected Fruit", false, function(value)
	_G.AutoBuyFruitSniper = value;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.AutoBuyFruitSniper then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", "_G.SelectFruit", false);
			end
		end
	end);
end);
i:Seperator("Auto Eat Fruits");
i:Dropdown("Select Fruit To Eat", Table_DevilFruitSniper, function(value)
	_G.SelectFruitEat = value;
end);
i:Toggle("Auto Eat Selected Fruit", false, function(value)
	_G.AutoEatFruit = value;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.AutoEatFruit then
				game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer();
			end
		end
	end);
end);
local c3 = j:Label("");
spawn(function()
	pcall(function()
		while wait() do
			if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true) then
				c3:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text);
			else
				c3:Set("Wait For Dungeon");
			end
		end
	end);
end);
local c4 = j:Label("");
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 1") then
				c4:Set("✅: Island 1");
			else
				c4:Set("❌: Island 1");
			end
		end
	end);
end);
local c5 = j:Label("");
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 2") then
				c5:Set("✅: Island 2");
			else
				c5:Set("❌: Island 2");
			end
		end
	end);
end);
local c6 = j:Label("");
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 3") then
				c6:Set("✅: Island 3");
			else
				c6:Set("❌: Island 3");
			end
		end
	end);
end);
local c7 = j:Label("");
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 4") then
				c7:Set("✅: Island 4");
			else
				c7:Set("❌: Island 4");
			end
		end
	end);
end);
local c8 = j:Label("");
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 5") then
				c8:Set("✅: Island 5");
			else
				c8:Set("❌: Island 5");
			end
		end
	end);
end);
j:Seperator("Auto Raid");
if World2 then
	j:Button("Teleport To Lab", function()
		al(CFrame.new(-6438.73535, 250.645355, -4501.50684));
	end);
elseif World3 then
	j:Button("Teleport To Lab", function()
		al(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818));
	end);
end
_G.SelectChip = selectraids or "";
Raidslist = {};
RaidsModule = require(game.ReplicatedStorage.Raids);
for o, v in pairs(RaidsModule.raids) do
	table.insert(Raidslist, v);
end
for o, v in pairs(RaidsModule.advancedRaids) do
	table.insert(Raidslist, v);
end
j:Dropdown("Select Chip", Raidslist, function(value)
	_G.SelectChip = value;
end);
j:Button("Buy Selected Chip", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
end);
j:Toggle("Auto Select Raid", false, function(value)
	_G.AutoSelectDungeon = value;
end);
spawn(function()
	while wait() do
		if _G.AutoSelectDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame")) then
					_G.SelectChip = "Flame";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice")) then
					_G.SelectChip = "Ice";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake")) then
					_G.SelectChip = "Quake";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light")) then
					_G.SelectChip = "Light";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark")) then
					_G.SelectChip = "Dark";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String")) then
					_G.SelectChip = "String";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble")) then
					_G.SelectChip = "Rumble";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma")) then
					_G.SelectChip = "Magma";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					_G.SelectChip = "Human: Buddha";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand")) then
					_G.SelectChip = "Sand";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix")) then
					_G.SelectChip = "Bird: Phoenix";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough")) then
					_G.SelectChip = "Dough";
				else
					_G.SelectChip = "Flame";
				end
			end);
		end
	end
end);
j:Toggle("Auto Buy Chip", false, function(value)
	_G.AutoBuyChip = value;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoBuyChip then
				if (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
					if not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
					end
				end
			end
		end
	end);
end);
j:Toggle("Auto Start Raid", false, function(value)
	_G.Auto_StartRaid = value;
end);
spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.Auto_StartRaid then
				if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == false) then
					if ((not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip")) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
						if World2 then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
						elseif World3 then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
						end
					end
				end
			end
		end);
	end
end);
j:Toggle("Kill Aura", false, function(value)
	_G.Kill_Aura = value;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Kill_Aura then
				if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == true) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
						if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							pcall(function()
								repeat
									wait();
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									v.Humanoid.Health = 0;
									v.HumanoidRootPart.CanCollide = false;
								until not _G.Kill_Aura or not v.Parent or (v.Humanoid.Health <= 0) 
							end);
						end
					end
				end
			end
		end
	end);
end);
j:Toggle("Auto Next Island", false, function(value)
	_G.Auto_Dungeon = value;
	StopTween(_G.Auto_Dungeon);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Auto_Dungeon then
				if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == true) then
					if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") then
						al(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").CFrame * RaidPos);
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") then
						al(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame * RaidPos);
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") then
						al(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame * RaidPos);
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") then
						al(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame * RaidPos);
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
						al(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame * RaidPos);
					end
				end
			end
		end
	end);
end);
Type = 1;
spawn(function()
	while wait(0.1) do
		if (Type == 1) then
			RaidPos = CFrame.new(0, 25, 0);
		elseif (Type == 2) then
			RaidPos = CFrame.new(0, 25, -40);
		elseif (Type == 3) then
			RaidPos = CFrame.new(40, 25, 0);
		elseif (Type == 4) then
			RaidPos = CFrame.new(0, 25, 40);
		elseif (Type == 5) then
			RaidPos = CFrame.new(-40, 25, 0);
		elseif (Type == 6) then
			RaidPos = CFrame.new(0, 25, 0);
		end
	end
end);
spawn(function()
	while wait(0.1) do
		Type = 1;
		wait(0.9);
		Type = 2;
		wait(0.9);
		Type = 3;
		wait(0.9);
		Type = 4;
		wait(0.9);
		Type = 5;
		wait(0.9);
	end
end);
j:Toggle("Auto Awanken Fruit", false, function(value)
	_G.Auto_Awakener = value;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Auto_Awakener then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
			end
		end
	end);
end);
j:Seperator("Advanced Raid");
j:Button("Buy Law Raid Chip", function()
	local args = {[1]="BlackbeardReward",[2]="Microchip",[3]="2"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
end);
j:Button("Start Law Raid", function()
	fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
end);
j:Toggle("Auto Law Raid", false, function(value)
	_G.AutoOderSword = value;
	StopTween(_G.AutoOderSword);
end);
spawn(function()
	while wait() do
		if _G.AutoOderSword then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Order [Lv. 1250] [Raid Boss]") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoOderSword or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					al(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
				elseif _G.AutoOderSwordHop then
					Hop();
				end
			end);
		end
	end
end);
j:Toggle("Auto Phoenix Raid", false, function(value)
	_G.AutoAdvanceDungeon = value;
	StopTween(_G.AutoAdvanceDungeon);
end);
spawn(function()
	while wait() do
		if _G.AutoAdvanceDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix")) then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							al(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							al(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					end
				end
			end);
		end
	end
end);
k:Seperator("Abilities");
k:Dropdown("Select Abilities", {"Geppo [$10,000 Beli]","Buso Haki [$25,000 Beli]","Soru [$25,000 Beli]","Observation Haki [$750,000 Beli]"}, function(value)
	_G.SelectAbilities = value;
end);
k:Button("Buy Selected Abilities", function()
	if (_G.SelectAbilities == "Geppo [$10,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
	elseif (_G.SelectAbilities == "Buso Haki [$25,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
	elseif (_G.SelectAbilities == "Soru [$25,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
	elseif (_G.SelectAbilities == "Observation Haki [$750,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
	end
end);
k:Seperator("Melee");
k:Dropdown("Select Melee", {"Black Leg [$150,000 Beli]","Electro [$550,000 Beli]","Fishman Karate [$750,000 Beli]","Dragon Claw [$1,500 Fragments]","Superhuman [$3,000,000 Beli]","Death Step [$5,000 Fragments + $5,000,000 Beli]","Sharkman Karate [$5,000 Fragments + $2,500,000 Beli]","Electric Claw [$5,000 Fragments + $3,000,000 Beli]","Dragon Talon [$5,000 Fragments + $3,000,000 Beli]","God Human [$5,000 Fragments + $5,000,000 Beli]","Sanguine Art [$5,000 Fragments + $5,000,000 Beli]"}, function(value)
	_G.SelectMelee = value;
end);
k:Button("Buy Selected Melee", function()
	if (_G.SelectMelee == "Black Leg [$150,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
	elseif (_G.SelectMelee == "Electro [$550,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
	elseif (_G.SelectMelee == "Fishman Karate [$750,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
	elseif (_G.SelectMelee == "Dragon Claw [$1,500 Fragments]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
	elseif (_G.SelectMelee == "Superhuman [$3,000,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
	elseif (_G.SelectMelee == "Death Step [$5,000 Fragments + $5,000,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
	elseif (_G.SelectMelee == "Sharkman Karate [$5,000 Fragments + $2,500,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
	elseif (_G.SelectMelee == "Electric Claw [$5,000 Fragments + $3,000,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
	elseif (_G.SelectMelee == "Dragon Talon [$5,000 Fragments + $3,000,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
	elseif (_G.SelectMelee == "God Human [$5,000 Fragments + $5,000,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
	elseif (_G.SelectMelee == "Sanguine Art [$5,000 Fragments + $5,000,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true);
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");
	end
end);
k:Seperator("Sword");
k:Dropdown("Select Melee", {"Cutlass [$1,000 Beli]","Katana [$1,000 Beli]","Iron Mace [$25,000 Beli]","Dual Katana [$12,000 Beli]","Triple Katana [$60,000 Beli]","Pipe [$100,000 Beli]","Dual-Headed Blade [$400,000 Beli]","Bisento [$1,200,000 Beli]","Soul Cane [$750,000 Beli]","Pole V2 [5,000 Fragments]","Yama Sword [Elite Hunter 30]"}, function(value)
	_G.SelectSword = value;
end);
k:Button("Buy Selected Sword", function()
	if (_G.SelectSword == "Cutlass [$1,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
	elseif (_G.SelectSword == "Katana [$1,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
	elseif (_G.SelectSword == "Iron Mace [$25,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
	elseif (_G.SelectSword == "Dual Katana [$12,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
	elseif (_G.SelectSword == "Triple Katana [$60,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
	elseif (_G.SelectSword == "Pipe [$100,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
	elseif (_G.SelectSword == "Dual-Headed Blade [$400,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
	elseif (_G.SelectSword == "Bisento [$1,200,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
	elseif (_G.SelectSword == "Soul Cane [$750,000 Beli]") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
	elseif (_G.SelectSword == "Pole V2 [5,000 Fragments]") then
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk");
	elseif (_G.SelectSword == "Yama Sword [Elite Hunter 30]") then
		fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
	end
end);
l:Seperator("Team");
l:Button("Join Pirates Team", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
end);
l:Button("Join Marines Team", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines");
end);
l:Seperator("Sever");
JobAiDee = l:Label("Sever Job ID : ");
spawn(function()
	while wait() do
		pcall(function()
			JobAiDee:Set("Sever Job ID :" .. " " .. game.JobId);
		end);
	end
end);
CrewAiDee = l:Label("Player Crew ID : ");
spawn(function()
	while wait() do
		pcall(function()
			CrewAiDee:Set("Player Crew ID :" .. " " .. game:GetService("Players").LocalPlayer.Data.CrewID.Value);
		end);
	end
end);
l:Button("Rejoin Sever", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
end);
l:Button("Hop Sever", function()
	Hop();
end);
l:Button("Hop Low Player Sever", function()
	getgenv().AutoTeleport = true;
	getgenv().DontTeleportTheSameNumber = true;
	getgenv().CopytoClipboard = false;
	if not game:IsLoaded() then
		print("Game is loading waiting...");
	end
	local c9 = math.huge;
	local ca;
	local cb;
	local cc = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100";
	function serversearch()
		for t, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(cc)).data) do
			if ((type(v) == "table") and (v.playing ~= nil) and (c9 > v.playing)) then
				ca = v.maxPlayers;
				c9 = v.playing;
				cb = v.id;
			end
		end
	end
	function getservers()
		serversearch();
		for o, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(cc))) do
			if (o == "nextPageCursor") then
				if cc:find("&cursor=") then
					local a = cc:find("&cursor=");
					local b = cc:sub(a);
					cc = cc:gsub(b, "");
				end
				cc = cc .. "&cursor=" .. v;
				getservers();
			end
		end
	end
	getservers();
	if AutoTeleport then
		if DontTeleportTheSameNumber then
			if ((#game:GetService("Players"):GetPlayers() - 4) == c9) then
				return warn("It has same number of players (except you)");
			elseif (cb == game.JobId) then
				return warn("Your current server is the most empty server atm");
			end
		end
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, cb);
	end
end);
l:Seperator("Miscellaneous");
l:Button("Open Devil Fruit Shop", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true;
end);
l:Button("Open Inventory", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons");
	wait(1);
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true;
end);
l:Button("Open Fruit Inventory", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits");
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true;
end);
l:Button("Open Title", function()
	local args = {[1]="getTitles"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true;
end);
l:Button("Open Haki Color", function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true;
end);
l:Button("Redeem All Codes", function()
	UseCode();
end);
function UseCode(cd)
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(cd);
end
UseCode("NEWTROLL");
UseCode("KITT_RESET");
UseCode("Sub2CaptainMaui");
UseCode("SUB2GAMERROBOT_RESET1");
UseCode("kittgaming");
UseCode("Sub2Fer999");
UseCode("Enyu_is_Pro");
UseCode("Magicbus");
UseCode("JCWK");
UseCode("Starcodeheo");
UseCode("Bluxxy");
UseCode("fudd10_v2");
UseCode("FUDD10");
UseCode("BIGNEWS");
UseCode("THEGREATACE");
UseCode("SUB2GAMERROBOT_EXP1");
UseCode("Sub2OfficialNoobie");
UseCode("StrawHatMaine");
UseCode("SUB2NOOBMASTER123");
UseCode("Sub2UncleKizaru");
UseCode("Sub2Daigrock");
UseCode("Axiore");
UseCode("TantaiGaming");
l:Button("FPS Boost", function()
	pcall(function()
		game:GetService("Lighting").FantasySky:Destroy();
		local aB = game;
		local ce = aB.Workspace;
		local cf = aB.Lighting;
		local cg = ce.Terrain;
		cg.WaterWaveSize = 0;
		cg.WaterWaveSpeed = 0;
		cg.WaterReflectance = 0;
		cg.WaterTransparency = 0;
		cf.GlobalShadows = false;
		cf.FogEnd = 8999999488;
		cf.Brightness = 0;
		settings().Rendering.QualityLevel = "Level01";
		for o, v in pairs(aB:GetDescendants()) do
			if (v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart")) then
				v.Material = "Plastic";
				v.Reflectance = 0;
			elseif (v:IsA("Decal") or v:IsA("Texture")) then
				v.Transparency = 1;
			elseif (v:IsA("ParticleEmitter") or v:IsA("Trail")) then
				v.Lifetime = NumberRange.new(0);
			elseif v:IsA("Explosion") then
				v.BlastPressure = 1;
				v.BlastRadius = 1;
			elseif (v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles")) then
				v.Enabled = false;
			elseif v:IsA("MeshPart") then
				v.Material = "Plastic";
				v.Reflectance = 0;
				v.TextureID = 10385902758728956;
			end
		end
		for o, ch in pairs(cf:GetChildren()) do
			if (ch:IsA("BlurEffect") or ch:IsA("SunRaysEffect") or ch:IsA("ColorCorrectionEffect") or ch:IsA("BloomEffect") or ch:IsA("DepthOfFieldEffect")) then
				ch.Enabled = false;
			end
		end
		for o, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
			if (v.Name == "Water;") then
				v.Transparency = 1;
				v.Material = "Plastic";
			end
		end
	end);
end);
m:Button("Reset Character", function()
	game.Players.LocalPlayer.Character.Head:Destroy();
end);
m:Seperator("Teleport");
PlaceList = {"Top Of Great Tree","Temple Of Time","Lever Pull","Acient One"};
m:Dropdown("Select Place To Teleport", PlaceList, function(value)
	_G.TeleportToPlace = value;
end);
m:Button("Teleport To Selected Place", function()
	if (_G.TeleportToPlace == "Top Of Great Tree") then
		al(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625));
	elseif (_G.TeleportToPlace == "Temple Of Time") then
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
	elseif (_G.TeleportToPlace == "Lever Pull") then
		al(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734));
	elseif (_G.TeleportToPlace == "Acient One") then
		al(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
	end
end);
m:Button("Teleport To Race Door", function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
	wait(0.1);
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
	wait(0.1);
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
	wait(0.1);
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
	wait(0.1);
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
	wait(0.1);
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
	wait(0.1);
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
	wait(0.1);
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
	if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
		wait(1);
		al(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922));
	elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
		wait(1);
		al(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938));
	elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
		wait(1);
		al(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406));
	elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
		wait(1);
		al(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188));
	elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
		wait(1);
		al(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719));
	elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
		wait(1);
		al(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969));
	end
end);
m:Button("Unlock Lever", function()
	venyx:Notify("Unlocked");
	if game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt") then
		game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt"):Remove();
	else
	end
	wait(0.1);
	local ci = Instance.new("ProximityPrompt");
	ci.Parent = game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt;
	ci.MaxActivationDistance = 10;
	ci.ActionText = "Secrets Beholds Inside";
	ci.ObjectText = "An unknown lever of time";
	function onProximity()
		local cj = game:GetService("Workspace").Map["Temple of Time"].MainDoor1;
		local ck = game:GetService("TweenService");
		local cl = cj.Position;
		local cm = cl + Vector3.new(0, -50, 0);
		local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out);
		local tween = ck:Create(cj, tweenInfo, {Position=cm});
		tween:Play();
		local cn = game:GetService("Workspace").Map["Temple of Time"].MainDoor2;
		local ck = game:GetService("TweenService");
		local cl = cn.Position;
		local cm = cl + Vector3.new(0, -50, 0);
		local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out);
		local tween = ck:Create(cn, tweenInfo, {Position=cm});
		tween:Play();
		local co = Instance.new("Sound");
		co.Parent = workspace;
		co.SoundId = "rbxassetid://1904813041";
		co:Play();
		co.Name = "POwfpxzxzfFfFF";
		game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt"):Remove();
		wait(5);
		workspace:FindFirstChild("POwfpxzxzfFfFF"):Remove();
		game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove();
		game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove();
		game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove();
	end
	ci.Triggered:Connect(onProximity);
end);
m:Button("Clock Acces", function()
	game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove();
	game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove();
end);
m:Button("Disabled Inf Stairs", function()
	game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = true;
end);
m:Button("Buy Ancient One Quest", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
end);
m:Seperator("Auto Race");
local cp = m:Label("");
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431") then
				cp:Set("🌕: Full Moon 100%");
			elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052") then
				cp:Set("🌖’ : Full Moon 75%");
			elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733") then
				cp:Set("🌗“ : Full Moon 50%");
			elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401") then
				cp:Set("🌘 : Full Moon 25%");
			elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680") then
				cp:Set("🌘: Full Moon 15%");
			else
				cp:Set("Wait For Moon");
			end
		end);
	end
end);
m:Toggle("Auto Trail", false, function(value)
	_G.AutoQuestRace = value;
	StopTween(_G.AutoQuestRace);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoQuestRace then
				if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
					for o, v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							pcall(function()
								repeat
									wait(0.1);
									v.Humanoid.Health = 0;
									v.HumanoidRootPart.CanCollide = false;
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoQuestRace or not v.Parent or (v.Humanoid.Health <= 0) 
							end);
						end
					end
				elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
					for o, v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if (v.Name == "snowisland_Cylinder.081") then
							al(v.CFrame * CFrame.new(0, 0, 0));
						end
					end
				elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
					for o, v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if (v.Name == "HumanoidRootPart") then
							al(v.CFrame * Pos);
							for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if (v.ToolTip == "Melee") then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.2);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.2);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if (v.ToolTip == "Blox Fruit") then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.2);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.2);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.5);
							for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if (v.ToolTip == "Sword") then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.2);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.2);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.5);
							for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if (v.ToolTip == "Gun") then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.2);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							wait(0.2);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
						end
					end
				elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
					al(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
				elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
					for o, v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
							pcall(function()
								repeat
									wait(0.1);
									v.Humanoid.Health = 0;
									v.HumanoidRootPart.CanCollide = false;
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoQuestRace or not v.Parent or (v.Humanoid.Health <= 0) 
							end);
						end
					end
				elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
					for o, v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if (v.Name == "StartPoint") then
							al(v.CFrame * CFrame.new(0, 10, 0));
						end
					end
				end
			end
		end
	end);
end);
m:Toggle("Auto Kill Player When Trail", false, function(value)
	_G.AutoKillTial = value;
	StopTween(_G.AutoKillTial);
end);
spawn(function()
	while wait() do
		if _G.AutoKillTial then
			for o, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
				if (v.Name and ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100)) then
					if (v.Humanoid.Health > 0) then
						repeat
							wait();
							EquipWeapon(_G.SelectWeapon);
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local args = {[1]="Buso"};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
							end
							al(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5));
							UseskillKill = true;
							v.HumanoidRootPart.CanCollide = false;
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame);
						until not _G.AutoKillTial or not v.Parent or (v.Humanoid.Health <= 0) 
						UseskillKill = false;
					end
				end
			end
		end
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if UseskillKill then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
			end
		end);
	end
end);
m:Toggle("Auto Buy Gear", false, function(value)
	_G.Auto_Farm_Bone4 = value;
	StopTween(_G.Auto_Farm_Bone4);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Auto_Farm_Bone4 then
				local args = {[1]=true};
				local args = {[1]="UpgradeRace",[2]="Buy"};
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args));
			end
		end
	end);
end);
m:Toggle("Auto Ancient One Quest", false, function(value)
	_G.AutoRace = value;
	StardFarm = value;
	StopTween(_G.AutoRace);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoRace then
				if (game.Players.LocalPlayer.Character.RaceTransformed.Value == true) then
					StardFarm = false;
					al(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875));
				end
			end
		end
	end);
end);
spawn(function()
	while wait() do
		if (StardFarm and World3) then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel")) then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v.Name == "Cocoa Warrior") or (v.Name == "Chocolate Bar Battler") or (v.Name == "Sweet Thief") or (v.Name == "Candy Rebel")) then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									FarmMag = true;
									PosGG = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not StardFarm or not v.Parent or (v.Humanoid.Health <= 0) 
							end
						end
					end
				else
					FarmMag = false;
					al(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875));
					for o, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if (v.Name == "Cocoa Warrior") then
							al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						elseif (v.Name == "Chocolate Bar Battler") then
							al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						elseif (v.Name == "Sweet Thief") then
							al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						elseif (v.Name == "Candy Rebel") then
							al(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoRace then
				if (game.Players.LocalPlayer.Character.RaceTransformed.Value == false) then
					StardFarm = true;
				end
			end
		end
	end);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoRace then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game);
			end
		end);
	end
end);
m:Seperator("Mirage Island");
Mirragecheck = m:Label("");
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
				Mirragecheck:Set("🏝️: Mirage Island is Spawning");
			else
				Mirragecheck:Set("❌: Mirage Island Not Found");
			end
		end
	end);
end);
m:Toggle("Auto Teleport To Mirage Island", false, function(value)
	_G.AutoMysticIsland = value;
	StopTween(_G.AutoMysticIsland);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoMysticIsland then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					al(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X, 500, game:GetService("Workspace").Map.MysticIsland.Center.Position.Z));
				end
			end
		end
	end);
end);
m:Toggle("Auto Drive Boats", false, function(value)
	AutoW = value;
end);
spawn(function()
	while wait() do
		pcall(function()
			if AutoW then
				game:service("VirtualInputManager"):SendKeyEvent(true, "W", false, game);
				wait(0.35);
				game:service("VirtualInputManager"):SendKeyEvent(false, "W", false, game);
				wait(1.5);
				game:service("VirtualInputManager"):SendKeyEvent(true, "S", false, game);
				wait(0.35);
				game:service("VirtualInputManager"):SendKeyEvent(false, "S", false, game);
				wait(1.5);
			end
		end);
	end
end);
m:Toggle("Auto Mirage Island", false, function(value)
	if state then
		_G.dao = true;
	else
		_G.dao = false;
	end
	if _G.dao then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
		wait(1);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5411.22021, 778.609863, -2682.27759, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396);
		wait(0);
		local args = {[1]="BuyBoat",[2]="PirateBrigade"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
		function two(ar)
			pcall(function()
				game.Players.LocalPlayer.Character.Humanoid.Sit = false;
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false;
			end);
			if ((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - ar.Position).Magnitude <= 200) then
				pcall(function()
					tweenz:Cancel();
				end);
				game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.CFrame = ar;
			else
				local an = game:service("TweenService");
				local ao = TweenInfo.new((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - ar.Position).Magnitude / 325, Enum.EasingStyle.Linear);
				tween, err = pcall(function()
					tweenz = an:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], ao, {CFrame=ar});
					tweenz:Play();
				end);
				if not tween then
					return err;
				end
			end
			function _TweenCanCle()
				tweenz:Cancel();
			end
		end
		two(CFrame.new(-5100.7085, 29.968586, -6792.45459, -0.33648631, -0.0396691673, 0.940852463, -6.404617e-7, 0.999112308, 0.0421253517, -0.941688359, 0.0141740013, -0.336187631));
		wait(13);
		for t, v in next, workspace.Boats.PirateBrigade:GetDescendants() do
			if v.Name:find("VehicleSeat") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame;
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					al(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0, 500, -100));
				end
			end
		end
	end
end);
m:Toggle("Auto Teleport To Advanced Fruit Dealer", false, function(value)
	_G.Miragenpc = value;
	StopTween(_G.Miragenpc);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Miragenpc then
				if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
					al(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position));
				end
			end
		end
	end);
end);
m:Toggle("Auto Lock Cam To Moon", false, function(value)
	_G.AutoDooHee = value;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoDooHee then
				wait(0.5);
				local cq = game.Lighting:GetMoonDirection();
				local cr = game.Workspace.CurrentCamera.CFrame.p + (cq * 100);
				game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, cr);
			end
		end);
	end
end);
m:Toggle("Auto Teleport To Blue Gear", false, function(value)
	_G.TweenMGear = value;
	StopTween(_G.TweenMGear);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.TweenMGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for o, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
						if v:IsA("MeshPart") then
							if (v.Material == Enum.Material.Neon) then
								al(v.CFrame);
							end
						end
					end
				end
			end
		end
	end);
end);
m:Toggle("Auto Farm Chest Mirage Island", false, function(value)
	_G.AutoChestMirage = value;
	StopTween(_G.AutoChestMirage);
end);
_G.MagnitudeAdd = 0;
spawn(function()
	while wait() do
		if _G.AutoChestMirage then
			for o, v in pairs(game:GetService("Workspace"):GetChildren()) do
				if v.Name:find("FragChest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if ((v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (5000 + _G.MagnitudeAdd)) then
							repeat
								wait();
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									al(v.CFrame);
								end
							until (_G.AutoChestMirage == false) or not v.Parent 
							TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
							_G.MagnitudeAdd = _G.MagnitudeAdd + 1500;
							break;
						end
					end
				end
			end
		end
	end
end);
n:Button("Reset Character", function()
	game.Players.LocalPlayer.Character.Head:Destroy();
end);
n:Seperator("Kitsune Event");
FrozenIsland = n:Label("");
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
				FrozenIsland:Set("🟢: Frozen Dimension Spawning");
			else
				FrozenIsland:Set("🔴: Frozen Dimension Not Found");
			end
		end
	end);
end);
n:Toggle("Teleport To Frozen Dimension", false, function(value)
	_G.AutoFrozenDimension = value;
	StopTween(_G.AutoFrozenDimension);
end);
spawn(function()
	while wait() do
		if _G.AutoFrozenDimension then
			pcall(function()
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
					al(game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension").HumanoidRootPart.CFrame * CFrame.new(0, 500, -100));
				end
			end);
		end
	end
end);
n:Toggle("Teleport To Kitsune Island", false, function(value)
	_G.AutoFKitsune = value;
	StopTween(_G.AutoFKitsune);
end);
spawn(function()
	while wait() do
		if _G.AutoFKitsune then
			pcall(function()
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
					al(game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island").HumanoidRootPart.CFrame * CFrame.new(0, 100, 0));
				end
			end);
		end
	end
end);
n:Seperator("Boats Modify");
BoatsName = {};
for o, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
	table.insert(BoatsName, v.Name);
end
local cs = n:Dropdown("Select Boats", BoatsName, function(value)
	_G.SelectB = value;
end);
n:Button("Refresh Boats List", function()
	BoatsName = {};
	cs:Clear();
	for o, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
		cs:Add(v.Name);
	end
end);
n:Toggle("Teleport To Selected Boats", false, function(value)
	_G.TPB = bool;
	StopTween(_G.TPB);
	if _G.TPB then
		_G.Boats = true;
		while _G.Boats do
			wait();
			Distance = (game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			Speed = 220;
			tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear);
			tween = tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.CFrame});
			tween:Play();
			_G.Clip = true;
			wait(Distance / Speed);
		end
	elseif (_G.TPB == false) then
		_G.Boats = false;
		while _G.Boats do
			wait();
			Distance = (game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			Speed = 220;
			tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear);
			tween = tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.CFrame});
			tween:Play();
			_G.Clip = true;
			wait(Distance / Speed);
		end
		tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.1, Enum.EasingStyle.Linear);
		tween = tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame});
		tween:Play();
		_G.Clip = false;
	end
end);
n:Button("Bring Selected Boats", function()
	game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.CFrame;
end);
n:Toggle("Spectate Selected Boats", false, function(value)
	Sp = value;
	local c0 = game.Players.LocalPlayer.Character.Humanoid;
	local c1 = game:GetService("Workspace").Boats:FindFirstChild(_G.SelectB);
	repeat
		wait(0.1);
		game.Workspace.Camera.CameraSubject = game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat;
	until Sp == false 
	game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid;
end);
n:Seperator("Sea Event");
n:Toggle("Auto Drive Boats", false, function(value)
	_G.DomadicAutoDriveBoat = value;
	StopTween(_G.DomadicAutoDriveBoat);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.DomadicAutoDriveBoat then
				if (not game:GetService("Workspace").Enemies:FindFirstChild("Shark") or not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member")) then
					if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
						buyb = TPP(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781));
						if ((CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10) then
							if buyb then
								buyb:Stop();
							end
							local args = {[1]="BuyBoat",[2]="PirateBrigade"};
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
						end
					elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
						if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false) then
							TPP(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0));
						else
							for o, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
								if (v.Name == "PirateBrigade") then
									repeat
										wait();
										if ((CFrame.new(-17013.80078125, 10.962434768676758, 438.0169982910156).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10) then
											TPB(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094));
										elseif ((CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10) then
											TPB(CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375));
										elseif ((CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10) then
											TPB(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094));
										end
									until game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or (_G.DomadicAutoDriveBoat == false) 
								end
							end
						end
					end
				end
			end
		end);
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.DomadicAutoDriveBoat then
				if (game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member")) then
					game.Players.LocalPlayer.Character.Humanoid.Sit = false;
				end
			end
		end
	end);
end);
n:Toggle("Auto Kill Terror Shark", false, function(value)
	_G.AutoTerrorshark = value;
	StopTween(_G.AutoTerrorshark);
end);
spawn(function()
	while wait() do
		if (_G.AutoTerrorshark and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Terrorshark") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									PosNarathiwat = v.HumanoidRootPart.CFrame;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									Min_XT_Is_Kak = true;
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.AutoTerrorshark or not v.Parent or (v.Humanoid.Health <= 0) 
								Min_XT_Is_Kak = false;
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
					al(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
				elseif _G.AutoTerrorsharkhop then
					Hop();
				end
			end);
		end
	end
end);
n:Toggle("Auto Kill Shark", false, function(value)
	FarmShark = value;
	StopTween(FarmShark);
end);
spawn(function()
	while wait() do
		if (FarmShark and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Shark") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									PosNarathiwat = v.HumanoidRootPart.CFrame;
									al(v.HumanoidRootPart.CFrame * Pos);
									Min_XT_Is_Kak = true;
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not FarmShark or not v.Parent or (v.Humanoid.Health <= 0) 
								Min_XT_Is_Kak = false;
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
					al(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
				elseif _G.AutoTerrorsharkhop then
					Hop();
				end
			end);
		end
	end
end);
n:Toggle("Auto Kill Piranha", false, function(value)
	_G.farmpiranya = value;
	StopTween(_G.farmpiranya);
end);
spawn(function()
	while wait() do
		if (_G.farmpiranya and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Piranha") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									PosNarathiwat = v.HumanoidRootPart.CFrame;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									al(v.HumanoidRootPart.CFrame * Pos);
									Min_XT_Is_Kak = true;
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.farmpiranya or not v.Parent or (v.Humanoid.Health <= 0) 
								Min_XT_Is_Kak = false;
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
					al(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
				elseif _G.AutoTerrorsharkhop then
					Hop();
				end
			end);
		end
	end
end);
n:Toggle("Auto Kill Fish Crew Member", false, function(value)
	_G.Fish_Crew_Member = value;
	StopTween(_G.Fish_Crew_Member);
end);
spawn(function()
	while wait() do
		if (_G.Fish_Crew_Member and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
					for o, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Fish Crew Member") then
							if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									PosNarathiwat = v.HumanoidRootPart.CFrame;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									Min_XT_Is_Kak = true;
									al(v.HumanoidRootPart.CFrame * Pos);
									game:GetService("VirtualUser"):CaptureController();
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
								until not _G.Fish_Crew_Member or not v.Parent or (v.Humanoid.Health <= 0) 
								Min_XT_Is_Kak = false;
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member") then
					al(game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
				elseif _G.AutoTerrorsharkhop then
					Hop();
				end
			end);
		end
	end
end);
n:Toggle("Auto Kill Raid Ship", false, function(value)
	_G.KillGhostShip = value;
	StopTween(_G.KillGhostShip);
end);
spawn(function()
	while wait() do
		if _G.KillGhostShip then
			pcall(function()
				if CheckPirateBoat() then
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game);
					wait(0.5);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game);
					local v = CheckPirateBoat();
					repeat
						wait();
						spawn(al(v.Engine.CFrame * CFrame.new(0, -20, 0)), 1);
						AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0);
						Skillaimbot = true;
						AutoSkill = false;
					until not v or not v.Parent or (v.Health.Value <= 0) or not CheckPirateBoat() 
					Skillaimbot = true;
					AutoSkill = false;
				end
			end);
		end
	end
end);
n:Toggle("Auto Kill Ghost Ship", false, function(value)
	_G.bjirFishBoat = value;
	StopTween(_G.bjirFishBoat);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.bjirFishBoat then
				if CheckPirateBoat() then
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game);
					wait(0.5);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game);
					local v = CheckPirateBoat();
					repeat
						wait();
						spawn(al(v.Engine.CFrame * CFrame.new(0, -20, 0), 1));
						AutoSkill = true;
						Skillaimbot = true;
						AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0);
					until v.Parent or (v.Health.Value <= 0) or not CheckPirateBoat() 
					AutoSkill = false;
					Skillaimbot = false;
				end
			end
		end);
	end
end);
spawn(function()
	while wait() do
		if _G.bjirFishBoat then
			pcall(function()
				if CheckPirateBoat() then
					AutoHaki();
					game:GetService("VirtualUser"):CaptureController();
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
					for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if (v.ToolTip == "Melee") then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end
						end
					end
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if (v.ToolTip == "Blox Fruit") then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end
						end
					end
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.6);
					for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if (v.ToolTip == "Sword") then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end
						end
					end
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.5);
					for o, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if (v.ToolTip == "Gun") then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end
						end
					end
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					wait(0.2);
					game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
					game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
				end
			end);
		end
	end
end);
n:Toggle("Teleport To Sea Beast", false, function(value)
	_G.AutoSeaBest = value;
	StopTween(_G.AutoSeaBest);
end);
spawn(function()
	while wait() do
		if _G.AutoSeaBest then
			pcall(function()
				for o, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						AutoHaki();
						EquipWeapon(_G.SelectWeapon);
						TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0));
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
					elseif _G.AutoSeaBestHop then
						Hop();
					end
				end
			end);
		end
	end
end);
if (_G.Auto_Seabest == false) then
	AutoSkill = false;
end
n:Toggle("Auto Sea Beast", false, function(value)
	_G.Auto_Seabest = value;
	StopTween(_G.Auto_Seabest);
end);
local ct = getrawmetatable(game);
local old = ct.__namecall;
setreadonly(ct, false);
ct.__namecall = newcclosure(function(...)
	local cu = getnamecallmethod();
	local args = {...};
	if (tostring(cu) == "FireServer") then
		if (tostring(args[1]) == "RemoteEvent") then
			if ((tostring(args[2]) ~= "true") and (tostring(args[2]) ~= "false")) then
				if Skillaimbot then
					args[2] = AimBotSkillPosition;
					return old(unpack(args));
				end
			end
		end
	end
	return old(...);
end);
Skillz = true;
Skillx = true;
Skillc = true;
Skillv = true;
spawn(function()
	while wait() do
		pcall(function()
			if AutoSkill then
				if Skillz then
					game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
					wait(0.1);
					game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
				end
				if Skillx then
					game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
					wait(0.1);
					game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
				end
				if Skillc then
					game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
					wait(0.1);
					game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
				end
				if Skillv then
					game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
					wait(0.1);
					game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
				end
			end
		end);
	end
end);
task.spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Seabest then
				if not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
					if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
						if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
							if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
								buyb = TPP(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781));
								if ((CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10) then
									if buyb then
										buyb:Stop();
									end
									local args = {[1]="BuyBoat",[2]="PirateBrigade"};
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
								end
							elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
								if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false) then
									TPP(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0));
								elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true) then
									repeat
										wait();
										if ((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10) then
											TPB(CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125));
										end
									until game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or (_G.Auto_Seabest == false) 
								end
							end
						elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
							for cv, cw in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (cw.Name == "PirateBrigade") then
									if cw:FindFirstChild("VehicleSeat") then
										repeat
											wait();
											game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false;
											TPP(cw.VehicleSeat.CFrame * CFrame.new(0, 30, 0));
											EquipAllWeapon();
											AutoSkill = true;
											AimBotSkillPosition = cw.VehicleSeat;
											Skillaimbot = true;
										until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or (_G.Auto_Seabest == false) 
										AutoSkill = false;
										Skillaimbot = false;
									end
								end
							end
						end
					elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
						for cx, cy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (cy.Name == "PirateBasic") then
								if cy:FindFirstChild("VehicleSeat") then
									repeat
										wait();
										game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false;
										TPP(cy.VehicleSeat.CFrame * CFrame.new(0, 30, 0));
										EquipAllWeapon();
										AutoSkill = true;
										AimBotSkillPosition = cy.VehicleSeat;
										Skillaimbot = true;
									until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or (_G.Auto_Seabest == false) 
									AutoSkill = false;
									Skillaimbot = false;
								end
							end
						end
					end
				elseif game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
					for o, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
						if v:FindFirstChild("HumanoidRootPart") then
							repeat
								wait();
								game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false;
								TPP(v.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0));
								EquipAllWeapon();
								AutoSkill = true;
								AimBotSkillPosition = v.HumanoidRootPart;
								Skillaimbot = true;
							until not v:FindFirstChild("HumanoidRootPart") or (_G.Auto_Seabest == false) 
							AutoSkill = false;
							Skillaimbot = false;
						end
					end
				end
			end
		end);
	end
end);
game:GetService("StarterGui"):SetCore("SendNotification", {Title="Crazzy Hub V3",Text="Loading Complete!",Icon="rbxassetid://15689000757",Duration=2});
