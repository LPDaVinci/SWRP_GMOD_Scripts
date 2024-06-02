CGJobs = CGJobs or {}

if not CGJobs.sternencorp then return end
-------------------------327th---------------------------
TEAM_327TH_PVT = DarkRP.createJob("327th PVT", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_trooper/sm_327th_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","clone_card_sec2","dradio"},
    command = "327thpvt",
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
    category = "327th",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_CPL = DarkRP.createJob("327th CPL", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_trooper/sm_327th_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","clone_card_sec2","dradio"},
    command = "327thcpl",
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
    category = "327th",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_SGT = DarkRP.createJob("327th SGT", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_sergeant/sm_327th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "327thsgt",
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
    category = "327th",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_SSGT = DarkRP.createJob("327th SSGT", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_sergeant/sm_327th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "327thssgt",
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
    category = "327th",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_FSGT = DarkRP.createJob("327th FSGT", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_sergeant/sm_327th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "327thfsgt",
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
    category = "327th",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_2LT = DarkRP.createJob("327th 2LT", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_lieutenant/sm_327th_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "327th2lt",
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
    category = "327th",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_1LT = DarkRP.createJob("327th 1LT", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_lieutenant/sm_327th_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "327th1lt",
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
    category = "327th",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_CPT = DarkRP.createJob("327th CPT", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_captain/sm_327th_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "327thcpt",
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
    category = "327th",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_MAJ = DarkRP.createJob("327th MAJ", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_major/sm_327th_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "327thmaj",
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
    category = "327th",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_COL = DarkRP.createJob("327th COL", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_major/sm_327th_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "327thcol",
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
    category = "327th",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_VCMD = DarkRP.createJob("327th VCMD", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_327th_arc/sm_327th_arc.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "327thvcmd",
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
    category = "327th",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_327TH_MCMD = DarkRP.createJob("327th MCMD", {
    color = Color(225,255,0,255),
    model = {"models/player/smitty/bf2_reg/sm_bly/sm_bly.mdl"},
    description = [[Du bist Commander der 327th Bly.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","tfa_752_dlt19","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "327thmcmd",
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
    category = "327th",
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
    name = "327th", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(225,255,0,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 12, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

