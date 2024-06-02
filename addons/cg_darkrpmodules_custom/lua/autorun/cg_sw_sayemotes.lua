local function init()
if SERVER then 
DarkRP.addPlayerGesture(1614, "Salutieren")
end
if CLIENT then
DarkRP.addPlayerGesture(1614, "Salutieren")
end
concommand.Add( "salute", function(cmd, args )
RunConsoleCommand ( "_DarkRP_DoAnimation", "1614" )
end )
concommand.Add( "bow", function(cmd, args )
RunConsoleCommand ( "_DarkRP_DoAnimation", "1612" )
end )
end

if (SERVER) then
	if (#player.GetAll() > 0) then
		init()
	else
		hook.Add("PlayerInitialSpawn","cg_emote-load",function()
			init()
		end)
	end
else
	hook.Add("InitPostEntity","cg_emote-load",function()
		init()
	end)
end

