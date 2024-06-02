CGJobs = CGJobs or {}

if not CGJobs.sts then return end
-------------------------Stoßtrupp---------------------------
TEAM_ST_PVT = DarkRP.createJob("Stoßtrupp PVT", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_trooper/st_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stpvt",
    max = 0,	
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_CPL = DarkRP.createJob("Stoßtrupp CPL", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_trooper/st_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stcpl",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
         ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_SGT = DarkRP.createJob("Stoßtrupp SGT", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_sergeant/st_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stsgt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
         ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_SSGT = DarkRP.createJob("Stoßtrupp SSGT", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_sergeant/st_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stssgt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_FSGT = DarkRP.createJob("Stoßtrupp FSGT", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_sergeant/st_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stfsgt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
       ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_2LT = DarkRP.createJob("Stoßtrupp 2LT", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_lieutenant/st_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "st2lt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
       ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_1LT = DarkRP.createJob("Stoßtrupp 1LT", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_lieutenant/st_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "st1lt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_CPT = DarkRP.createJob("Stoßtrupp CPT", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_captain/st_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stcpt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_MAJ = DarkRP.createJob("Stoßtrupp MAJ", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_major/st_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stmaj",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_COL = DarkRP.createJob("Stoßtrupp COL", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_major/st_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stcol",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
        ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_VCMD = DarkRP.createJob("Stoßtrupp VCMD", {
    color = Color(255,0,0,255),
    model = {"models/player/smitty/bf2_reg/st_commander/st_commander.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stvcmd",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
         ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_MCMD = DarkRP.createJob("Stoßtrupp MCMD", {
    color = Color(255,0,0,255),
    model = {"models/gonzo/mvgcommanders/fox/fox.mdl"},
    description = [[Du bist Commander der STs Fox.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stmcmd",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
         ["AR2"] = 500,
        ["ammo_stungun"] = 15
    },
    category = "Stoßtrupp",
	sortOrder = 12,
    PlayerSpawn = function(ply)
		ply:SetHealth(400)
        ply:SetMaxHealth(400)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_MASSIFFUEHRER = DarkRP.createJob("Stoßtrupp Massifführer", {
    color = Color(255,0,0,255),
    model = {"models/kaiido/arf/hound/hound.mdl"},
    description = [[Du bist ein Massifführer.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","stungun","weapon_policeshield","weapon_cuff_elastic","weapon_cuff_elastic","zeus_flashbang","zeus_smokegranade","clone_card_sec4","hidcam_placer","weaponchecker","stunstick","swep_mexicanshockstaff","dradio"},
    command = "stmassiffuehrer",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
         ["AR2"] = 500,
    },
    category = "Stoßtrupp",
	sortOrder = 13,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_ST_MASSIF = DarkRP.createJob("Stoßtrupp Massif", {
    color = Color(255,0,0,255),
    model = {"models/mrpounder1/player/massif.mdl"},
    description = [[Du bist ein Massif.]],
    weapons = {"keys","weapon_fists","climb_swep2","sk_massif_swep","clone_card_sec4","dradio"},
    command = "stmassif",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
	hasRadio = true,
	canTalkToGlobal = false,
    ammo = {
         ["AR2"] = 500,
    },
    category = "Stoßtrupp",
	sortOrder = 14,
    PlayerSpawn = function(ply)
		ply:SetHealth(1500)
        ply:SetMaxHealth(1500)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
DarkRP.createCategory{
    name = "Stoßtrupp", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(255,0,0,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 17, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}



