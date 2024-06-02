local qmenu_ranks = {
["superadmin"] = true,
["admin"] = true,
["coowner"] = true,
["moderator"] = true,
["supporter"] = true,
["eventleiter"] = true,
["eventplaner"] = true,
["donadmin"] = true,
["donmoderator"] = true,
["donsupporter"] = true,
["cmd"] = true,
}

hook.Add("SpawnMenuOpen", "spawn_menu_ranks", function()

local ply = LocalPlayer()
  if not qmenu_ranks[ply:GetUserGroup()] then
    return false
  end
end)
