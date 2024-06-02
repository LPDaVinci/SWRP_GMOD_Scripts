CGJobs = CGJobs or {}

if not CGJobs.events then return end
-------------------------Events---------------------------
TEAM_EVENT_IMP = DarkRP.createJob("Darth Sidious", {
color = Color(255, 51, 255, 255),
model = {"models/player/emperor_palpatine.mdl"},
description = [[Eventjob Imperator]],
weapons = {"keys", "climb_swep2","weapon_fists", "swep_jedi_hands","weapon_imperator","sswep_palpatine","dradio"},
command = "sidious",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 1,
vote = false,
hasRadio = true,
canTalkToGlobal = false,
hasLicense = false,
ammo = {
        ["AR2"] = 500,
    },
category = "Event",
sortOrder = 1,
PlayerSpawn = function(ply)
ply:SetHealth(2500)
ply:SetMaxHealth(2500)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})

TEAM_EVENT_GRIEVOUS = DarkRP.createJob("General Grievous", {
color = Color(255, 51, 255, 255),
model = {"models/player/grievous.mdl"},
description = [[Eventjob Grievous]],
weapons = {"keys", "climb_swep2","weapon_fists", "swep_jedi_hands","weapon_grievous","sswep_general","dradio"},
hasRadio = true,
canTalkToGlobal = false,
command = "grievous",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
vote = false,
hasLicense = false,
ammo = {
        ["pistol"] = 60,
    },

category = "Event",
sortOrder = 2,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EVENT_DOOKU = DarkRP.createJob("Count Dooku", {
color = Color(255, 51, 255, 255),
model = {"models/kriegsyntax/sw_752/dooku_est.mdl"},
description = [[Eventjob]],
weapons = {"keys", "climb_swep2","weapon_fists", "swep_jedi_hands","weapon_lordkrieger","sswep_dooku","dradio"},
hasRadio = true,
canTalkToGlobal = false,
command = "dooku",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
vote = false,
hasLicense = false,
ammo = {
        ["pistol"] = 60,
    },

category = "Event",
sortOrder = 3,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EVENT_MAUL = DarkRP.createJob("Darth Maul", {
color = Color(255, 51, 255, 255),
    model = {"models/player/darth/maul.mdl"},
description = [[Darth Maul]],
weapons = {"keys", "climb_swep2","weapon_fists", "swep_jedi_hands","weapon_lordwaechter","sswep_dmaul","dradio"},
hasRadio = true,
canTalkToGlobal = false,
command = "maul",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
vote = false,
hasLicense = false,
ammo = {
        ["pistol"] = 60,
    },

category = "Event",
sortOrder = 4,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EVENT_SAVAGE = DarkRP.createJob("Savage Opress", {
color = Color(255, 51, 255, 255),
model = {"models/syntheticgaming/characters/savageopress/savageopress.mdl"},
description = [[Savage Opress]],
weapons = {"keys", "climb_swep2","weapon_fists", "swep_jedi_hands","weapon_lordkrieger","dradio"},
hasRadio = true,
canTalkToGlobal = false,
command = "savage",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
vote = false,
hasLicense = false,
ammo = {
        ["pistol"] = 60,
    },

category = "Event",
sortOrder = 5,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EVENT_ASAJJ = DarkRP.createJob("Asajj Ventress", {
color = Color(255, 51, 255, 255),
model = {"models/jellik/asajj/asajj.mdl"},
description = [[Eventjob]],
weapons = {"keys", "climb_swep2","weapon_fists", "swep_jedi_hands","weapon_lordkrieger","sswep_asajjventress","dradio"},
hasRadio = true,
canTalkToGlobal = false,
command = "asajj",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
vote = false,
hasLicense = false,
ammo = {
        ["pistol"] = 60,
    },

category = "Event",
sortOrder = 6,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_NACHTSCHWESTERN = DarkRP.createJob("Nachtschwester", {
    PlayerSpawn = function(ply)
        ply:SetArmor(200)
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()
    end,
   color = Color(255, 114, 0, 255),
   model = {"models/playerm/valley/nightsister/night_sister.mdl"},
   description = [[Nachtschwester]],
    weapons = {"weapon_cuff_elastic","weapon_vibrosword","keys", "weapon_fists","dradio"},
    command = "nightsister",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
	sortOrder = 7, -- The position of this thing in its category. Lower number means higher up.
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
    ammo = {
        ["AR2"] = 5000
    },
    category = "Event"
})

TEAM_EVENT_PALPATINE = DarkRP.createJob("Kanzler Palpatine", {
color = Color(145, 145, 145, 255),
model = {"models/jazzmcfly/jka/palpatine/palpatine.mdl"},
description = [[Der Liebe unschuldige Kanzler]],
weapons = {"tfa_752_defenderoftruth", "keys","dradio"},
command = "palpatine",
max = 2,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
    
hasLicense = false,
    
ammo = {
        ["AR2"] = 1000,
    },
	
category = "Event",
sortOrder = 8,
PlayerSpawn = function(ply)
ply:SetHealth(100)
ply:SetMaxHealth(100)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})

TEAM_EVENT_COMMANDODROID = DarkRP.createJob("Commando Droide", { 
color = Color(0, 255, 25, 255),
model = {"models/player/sgg/starwars/battledroid_commander.mdl"},
description = [[Comando Droide]],
weapons = {"tfa_swch_e5", "keys","dradio"},
command = "battledroid",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 5000,
    },
	
category = "Event",
sortOrder = 9,
PlayerSpawn = function(ply)
ply:SetHealth(1000)
ply:SetMaxHealth(1000)
ply:SetArmor(100)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})

TEAM_EVENT_DROIDESOLDAT = DarkRP.createJob("Droiden Soldat", { 
color = Color(0, 255, 25, 255),
model = {"models/player/sgg/starwars/battledroid.mdl"},
description = [[Droide Soldat]],
weapons = {"tfa_swch_e5", "keys","dradio"},
command = "droidsoldat",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 5000,
    },
	
category = "Event",
sortOrder = 10,
PlayerSpawn = function(ply)
ply:SetHealth(1500)
ply:SetMaxHealth(1500)
ply:SetArmor(100)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EVENT_HK47 = DarkRP.createJob("HK47", { 
color = Color(0, 255, 25, 255),
model = {"models/nikout/swtor/npc/hk47.mdl"},
description = [[HK47 Attentäterdroide]],
weapons = {"tfa_swch_e5", "weapon_camo", "keys","sswep_hk47","dradio"},
command = "hk47",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 5000,
    },
	
category = "Event",
sortOrder = 11,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(200)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EVENT_HK51 = DarkRP.createJob("HK51", { 
color = Color(0, 255, 25, 255),
model = {"models/nikout/swtor/npc/hk51.mdl"},
description = [[HK51 Attentäterdroide]],
weapons = {"tfa_swch_e5", "weapon_camo", "keys","sswep_hk47","dradio"},
command = "hk51",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 5000,
    },
	
category = "Event",
sortOrder = 12,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(200)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})




TEAM_EVENT_JANGO = DarkRP.createJob("Jango Fett", { 
color = Color(0, 255, 25, 255),
model = {"models/player/deckboy/jango_pm/jango_pm.mdl"},
description = [[Bounty Hunter - Wo bleibt mein Kopfgeld]],
weapons = {"tfa_sw_westardual","weapon_cuff_elastic","realistic_hook","weapon_rpw_binoculars", "keys","sswep_jangofett","dradio" },
command = "jangofett",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 5000,
    },
	
category = "Event",
sortOrder = 13,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:RemoveRocketBoots()
ply:GiveJetPack()

        return CLIENT
    end,
})

TEAM_EVENT_CAD = DarkRP.createJob("Cad Bane", { 
color = Color(0, 255, 25, 255),
model = {"models/grealms/characters/cadbane/cadbane.mdl"},
description = [[Bounty Hunter - Wo bleibt mein Kopfgeld]],
weapons = {"tfa_sw_westardual","weapon_cuff_elastic","realistic_hook","weapon_rpw_binoculars", "keys","sswep_cadbane","dradio" },
command = "cadbane",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 5000,
    },
	
category = "Event",
sortOrder = 14,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:GiveRocketBoots(math.huge)

        return CLIENT
    end,
})
TEAM_EVENT_IG88 = DarkRP.createJob("IG-88", { 
color = Color(0, 255, 25, 255),
model = {"models/gonzo/ig88/ig88.mdl"},
description = [[Bounty Hunter - Wo bleibt mein Kopfgeld]],
weapons = {"tfa_sw_westardual","weapon_cuff_elastic","realistic_hook","weapon_rpw_binoculars", "keys","dradio"},
command = "ig88",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 5000,
    },
	
category = "Event",
sortOrder = 15,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})



TEAM_EVENT_CHEWBACCA = DarkRP.createJob("Chewbacca", { 
color = Color(0, 255, 25, 255),
model = {"models/tfa/comm/gg/pm_sw_chewbacca.mdl"},
description = [[Urghhhh ich bin ein Wookie]],
weapons = {"tfa_bowcaster","weapon_rpw_binoculars", "keys","sswep_chewie","dradio" },
command = "chewbacca",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 5000,
    },
	
category = "Event",
sortOrder = 16,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})

TEAM_EVENT_HAENDLER = DarkRP.createJob("Händler", {
color = Color(0,255,255),
model = {"models/player/b4p/b4p_rodian.mdl",
		 "models/player/b4p/b4p_tusken.mdl",
		 "models/zyan7259m/zusken_raider_player/zusken_raider_player.mdl",
		 "models/qyan7259m/geequay_player/geequay_regular_player.mdl",},
description = [[Händler]],
weapons = {"keys", "tfa_752_defenderoftruth","dradio"},
command = "haendler",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 1000,
    },
	
category = "Event",
sortOrder = 17,
PlayerSpawn = function(ply)
ply:SetHealth(100)
ply:SetMaxHealth(100)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})

TEAM_EVENT_CLONEASSASSIN = DarkRP.createJob("Clone Assassin", { 
color = Color(0, 255, 25, 255),
model = {"models/cloneassassin2/assassinv2.mdl"},
description = [[ Clone Assassin]],
weapons = {"weapon_vibrosword", "keys", "tfa_dh17","dradio"},
command = "cloneassa",
max = 0,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
vote = false,
hasLicense = false,

ammo = {
        ["AR2"] = 1000,
    },
	
category = "Event",
sortOrder = 18,
PlayerSpawn = function(ply)
ply:SetHealth(1500)
ply:SetMaxHealth(1500)
ply:SetArmor(200)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})


TEAM_EVENT_JAWA = DarkRP.createJob("Jawa", {
color = Color(145, 145, 145, 255),
model = {"models/player/b4p/b4p_jawa.mdl"},
description = [[Utini für alle]],
weapons = {"stungun", "keys","sswep_jawa","dradio"},
command = "jawa",
max = 4,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 0,
hasRadio = true,
canTalkToGlobal = false,
 sortOrder = 19,
vote = false,
modelScale = 0.7,    
hasLicense = false,
    
ammo = {
        ["AR2"] = 1000,
		["ammo_stungun"] = 20,
    },
	
category = "Event",
sortOrder = 15,
PlayerSpawn = function(ply)
ply:SetHealth(2000)
ply:SetMaxHealth(2000)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})

TEAM_EVENT_JARJAR = DarkRP.createJob("Jar Jar Binks", {    
color = Color(139,0,0), 
model = {"models/player/techknow/jarjar.mdl"},   
description = [[Jar Jar Binks]],
weapons = {"keys","sswep_jarjar","dradio"},
command = "jarjar",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 1,
vote = false,
hasRadio = true,
canTalkToGlobal = false,
hasLicense = false,

ammo = {
        ["AR2"] = 1000,
    },

category = "Event",
sortOrder = 20,
PlayerSpawn = function(ply)
ply:SetHealth(100)
ply:SetMaxHealth(100)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EVENT_R2D2 = DarkRP.createJob("R2D2", {    
color = Color(139,0,0), 
model = {"models/player/r2d2.mdl"},   
description = [[R2D2]],
    weapons = {"keys", "sswep_r2d2", "stungun", "weapon_avpflamer", "weapon_extinguisher","weapon_fists","dradio"},
command = "r2d2",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 1,
vote = false,
hasRadio = true,
canTalkToGlobal = false,
hasLicense = false,

ammo = {
        ["AR2"] = 500,
        ["ammo_stungun"] = 10
    },

category = "Event",
sortOrder = 21,
PlayerSpawn = function(ply)
ply:SetHealth(100)
ply:SetMaxHealth(100)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_EVENT_C3PO = DarkRP.createJob("C3PO", {    
color = Color(139,0,0), 
model = {"models/player/c3po.mdl"},   
description = [[C3PO]],
weapons = {"keys", "sswep_c3po_talk","weapon_fists","dradio"},
command = "c3po",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.45,
admin = 1,
vote = false,
hasRadio = true,
canTalkToGlobal = false,
hasLicense = false,

ammo = {
        ["AR2"] = 1000,
    },

category = "Event",
sortOrder = 22,
PlayerSpawn = function(ply)
ply:SetHealth(100)
ply:SetMaxHealth(100)
ply:SetArmor(0)
ply:RemoveRocketBoots()

        return CLIENT
    end,
})
TEAM_RADIODJ = DarkRP.createJob("DJ", {
    PlayerSpawn = function(ply)
        ply:SetArmor(200)
        ply:SetHealth("2000")
        ply:SetMaxHealth(2000)
        ply:RemoveRocketBoots()
    end,
    color = Color(0, 255, 25, 255),
    model = {"models/tfa/comm/gg/pm_sw_trandoshan_bounty_hunter_v1_skin2.mdl"},
    description = [[DER DJ des Planeten]],
    weapons = {"weapon_cuff_elastic", "tfa_sw_westardual", "keys","weapon_fists","dradio"},
    command = "radiodj",
    max = 2,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
	sortOrder = 23,
    ammo = {
        ["AR2"] = 5000
    },
    category = "Event"
})
TEAM_EVENT_TWILEKDANCER = DarkRP.createJob("Twilek Tänzerin", {
    PlayerSpawn = function(ply)
        ply:SetArmor(0)
        ply:SetHealth("500")
        ply:SetMaxHealth(500)
        ply:RemoveRocketBoots()
    end,
    color = Color(0, 255, 25, 255),
    model = {"models/gonzo/narshaddaabarstaff/twilekdancer/twilekdancer.mdl"},
    description = [[Eine der vielen Tänzerinnen]],
    weapons = {"keys","weapon_fists","dradio"},
    command = "twilekdance",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
	sortOrder = 9,
    ammo = {
        ["AR2"] = 5000
    },
    category = "Event"
})
TEAM_EVENT_BITH = DarkRP.createJob("Bith", {
    PlayerSpawn = function(ply)
        ply:SetArmor(0)
        ply:SetHealth("500")
        ply:SetMaxHealth(500)
        ply:RemoveRocketBoots()
    end,
    color = Color(0, 255, 25, 255),
    model = {"models/player/valley/bith.mdl"},
    description = [[Einer der Spezies Bith, sehr musikalisch]],
    weapons = {"keys","weapon_fists","dradio"},
    command = "bith",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    hasRadio = true,
    canTalkToGlobal = true,
    vote = false,
    hasLicense = false,
	sortOrder = 10,
    ammo = {
        ["AR2"] = 5000
    },
    category = "Event"
})
DarkRP.createCategory{
    name = "Event", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 28, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
