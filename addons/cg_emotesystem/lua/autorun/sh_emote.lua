--[[-------------------------------------------------------------------
	The Faction Emote System
		
			Powered by
                  _                                   
                 | |                                  
  _   _ _ __   __| | ___ _ __ ___ _____   _____ _ __  
 | | | | '_ \ / _` |/ _ \ '__/ __/ _ \ \ / / _ \ '__| 
 | |_| | | | | (_| |  __/ | | (_| (_) \ V /  __/ |    
  \__,_|_|_|_|\__,_|\___|_|  \___\___/ \_/ \___|_|    
        / ____|               (_)                     
       | |  __  __ _ _ __ ___  _ _ __   __ _          
       | | |_ |/ _` | '_ ` _ \| | '_ \ / _` |         
       | |__| | (_| | | | | | | | | | | (_| |         
        \_____|\__,_|_| |_| |_|_|_| |_|\__, |         
                                        __/ |         
                                       |___/       
-------------------------------------------------------------------]]--[[
							  
	Edited by uCg coded by LPDaVinci
	
---------------------------------------------------------------------]]--



SM = SM or {}




if(SERVER)then



	util.AddNetworkString("play_taunt")
	util.AddNetworkString("material_taunt")
	util.AddNetworkString("material_taunt_string")
	
	local cooldown = 4
	local tauntMessageDistance = 300
	
	local plays = {}
	net.Receive("play_taunt", function(len, ply)
		local taunt = net.ReadString()
		if(!ply:Alive())then return end
		
		if(plays[ply] and CurTime() - plays[ply] < cooldown)then return	end
		
		--local check = ply:GetFaction()
		--if (check == "NormalEmote") then 
		check = EMOTES 
		--end		


		if(!(SM.Taunts[check] or {})[taunt])then return end
		
		SM.Taunts[check][taunt].play(ply)
		
		

		
		if(SM.Taunts[check][taunt].message)then
			--original:	local message = "chat.AddText(Color(247,198,76), [["..EscapeRPName(ply:Nick()).." - "..SM.Taunts[check][taunt].message.."]])"
			
			local message = "chat.AddText(Color(247,198,76), [["..ply:Nick().." - "..SM.Taunts[check][taunt].message.."]])"
			
			for k, v in pairs(ents.FindInSphere(ply:GetPos(), tauntMessageDistance))do
				if(v:IsPlayer())then
					v:SendLua(message)
				end
			end
		end
	end)
	
net.Receive("material_taunt", function(len, ply)
local cooldownnum = 3
messagetaunt = net.ReadString() -- reassign messagetaunt so it instantly gets updated in notifyBoxHUD()

if(plays[ply] and CurTime() - plays[ply] < cooldown)then
			ply:PrintMessage(HUD_PRINTTALK, "Taunt cooldown has "..math.Round(cooldown - (CurTime() - plays[ply])).." seconds left")
			return
		end
		plays[ply] = CurTime()

	net.Start("material_taunt_string")
		net.WriteString(messagetaunt)
		net.WriteEntity(ply)
      	--Here write a 
      	net.WriteDouble(cooldownnum)
		net.Broadcast()

end)
end
TauntPlayers = {}
net.Receive("material_taunt_string", function(len, ply)
    local messagetaunt = Material(net.ReadString()) -- reassign message so it instantly gets updated in notifyBoxHUD()	
    local Ent = net.ReadEntity()
    local time = CurTime() + net.ReadDouble()
    TauntPlayers[Ent] = {time = time, taunt = messagetaunt,}
end)

function OverHead()
    if TauntPlayers == {} then return end
    for Ent, tbl in pairs(TauntPlayers) do
        if !IsValid(Ent) then continue end
		if(!Ent:Alive())then return end		
        if (tbl.time || 0 ) > CurTime() then
			if( LocalPlayer():EyePos():Distance( Ent:GetPos() ) > 300 ) then return end
			if !LocalPlayer():IsLineOfSightClear( Ent ) then return end
			local zOffset = 85
            local x = Ent:GetPos().x			//Get the X position of our player
            local y = Ent:GetPos().y			//Get the Y position of our player
            local z = Ent:GetPos().z			//Get the Z position of our player
            local pos = Vector(x,y,z+zOffset)	//Add our offset onto the Vector
            local pos2d = pos:ToScreen()		//Change the 3D vector to a 2D one	
            surface.SetDrawColor( 255, 255, 255, 255 )
            surface.SetMaterial(tbl.taunt)
            surface.DrawTexturedRect( pos2d.x, pos2d.y, 64, 64 )	
		end            
    end
end

hook.Add("HUDPaint", "notifyBoxHUD", OverHead)

hook.Add("InitPostEntity", "init_taunts", function()
EMOTES = {}
	SM.Taunts = {
		[EMOTES] = {
			["Angriff"] = {
				message = "Angriff!!!",
				material = "sm/emote_attack.png",
				play = function(ply)
					ply:EmitSound("sm/attack.wav")
				end,
			},
			["Verteidige das Ziel"] = {
				message = "Verteidige das Ziel",
				material = "sm/emote_defense.png",
				play = function(ply)
					ply:EmitSound("sm/defense.wav")				
				end,
			},
			["Rückzug"] = {
				message = "Rückzug!!!",
				material = "sm/emote_fallback.png",
				play = function(ply)
					ply:EmitSound("sm/fallback.wav")
				end,
			},
			["Mir folgen"] = {
				message = "Mir folgen!",
				material = "sm/emote_follow.png",
				play = function(ply)
					ply:EmitSound("sm/follow.wav")
				end,
			},
			["In Formation"] = {
				message = "In Formation gehen!",
				material = "sm/emote_stick.png",
				play = function(ply)
					ply:EmitSound("sm/stick.wav")
				end,
			},
			["Stop"] = {
				message = "Stop!!!",
				material = "sm/emote_stop.png",
				play = function(ply)
					ply:EmitSound("sm/stop.wav")
				end,
			},
		},
	}
end)