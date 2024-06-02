local function PlayerAdvertise(ply,args)
	if (SERVER) then
			if args == "" then
				DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
				return ""
			end
			local DoSay = function(text)
				if text == "" then
					DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
					return
				end
				for k,v in pairs(player.GetAll()) do
					local col = team.GetColor(ply:Team())
					DarkRP.talkToPerson(v, col, "[Funk] " .. ply:Nick(), Color(255, 255, 0, 255), text, ply)
				end
			end
			--hook.Call("playerAdverted", nil, ply, args)
			return args, DoSay
	end
	
end

local function PlayerAdvertiseCrypt(ply, args)
	if (SERVER) then
	if args == "" then
		DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
		return ""
	end
	local DoSay = function(text)
		if text == "" then
			DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
			return
		end
		for k,v in pairs(player.GetAll()) do
			local col = team.GetColor(ply:Team())
			DarkRP.talkToPerson(v, col, "[Funk] " ..ply:Nick(), Color(255,255,0,255), text .." ".."[Verschl.]", ply)
		end
	end
	return args, DoSay
	end
end

local function PlayerACT(ply, args)
	if (SERVER) then
    if args == "" then
		DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
		return ""
	end

    local DoSay = function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
            return ""
        end
        local col = team.GetColor(ply:Team())
        local col2 = Color(255,255,0,255)

        local phrase = "[ACT] "
        local name = ply:Nick()
        for _, v in ipairs(player.GetAll()) do
		DarkRP.talkToPerson(v, col2, phrase..name .. " "..text)
            --DarkRP.talkToPerson(v, col, phrase.." ".. name, col2, text, ply)
        end
    end
    return args, DoSay
	end
end

local function RPChat(ply, args)
if (SERVER) then
	if args == "" then
		DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
		return ""
	end
	local DoSay = function(text)
		if text == "" then
			DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
			return
		end
		for k,v in pairs(player.GetAll()) do
			local col = team.GetColor(ply:Team())
			DarkRP.talkToPerson(v, col, "[RP-Chat] " ..ply:Nick(), Color(255,255,0,255), text, ply)
		end
	end
	return args, DoSay
	end
end

local function Looc(ply, args)
if SERVER then
	if args == "" then
		DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
		return ""
	end

	local DoSay = function(text)
		if text == "" then
			DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
			return ""
		end
		if GAMEMODE.Config.alltalk then
			for _, target in pairs(player.GetAll()) do
			local col = team.GetColor(ply:Team())
				DarkRP.talkToPerson(target, col, "(LocalOOC) " ..ply:Nick() .. ": " .. text)
			end
		else
			DarkRP.talkToRange(ply, "(LocalOOC) " ..ply:Nick(), text, 250)
		end
	end
	return args, DoSay
	end
end


local function init()
	DarkRP.removeChatCommand("advert")
	DarkRP.removeChatCommand("a")
	DarkRP.declareChatCommand{
	command = "advert",
	description = "Advertise something to everyone in the server.",
	delay = 1.0
}
DarkRP.declareChatCommand{
    command = "a",
    description = "Advertise something to everyone in the server.",
    delay = 1.0
}
DarkRP.declareChatCommand{
    command = "funk",
    description = "Advertise something to everyone in the server.",
    delay = 1.0
}
DarkRP.declareChatCommand{
	command = "rp",
	description = "Write in RP Chat.",
	delay = 1.0
}
DarkRP.declareChatCommand{
	command = "vadvert",
	description = "Crypted Advertise something to everyone in the server.",
	delay = 1.0
}
DarkRP.declareChatCommand{
    command = "av",
    description = "Crypted Advertise something to everyone in the server.",
    delay = 1.0
}
DarkRP.declareChatCommand{
    command = "vfunk",
    description = "Crypted Advertise something to everyone in the server.",
    delay = 1.0
}
DarkRP.declareChatCommand{
    command = "act",
    description = "Crypted Advertise something to everyone in the server.",
    delay = 1.0
}
DarkRP.declareChatCommand{
    command = "akt",
    description = "Crypted Advertise something to everyone in the server.",
    delay = 1.0
}
	if (SERVER) then
		DarkRP.defineChatCommand("advert", PlayerAdvertise, 1.5)
		DarkRP.defineChatCommand("funk", PlayerAdvertise, 1.5)
		DarkRP.defineChatCommand("a", PlayerAdvertise, 1.5)
		DarkRP.defineChatCommand("vadvert", PlayerAdvertiseCrypt, 1.5)
		DarkRP.defineChatCommand("vfunk", PlayerAdvertiseCrypt, 1.5)
		DarkRP.defineChatCommand("av", PlayerAdvertiseCrypt, 1.5)
		DarkRP.defineChatCommand("act", PlayerACT, true, 1.5)
		DarkRP.defineChatCommand("akt", PlayerACT, true, 1.5)
		DarkRP.defineChatCommand("rp", RPChat, true, 1.5)
		DarkRP.defineChatCommand("looc", Looc, 1.5)
	end
end

if (SERVER) then
	if (#player.GetAll() > 0) then
		init()
	else
		hook.Add("PlayerInitialSpawn","dfca-load",function()
			init()
		end)
	end
else
	hook.Add("InitPostEntity","dfca-load",function()
		init()
	end)
end

