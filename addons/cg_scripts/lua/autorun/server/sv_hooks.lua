if SERVER then
	AddCSLuaFile()
	
	
	hook.Add( "PlayerSpawn", "SpawnArmor", function(ply) 

		if ply:IsPlayer() and ply:Alive() then

			timer.Simple( 0, function() 
				ply:SetNWInt( "Armor", ply:Armor() )
			end )
		end

	end)
	
	
	
end

local function DisplayNotify(msg)
    local txt = msg:ReadString()
    GAMEMODE:AddNotify(txt, msg:ReadShort(), msg:ReadLong())
    surface.PlaySound("buttons/lightswitch2.wav")

    -- Log to client console
    MsgC(Color(255, 20, 20, 255), "[DarkRP] ", Color(200, 200, 200, 255), txt, "\n")
end
usermessage.Hook("_Notify", DisplayNotify)
