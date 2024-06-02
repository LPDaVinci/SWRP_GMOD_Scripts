SM = SM or {}

local CG = {}

CG.EmoteTeams = {
    ["NormalEmote"] = { -- Name of faction as index
        ["teams"] = {"Flotten FADM","Stoßtrupp MCMD","RSF CMD","Piloten CMD","MED CMD","Klonkrieger CMD","EOD CMD","91st MCMD","5th Flottensicherheit CMD","501st SCMD","41st SCMD","327th MCMD","21st MCMD","212th MCMD","187th CMD","104th SCMD",},
    },
}

local meta = FindMetaTable("Player")

--Get the faction of a player
function meta:GetEmoteTeam()
    local emot = nil
    local jobname = team.GetName( self:Team() )
    for emote, y in pairs(CG.EmoteTeams) do
    	for x,z in pairs(CG.EmoteTeams[emote]["teams"]) do
        	if z == jobname then
            	emot = emote
                break
           	end
        end
    	if emot then break end
    end
	return emot
end

// Q Menu //

local qMenuEnabled = false
local qMenuOpen = false
local qMenuPerc = 0
local qMenuDiff = 0.1
local qMenuWidth = 800
local qMenuHeight = 600


	

local function toggleQMenu()
	if(!qMenuEnabled)then return end
		
	qMenuOpen = !qMenuOpen
	
	if(qMenuOpen)then
		gui.EnableScreenClicker(true)
	else
		gui.EnableScreenClicker(false)
	end
end

local white = Color(255,255,255,255)
local qMenuButtonColor = Color(0,0,0,230)

local circleMat = Material("sm/emote_stick.png")
local menuMat = Material("sm/emote_stick.png")
local logoMat = Material("sm/taunt_logo.png")
local logoW = 66 * 8
local logoH = 7 * 8
local logoWW = logoW / 2
local logoHH = logoH / 2

local scrW = ScrW()
local scrH = ScrH()

local scrWW = scrW / 2
local scrHH = scrH / 2
local scrWQ = qMenuWidth / 2
local scrHQ = qMenuHeight / 2
local baseWQ = scrWW - scrWQ
local baseHQ = scrHH - scrHQ


surface.CreateFont("AlienIsolationFont10", {
	font = "Sevastopol-Interface",
	size = 30
})


hook.Add("HUDPaint", "sm_taunts_q", function()
	if(!qMenuEnabled)then return end

	
	if(!qMenuOpen)then
		if(qMenuPerc > 0)then
			qMenuPerc = qMenuPerc - qMenuDiff
			if(qMenuPerc < 0)then
				qMenuPerc = 0
			end
		end
	else
		if(qMenuPerc < 1)then
			qMenuPerc = qMenuPerc + qMenuDiff
			if(qMenuPerc > 1)then
				qMenuPerc = 1
			end
		end
	end
	
	if(qMenuPerc <= 0)then return end
	
	print((1 - qMenuPerc))
	
	draw.RoundedBox((150 * (1 - qMenuPerc)) + 30, scrWW - (scrWQ * qMenuPerc), scrHH - (scrHQ * qMenuPerc), qMenuWidth * qMenuPerc, qMenuHeight * qMenuPerc, Color(5,5,5,220 * qMenuPerc))
	surface.SetMaterial(logoMat)
	surface.SetDrawColor(white)
	surface.DrawTexturedRect(scrWW - (logoWW * qMenuPerc), scrHH - ((scrHQ + logoHH - 35) * qMenuPerc), logoW * qMenuPerc, logoH * qMenuPerc)
	
	surface.SetFont("AlienIsolationFont10")
	
	surface.SetTextPos(baseWQ + 20, baseHQ + 50)
	surface.DrawText("Test text")
end)

// Taunt circle menu //

local selected = nil
local open = false;
local foundTaunts = {}

local function openTauntMenu()

	if(qMenuOpen and qMenuEnabled)then
		toggleQMenu()
		return
	end
	
	selected = nil
	open = true
	foundTaunts = {}
	if(LocalPlayer():Alive() and LocalPlayer():Team() != TEAM_ALIEN)then
	
		local c = 0
		--local check = LocalPlayer():GetFaction()
		--if (check == "NormalEmote") then 
		check = EMOTES 
		--end		

		for k, v in pairs(SM.Taunts[check] or {})do
			c = c + 1
			foundTaunts[c] = v
			foundTaunts[c].name = k
		end
	end
	
	gui.EnableScreenClicker(true)
	input.SetCursorPos( ScrW() / 2, ScrH() / 2 )
end

local function closeTauntMenu()
	open = false
	if(!qMenuOpen or !qMenuEnabled)then
		gui.EnableScreenClicker(false)
	end
end


local diff = 0.07
local target_diff = 0.004
local lalpha = 0
local alpha = 0

local centerSize = 200
if(!qMenuEnabled)then
	centerSize = 64
end

local buttonSize = 256
local transparency = 0.5

