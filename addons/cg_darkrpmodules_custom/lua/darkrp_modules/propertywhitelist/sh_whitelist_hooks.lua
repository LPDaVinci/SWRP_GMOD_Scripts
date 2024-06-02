function PropertyWhitelist(ply, property, ent)
    
	if not table.HasValue(ULXAllowedRanks, ply:GetUserGroup()) and property == "collision" then 
	 DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("property_disabled"))
    return false end

end

hook.Add("CanProperty", "PropertyWhitelist", PropertyWhitelist)

