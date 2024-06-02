CGJobs = CGJobs or {}

if not CGJobs.angriffsbatailloncody then return end
-------------------------212th---------------------------
TEAM_212TH_PVT = DarkRP.createJob("212th PVT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_trooper/sm_212th_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec2","dradio"},
    command = "212thpvt",
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
    category = "212th",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_CPL = DarkRP.createJob("212th CPL", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_trooper/sm_212th_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec2","dradio"},
    command = "212thcpl",
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
    category = "212th",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_SGT = DarkRP.createJob("212th SGT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_sergeant/sm_212th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_clonelauncher_3","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "212thsgt",
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
    category = "212th",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_SSGT = DarkRP.createJob("212th SSGT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_sergeant/sm_212th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "212thssgt",
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
    category = "212th",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_FSGT = DarkRP.createJob("212th FSGT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_sergeant/sm_212th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "212thfsgt",
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
    category = "212th",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_2LT = DarkRP.createJob("212th 2LT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_lieutenant/sm_212th_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "212th2lt",
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
    category = "212th",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_1LT = DarkRP.createJob("212th 1LT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_lieutenant/sm_212th_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "212th1lt",
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
    category = "212th",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_CPT = DarkRP.createJob("212th CPT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_captain/sm_212th_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "212thcpt",
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
    category = "212th",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_MAJ = DarkRP.createJob("212th MAJ", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_major/sm_212th_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "212thmaj",
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
    category = "212th",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_COL = DarkRP.createJob("212th COL", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_major/sm_212th_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "212thcol",
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
    category = "212th",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_VCMD = DarkRP.createJob("212th VCMD", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_212th_commander/sm_212th_commander.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "212thvcmd",
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
    category = "212th",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_MCMD = DarkRP.createJob("212th MCMD", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/sm_cody/sm_cody.mdl"},
    description = [[Du bist Commander der 212th Cody.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "212thmcmd",
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
    category = "212th",
	sortOrder = 12,
    PlayerSpawn = function(ply)
		ply:SetHealth(400)
        ply:SetMaxHealth(400)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_212TH_2nd_SGT = DarkRP.createJob("2nd Airborne SGT", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/2ndairborne_trooper/2ndairborne_trooper.mdl"},
    description = [[Du bist Sergeant Barlex von den 2nd Airbornes.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "2ndsgt",
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
    category = "2nd Airborne",
	sortOrder = 13,
    PlayerSpawn = function(ply)
		ply:SetHealth(400)
        ply:SetMaxHealth(400)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_212TH_2nd_TRP = DarkRP.createJob("2nd Airborne CPL", {
    color = Color(255,191,0,255),
    model = {"models/player/smitty/bf2_reg/2ndairborne_trooper/2ndairborne_trooper.mdl"},
    description = [[Du bist Mitglied der Second Airbornes.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_swch_clonelauncher_3","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "2ndcpl",
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
    category = "2nd Airborne",
	sortOrder = 14,
    PlayerSpawn = function(ply)
		ply:SetHealth(400)
        ply:SetMaxHealth(400)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
DarkRP.createCategory{
    name = "212th", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(255,191,0,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 10, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
DarkRP.createCategory{
    name = "2nd Airborne", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(255,191,0,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 11, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

