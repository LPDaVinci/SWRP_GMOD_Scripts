local sin = math.sin

if CLIENT then

surface.CreateFont( "Defcon", {
    font = "Impact",
    size = 26,
    weight = 250,
} )

surface.CreateFont( "Defcon5", {
    font = "Impact",
    size = 26,
    weight = 250,
} )

end

local defconmat = {
    [1] = Material( "defcon/rdefcon1.png" ),
    [2] = Material( "defcon/rdefcon2.png" ),
    [3] = Material( "defcon/rdefcon3.png" ),
    [4] = Material( "defcon/rdefcon4.png" ),
    [5] = Material( "defcon/rdefcon5.png" ),
} 

local defcondesc = {
    [1] = "Evakuierung!",
    [2] = "Auf die Gefechtsstation",
    [3] = "Erhöhte Einsatzbereitschaft, Verschlüsselt Funken!",
    [4] = "Erhöhte Aufklärung/Erhöhte Sicherheitsmaßnahmen",
    [5] = "Normaler Status",
	--"Schiff evakuieren - Maschinenraum wurde zerstört!",
	--"Mit Waffen patroulieren",
	--"Auf die Gefechtsstationen! Erhöhte Einsatzbereitschaft, Verschlüsselt funken!",
	--"erhöhte Aufklärung und erhöhte Sicherheitsmaßnahmen",
	--"Normaler Status",
} 

if SERVER then

    util.AddNetworkString("defcon_system")

    local useteams = false -- false for groups -- true for teams
    local defconsound = "defcon/defcon.mp3"

    local allowedfactions = {
        "Anakin Skywalker",
        "Citizen",
    }

    local allowedgroups = {
        "superadmin",
		"coowner",
        "moderator",
		"supporter",
		"eventleiter",
		"eventplaner",
		"donadmin",
		"donmoderator",
		"supporter",
		"admin",
		"cmd",
    }
    
    if useteams then
        hook.Add( "PlayerSay", "Defcon_System_Command", function( ply, text, public )
            if ( string.sub( text, 1, 8) == "/defcon " ) or ( string.sub( text, 1, 8) == "!defcon " )  then
                if !table.HasValue(allowedfactions, ply:getDarkRPVar("job")) then return "You cannot change the defcon." end
                local num = string.sub(text, 9)
                if tonumber(num) and defconmat[tonumber(num)] then
                    SetDefcon(tonumber(num) ) 
				
                else
                    ply:ChatPrint("Not a Valid Defcon!")
                end
                
                return ""
            end

        end )
		
		concommand.Add( "defcon", function( ply, cmd, args, str )
			if !table.HasValue(allowedfactions, ply:getDarkRPVar("job")) then return "You cannot change the defcon." end
			local num = str 
                if tonumber(num) and defconmat[tonumber(num)] then
                   SetDefcon(tonumber(num) ) 
			
                else
                    ply:ChatPrint("Not a Valid Defcon!")
                end
               
		
		end )
    else
        hook.Add( "PlayerSay", "Defcon_System_Command_Groups", function( ply, text, public )
            if ( string.sub( text, 1, 8) == "/defcon " ) or ( string.sub( text, 1, 8) == "!defcon " ) then
                if !table.HasValue(allowedgroups, ply:GetUserGroup()) then return "You cannot change the defcon." end
                local num = string.sub(text, 9)
                if tonumber(num) and defconmat[tonumber(num)] then
                   SetDefcon(tonumber(num) ) 

                else
                    ply:ChatPrint("Not a Valid Defcon!")
                end
               
                return ""
            end

        end )
		
		concommand.Add( "defcon", function( ply, cmd, args, str )
			 if !table.HasValue(allowedgroups, ply:GetUserGroup()) then return "You cannot change the defcon." end
			local num = str 
                if tonumber(num) and defconmat[tonumber(num)] then
                    SetDefcon(tonumber(num) ) 
					
                else
                    ply:ChatPrint("Not a Valid Defcon!")
                end
               
		
		end )
    end



    hook.Add("PlayerInitialSpawn", "defcon_system", function(ply)
        net.Start("defcon_system")
            net.WriteDouble(GetDefcon())
        net.Send(ply)
    end)
    
    function SetDefcon(num)
		if (timercooldown || 0 ) < CurTime() then
		timercooldown = CurTime() + 10
        defconval = num
        net.Start("defcon_system")
        net.WriteDouble(GetDefcon())
        net.Broadcast()
		for k,v in pairs (player.GetAll()) do
		v:EmitSound( defconsound , 25, 100, 1, CHAN_AUTO ) -- Same as below)
		end
		else
		--ply:ChatPrint("Defcon System is on Cooldown " .. math.Round(timercooldown - CurTime()))
		end
    end
else
    net.Receive("defcon_system", function(len, pl)
        if pl then return end -- Someone is trying to gain access to this
        local num = net.ReadDouble()
        defconval = num
    end)
    
    hook.Add("HUDPaint", "defcon_system_hud", function()
        local defconmaterial = defconmat[GetDefcon()]
        local defcondesc = defcondesc[GetDefcon()]
        --draw.SimpleText( "Defcon: " .. GetDefcon() .. " " .. str, "DermaDefault", ScrW() - 10, 30, Color( 255, 255, 255, 255 ), TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP )
        if ( GetDefcon() == 1 ) then
            local flash = sin(2.5 * CurTime()) * 127 + 128
            surface.SetDrawColor(Color(flash, 255, 255, 255))
            surface.SetMaterial( defconmaterial )
            surface.DrawTexturedRect(40, 25, 320, 150)
            draw.SimpleText( defcondesc, "Defcon5", 65, 155, Color( flash, 0, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP )
        else
            surface.SetDrawColor(color_white)
            surface.SetMaterial(defconmaterial)
            surface.DrawTexturedRect(40,25,319,150)
            if ( GetDefcon() == 5 ) then draw.SimpleText( defcondesc, "Defcon", 65, 155, Color( 50, 255, 50, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP ) end
            if ( GetDefcon() == 4 ) then draw.SimpleText( defcondesc, "Defcon", 65, 155, Color( 255, 255, 50, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP ) end
            if ( GetDefcon() == 3 ) then draw.SimpleText( defcondesc, "Defcon", 65, 155, Color( 255, 150, 50, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP ) end
            if ( GetDefcon() == 2 ) then draw.SimpleText( defcondesc, "Defcon", 65, 155, Color( 255, 0, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP ) end
        end
    end)
end



function GetDefcon()
    return defconval || 5
end
