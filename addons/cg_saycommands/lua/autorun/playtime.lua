function timeToStr( time )
	local tmp = time
	local s = tmp % 60
	tmp = math.floor( tmp / 60 )
	local m = tmp % 60
	tmp = math.floor( tmp / 60 )
	local h = tmp % 24
	tmp = math.floor( tmp / 24 )
	local d = tmp % 7
	local w = math.floor( tmp / 7 )


	return string.format( "%02iw %id %02ih %02im %02is", w, d, h, m, s )
end
hook.Add( "PlayerSay", "timecommand", function ( ply, text, public )
	--My Colors
    	local greencolor = Color( 25, 200, 25 )
   	local whitecolor = Color( 255, 255, 255 )
	local yellowcolor = Color( 255, 255, 0 )
	local bluecolor = Color( 50, 150, 255 )
	local pinkcolor = Color( 255, 0, 97 )
	local blackcolor = Color( 0, 0, 0 )
	local redcolor = Color( 255, 0, 0 )
	local orangecolor = Color( 255, 127, 0 )
	local purplecolor = Color( 51, 0, 102 )
	local graycolor = Color( 96, 96, 96 )
	

if(string.sub( text, 1, 6) == "!stamm" ) and ply:GetUTimeTotalTime() >= 604800 then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)

elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "superadmin" ) then
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)

elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "admin" ) then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)

elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "supporter" ) then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)

elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "donator" ) then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)
elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "donadmin" ) then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)
elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "donmoderator" ) then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)
elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "donsupporter" ) then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)
elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "eventplaner" ) then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)
elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "stammspieler" ) then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Du spielst bereits: ", bluecolor, timeToStr(ply:GetUTimeTotalTime()), whitecolor, " auf dem Server. ")
return(false)

elseif (string.sub( text, 1, 6) == "!stamm" ) and ply:IsUserGroup( "user" ) then 
	ULib.tsayColor( ply, false, greencolor, "[Stammi] ", redcolor,  ply:Nick()  , whitecolor, " Noch: ", bluecolor, timeToStr(604800 - ply:GetUTimeTotalTime()), whitecolor, " um Stammi auf dem Server zu werden. ")
return(false)
end
end)
