CGJobs = CGJobs or {}

if not CGJobs.wolfsrudel then return end
-------------------------104th Wolfsrudel---------------------------
TEAM_104TH_PVT = DarkRP.createJob("104th PVT", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_trooper/sm_104th_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","climb_swep2","clone_card_sec2","dradio"},
    command = "104thpvt",
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
    category = "104th",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_104TH_CPL = DarkRP.createJob("104th CPL", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_trooper/sm_104th_trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","climb_swep2","clone_card_sec2","dradio"},
    command = "104thcpl",
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
    category = "104th",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_104TH_SGT = DarkRP.createJob("104th SGT", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_sergeant/sm_104th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec2","dradio"},
    command = "104thsgt",
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
    category = "104th",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_104TH_SSGT = DarkRP.createJob("104th SSGT", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_sergeant/sm_104th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec2","dradio"},
    command = "104thssgt",
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
    category = "104th",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
		ply:GiveJetPack()

        return CLIENT
    end,
})
TEAM_104TH_FSGT = DarkRP.createJob("104th FSGT", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_sergeant/sm_104th_sergeant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec2","dradio"},
    command = "104thfsgt",
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
    category = "104th",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
ply:GiveJetPack()
        return CLIENT
    end,
})
TEAM_104TH_2LT = DarkRP.createJob("104th 2LT", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_lieutenant/sm_104th_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec2","dradio"},
    command = "104th2lt",
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
    category = "104th",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
ply:GiveJetPack()
        return CLIENT
    end,
})
TEAM_104TH_1LT = DarkRP.createJob("104th 1LT", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_lieutenant/sm_104th_lieutenant.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec2","dradio"},
    command = "104th1lt",
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
    category = "104th",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
ply:GiveJetPack()
        return CLIENT
    end,
})
TEAM_104TH_CPT = DarkRP.createJob("104th CPT", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_captain/sm_104th_captain.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec2","dradio"},
    command = "104thcpt",
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
    category = "104th",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
ply:GiveJetPack()
        return CLIENT
    end,
})
TEAM_104TH_MAJ = DarkRP.createJob("104th MAJ", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_major/sm_104th_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec3","dradio"},
    command = "104thmaj",
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
    category = "104th",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
ply:GiveJetPack()
        return CLIENT
    end,
})
TEAM_104TH_COL = DarkRP.createJob("104th COL", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_major/sm_104th_major.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec3","dradio"},
    command = "104thcol",
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
    category = "104th",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
ply:GiveJetPack()
        return CLIENT
    end,
})
TEAM_104TH_VCMD = DarkRP.createJob("104th VCMD", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_104th_commander/sm_104th_commander.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "104thvcmd",
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
    category = "104th",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
ply:GiveJetPack()
        return CLIENT
    end,
})
TEAM_104TH_SCMD = DarkRP.createJob("104th SCMD", {
    color = Color(182,182,182,255),
    model = {"models/player/smitty/bf2_reg/sm_wolffe/sm_wolffe.mdl"},
    description = [[Du bist Wolffe.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc17","realistic_hook","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","climb_swep2","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "104thscmd",
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
    category = "104th",
	sortOrder = 12,
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
    name = "104th", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(182,182,182,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 7, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}