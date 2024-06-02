local function YavinPlanet( ply, args )
	local DoSay = function( text )
	for k, v in pairs(player.GetAll()) do
	local col = team.GetColor(ply:Team())
DarkRP.talkToPerson(v, col, DarkRP.getPhrase("advert") .." "..ply:Nick(), Color(255,255,0,255), "Lande auf Yavin-4", ply)
end
		
	end
	return args, DoSay
end

DarkRP.defineChatCommand("yavin", YavinPlanet)

local function KorribanPlanet( ply, args )
	local DoSay = function( text )
	for k, v in pairs(player.GetAll()) do
	local col = team.GetColor(ply:Team())
DarkRP.talkToPerson(v, col, DarkRP.getPhrase("advert") .." "..ply:Nick(), Color(255,255,0,255), "Lande auf Korriban", ply)
end
		
	end
	return args, DoSay
end

DarkRP.defineChatCommand("korriban", KorribanPlanet)

local function EndorPlanet( ply, args )
	local DoSay = function( text )
	for k, v in pairs(player.GetAll()) do
	local col = team.GetColor(ply:Team())
DarkRP.talkToPerson(v, col, DarkRP.getPhrase("advert") .." "..ply:Nick(), Color(255,255,0,255), "Lande auf Endor", ply)
end
		
	end
	return args, DoSay
end

DarkRP.defineChatCommand("endor", EndorPlanet)

local function IllumPlanet( ply, args )
	local DoSay = function( text )
	for k, v in pairs(player.GetAll()) do
	local col = team.GetColor(ply:Team())
DarkRP.talkToPerson(v, col, DarkRP.getPhrase("advert") .." "..ply:Nick(), Color(255,255,0,255), "Lande auf Illum", ply)
end
		
	end
	return args, DoSay
end

DarkRP.defineChatCommand("hoth", IllumPlanet)


local function TatooinePlanet( ply, args )
	local DoSay = function( text )
	for k, v in pairs(player.GetAll()) do
	local col = team.GetColor(ply:Team())
DarkRP.talkToPerson(v, col, DarkRP.getPhrase("advert") .." "..ply:Nick(), Color(255,255,0,255), "Lande auf Hoth", ply)
end
		
	end
	return args, DoSay
end

DarkRP.defineChatCommand("hoth", TatooinePlanet)



local function ZakuulPlanet( ply, args )
	local DoSay = function( text )
	for k, v in pairs(player.GetAll()) do
	local col = team.GetColor(ply:Team())
DarkRP.talkToPerson(v, col, DarkRP.getPhrase("advert") .." "..ply:Nick(), Color(255,255,0,255), "Lande auf dem Schiff der Zakuul", ply)
end
		
	end
	return args, DoSay
end

DarkRP.defineChatCommand("zakuul", ZakuulPlanet)