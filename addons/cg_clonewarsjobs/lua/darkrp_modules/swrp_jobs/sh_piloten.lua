CGJobs = CGJobs or {}

if not CGJobs.piloten then return end
-------------------------Piloten---------------------------
TEAM_PILOT_PVT = DarkRP.createJob("Piloten PVT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/red_pilot_trooper/red_pilot_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","repair_tool","clone_card_sec2","dradio"},
    command = "pltpvt",
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
    category = "Piloten",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_CPL = DarkRP.createJob("Piloten CPL", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/red_pilot_trooper/red_pilot_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","repair_tool","clone_card_sec2","dradio"},
    command = "pltcpl",
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
    category = "Piloten",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_SGT = DarkRP.createJob("Piloten SGT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/red_pilot_sergeant/red_pilot_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec2","dradio"},
    command = "pltsgt",
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
    category = "Piloten",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_SSGT = DarkRP.createJob("Piloten SSGT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/red_pilot_sergeant/red_pilot_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec2","dradio"},
    command = "pltssgt",
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
    category = "Piloten",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_FSGT = DarkRP.createJob("Piloten FSGT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/red_pilot_sergeant/red_pilot_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec2","dradio"},
    command = "pltfsgt",
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
    category = "Piloten",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_2LT = DarkRP.createJob("Piloten 2LT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/red_pilot_lieutenant/red_pilot_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec2","dradio"},
    command = "plt2lt",
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
    category = "Piloten",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_1LT = DarkRP.createJob("Piloten 1LT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/red_pilot_lieutenant/red_pilot_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec2","dradio"},
    command = "plt1lt",
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
    category = "Piloten",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_CPT = DarkRP.createJob("Piloten CPT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/red_pilot_captain/red_pilot_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec2","dradio"},
    command = "pltcpt",
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
    category = "Piloten",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_MAJ = DarkRP.createJob("Piloten MAJ", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/orange_pilot_major/orange_pilot_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec3","dradio"},
    command = "pltmaj",
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
    category = "Piloten",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_COL = DarkRP.createJob("Piloten COL", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/orange_pilot_major/orange_pilot_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec3","dradio"},
    command = "pltcol",
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
    category = "Piloten",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_VCMD = DarkRP.createJob("Piloten VCMD", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/orange_pilot_major/orange_pilot_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "pltvcmd",
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
    category = "Piloten",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_PILOT_CMD = DarkRP.createJob("Piloten CMD", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/orange_pilot_commander/orange_pilot_commander.mdl"},
    description = [[Du bist Commander der Piloten.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","zeus_smokegranade","weapon_extinguisher","repair_tool","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "pltcmd",
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
    category = "Piloten",
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
    name = "Piloten", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(255,191,0,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 19, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

