CGJobs = CGJobs or {}

if not CGJobs.arcs then return end
----------------------------------------Alpha-ARC---------------------------------------------
TEAM_AARC_ALPHA17 = DarkRP.createJob("A-ARC Alpha-17", {
    color = Color(0,63,255,255),
model = {"models/player/smitty/bf2_reg/sm_alpha17/sm_alpha17.mdl"},
description = [[Alpha]],
weapons = {"keys","weapon_cuff_elastic","weapon_rpw_binoculars","tfa_swch_alphablaster","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","weapon_vibrosword","tfa_sw_repsnip","clone_card_sec2","dradio"},
command = "alpha",
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
	
category = "Alpha Arcs",
sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_AARC_ALPHA26 = DarkRP.createJob("A-ARC Alpha-26", {
    color = Color(0,63,255,255),
model = {"models/player/smitty/bf2_reg/arclt/arclt.mdl"},
description = [[Maze]],
weapons = {"keys","weapon_cuff_elastic","weapon_rpw_binoculars","tfa_swch_alphablaster","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","weapon_vibrosword","tfa_sw_repsnip","clone_card_sec2","dradio"},
command = "maze",
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
	
category = "Alpha Arcs",
sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_AARC_ALPHA30 = DarkRP.createJob("A-ARC Alpha-30", {
    color = Color(0,63,255,255),
model = {"models/player/smitty/bf2_reg/arclt/arclt.mdl"},
description = [[Sull]],
weapons = {"keys","weapon_cuff_elastic","weapon_rpw_binoculars","tfa_swch_alphablaster","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","weapon_vibrosword","tfa_sw_repsnip","clone_card_sec2","dradio"},
command = "sull",
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
	
category = "Alpha Arcs",
sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_AARC_ALPHA66 = DarkRP.createJob("A-ARC Alpha-66", {
    color = Color(0,63,255,255),
model = {"models/player/smitty/bf2_reg/arccpt/arccpt.mdl"},
description = [[Muzzle]],
weapons = {"keys","weapon_cuff_elastic","weapon_rpw_binoculars","tfa_swch_alphablaster","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","weapon_vibrosword","tfa_sw_repsnip","clone_card_sec2","dradio"},
command = "muzzle",
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
	
category = "Alpha Arcs",
sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_AARC_ALPHA77 = DarkRP.createJob("A-ARC Alpha-77", {
    color = Color(0,63,255,255),
model = {"models/player/smitty/bf2_reg/arccpt/arccpt.mdl"},
description = [[Fordo]],
weapons = {"keys","weapon_cuff_elastic","weapon_rpw_binoculars","tfa_swch_alphablaster","tfa_sw_dc17dual","tfa_dc15a_expanded","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","weapon_vibrosword","tfa_sw_repsnip","clone_card_sec2","dradio"},
command = "fordo",
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
	
category = "Alpha Arcs",
sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_AARC_ALPHA98 = DarkRP.createJob("A-ARC Alpha-98", {
    color = Color(0,63,255,255),
model = {"models/player/smitty/bf2_reg/arcsicko/arcsicko.mdl"},
description = [[Nate]],
weapons = {"keys","weapon_cuff_elastic","weapon_rpw_binoculars","tfa_swch_alphablaster","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","weapon_vibrosword","tfa_sw_repsnip","clone_card_sec2","dradio"},
command = "nate",
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
	
category = "Alpha Arcs",
sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
DarkRP.createCategory{
    name = "Alpha Arcs", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0,63,255,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 14, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

