CGJobs = CGJobs or {}

if not CGJobs.flotte then return end
-------------------------Flotte---------------------------
TEAM_FLOT_FPVT = DarkRP.createJob("Flotten FKDT", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/clone_recruit/clone_recruit.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","clone_card_sec6","dradio"},
    command = "FLOTfpvt",
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
    category = "Flotte",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_FCPL = DarkRP.createJob("Flotten FCPL", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/clone_recruit/clone_recruit.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","clone_card_sec6","dradio"},
    command = "FLOTfcpl",
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
    category = "Flotte",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_FSGT = DarkRP.createJob("Flotten FSGT", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/brown_officer/brown_officer.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","clone_card_sec6","dradio"},
    command = "FLOTfsgt",
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
    category = "Flotte",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_FSSGT = DarkRP.createJob("Flotten FSSGT", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/brown_officer/brown_officer.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","clone_card_sec6","dradio"},
    command = "FLOTfssgt",
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
    category = "Flotte",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_FFSGT = DarkRP.createJob("Flotten FFSGT", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/brown_officer/brown_officer.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","clone_card_sec6","dradio"},
    command = "FLOTffsgt",
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
    category = "Flotte",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_F2LT = DarkRP.createJob("Flotten F2LT", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/blue_officer/blue_officer.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","clone_card_sec6","dradio"},
    command = "FLOTf2lt",
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
    category = "Flotte",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_F1LT = DarkRP.createJob("Flotten F1LT", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/blue_officer/blue_officer.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","clone_card_sec6","dradio"},
    command = "FLOTf1lt",
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
    category = "Flotte",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_FCPT = DarkRP.createJob("Flotten FCPT", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","clone_card_sec6","dradio"},
    command = "FLOTfcpt",
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
    category = "Flotte",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_FVADM = DarkRP.createJob("Flotten FVADM", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","weapon_cuff_elastic","clone_card_sec6","dradio"},
    command = "FLOTfvadm",
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
    category = "Flotte",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_FADM = DarkRP.createJob("Flotten FADM", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/black_officer/black_officer.mdl"},
    description = [[Du bist der Admiral.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","weapon_cuff_elastic","clone_card_sec6","dradio"},
    command = "FLOTfadm",
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
    category = "Flotte",
	sortOrder = 12,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_FLOT_INSPEKTOR = DarkRP.createJob("Flotteninspektor", {
    color = Color(217,217,217,255),
    model = {"models/smitty/bf2_reg/medic_officer/medic_officer.mdl"},
    description = [[Du bist Flotteninspektor und kontrollierst die Flotte.]],
    weapons = {"keys","weapon_fists","tfa_752_defenderoftruth","weapon_cuff_elastic","clone_card_sec6","dradio"},
    command = "FLOTinspeaktor",
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
    category = "Flotte",
	sortOrder = 13,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(0)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
DarkRP.createCategory{
    name = "Flotte", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(217,217,217,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 23, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
