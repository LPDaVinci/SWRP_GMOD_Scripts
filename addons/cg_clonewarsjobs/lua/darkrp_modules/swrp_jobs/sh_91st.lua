CGJobs = CGJobs or {}

if not CGJobs.aufklaerungscorp then return end
-------------------------91st---------------------------
TEAM_91ST_PVT = DarkRP.createJob("91st PVT", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_trooper/91st_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","clone_card_sec2","dradio"},
    command = "91stpvt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_CPL = DarkRP.createJob("91st CPL", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_trooper/91st_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","clone_card_sec2","dradio"},
    command = "91stcpl",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_SGT = DarkRP.createJob("91st SGT", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_sergeant/91st_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","tfa_sw_repsnip","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "91stsgt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_SSGT = DarkRP.createJob("91st SSGT", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_sergeant/91st_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "91stssgt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_FSGT = DarkRP.createJob("91st FSGT", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_sergeant/91st_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "91stfsgt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_2LT = DarkRP.createJob("91st 2LT", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_lieutenant/91st_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "91st2lt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_1LT = DarkRP.createJob("91st 1LT", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_lieutenant/91st_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "91st1lt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_CPT = DarkRP.createJob("91st CPT", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_captain/91st_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "91stcpt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_MAJ = DarkRP.createJob("91st MAJ", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_major/91st_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "91stmaj",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_COL = DarkRP.createJob("91st COL", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_major/91st_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "91stcol",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_VCMD = DarkRP.createJob("91st VCMD", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_major/91st_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "91stvcmd",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_91ST_MCMD = DarkRP.createJob("91st MCMD", {
    color = Color(156,3,3,255),
    model = {"models/player/smitty/bf2_reg/91st_neyo/91st_neyo.mdl"},
    description = [[Du bist Neyo.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_rpw_binoculars","weapon_rpw_binoculars_nvg","weapon_rpw_binoculars_thermal","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "91stmcmd",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500
    },
    category = "91st",
	sortOrder = 12,
    PlayerSpawn = function(ply)
		ply:SetHealth(400)
        ply:SetMaxHealth(400)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
DarkRP.createCategory{
    name = "91st", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(156,3,3,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 6, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

