CGJobs = CGJobs or {}

if not CGJobs.jedi then return end
-------------------------Jedi---------------------------
TEAM_YODA = DarkRP.createJob("Yoda", {
    color = Color(0, 107, 0, 255),
    model = {"models/tfa/comm/gg/pm_sw_yoda.mdl"},
    description = [[Jedi]],
    weapons = {"keys", "climb_swep2", "sswep_dyoda", "swep_jedi_hands", "weapon_fists","weapon_jedigrossmeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "yoda",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    modelScale = 0.7,
    PlayerSpawn = function(ply)
      
        ply:SetHealth("2500")
        ply:SetMaxHealth(2500)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
      

        return CLIENT
    end
})
TEAM_MACEWINDU = DarkRP.createJob("Mace Windu", {
    color = Color(0, 107, 0, 255),
    model = {"models/ryan7259/mace_windu/mace_windu_player.mdl"},
    description = [[Jedi]],
    weapons = {"keys", "climb_swep2", "sswep_macewindu", "swep_jedi_hands","weapon_fists","weapon_waffenmeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "macewindu",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 2,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
  

        return CLIENT
    end
})
TEAM_KIADIMUNDI = DarkRP.createJob("Ki Adi Mundi", {
    color = Color(0, 107, 0, 255),
    model = {"models/cultist_kun/sw/mm.mdl"},
    description = [[Jedi]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_waffenmeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "kiadimundi",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 3,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
   

        return CLIENT
    end
})
TEAM_PLOKOON = DarkRP.createJob("Plo Koon", {
    color = Color(0, 107, 0, 255),
    model = {"models/kriegsyntax/sw_752/plokoon_est.mdl"},
    description = [[Jedi]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands","sswep_plokoon", "weapon_fists","weapon_waffenmeister_plokoon","clone_card_secjedi","dradio"},
    command = "plokoon",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
    sortOrder = 4,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
       

        return CLIENT
    end
})
TEAM_YARAEL = DarkRP.createJob("Yarael Poof", {
    color = Color(0, 107, 0, 255),
    model = {"models/cultist_kun/sw/yarael_poof.mdl"},
    description = [[Jedi Yarael Poof]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_wissenshuetermeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "yarael",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 5,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
      
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
     

        return CLIENT
    end
})
TEAM_ADIGALIA = DarkRP.createJob("Adi Galia", {
    color = Color(0, 107, 0, 255),
    model = {"models/tfa/comm/gg/pm_sw_adigallia.mdl"},
    description = [[Jedi Adi Galia]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_wissenshuetermeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "adigalia",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 6,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
       

        return CLIENT
    end
})
TEAM_SAESSE = DarkRP.createJob("Saesee Tiin", {
    color = Color(0, 107, 0, 255),
    model = {"models/cultist_kun/sw/saesee_tiin.mdl"},
    description = [[Jedi Saesee Tiin]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_waffenmeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "saesse",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 7,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
      
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
 

        return CLIENT
    end
})
TEAM_EETHKOTH = DarkRP.createJob("Eeth Koth", {
    color = Color(0, 107, 0, 255),
    model = {"models/tfa/comm/gg/pm_sw_eeth_koth.mdl"},
    description = [[Jedi Eeth Koth]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_waffenmeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "eethkoth",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 8,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
       

        return CLIENT
    end
})
TEAM_SHAAKTI = DarkRP.createJob("Shaak Ti", {
    color = Color(0, 107, 0, 255),
    model = {"models/f4t4l/shaak_ti/shaak_ti.mdl"},
    description = [[Jedi Shaak Ti]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_wissenshuetermeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "shaakti",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 9,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
      
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
     

        return CLIENT
    end
})
TEAM_KITFISTO = DarkRP.createJob("Kit Fisto", {
    color = Color(0, 107, 0, 255),
    model = {"models/grealms/characters/kitfisto/fisto.mdl"},
    description = [[Jedi]],
    weapons = {"keys", "climb_swep2", "sswep_kitfisto", "swep_jedi_hands","weapon_fists","weapon_wissenshuetermeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "kitfisto",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 10,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
      
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
     

        return CLIENT
    end
})
TEAM_COLEMAN = DarkRP.createJob("Coleman Trebor", {
    color = Color(0, 107, 0, 255),
    model = {"models/cultist_kun/sw/coleman.mdl"},
    description = [[Jedi Coleman Trebor]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_wissenshuetermeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "coleman",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 11,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
     

        return CLIENT
    end
})
TEAM_BARISS = DarkRP.createJob("Bariss Offee", {
	color = Color(0, 107, 0, 255),
    model = {"models/tfa/comm/gg/pm_sw_barriss.mdl"},
    description = [[Jedi Bariss Offee]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_waffenmeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "barissoffee",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 12,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
       

        return CLIENT
    end
})

TEAM_LUMINARA = DarkRP.createJob("Luminara Unduli", {
    color = Color(0, 107, 0, 255),
    model = {"models/tfa/comm/gg/pm_sw_luminara.mdl"},
    description = [[Jedi Luminara Unduli]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_wissenshuetermeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "luminara",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 13,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
       

        return CLIENT
    end
})
TEAM_IMAGUNDI = DarkRP.createJob("Ima-Gun Di", {
    color = Color(0, 107, 0, 255),
    model = {"models/tfa/comm/gg/pm_sw_imagundi.mdl"},
    description = [[Jedi Ima-Gun Di]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_waffenmeister","clone_card_secjedi","dradio"},
    hasRadio = true,
    canTalkToGlobal = true,
    command = "imagundi",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 14,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
       

        return CLIENT
    end
})
TEAM_QUIGON = DarkRP.createJob("Qui-Gon Jinn", {
    color = Color(0, 107, 0, 255),
    model = {"models/jazzmcfly/jka/quigon/quigon.mdl"},
    description = [[Jedi]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","weapon_wissenshuetermeister","clone_card_secjedi","dradio"},
    command = "quigon",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    hasRadio = true,
    canTalkToGlobal = true,
    sortOrder = 15,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
      
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
      

        return CLIENT
    end
})
TEAM_OBIWAN = DarkRP.createJob("Obi-Wan Kenobi", {
    color = Color(0, 107, 0, 255),
    model = {"models/kriegsyntax/sw_752/obiwan_est.mdl", "models/nate159/req/swtfu/ben_kenobi.mdl"},
    description = [[Jedi]],
    weapons = { "keys", "climb_swep2", "sswep_obiwan", "swep_jedi_hands", "weapon_fists","weapon_waffenmeister","clone_card_secjedi","dradio"},
    command = "obiwan",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    hasRadio = true,
    canTalkToGlobal = true,
    sortOrder = 16,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
      

        return CLIENT
    end
})
TEAM_AAYLA = DarkRP.createJob("Aayla Secura", {
    color = Color(0, 107, 0, 255),
    model = {"models/player/nav/aayla.mdl"},
    description = [[Jedi]],
    weapons = {"keys", "climb_swep2", "sswep_aaylasecura", "swep_jedi_hands", "weapon_fists","weapon_waffenmeister","clone_card_secjedi","dradio"},
    command = "aayla",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    hasRadio = true,
    canTalkToGlobal = true,
    sortOrder = 17,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
       

        return CLIENT
    end
})
TEAM_ANAKIN = DarkRP.createJob("Anakin Skywalker", {
    color = Color(0, 107, 0, 255),
    model = {"models/kriegsyntax/sw_752/anakin_est.mdl"},
    description = [[Jedi]],
    weapons = {"keys", "climb_swep2", "sswep_anakin", "swep_jedi_hands", "weapon_fists","weapon_waffenmeister","clone_card_secjedi","dradio"},
    command = "anakin",
    max = 1,
    hasRadio = true,
    canTalkToGlobal = true,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 18,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("1500")
        ply:SetMaxHealth(1500)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
     

        return CLIENT
    end
})
TEAM_AHSOKA = DarkRP.createJob("Ahsoka Tano", {
    color = Color(0, 107, 0, 255),
    model = {"models/jazzmcfly/jka/ashoka/jka_ashoka.mdl"},
    description = [[Jedi Ahsoka]],
    weapons = {"keys", "climb_swep2", "sswep_ashoka", "swep_jedi_hands", "weapon_fists","weapon_waffenmeister_dual","clone_card_secjedi","dradio"},
    command = "ahsoka",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasRadio = true,
    canTalkToGlobal = true,
    hasLicense = false,
    sortOrder = 19,
    ammo = {
        ["AR2"] = 500
    },
    category = "Historische Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("1500")
        ply:SetMaxHealth(1500)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
       

        return CLIENT
    end
})
----------------------------Jedi Klassen------------------------------------------------------
TEAM_JEDIJUENGLING = DarkRP.createJob("Jedi Machtsensitives Kind", {
    PlayerSpawn = function(ply)
        ply:SetHealth("200")
        ply:SetMaxHealth(200)
        ply:RemoveRocketBoots()
    end,
    color = Color(34, 85, 85, 255),
    model = {"models/jazzmcfly/jka/younglings/jka_young_anikan.mdl", "models/jazzmcfly/jka/younglings/jka_young_female.mdl", "models/jazzmcfly/jka/younglings/jka_young_male.mdl", "models/jazzmcfly/jka/younglings/jka_young_shak.mdl"},
    description = [[Juengling]],
    weapons = {"keys", "weapon_fists","dradio"},
    command = "jedijung",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    ammo = {
        ["AR2"] = 500,
        ["ammo_stungun"] = 10
    },
    category = "Jedi",
	CanPlayerSuicide = function(ply) return false end
})
TEAM_JEDIRITTER = DarkRP.createJob("Jedi Ritter", {
    PlayerSpawn = function(ply)
        ply:SetHealth("1500")
        ply:SetMaxHealth(1500)
        ply:RemoveRocketBoots()
    end,
    color = Color(34, 85, 85, 255),
     model = {"models/player/deckboy/custom_jedi_pm/jedi1_pm.mdl", "models/player/deckboy/custom_jedi_pm/jedi2_pm.mdl", "models/player/deckboy/custom_jedi_pm/jedi3_pm.mdl", "models/player/deckboy/custom_jedi_pm/jedi4_pm.mdl", "models/player/deckboy/custom_jedi_pm/jedi5_pm.mdl" },
    description = [[Jedi Ritter]],
    weapons = {"keys", "weapon_ritter", "weapon_fists","climb_swep2", "swep_jedi_hands","dradio"},
    command = "jediritter",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    ammo = {
        ["AR2"] = 500,
        ["ammo_stungun"] = 10
    },
    category = "Jedi",
	CanPlayerSuicide = function(ply) return false end
})


TEAM_JEDIGESANDTER = DarkRP.createJob("Jedi Gesandter", {
    color = Color(34, 85, 85, 255),
    model = {"models/player/deckboy/custom_jedi_pm/jedi1b_pm.mdl"},
    description = [[Jedi Gesandter]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","dradio"},
    command = "jedigesandter",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
    sortOrder = 2,
    ammo = {
        ["AR2"] = 500
    },
    category = "Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("1500")
        ply:SetMaxHealth(1500)
        ply:SetGravity(1)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
        

        return CLIENT
    end
})

TEAM_JEDIHUETER = DarkRP.createJob("Jedi Hüter", {
    color = Color(34, 85, 85, 255),
    model = {"models/player/deckboy/custom_jedi_pm/jedi2_pm.mdl"},
    description = [[Jedi Hüter]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","dradio"},
    command = "jedihüter",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
    sortOrder = 3,
    ammo = {
        ["AR2"] = 500
    },
    category = "Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("1500")
        ply:SetMaxHealth(1500)
        ply:SetGravity(1)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
        

        return CLIENT
    end
})

TEAM_JEDIWACHE = DarkRP.createJob("Jedi Wächter", {
    color = Color(34, 85, 85, 255),
    model = {"models/player/deckboy/custom_jedi_pm/jedi3a_pm.mdl"},
    description = [[Jedi Wächter]],
    weapons = {"keys", "climb_swep2", "swep_jedi_hands", "weapon_fists","dradio"},
    command = "jediwächter",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
    sortOrder = 4,
    ammo = {
        ["AR2"] = 500
    },
    category = "Jedi",
    PlayerSpawn = function(ply)
       
        ply:SetHealth("1500")
        ply:SetMaxHealth(1500)
        ply:SetGravity(1)
        ply:RemoveRocketBoots()

        return CLIENT
    end,
    PlayerDeath = function(ply)
        

        return CLIENT
    end
})
DarkRP.createCategory{
    name = "Historische Jedi", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 26, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
DarkRP.createCategory{
    name = "Jedi", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 27, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


