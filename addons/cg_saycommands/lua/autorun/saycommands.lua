if ( SERVER ) then
	
		hook.Add( "PlayerSay", "playersaycommands", function( _p, _text, public )
	
			if ( _text == "!discord" ) then
				_p:ConCommand( "discord" );
				return ""
                        end
	
		if ( _text == "!workshop" ) then
				_p:ConCommand( "openWSDL" );
				return ""
                        end
		if ( _text == "!ts" ) then
				_p:ChatPrint( "Gibt kein" );
				return ""
                        end
						
		if ( _text == "/id" ) or ( _text == "/ID" ) then
				_p:ConCommand( "/id" );
				return ""
                        end
							
		if ( _text == "!forum" ) then
				_p:ConCommand( "forum" );
				return ""
                        end
		end )
		
	else
	
		concommand.Add( "discord", function() 
			gui.OpenURL( "https://discord.gg/7e2ABzQ" );
		end );
		
		concommand.Add( "workshop", function() 
			gui.OpenURL( "https://steamcommunity.com/sharedfiles/filedetails/?id=777460058" );
		end );
		
		
		concommand.Add( "forum", function() 
			gui.OpenURL( "https://crystalgamers.mistforums.com/" );
		end );

		
		
	end