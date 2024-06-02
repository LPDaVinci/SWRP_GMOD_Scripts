function ulx.ausbildung( calling_ply, target_plys )

	for k,v in pairs( target_plys ) do
	 if v:GetNWBool("Ausbildung") then
		v:SetNWBool( "Ausbildung", false )
		ulx.fancyLogAdmin( calling_ply, "#A beendet die Ausbildung von #T", target_plys )
	else
		v:SetNWBool( "Ausbildung", true )
		ulx.fancyLogAdmin( calling_ply, "#A startet die Ausbildung von #T", target_plys )
	end
	end

	

end
local ausbildung = ulx.command( "Custom", "ulx ausbildung", ulx.ausbildung, "!ausbildung" )
ausbildung:addParam{ type=ULib.cmds.PlayersArg }
ausbildung:defaultAccess( ULib.ACCESS_ADMIN )
ausbildung:help( "Startet die Ausbildung an einem Spieler." )