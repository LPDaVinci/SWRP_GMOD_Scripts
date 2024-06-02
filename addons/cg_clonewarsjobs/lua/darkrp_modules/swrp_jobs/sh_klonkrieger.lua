CGJobs = CGJobs or {}

if not CGJobs.klonkrieger then return end
-------------------------Klonkrieger---------------------------
TEAM_KLONKRIEGER_PVT = DarkRP.createJob("Klonkrieger PVT", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_trooper/sm_ct_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec1","dradio"},
    command = "ctpvt",
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
    category = "Klonkrieger",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_CPL = DarkRP.createJob("Klonkrieger CPL", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_trooper/sm_ct_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec1","dradio"},
    command = "ctcpl",
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
    category = "Klonkrieger",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_SGT = DarkRP.createJob("Klonkrieger SGT", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_sergeant/sm_ct_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec1","dradio"},
    command = "ctsgt",
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
    category = "Klonkrieger",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_SSGT = DarkRP.createJob("Klonkrieger SSGT", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_sergeant/sm_ct_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec1","dradio"},
    command = "ctssgt",
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
    category = "Klonkrieger",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_FSGT = DarkRP.createJob("Klonkrieger FSGT", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_sergeant/sm_ct_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec1","dradio"},
    command = "ctfsgt",
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
    category = "Klonkrieger",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_2LT = DarkRP.createJob("Klonkrieger 2LT", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_lieutenant/sm_ct_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec1","dradio"},
    command = "ct2lt",
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
    category = "Klonkrieger",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_1LT = DarkRP.createJob("Klonkrieger 1LT", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_lieutenant/sm_ct_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec1","dradio"},
    command = "ct1lt",
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
    category = "Klonkrieger",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_CPT = DarkRP.createJob("Klonkrieger CPT", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_captain/sm_ct_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec1","dradio"},
    command = "ctcpt",
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
    category = "Klonkrieger",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_MAJ = DarkRP.createJob("Klonkrieger MAJ", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_major/sm_ct_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec3","dradio"},
    command = "ctmaj",
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
    category = "Klonkrieger",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_COL = DarkRP.createJob("Klonkrieger COL", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_major/sm_ct_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec3","dradio"},
    command = "ctcol",
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
    category = "Klonkrieger",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_VCMD = DarkRP.createJob("Klonkrieger VCMD", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_major/sm_ct_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "ctvcmd",
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
    category = "Klonkrieger",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_KLONKRIEGER_CMD = DarkRP.createJob("Klonkrieger CMD", {
    color = Color(255,255,255,255),
    model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "ctcmd",
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
    category = "Klonkrieger",
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
    name = "Klonkrieger", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(255,255,255,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 3, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

