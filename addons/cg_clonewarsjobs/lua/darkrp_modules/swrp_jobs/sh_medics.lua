CGJobs = CGJobs or {}

if not CGJobs.medics then return end
-------------------------Medics---------------------------
TEAM_MED_PVT = DarkRP.createJob("MED PVT", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_trooper/medic_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MEDpvt",
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
    category = "Medics",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_CPL = DarkRP.createJob("MED CPL", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_trooper/medic_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MEDcpl",
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
    category = "Medics",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_SGT = DarkRP.createJob("MED SGT", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_sergeant/medic_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MEDsgt",
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
    category = "Medics",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_SSGT = DarkRP.createJob("MED SSGT", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_sergeant/medic_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MEDssgt",
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
    category = "Medics",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_FSGT = DarkRP.createJob("MED FSGT", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_sergeant/medic_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MEDfsgt",
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
    category = "Medics",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_2LT = DarkRP.createJob("MED 2LT", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_lieutenant/medic_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MED2lt",
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
    category = "Medics",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_1LT = DarkRP.createJob("MED 1LT", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_lieutenant/medic_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MED1lt",
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
    category = "Medics",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_CPT = DarkRP.createJob("MED CPT", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_captain/medic_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MEDcpt",
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
    category = "Medics",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_MAJ = DarkRP.createJob("MED MAJ", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_major/medic_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MEDmaj",
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
    category = "Medics",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_COL = DarkRP.createJob("MED COL", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_major/medic_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","dradio"},
    command = "MEDcol",
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
    category = "Medics",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_VCMD = DarkRP.createJob("MED VCMD", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_major/medic_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "MEDvcmd",
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
    category = "Medics",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_MED_CMD = DarkRP.createJob("MED CMD", {
    color = Color(255,0,97,255),
    model = {"models/player/smitty/bf2_reg/medic_commander/medic_commander.mdl"},
    description = [[Du bist Commander der Medics.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","med_kit","bn_defib","weapon_jew_stimkit","weapon_swrp_carry","zeus_smokegranade","weapon_bacta_grenade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "MEDcmd",
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
    category = "Medics",
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
    name = "Medics", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(255,0,97,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 21, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

