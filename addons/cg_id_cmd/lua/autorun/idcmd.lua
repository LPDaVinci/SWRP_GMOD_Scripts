function nickname( ply, target, args )
nick = ply:Nick()
for w in string.gmatch(nick, "(Armand Isard)") do
	 	 ply:ConCommand( "say /me zeigt seine Papiere:"  .. " " .. w) 
		 end
for w in string.gmatch(nick, "(%d%d%d%d)") do
	 	 ply:ConCommand( "say /me zeigt seine ID:"  .. " " .. w) 
		 end
for w in string.gmatch(nick, "(%u%d%d)") do
	 	 ply:ConCommand( "say /me zeigt seine Produktionsnummer:"  .. " " .. w) 
		 end		 
for w in string.gmatch(nick, "(%d%d)") do
	 	 ply:ConCommand( "say /me zeigt seine Produktionsnummer:"  .. " " .. w) 
		 end
		 end
		 
concommand.Add( "/id", nickname)