local targetRadius = 200
local baseRadius = 100
local radius = 0

local lastPaint = nil

hook.Add("HUDPaint", "sm_taunts", function()
	
	if(!open)then
		if(lalpha > 0)then
			local timeDiff = CurTime() - lastPaint
			local perc = timeDiff / target_diff
			
			lalpha = lalpha - (diff * perc)
			if(lalpha < 0)then
				lalpha = 0
			end
		end
		
		lastPaint = CurTime()
	else
		if(lalpha < 1)then
			
			local timeDiff = CurTime() - lastPaint
			local perc = timeDiff / target_diff
			
			lalpha = lalpha + (diff * perc)
			if(lalpha > 1)then
				lalpha = 1
			end
		end
		
		lastPaint = CurTime()
	end
	
	alpha = Lerp(lalpha, 0, 255)
	radius = Lerp(lalpha, baseRadius, targetRadius)
	
	if(alpha <= 0)then return end
	
	local mx, my = gui.MousePos()
	
	surface.SetDrawColor(Color(5,5,5,alpha * transparency))
	surface.SetMaterial(circleMat)
	
	local distanceX = math.abs(mx - scrWW)
	local distanceY = math.abs(my - scrHH)
	local distance = math.sqrt( (distanceX * distanceX) + (distanceY * distanceY) )
	local distanceMod = 1 - math.Clamp((1 - (70 / distance)) + 0.3, 0, 0.7)
	
	local centerSizeMod = centerSize * lalpha
	if(qMenuEnabled)then
		centerSizeMod = centerSizeMod * distanceMod
	end
	
	surface.DrawTexturedRect(scrWW - (centerSizeMod / 2), scrHH - (centerSizeMod / 2), centerSizeMod, centerSizeMod)
	if(qMenuEnabled)then
		surface.SetDrawColor(qMenuButtonColor)
		surface.SetMaterial(menuMat)
		centerSizeMod = centerSizeMod * 0.7
		surface.DrawTexturedRect(scrWW - (centerSizeMod / 2), scrHH - (centerSizeMod / 2), centerSizeMod, centerSizeMod)
		surface.SetMaterial(circleMat)
	end
	
	// Toggle Q Menu
	if(qMenuEnabled and !selected and distanceMod > 0.7 and input.IsMouseDown(MOUSE_LEFT))then
		selected = -1
		
		timer.Simple(0.04, function()
			closeTauntMenu()
		end)
		
		timer.Simple(0.06, function()
			toggleQMenu()
		end)
	end
	
	surface.SetDrawColor(Color(5,5,5,alpha * transparency))
	for i=1, 6 do
		local rad = math.rad((360 / 6) * i)
		local x = scrWW + -(math.cos(rad) * radius)
		local y = scrHH + -(math.sin(rad) * radius)
		
		local distanceX = math.abs(mx - x)
		local distanceY = math.abs(my - y)
		local distance = math.sqrt( (distanceX * distanceX) + (distanceY * distanceY) )
		local distanceMod = 1 - math.Clamp((1 - (100 / distance)) + 0.3, 0, 0.7)
		
		local buttonSizeMod = (buttonSize * lalpha) * distanceMod
		if(selected == nil and distanceMod == 1 and input.IsMouseDown(MOUSE_LEFT))then
			// Clicked
			selected = i
			
			if(foundTaunts[i])then
				net.Start("play_taunt")
				net.WriteString(foundTaunts[i].name)
				net.SendToServer()
				net.Start("material_taunt")
				net.WriteString(foundTaunts[i].material)
				net.SendToServer()
			end
			
			timer.Simple(0.04, function()
				closeTauntMenu()
			end)
		end
		
		if(i == selected)then
			surface.SetDrawColor(Color(45,45,45,alpha * transparency + 35))
		else
			surface.SetDrawColor(Color(5,5,5,alpha * transparency))
		end
		
		surface.DrawTexturedRect(x - (buttonSizeMod / 2), y - (buttonSizeMod / 2), buttonSizeMod, buttonSizeMod)
		if(foundTaunts[i])then
			surface.SetMaterial(Material(foundTaunts[i].material))
			surface.SetDrawColor(white)
			surface.DrawTexturedRect(x - (buttonSizeMod / 2), y - (buttonSizeMod / 2), buttonSizeMod, buttonSizeMod)
			surface.SetDrawColor(Color(5,5,5,alpha * transparency))
			surface.SetMaterial(circleMat)
		end
	end
end)



local lastStatus = false
hook.Add("Think", "sm_taunts", function()


if LocalPlayer():IsTyping() then return end
		--NO Menu when on piano tool--
		if IsValid( LocalPlayer().Instrument ) then return end
	if(input.IsKeyDown( KEY_B )) then
if !(LocalPlayer():GetEmoteTeam() == "NormalEmote") then return end
		if(!lastStatus)then
			openTauntMenu()
			lastStatus = true
		end
	else
		if(lastStatus)then
			closeTauntMenu()
			lastStatus = false
		end
	end
end)
