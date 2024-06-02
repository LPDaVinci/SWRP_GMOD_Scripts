CGJobs = CGJobs or {}

if not CGJobs.rsf then return end
-------------------------RSF---------------------------
TEAM_RSF_PVT = DarkRP.createJob("RSF PVT", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_camo","commando_knife","hidcam_placer","clone_card_sec2","dradio"},
    command = "RSFpvt",
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
    category = "Republic Shadow Forces",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(7, 0)
        end
        return CLIENT
    end,
})
TEAM_RSF_CPL = DarkRP.createJob("RSF CPL", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_camo","commando_knife","hidcam_placer","clone_card_sec2","dradio"},
    command = "RSFcpl",
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
    category = "Republic Shadow Forces",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(7, 0)
        end
        return CLIENT
    end,
})
TEAM_RSF_SGT = DarkRP.createJob("RSF SGT", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec2","dradio"},
    command = "RSFsgt",
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
    category = "Republic Shadow Forces",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_RSF_SSGT = DarkRP.createJob("RSF SSGT", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec2","dradio"},
    command = "RSFssgt",
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
    category = "Republic Shadow Forces",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(7, 1)
        end
        return CLIENT
    end,
})
TEAM_RSF_FSGT = DarkRP.createJob("RSF FSGT", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec2","dradio"},
    command = "RSFfsgt",
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
    category = "Republic Shadow Forces",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(7, 1)
        end
        return CLIENT
    end,
})
TEAM_RSF_2LT = DarkRP.createJob("RSF 2LT", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec2","dradio"},
    command = "RSF2lt",
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
    category = "Republic Shadow Forces",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(7, 1)
        end
        return CLIENT
    end,
})
TEAM_RSF_1LT = DarkRP.createJob("RSF 1LT", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec2","dradio"},
    command = "RSF1lt",
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
    category = "Republic Shadow Forces",
	sortOrder = 7,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(7, 1)
        end
        return CLIENT
    end,
})
TEAM_RSF_CPT = DarkRP.createJob("RSF CPT", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec2","dradio"},
    command = "RSFcpt",
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
    category = "Republic Shadow Forces",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(7, 1)
        end
        return CLIENT
    end,
})
TEAM_RSF_MAJ = DarkRP.createJob("RSF MAJ", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec3","dradio"},
    command = "RSFmaj",
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
    category = "Republic Shadow Forces",
	sortOrder = 9,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(7, 1)
        end
        return CLIENT
    end,
})
TEAM_RSF_COL = DarkRP.createJob("RSF COL", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec3","dradio"},
    command = "RSFcol",
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
    category = "Republic Shadow Forces",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(7, 1)
        end
        return CLIENT
    end,
})
TEAM_RSF_VCMD = DarkRP.createJob("RSF VCMD", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "RSFvcmd",
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
    category = "Republic Shadow Forces",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(7, 1)
        end
        return CLIENT
    end,
})
TEAM_RSF_CMD = DarkRP.createJob("RSF CMD", {
    color = Color(0,0,0,255),
    model = {"models/fisher/shadow/trooper/trooper.mdl","models/player/armand_isard_grady/armand_isard_grady.mdl"},
    description = [[Du bist Commander der RSF Armand Isard.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","zeus_flashbang","weapon_camo","commando_knife","hidcam_placer","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "RSFcmd",
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
    category = "Republic Shadow Forces",
	sortOrder = 12,
    PlayerSpawn = function(ply)
		ply:SetHealth(400)
        ply:SetMaxHealth(400)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
		 if ply:GetModel() == "models/fisher/shadow/trooper/trooper.mdl" then
               
				ply:SetBodygroup(4, 2)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(7, 1)
        end
        return CLIENT
    end,
})
DarkRP.createCategory{
    name = "Republic Shadow Forces", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0,0,0,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 18, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


