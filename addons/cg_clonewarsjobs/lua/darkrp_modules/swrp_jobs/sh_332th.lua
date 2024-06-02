CGJobs = CGJobs or {}

if not CGJobs.ahsokaclones then return end
-------------------------332th---------------------------
TEAM_332TH_PVT = DarkRP.createJob("332th PVT", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec2","dradio"},
    command = "332thpvt",
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
    category = "332th",
	sortOrder = 1,
    PlayerSpawn = function(ply)
		ply:SetHealth(100)
        ply:SetMaxHealth(100)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(5, 0)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(9, 0)
        end
        return CLIENT
    end,
})
TEAM_332TH_CPL = DarkRP.createJob("332th CPL", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","clone_card_sec2","dradio"},
    command = "332thcpl",
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
    category = "332th",
	sortOrder = 2,
    PlayerSpawn = function(ply)
		ply:SetHealth(125)
        ply:SetMaxHealth(125)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(5, 0)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(9, 0)
        end
        return CLIENT
    end,
})
TEAM_332TH_SGT = DarkRP.createJob("332th SGT", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "332thsgt",
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
    category = "332th",
	sortOrder = 3,
    PlayerSpawn = function(ply)
		ply:SetHealth(150)
        ply:SetMaxHealth(150)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(5, 1)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(9, 0)
        end
        return CLIENT
    end,
})
TEAM_332TH_SSGT = DarkRP.createJob("332th SSGT", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "332thssgt",
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
    category = "332th",
	sortOrder = 4,
    PlayerSpawn = function(ply)
		ply:SetHealth(175)
        ply:SetMaxHealth(175)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(5, 1)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(9, 0)
        end
        return CLIENT
    end,
})
TEAM_332TH_FSGT = DarkRP.createJob("332th FSGT", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "332thfsgt",
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
    category = "332th",
	sortOrder = 5,
    PlayerSpawn = function(ply)
		ply:SetHealth(200)
        ply:SetMaxHealth(200)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(5, 1)
				ply:SetBodygroup(6, 0)
				ply:SetBodygroup(9, 0)
        end
        return CLIENT
    end,
})
TEAM_332TH_2LT = DarkRP.createJob("332th 2LT", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "332th2lt",
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
    category = "332th",
	sortOrder = 6,
    PlayerSpawn = function(ply)
		ply:SetHealth(225)
        ply:SetMaxHealth(225)
		ply:SetArmor(100)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(5, 1)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(9, 0)
        end
        return CLIENT
    end,
})

TEAM_332TH_1LT = DarkRP.createJob("332th 1LT", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "332th1lt",
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
    category = "332th",
	sortOrder = 8,
    PlayerSpawn = function(ply)
		ply:SetHealth(250)
        ply:SetMaxHealth(250)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(5, 1)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(9, 0)
        end
        return CLIENT
    end,
})
TEAM_332TH_CPT = DarkRP.createJob("332th CPT", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Captain.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec2","dradio"},
    command = "332thcpt",
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
    category = "332th",
	sortOrder = 10,
    PlayerSpawn = function(ply)
		ply:SetHealth(275)
        ply:SetMaxHealth(275)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 0)
				ply:SetBodygroup(5, 1)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(9, 0)
        end
        return CLIENT
    end,
})
TEAM_332TH_MAJ = DarkRP.createJob("332th MAJ", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "332thmaj",
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
    category = "332th",
	sortOrder = 11,
    PlayerSpawn = function(ply)
		ply:SetHealth(300)
        ply:SetMaxHealth(300)
		ply:SetArmor(150)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 2)
				ply:SetBodygroup(5, 1)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(9, 0)
        end
        return CLIENT
    end,
})
TEAM_332TH_COL = DarkRP.createJob("332th COL", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","zeus_thermaldet","zeus_smokegranade","clone_card_sec3","dradio"},
    command = "332thcol",
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
    category = "332th",
	sortOrder = 12,
    PlayerSpawn = function(ply)
		ply:SetHealth(325)
        ply:SetMaxHealth(325)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 2)
				ply:SetBodygroup(5, 1)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(9, 1)
        end
        return CLIENT
    end,
})
TEAM_332TH_VCMD = DarkRP.createJob("332th VCMD", {
    color = Color(0,0,255,255),
    model = {"models/fisher/332nd/legion/legion.mdl"},
    description = [[Du bist ein Klonkrieger und kannst dich nun ein Regiment anschließen.]],
    weapons = {"keys","weapon_fists","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "332thvcmd",
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
    category = "332th",
	sortOrder = 13,
    PlayerSpawn = function(ply)
		ply:SetHealth(350)
        ply:SetMaxHealth(350)
		ply:SetArmor(200)
        ply:RemoveRocketBoots()
if ply:GetModel() == "models/fisher/332nd/legion/legion.mdl" then
				ply:SetBodygroup(4, 2)
				ply:SetBodygroup(5, 1)
				ply:SetBodygroup(6, 1)
				ply:SetBodygroup(9, 1)
        end
        return CLIENT
    end,
})
TEAM_332TH_SCMD = DarkRP.createJob("332th CMD", {
    color = Color(0,0,255,255),
    model = {"models/player/332nd/commander/commander.mdl"},
    description = [[Du bist Commander der 332th.]],
    weapons = {"keys","weapon_fists","tfa_swch_z6","tfa_swch_dc15a","tfa_swch_dc15s","tfa_swch_dc17","tfa_sw_repshot","weapon_cuff_elastic","zeus_thermaldet","zeus_smokegranade","clone_card_sec4","tfa_sw_dc17dual","dradio"},
    command = "332thscmd",
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
    category = "332th",
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
    name = "332th", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0,0,255,255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 14, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}