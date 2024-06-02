CGJobs = CGJobs or {}

if not CGJobs.narcs then return end
----------------------------------------NULL-ARC---------------------------------------------
TEAM_NULLARC_KALSKIRATA = DarkRP.createJob("Kal Skirata", {
color = Color(255,89,0,255),
model = {"models/smitty/swbf/kalskirata/hero_gunslinger_kalskirata.mdl"},
description = [[Kal Skirata]],
weapons = {"tfa_swch_alphablaster", "keys", "weapon_policeshield","weapon_cuff_elastic", "tfa_sw_dc17dual", "weapon_rpw_binoculars", "e60r_rocket_launcher","weapon_vibrosword","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
command = "kalskirata",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,
ammo = {
        ["AR2"] = 500,
    },
	
category = "Null Arcs",
sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(600)
        ply:SetMaxHealth(600)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_NULLARC_ORDO = DarkRP.createJob("Null ARC N-11", {
color = Color(255,89,0,255),
model = {"models/player/grady/starwars/bf2_narc_ordo/bf2_narc_ordo.mdl"},
description = [[Null ARC N-11 Captain Ordo]],
weapons = {"tfa_swch_alphablaster", "keys", "weapon_policeshield","weapon_cuff_elastic", "tfa_sw_dc17dual", "weapon_rpw_binoculars", "e60r_rocket_launcher","weapon_vibrosword","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
command = "ordo",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,
ammo = {
        ["AR2"] = 500,
    },
	
category = "Null Arcs",
sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})

TEAM_NULLARC_PRUDII = DarkRP.createJob("Null ARC N-5", {
color = Color(255,89,0,255),
model = {"models/player/grady/starwars/bf2_narc_blue/bf2_narc_blue.mdl"},
description = [[Null ARC N-5 Prudii]],
weapons = {"tfa_swch_alphablaster", "keys", "tfa_sw_dc17dual", "weapon_policeshield", "tfa_dlt20a_extended", "weapon_camo", "repair_tool","weapon_vibrosword","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
command = "prudii",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,
ammo = {
        ["AR2"] = 500,
    },
	
category = "Null Arcs",
sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})

TEAM_NULLARC_KOMRK = DarkRP.createJob("Null ARC N-6", {
color = Color(255,89,0,255),
model = {"models/player/grady/starwars/bf2_narc_blue/bf2_narc_blue.mdl"},
description = [[Null ARC N-6 Kom'rk]],
weapons = {"tfa_swch_alphablaster", "keys", "tfa_swch_dc17m_sn", "weapon_policeshield", "weapon_rpw_binoculars", "tfa_sw_dc17dual","weapon_vibrosword","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
command = "komrk",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,
ammo = {
        ["AR2"] = 500,
    },
	
category = "Null Arcs",
sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})

TEAM_NULLARC_MEREEL = DarkRP.createJob("Null ARC N-7", {
color = Color(255,89,0,255),
model = {"models/player/grady/starwars/bf2_narc_blue/bf2_narc_blue.mdl"},
description = [[Null ARC N-7 Mereel]],
weapons = {"tfa_swch_alphablaster", "keys", "tfa_sw_dc17dual","weapon_policeshield", "weapon_rpw_binoculars", "tfa_dc17m_shotgun", "med_kit", "bn_defib","weapon_vibrosword","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
command = "mereel",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,
ammo = {
        ["AR2"] = 500,
    },
	
category = "Null Arcs",
sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})

TEAM_NULLARC_JAING = DarkRP.createJob("Null ARC N-10", {
color = Color(255,89,0,255),
model = {"models/player/grady/starwars/bf2_narc_blue/bf2_narc_blue.mdl"},
description = [[Null ARC N-10 Jaing]],
weapons = {"tfa_swch_alphablaster", "keys", "weapon_camo", "tfa_dlt20a_extended", "tfa_sw_dc17dual","weapon_vibrosword","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
command = "jaing",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,
ammo = {
        ["AR2"] = 500,
    },
	
category = "Null Arcs",
sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})

TEAM_NULLARC_ADEN = DarkRP.createJob("Null ARC N-12", {
color = Color(255,89,0,255),
model = {"models/player/grady/starwars/bf2_narc_green/bf2_narc_green.mdl"},
description = [[Null ARC N-12 A'den]],
weapons = {"tfa_swch_alphablaster", "keys", "tfa_dc17m_shotgun", "tfa_swch_dc17m_sn", "weapon_policeshield", "weapon_bacta_grenade", "tfa_sw_dc17dual","weapon_vibrosword","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
command = "aden",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,
ammo = {
        ["AR2"] = 500,
    },
	
category = "Null Arcs",
sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(500)
        ply:SetMaxHealth(500)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
DarkRP.createCategory{
    name = "Null Arcs", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(255,89,0,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 15, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

