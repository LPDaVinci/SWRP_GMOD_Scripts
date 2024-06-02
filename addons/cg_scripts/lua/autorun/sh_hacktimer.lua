_Hack = _Hack or {}
HackConfig = HackConfig or {}

HackConfig.HackingTime = 20
HackConfig.Commands = {"!hack","/hack"}
HackConfig.EndCommand = "say /funk hat die Tür vor ihm erfolgreich gehackt!"

HackConfig.Colors = {}
HackConfig.Colors.White = Color(255,255,255,255)
HackConfig.Colors.Green = Color(33,255,0,255)
HackConfig.Colors.LightBlack = Color(30,30,30,255)
HackConfig.Colors.Black = Color(0,0,0,255)

HackConfig.MessageTime = 4
HackConfig.StartedHacking = "Du hast das Hacken gestartet. Um es abzubrechen, drücke E."
HackConfig.SuccessfullyHacked = "Du hast die Tür erfolgreich gehackt!"
HackConfig.DeathMessage = "Du wurdest beim Hacken getötet, der Hack wurde abgebrochen."
HackConfig.AbortedHack = "Du hast das Hacken abgebrochen!"

if ( SERVER ) then
	util.AddNetworkString("HACK_SetTimer")
	util.AddNetworkString("HACKING_Stopping")

	hook.Add("PlayerInitialSpawn", "HACK_SetupVars", function(ply)
		ply:SetNWBool("IsHackingNow", false)
	end)

	hook.Add("PlayerSay", "HACK_ChatCommand", function(ply, text, public)
		text = string.lower( text )
		if ( table.HasValue(HackConfig.Commands, text) ) then
			_Hack.StartHacking(ply)
			return ""
		end
	end)

	function _Hack.StartHacking(ply)
		if ( !ply or !ply:IsPlayer() ) then return end
		if ( timer.Exists("HACK_StartedHacking"..ply:EntIndex()) ) then return end
		local oldRunSpeed = ply:GetRunSpeed()

		ply:SetNWBool("IsHackingNow", true)
		ply.oldRunSpeed = ply:GetRunSpeed()
		ply.oldWalkSpeed = ply:GetWalkSpeed()

		ply:SetRunSpeed(1)
		ply:SetWalkSpeed(1)

		DarkRP.notify(ply, 2, HackConfig.MessageTime, HackConfig.StartedHacking)

		timer.Create("HACK_StartedHacking"..ply:EntIndex(), HackConfig.HackingTime, 1, function()
			ply:SetNWBool("IsHackingNow", false)

			ply:SetRunSpeed(ply.oldRunSpeed)
			ply:SetWalkSpeed(ply.oldWalkSpeed)

			DarkRP.notify(ply, 2, HackConfig.MessageTime, HackConfig.SuccessfullyHacked)

			ply:ConCommand(HackConfig.EndCommand)

			timer.Destroy("HACK_StartedHacking"..ply:EntIndex())
		end)

		net.Start("HACK_SetTimer")
			net.WriteFloat(CurTime() + HackConfig.HackingTime)
			net.WriteEntity(ply)
		net.Broadcast()
	end
	
	

	
	hook.Add("PlayerDeath", "HACK_HackerDied", function(victim, inflictor, attacker)
		if ( victim:GetNWBool("IsHackingNow") ) then
			victim:SetNWBool("IsHackingNow", false)

			victim:SetRunSpeed(victim.oldRunSpeed)
			victim:SetWalkSpeed(victim.oldWalkSpeed)

			DarkRP.notify(victim, 2, HackConfig.MessageTime, HackConfig.DeathMessage)

			timer.Destroy("HACK_StartedHacking"..victim:EntIndex())
		end
	end)
	
		net.Receive("HACKING_Stopping", function()
	local hacker = net.ReadEntity()
		hacker:SetNWBool("IsHackingNow", false)
		hacker:SetRunSpeed(hacker.oldRunSpeed)
		hacker:SetWalkSpeed(hacker.oldWalkSpeed)
		DarkRP.notify(hacker, 2, HackConfig.MessageTime, HackConfig.AbortedHack)
		timer.Destroy("HACK_StartedHacking"..hacker:EntIndex())
	end)
end






if ( CLIENT ) then
	local Timer = 0

	surface.CreateFont("HACK_Font_1", {
		font = "Arial",
		extended = false,
		size = 24,
		weight = 1000,
	})

	net.Receive("HACK_SetTimer", function()
		local time = net.ReadFloat()
		local ply = net.ReadEntity()
		ply.Timer = time
	end)

	hook.Add("PostDrawOpaqueRenderables", "HACK_DrawBar", function()
		local ply = LocalPlayer()
		local CurTime = CurTime()

		for k, v in pairs(player.GetAll()) do
			if ( ply:GetPos():Distance(v:GetPos()) < 1100 and v.Timer and v.Timer > CurTime and v:GetNWBool("IsHackingNow") ) then
				local pos = v:GetPos()
				local PlayersAngle = ply:GetAngles()
				local ang = Angle( 0, PlayersAngle.y - 180 , 0 )

				ang:RotateAroundAxis(ang:Right(), -90)
				ang:RotateAroundAxis(ang:Up(), 90)

				local v1 = 200/HackConfig.HackingTime
				local v2 = (v.Timer - CurTime)*v1
				local v3 = v2

				cam.Start3D2D(pos, ang, 0.2)
					surface.SetDrawColor(HackConfig.Colors.LightBlack)
					surface.DrawRect(-100,-420,200,25)

					surface.SetDrawColor(HackConfig.Colors.Green)
					surface.DrawRect(-100,-420,200-v3,25)

					draw.SimpleTextOutlined("Hacken...", "HACK_Font_1", 0, -450, HackConfig.Colors.White, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, HackConfig.Colors.Black)
				cam.End3D2D()
			end
		end
	end)
	
	
		hook.Add("PlayerButtonDown", "Hacking_ButtonPressed2", function(ply, button)
		if ( ply:GetNWBool("IsHackingNow") == true) and ( button == KEY_E ) then
			ply:SetNWBool("IsHackingNow", false)
			net.Start("HACKING_Stopping")
			net.WriteEntity(ply)
		net.SendToServer()
		end
	end)
end
