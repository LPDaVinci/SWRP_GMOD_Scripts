CGJobs = CGJobs or {}

if not CGJobs.vadersfist then return end
-------------------------501st---------------------------
TEAM_501ST_PVT = DarkRP.createJob("501st PVT", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_trooper/501st_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501stpvt",
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
    category = "501st",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_CPL = DarkRP.createJob("501st CPL", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_trooper/501st_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501stcpl",
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
    category = "501st",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_SGT = DarkRP.createJob("501st SGT", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_sergeant/501st_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501stsgt",
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
    category = "501st",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_SSGT = DarkRP.createJob("501st SSGT", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_sergeant/501st_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501stssgt",
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
    category = "501st",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_FSGT = DarkRP.createJob("501st FSGT", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_sergeant/501st_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501stfsgt",
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
    category = "501st",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_2LT = DarkRP.createJob("501st 2LT", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501st2lt",
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
    category = "501st",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})

TEAM_501ST_2LT_ECHO = DarkRP.createJob("501st ARC 2LT", { 
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/sm_echo/sm_echo.mdl"},
       description = [[Du Bist der 501st 2LT Echo.]], 
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501st2ltecho", 
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
    category = "501st",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_1LT = DarkRP.createJob("501st 1LT", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501st1lt",
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
    category = "501st",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_1LT_FIVES = DarkRP.createJob("501st ARC 1LT", { 
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/sm_fives/sm_fives.mdl"}, 
   description = [[Du bist Der 1LT 5555 Fives .]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501st1ltfives", 
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
    category = "501st",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_CPT = DarkRP.createJob("501st CPT", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl"},
    description = [[Du bist ein Captain.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","weapon_policeshield","dradio"},
    command = "501stcpt",
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
    category = "501st",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_MAJ = DarkRP.createJob("501st MAJ", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","weapon_policeshield","dradio"},
    command = "501stmaj",
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
    category = "501st",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_COL = DarkRP.createJob("501st COL", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","weapon_policeshield","dradio"},
    command = "501stcol",
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
    category = "501st",
	sortOrder = 12,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_VCMD = DarkRP.createJob("501st VCMD", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","weapon_policeshield","dradio"},
    command = "501stvcmd",
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
    category = "501st",
	sortOrder = 13,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_501ST_SCMD = DarkRP.createJob("501st SCMD", {
    color = Color(0,0,255,255),
    model = {"models/player/smitty/bf2_reg/sm_rex/sm_rex.mdl"},
    description = [[Du bist Commander der 501st.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","weapon_policeshield","dradio"},
    command = "501stscmd",
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
    category = "501st",
	sortOrder = 14,
    PlayerSpawn = function(ply)
		ply:SetHealth(400)
        ply:SetMaxHealth(400)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
DarkRP.createCategory{
    name = "501st", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0,0,255,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 13, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}