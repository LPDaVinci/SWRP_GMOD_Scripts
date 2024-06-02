local emote = "** " -- Keeps people from faking outcome with /me command.


  local allowedgroupsadminroll = {
        "superadmin",
		"coowner",
		"donadmin",
		"admin",
    }
	

local function RollTheDice( ply, args )
	if (SERVER) then
	local DoSay = function( text )
		local roll = math.random( 0, 100 )
		DarkRP.talkToRange( ply, emote .. ply:Nick() .. " threw his dice and rolled a " .. roll .. " out of 100.", "", 350 )
	end
	return args, DoSay
	end
end


local function RollTheDiceAdmin( ply, args )
	if (SERVER) then
 if !table.HasValue(allowedgroupsadminroll, ply:GetUserGroup()) then return end
	local DoSayAdmin = function( text )
		local aroll = math.random( 80, 100 )
		DarkRP.talkToRange( ply, emote .. ply:Nick() .. " threw his dice and rolled a " .. aroll .. " out of 100.", "", 350 )
	end
	return args, DoSayAdmin
	end
end

local function init()
	DarkRP.declareChatCommand({
	command = "roll",
	description = "Roll the dice and get a random number between 1 and 100.",
	delay = 1.5
})
DarkRP.declareChatCommand({
	command = "aroll",
	description = "Roll the dice and get a random number between 80 and 100.",
	delay = 1.5
})

	if (SERVER) then
		DarkRP.defineChatCommand( "aroll", RollTheDiceAdmin )
		DarkRP.defineChatCommand( "roll", RollTheDice )
	end
end

if (SERVER) then
	if (#player.GetAll() > 0) then
		init()
	else
		hook.Add("PlayerInitialSpawn","cg_rtd-load",function()
			init()
		end)
	end
else
	hook.Add("InitPostEntity","cg_rtd-load",function()
		init()
	end)
end

