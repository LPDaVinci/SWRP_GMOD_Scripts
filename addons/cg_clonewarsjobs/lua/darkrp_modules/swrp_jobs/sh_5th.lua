CGJobs = CGJobs or {}

if not CGJobs.flottensicherheit then return end

-------------------------5th Flottensicherheit---------------------------
TEAM_5TH_PVT = DarkRP.createJob("5th Flottensicherheit PVT", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_trooper/5th_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","clone_card_sec4","dradio"},
    command = "5thpvt",
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
    category = "5th",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_CPL = DarkRP.createJob("5th Flottensicherheit CPL", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_trooper/5th_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","clone_card_sec4","dradio"},
    command = "5thcpl",
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
    category = "5th",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_SGT = DarkRP.createJob("5th Flottensicherheit SGT", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_sergeant/5th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","zeus_flashbang","zeus_smokegranade","clone_card_sec4","dradio"},
    command = "5thsgt",
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
    category = "5th",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
end,
})
TEAM_5TH_SSGT = DarkRP.createJob("5th Flottensicherheit SSGT", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_sergeant/5th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","zeus_flashbang","zeus_smokegranade","clone_card_sec4","dradio"},
    command = "5thssgt",
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
    category = "5th",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_FSGT = DarkRP.createJob("5th Flottensicherheit FSGT", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_sergeant/5th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","zeus_flashbang","zeus_smokegranade","clone_card_sec4","weapon_rpw_binoculars_thermal","dradio"},
    command = "5thfsgt",
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
    category = "5th",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_2LT = DarkRP.createJob("5th Flottensicherheit 2LT", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_lieutenant/5th_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","zeus_flashbang","zeus_smokegranade","clone_card_sec4","weapon_rpw_binoculars_thermal","dradio"},
    command = "5th2lt",
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
    category = "5th",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_1LT = DarkRP.createJob("5th Flottensicherheit 1LT", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_lieutenant/5th_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","zeus_flashbang","zeus_smokegranade","clone_card_sec4","weapon_rpw_binoculars_thermal","dradio"},
    command = "5th1lt",
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
    category = "5th",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_CPT = DarkRP.createJob("5th Flottensicherheit CPT", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_captain/5th_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","zeus_flashbang","zeus_smokegranade","clone_card_sec4","weapon_rpw_binoculars_thermal","dradio"},
    command = "5thcpt",
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
    category = "5th",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_MAJ = DarkRP.createJob("5th Flottensicherheit MAJ", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_major/5th_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","zeus_flashbang","zeus_smokegranade","clone_card_sec4","weapon_rpw_binoculars_thermal","dradio"},
    command = "5thmaj",
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
    category = "5th",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_COL = DarkRP.createJob("5th Flottensicherheit COL", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_major/5th_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","zeus_flashbang","zeus_smokegranade","clone_card_sec4","weapon_rpw_binoculars_thermal","dradio"},
    command = "5thcol",
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
    category = "5th",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_VCMD = DarkRP.createJob("5th Flottensicherheit VCMD", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_major/5th_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","weapon_rpw_binoculars_thermal","dradio"},
    command = "5thvcmd",
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
    category = "5th",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_5TH_CMD = DarkRP.createJob("5th Flottensicherheit CMD", {
    color = Color(0,161,255,255),
    model = {"models/player/smitty/bf2_reg/5th_commander/5th_commander.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","weapon_rpw_binoculars_thermal","dradio"},
    command = "5thcmd",
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
    category = "5th",
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
    name = "5th", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0,161,255,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 4, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

