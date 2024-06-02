CGJobs = CGJobs or {}

if not CGJobs.eod then return end
-------------------------EOD---------------------------
TEAM_EOD_PVT = DarkRP.createJob("EOD PVT", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_trooper/sm_eod_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","amr_kit","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODpvt",
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
    category = "EOD",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_CPL = DarkRP.createJob("EOD CPL", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_trooper/sm_eod_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","weapon_hexshield","amr_kit","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODcpl",
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
    category = "EOD",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_SGT = DarkRP.createJob("EOD SGT", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_sergeant/sm_eod_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODsgt",
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
    category = "EOD",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_SSGT = DarkRP.createJob("EOD SSGT", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_sergeant/sm_eod_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODssgt",
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
    category = "EOD",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_FSGT = DarkRP.createJob("EOD FSGT", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_sergeant/sm_eod_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODfsgt",
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
    category = "EOD",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_2LT = DarkRP.createJob("EOD 2LT", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_lieutenant/sm_eod_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","hidcam_placer","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EOD2lt",
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
    category = "EOD",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_1LT = DarkRP.createJob("EOD 1LT", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_lieutenant/sm_eod_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","hidcam_placer","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EOD1lt",
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
    category = "EOD",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_CPT = DarkRP.createJob("EOD CPT", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_captain/sm_eod_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","hidcam_placer","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODcpt",
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
    category = "EOD",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_MAJ = DarkRP.createJob("EOD MAJ", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_major/sm_eod_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","hidcam_placer","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODmaj",
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
    category = "EOD",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_COL = DarkRP.createJob("EOD COL", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_major/sm_eod_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","hidcam_placer","clone_card_sec5","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODcol",
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
    category = "EOD",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_VCMD = DarkRP.createJob("EOD VCMD", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_major/sm_eod_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","hidcam_placer","clone_card_sec5","tfa_sw_dc17dual","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODvcmd",
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
    category = "EOD",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EOD_CMD = DarkRP.createJob("EOD CMD", {
    color = Color(255,93,0,255),
    model = {"models/player/smitty/bf2_reg/sm_eod_commander/sm_eod_commander.mdl"},
    description = [[Du bist Commander der EODs.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","weapon_extinguisher","zeus_smokegranade","zeus_thermaldet","weapon_jew_det","weapon_hexshield","amr_kit","hidcam_placer","clone_card_sec5","tfa_sw_dc17dual","alydus_fortificationbuildertablet","repair_tool_evan","constructable_turret","dradio"},
    command = "EODcmd",
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
    category = "EOD",
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
    name = "EOD", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(255,93,0,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 20, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

