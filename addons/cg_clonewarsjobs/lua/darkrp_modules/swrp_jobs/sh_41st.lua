CGJobs = CGJobs or {}

if not CGJobs.greencompany then return end
-------------------------41st GC---------------------------
TEAM_41ST_PVT = DarkRP.createJob("41st PVT", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_trooper/41stgc_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","clone_card_sec2","dradio"},
    command = "41stpvt",
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
    category = "41st",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_CPL = DarkRP.createJob("41st CPL", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_trooper/41stgc_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","clone_card_sec2","dradio"},
    command = "41stcpl",
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
    category = "41st",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_SGT = DarkRP.createJob("41st SGT", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_sergeant/41stgc_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "41stsgt",
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
    category = "41st",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_SSGT = DarkRP.createJob("41st SSGT", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_sergeant/41stgc_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "41stssgt",
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
    category = "41st",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_FSGT = DarkRP.createJob("41st FSGT", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_sergeant/41stgc_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "41stfsgt",
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
    category = "41st",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_2LT = DarkRP.createJob("41st 2LT", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_lieutenant/41stgc_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "41st2lt",
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
    category = "41st",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_1LT = DarkRP.createJob("41st 1LT", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_lieutenant/41stgc_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "41st1lt",
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
    category = "41st",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_CPT = DarkRP.createJob("41st CPT", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_captain/41stgc_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "41stcpt",
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
    category = "41st",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_MAJ = DarkRP.createJob("41st MAJ", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_major/41stgc_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "41stmaj",
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
    category = "41st",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_COL = DarkRP.createJob("41st COL", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_major/41stgc_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "41stcol",
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
    category = "41st",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_VCMD = DarkRP.createJob("41st VCMD", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/41stgc_commander/41stgc_commander.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "41stvcmd",
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
    category = "41st",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_41ST_SCMD = DarkRP.createJob("41st SCMD", {
    color = Color(0,127,31,255),
    model = {"models/player/smitty/bf2_reg/sm_gree/sm_gree.mdl"},
    description = [[Du bist Gree.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_sw_repsnip","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "41stscmd",
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
    category = "41st",
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
    name = "41st", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0,127,31,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 5, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

