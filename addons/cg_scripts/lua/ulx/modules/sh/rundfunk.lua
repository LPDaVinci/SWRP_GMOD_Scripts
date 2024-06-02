local CATEGORY_NAME = "uCg ULX Commands"

--enums
local ALL = 0;

function ulx.Rundfunk( calling_ply, txt )
  if !txt then
    Msg( "FEHLER! ULX versucht eine Sprachdurchsage ohne Text abzuspielen!!\n" )
    return false
  end

  net.Start( "ucg_rundfunk" )
    net.WriteString( tostring(txt) );
  net.Broadcast()
end;

local rundfunk = ulx.command( CATEGORY_NAME, "ulx rundfunk", ulx.Rundfunk, "!rundfunk" )
  rundfunk:addParam{ type=ULib.cmds.StringArg, hint="Text" }
  rundfunk:defaultAccess( ULib.ACCESS_ADMIN )
  rundfunk:help( "Sendet eine Sprachdurchsage an alle Spieler." )

if CLIENT then

  net.Receive( "ucg_rundfunk", function( len, ply )
  	 local s = net.ReadString()

     if (!s) then s = "Es wurde kein Text angegeben!" end;

     if IsValid(ucg.CurrentDurchsage) then
       ucg.CurrentDurchsage:stop()
     end

     local link = "http://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q="..s.."&tl=de"

     local ss = ucg.MediaLib.load("media").service("webaudio")

     ucg.CurrentDurchsage = ss:load(link)
     ucg.CurrentDurchsage:play()
     chat.AddText(  Color( 255, 255, 51 ), "*Holofunk an Galaxie*: "..s)
  end )
end;
