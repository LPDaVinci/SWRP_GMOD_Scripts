--[[-------------------------------------------------------------------
	Job Config:
		Needed for the thing to work!
			Powered by
  ____                _        _    ____                               
 / ___|_ __ _   _ ___| |_ __ _| |  / ___| __ _ _ __ ___   ___ _ __ ___ 
| |   | '__| | | / __| __/ _` | | | |  _ / _` | '_ ` _ \ / _ \ '__/ __|
| |___| |  | |_| \__ \ || (_| | | | |_| | (_| | | | | | |  __/ |  \__ \
 \____|_|   \__, |___/\__\__,_|_|  \____|\__,_|_| |_| |_|\___|_|  |___/
            |___/                                                      

-------------------------------------------------------------------]]--[[
							  
	Edited by LPDaVinci
	
---------------------------------------------------------------------]]--
CGJobs = {}


--You want the 5th Clone Wars Division
CGJobs.ahsokaclones = true

--You want the 5th Clone Wars Division
CGJobs.flottensicherheit = false

--You want the 5th Clone Wars Division
CGJobs.galacticmarines = true

--You want the 5th Clone Wars Division
CGJobs.greencompany = true

--You want the 5th Clone Wars Division
CGJobs.aufklaerungscorp = true

--You want the 5th Clone Wars Division
CGJobs.wolfsrudel = true

--You want the 5th Clone Wars Division
CGJobs.angriffsbataillon = true

--You want the 5th Clone Wars Division
CGJobs.angriffsbatailloncody = true

--You want the 5th Clone Wars Division
CGJobs.sternencorp = true

--You want the 5th Clone Wars Division
CGJobs.vadersfist = true

--You want the 5th Clone Wars Division
CGJobs.arcs = false

--You want the 5th Clone Wars Division
CGJobs.eod = true

--You want the 5th Clone Wars Division
CGJobs.events = true

--You want the 5th Clone Wars Division
CGJobs.flotte = true

--You want the 5th Clone Wars Division
CGJobs.jedi = true

--You want the 5th Clone Wars Division
CGJobs.klonkrieger = true

--You want the 5th Clone Wars Division
CGJobs.medics = true

--You want the 5th Clone Wars Division
CGJobs.narcs = true

--You want the 5th Clone Wars Division
CGJobs.piloten = true

--You want the 5th Clone Wars Division
CGJobs.rcs = true

--You want the 5th Clone Wars Division
CGJobs.rsf = true

--You want the 5th Clone Wars Division
CGJobs.sts = true

--[[
FlottensicherheitWhitelist = {
	[TEAM_5TH_CMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_5TH_PVT,
		TEAM_5TH_CPL,
		TEAM_5TH_SGT,
		TEAM_5TH_SSGT,
		TEAM_5TH_FSGT,
		TEAM_5TH_2LT,
		TEAM_5TH_1LT,
		TEAM_5TH_CPT,
		TEAM_5TH_MAJ,
		TEAM_5TH_COL,
		TEAM_5TH_VCMD,

		},	
	
		[TEAM_5TH_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_5TH_PVT,
		TEAM_5TH_CPL,
		TEAM_5TH_SGT,
		TEAM_5TH_SSGT,
		TEAM_5TH_FSGT,
		TEAM_5TH_2LT,
		TEAM_5TH_1LT,
		TEAM_5TH_CPT,
		TEAM_5TH_MAJ,
		TEAM_5TH_COL,
		},	
}


GalacticMarinesWhitelist = {
	[TEAM_21ST_MCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_21ST_PVT,
		TEAM_21ST_CPL,
		TEAM_21ST_SGT,
		TEAM_21ST_SSGT,
		TEAM_21ST_FSGT,
		TEAM_21ST_2LT,
		TEAM_21ST_1LT,
		TEAM_21ST_CPT,
		TEAM_21ST_MAJ,
		TEAM_21ST_COL,
		TEAM_21ST_VCMD,
		},	
		
		[TEAM_21ST_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_21ST_PVT,
		TEAM_21ST_CPL,
		TEAM_21ST_SGT,
		TEAM_21ST_SSGT,
		TEAM_21ST_FSGT,
		TEAM_21ST_2LT,
		TEAM_21ST_1LT,
		TEAM_21ST_CPT,
		TEAM_21ST_MAJ,
		TEAM_21ST_COL,
		},
}
GreenCompanyWhitelist = {
	[TEAM_41ST_SCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_41ST_PVT,
		TEAM_41ST_CPL,
		TEAM_41ST_SGT,
		TEAM_41ST_SSGT,
		TEAM_41ST_FSGT,
		TEAM_41ST_2LT,
		TEAM_41ST_1LT,
		TEAM_41ST_CPT,
		TEAM_41ST_MAJ,
		TEAM_41ST_COL,
		TEAM_41ST_VCMD,
		},	
		
		[TEAM_41ST_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_41ST_PVT,
		TEAM_41ST_CPL,
		TEAM_41ST_SGT,
		TEAM_41ST_SSGT,
		TEAM_41ST_FSGT,
		TEAM_41ST_2LT,
		TEAM_41ST_1LT,
		TEAM_41ST_CPT,
		TEAM_41ST_MAJ,
		TEAM_41ST_COL,
		},
}
AufklaerungscorpWhitelist = {
	[TEAM_91ST_MCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_91ST_PVT,
		TEAM_91ST_CPL,
		TEAM_91ST_SGT,
		TEAM_91ST_SSGT,
		TEAM_91ST_FSGT,
		TEAM_91ST_2LT,
		TEAM_91ST_1LT,
		TEAM_91ST_CPT,
		TEAM_91ST_MAJ,
		TEAM_91ST_COL,
		TEAM_91ST_VCMD,
		},	
	
		[TEAM_91ST_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_91ST_PVT,
		TEAM_91ST_CPL,
		TEAM_91ST_SGT,
		TEAM_91ST_SSGT,
		TEAM_91ST_FSGT,
		TEAM_91ST_2LT,
		TEAM_91ST_1LT,
		TEAM_91ST_CPT,
		TEAM_91ST_MAJ,
		TEAM_91ST_COL,
		},
}
WolfsrudelWhitelist = {
	[TEAM_104TH_SCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_104TH_PVT,
		TEAM_104TH_CPL,
		TEAM_104TH_SGT,
		TEAM_104TH_SSGT,
		TEAM_104TH_FSGT,
		TEAM_104TH_2LT,
		TEAM_104TH_1LT,
		TEAM_104TH_CPT,
		TEAM_104TH_MAJ,
		TEAM_104TH_COL,
		TEAM_104TH_VCMD,
		},	
		
		[TEAM_104TH_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_104TH_PVT,
		TEAM_104TH_CPL,
		TEAM_104TH_SGT,
		TEAM_104TH_SSGT,
		TEAM_104TH_FSGT,
		TEAM_104TH_2LT,
		TEAM_104TH_1LT,
		TEAM_104TH_CPT,
		TEAM_104TH_MAJ,
		TEAM_104TH_COL,
		},
}
AngriffsBataillonWhitelist = {
		[TEAM_187TH_CMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_187TH_PVT,
		TEAM_187TH_CPL,
		TEAM_187TH_SGT,
		TEAM_187TH_SSGT,
		TEAM_187TH_FSGT,
		TEAM_187TH_2LT,
		TEAM_187TH_1LT,
		TEAM_187TH_CPT,
		TEAM_187TH_MAJ,
		TEAM_187TH_COL,
		TEAM_187TH_VCMD,
		},	
		
		[TEAM_187TH_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_187TH_PVT,
		TEAM_187TH_CPL,
		TEAM_187TH_SGT,
		TEAM_187TH_SSGT,
		TEAM_187TH_FSGT,
		TEAM_187TH_2LT,
		TEAM_187TH_1LT,
		TEAM_187TH_CPT,
		TEAM_187TH_MAJ,
		TEAM_187TH_COL,
		},
}
AngriffsBataillonCodyWhitelist = {
		[TEAM_212TH_MCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_212TH_PVT,
		TEAM_212TH_CPL,
		TEAM_212TH_SGT,
		TEAM_212TH_SSGT,
		TEAM_212TH_FSGT,
		TEAM_212TH_2LT,
		TEAM_212TH_1LT,
		TEAM_212TH_CPT,
		TEAM_212TH_MAJ,
		TEAM_212TH_COL,
		TEAM_212TH_VCMD,
		},	
	
		[TEAM_212TH_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_212TH_PVT,
		TEAM_212TH_CPL,
		TEAM_212TH_SGT,
		TEAM_212TH_SSGT,
		TEAM_212TH_FSGT,
		TEAM_212TH_2LT,
		TEAM_212TH_1LT,
		TEAM_212TH_CPT,
		TEAM_212TH_MAJ,
		TEAM_212TH_COL,
		},
}
SternencorpWhitelist = {
		[TEAM_327TH_MCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_327TH_PVT,
		TEAM_327TH_CPL,
		TEAM_327TH_SGT,
		TEAM_327TH_SSGT,
		TEAM_327TH_FSGT,
		TEAM_327TH_2LT,
		TEAM_327TH_1LT,
		TEAM_327TH_CPT,
		TEAM_327TH_MAJ,
		TEAM_327TH_COL,
		TEAM_327TH_VCMD,
		},	
		
		[TEAM_327TH_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_327TH_PVT,
		TEAM_327TH_CPL,
		TEAM_327TH_SGT,
		TEAM_327TH_SSGT,
		TEAM_327TH_FSGT,
		TEAM_327TH_2LT,
		TEAM_327TH_1LT,
		TEAM_327TH_CPT,
		TEAM_327TH_MAJ,
		TEAM_327TH_COL,
		},
}
VadersfistWhitelist = {
		[TEAM_501ST_SCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_501ST_PVT,
		TEAM_501ST_CPL,
		TEAM_501ST_SGT,
		TEAM_501ST_SSGT,
		TEAM_501ST_FSGT,
		TEAM_501ST_2LT,
		TEAM_501ST_1LT,
		TEAM_501ST_CPT,
		TEAM_501ST_MAJ,
		TEAM_501ST_COL,
		TEAM_501ST_VCMD,
		},	
		
		[TEAM_501ST_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_501ST_PVT,
		TEAM_501ST_CPL,
		TEAM_501ST_SGT,
		TEAM_501ST_SSGT,
		TEAM_501ST_FSGT,
		TEAM_501ST_2LT,
		TEAM_501ST_1LT,
		TEAM_501ST_CPT,
		TEAM_501ST_MAJ,
		TEAM_501ST_COL,
		},
}
EODWhitelist = {
		[TEAM_EOD_CMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_EOD_PVT,
		TEAM_EOD_CPL,
		TEAM_EOD_SGT,
		TEAM_EOD_SSGT,
		TEAM_EOD_FSGT,
		TEAM_EOD_2LT,
		TEAM_EOD_1LT,
		TEAM_EOD_CPT,
		TEAM_EOD_MAJ,
		TEAM_EOD_COL,
		TEAM_EOD_VCMD,
		},	
		
		[TEAM_EOD_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_EOD_PVT,
		TEAM_EOD_CPL,
		TEAM_EOD_SGT,
		TEAM_EOD_SSGT,
		TEAM_EOD_FSGT,
		TEAM_EOD_2LT,
		TEAM_EOD_1LT,
		TEAM_EOD_CPT,
		TEAM_EOD_MAJ,
		TEAM_EOD_COL,
		},
}
FlotteWhitelist = {
		[TEAM_FLOT_FADM] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_FLOT_FPVT,
		TEAM_FLOT_FCPL,
		TEAM_FLOT_FSGT,
		TEAM_FLOT_FSSGT,
		TEAM_FLOT_FFSGT,
		TEAM_FLOT_F2LT,
		TEAM_FLOT_F1LT,
		TEAM_FLOT_FCPT,
		TEAM_FLOT_FVADM,
		},	
		
		[TEAM_FLOT_FVADM] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_FLOT_FPVT,
		TEAM_FLOT_FCPL,
		TEAM_FLOT_FSGT,
		TEAM_FLOT_FSSGT,
		TEAM_FLOT_FFSGT,
		TEAM_FLOT_F2LT,
		TEAM_FLOT_F1LT,
		TEAM_FLOT_FCPT,
		},
} 
KlonkriegerWhitelist = {
[TEAM_KLONKRIEGER_CMD] = { 
			TEAM_KLONKRIEGER_PVT,
			TEAM_KLONKRIEGER_CPL,
			TEAM_KLONKRIEGER_SGT,
			TEAM_KLONKRIEGER_SSGT,
			TEAM_KLONKRIEGER_FSGT,
			TEAM_KLONKRIEGER_2LT,
			TEAM_KLONKRIEGER_1LT,
			TEAM_KLONKRIEGER_CPT,
			TEAM_KLONKRIEGER_MAJ,
			TEAM_KLONKRIEGER_COL,
			TEAM_KLONKRIEGER_VCMD, 
		},	
	[TEAM_KLONKRIEGER_VCMD] = { 
			TEAM_KLONKRIEGER_PVT,
			TEAM_KLONKRIEGER_CPL,
			TEAM_KLONKRIEGER_SGT,
			TEAM_KLONKRIEGER_SSGT,
			TEAM_KLONKRIEGER_FSGT,
			TEAM_KLONKRIEGER_2LT,
			TEAM_KLONKRIEGER_1LT,
			TEAM_KLONKRIEGER_CPT,
			TEAM_KLONKRIEGER_MAJ,
			TEAM_KLONKRIEGER_COL,
		},	
}
MedicWhitelist = {
		[TEAM_MED_CMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_MED_PVT,
		TEAM_MED_CPL,
		TEAM_MED_SGT,
		TEAM_MED_SSGT,
		TEAM_MED_FSGT,
		TEAM_MED_2LT,
		TEAM_MED_1LT,
		TEAM_MED_CPT,
		TEAM_MED_MAJ,
		TEAM_MED_COL,
		TEAM_MED_VCMD,
		},	
	
		[TEAM_MED_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_MED_PVT,
		TEAM_MED_CPL,
		TEAM_MED_SGT,
		TEAM_MED_SSGT,
		TEAM_MED_FSGT,
		TEAM_MED_2LT,
		TEAM_MED_1LT,
		TEAM_MED_CPT,
		TEAM_MED_MAJ,
		TEAM_MED_COL,
		},
}
PilotenWhitelist = {
		[TEAM_PILOT_CMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_PILOT_PVT,
		TEAM_PILOT_CPL,
		TEAM_PILOT_SGT,
		TEAM_PILOT_SSGT,
		TEAM_PILOT_FSGT,
		TEAM_PILOT_2LT,
		TEAM_PILOT_1LT,
		TEAM_PILOT_CPT,
		TEAM_PILOT_MAJ,
		TEAM_PILOT_COL,
		TEAM_PILOT_VCMD,
		},	
		
		[TEAM_PILOT_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_PILOT_PVT,
		TEAM_PILOT_CPL,
		TEAM_PILOT_SGT,
		TEAM_PILOT_SSGT,
		TEAM_PILOT_FSGT,
		TEAM_PILOT_2LT,
		TEAM_PILOT_1LT,
		TEAM_PILOT_CPT,
		TEAM_PILOT_MAJ,
		TEAM_PILOT_COL,
		},
}
RSFWhitelist = {
		[TEAM_RSF_CMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_RSF_PVT,
		TEAM_RSF_CPL,
		TEAM_RSF_SGT,
		TEAM_RSF_SSGT,
		TEAM_RSF_FSGT,
		TEAM_RSF_2LT,
		TEAM_RSF_1LT,
		TEAM_RSF_CPT,
		TEAM_RSF_MAJ,
		TEAM_RSF_COL,
		TEAM_RSF_VCMD,
		},	
		
		[TEAM_RSF_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_RSF_PVT,
		TEAM_RSF_CPL,
		TEAM_RSF_SGT,
		TEAM_RSF_SSGT,
		TEAM_RSF_FSGT,
		TEAM_RSF_2LT,
		TEAM_RSF_1LT,
		TEAM_RSF_CPT,
		TEAM_RSF_MAJ,
		TEAM_RSF_COL,
		},
}
STSWhitelist = {
		[TEAM_ST_MCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_ST_PVT,
		TEAM_ST_CPL,
		TEAM_ST_SGT,
		TEAM_ST_SSGT,
		TEAM_ST_FSGT,
		TEAM_ST_2LT,
		TEAM_ST_1LT,
		TEAM_ST_CPT,
		TEAM_ST_MAJ,
		TEAM_ST_COL,
		TEAM_ST_VCMD,
		TEAM_ST_MASSIFFUEHRER,
		TEAM_ST_MASSIF,
		},	
		
		[TEAM_ST_VCMD] = { 
		TEAM_KLONKRIEGER_PVT,
		TEAM_ST_PVT,
		TEAM_ST_CPL,
		TEAM_ST_SGT,
		TEAM_ST_SSGT,
		TEAM_ST_FSGT,
		TEAM_ST_2LT,
		TEAM_ST_1LT,
		TEAM_ST_CPT,
		TEAM_ST_MAJ,
		TEAM_ST_COL,
		TEAM_ST_MASSIFFUEHRER,
		TEAM_ST_MASSIF,
		},
}

if CGJobs.flottensicherheit then
table.Merge( config.Permissions, FlottensicherheitWhitelist )
end
if CGJobs.galacticmarines then
table.Merge( config.Permissions, GalacticMarinesWhitelist )
end
if CGJobs.greencompany then
table.Merge( config.Permissions, GreenCompanyWhitelist )
end
if CGJobs.aufklaerungscorp then
table.Merge( config.Permissions, AufklaerungscorpWhitelist )
end
if CGJobs.wolfsrudel then
table.Merge( config.Permissions, WolfsrudelWhitelist )
end
if CGJobs.angriffsbataillon then
table.Merge( config.Permissions, AngriffsBataillonWhitelist )
end
if CGJobs.angriffsbatailloncody then
table.Merge( config.Permissions, AngriffsBataillonCodyWhitelist )
end
if CGJobs.sternencorp then
table.Merge( config.Permissions, SternencorpWhitelist )
end
if CGJobs.vadersfist then
table.Merge( config.Permissions, VadersfistWhitelist )
end
if CGJobs.arcs then
end
if CGJobs.eod then
table.Merge( config.Permissions, EODWhitelist )
end
if CGJobs.events then end
if CGJobs.flotte then
table.Merge( config.Permissions, FlotteWhitelist )
end
if CGJobs.jedi then end
if CGJobs.klonkrieger then
table.Merge( config.Permissions, KlonkriegerWhitelist )
end
if CGJobs.medics then
table.Merge( config.Permissions, MedicWhitelist )
end
if CGJobs.narcs then end
if CGJobs.piloten then
table.Merge( config.Permissions, PilotenWhitelist )
end
if CGJobs.rcs then end
if CGJobs.rsf then
table.Merge( config.Permissions, RSFWhitelist )
end
if CGJobs.sts then
table.Merge( config.Permissions, STSWhitelist )
end 

PrintTable(STSWhitelist)
]]--