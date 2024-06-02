CGJobs = CGJobs or {}

if not CGJobs.rcs then return end
-------------------------Delta Squad---------------------------
TEAM_DELTA_BOSS = DarkRP.createJob("Delta RC-1138", { 
color = Color(179,72,19,255),
model = {"models/player/sgg/starwars/clone_commando_38.mdl"},
description = [[Boss]],
 weapons = {"keys","tfa_swch_dc17m_br","realistic_hook","tfa_dc15s_ashura","weapon_rpw_binoculars","clone_card_sec2","dradio"},
command = "boss",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = true,
vote = false,
hasLicense = false,
sortOrder = 1,
ammo = {
        ["AR2"] = 1000,
    },


category = "RC Delta Squad",
PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_DELTA_FIXER = DarkRP.createJob("Delta RC-1140", {
color = Color(179,72,19,255),
model = {"models/player/sgg/starwars/clone_commando_40.mdl"},
description = [[Der Techniker Fixer]],
 weapons = {"keys","tfa_swch_dc17m_br","realistic_hook","tfa_dc15s_ashura","repair_tool","weapon_rpw_binoculars","weapon_bacta_grenade", "med_kit","bn_defib","amr_kit","clone_card_sec2","dradio"},
command = "fixer",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = true,
vote = false,
hasLicense = false,
sortOrder = 2,
ammo = {
        ["AR2"] = 1000,
    },

category = "RC Delta Squad",
PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_DELTA_SEV = DarkRP.createJob("Delta RC-1207", {
color = Color(179,72,19,255),
model = {"models/player/sgg/starwars/clone_commando_07.mdl"},
description = [[Der Scharfschütze Sev]],
 weapons = {"keys","tfa_swch_dc17m_br","realistic_hook","tfa_dlt20a_extended","weapon_rpw_binoculars","tfa_dc15s_ashura","clone_card_sec2","dradio"},
command = "sev",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = true,
vote = false,
hasLicense = false,
sortOrder = 3,
ammo = {
        ["AR2"] = 1000,
    },
	
category = "RC Delta Squad",
PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_DELTA_SCORCH = DarkRP.createJob("Delta RC-1262", {
color = Color(179,72,19,255),
model = {"models/player/sgg/starwars/clone_commando_62.mdl"},
description = [[Sprengstoff Experte Scorch]],
 weapons = {"keys","tfa_swch_dc17m_br","realistic_hook","weapon_swrc_det","tfa_dc15s_ashura","e60r_rocket_launcher","weapon_rpw_binoculars","clone_card_sec2","dradio"},
command = "scorch",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = true,
vote = false, true,
sortOrder = 4,
ammo = {
        ["AR2"] = 1000,
    },

category = "RC Delta Squad",
PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})

-------------------------Omega Squad---------------------------
TEAM_OMEGA_NINER = DarkRP.createJob("Omega RC-1309", { 
color = Color(179,72,19,255),
model = {"models/player/sample/rc/omega/niner.mdl"},
description = [[Niner]],
 weapons = {"keys","tfa_sw_dc17dual","realistic_hook","med_kit","bn_defib","tfa_t21_extended","tfa_swch_dc17m_br","clone_card_sec2","dradio"},
command = "niner",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = true,
vote = false,
hasLicense = false,
sortOrder = 1,
ammo = {
        ["AR2"] = 1000,
    },


category = "RC Omega Squad",
PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_OMEGA_DARMAN = DarkRP.createJob("Omega RC-1136", {
color = Color(179,72,19,255),
model = {"models/player/sample/rc/omega/darman.mdl"},
description = [[Darman]],
 weapons = {"keys","tfa_swch_dc17m_br","realistic_hook","weapon_swrc_det","tfa_dc15s_ashura","e60r_rocket_launcher","weapon_rpw_binoculars","clone_card_sec2","dradio"},
command = "darman",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = true,
vote = false,
hasLicense = false,
sortOrder = 2,
ammo = {
        ["AR2"] = 1000,
    },

category = "RC Omega Squad",
PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_OMEGA_FI = DarkRP.createJob("Omega RC-8015", {
color = Color(179,72,19,255),
model = {"models/player/sample/rc/omega/fi.mdl"},
description = [[Fi]],
 weapons = {"keys","tfa_sw_dc17dual","tfa_dlt20a_extended","realistic_hook","weapon_bacta_grenade", "med_kit","tfa_swch_dc17m_br","bn_defib","clone_card_sec2","dradio"},
command = "fi",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = true,
vote = false,
hasLicense = false,
sortOrder = 3,
ammo = {
        ["AR2"] = 1000,
    },
	
category = "RC Omega Squad",
PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_OMEGA_ATIN = DarkRP.createJob("Omega RC-3222", {
color = Color(179,72,19,255),
model = {"models/player/sample/rc/omega/atin.mdl"},
description = [[Atin]],
 weapons = {"keys","tfa_swch_dc17m_br","realistic_hook","tfa_dc15s_ashura","repair_tool","weapon_rpw_binoculars","weapon_bacta_grenade", "med_kit","bn_defib","amr_kit","clone_card_sec2","dradio"},
command = "atin",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = true,
vote = false, true,
sortOrder = 4,
ammo = {
        ["AR2"] = 1000,
    },

category = "RC Omega Squad",
PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
DarkRP.createCategory{
    name = "RC Delta Squad", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(179,72,19,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 24, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
DarkRP.createCategory{
    name = "RC Omega Squad", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(166,166,166,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 25, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

