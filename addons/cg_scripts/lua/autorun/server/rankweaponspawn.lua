    local rankedweaponsgroup = {
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

local function GiveRankedWeapons( ply )
	 if table.HasValue(rankedweaponsgroup, ply:GetUserGroup()) then 
	ply:Give( "gmod_tool" )
	ply:Give( "weapon_physgun" )
	ply:Give("weapon_physcannon" )
	 end
end
hook.Add( "PlayerSpawn", "RankedWeaponsOnSpawn", GiveRankedWeapons )