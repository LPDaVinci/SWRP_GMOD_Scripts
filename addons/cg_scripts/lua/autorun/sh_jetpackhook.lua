local plymeta = FindMetaTable("Player")

hook.Add( "PostGamemodeLoaded", "JetPackJobsGlobal", function()

JetpackJobs = {
TEAM_NULLARC_KALSKIRATA,
TEAM_NULLARC_ORDO,
TEAM_NULLARC_PRUDII,
TEAM_NULLARC_KOMRK,
TEAM_NULLARC_MEREEL,
TEAM_NULLARC_JAING,
TEAM_NULLARC_ADEN,
TEAM_AARC_ALPHA17,
TEAM_AARC_ALPHA26,
TEAM_AARC_ALPHA30,
TEAM_AARC_ALPHA66,
TEAM_AARC_ALPHA77,
TEAM_AARC_ALPHA98,
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
TEAM_104TH_SCMD,
TEAM_EVENT_JANGO,
TEAM_212TH_2nd_SGT,
TEAM_212TH_2nd_TRP,
}
		
end )


function plymeta:GiveJetPack()
local ent = scripted_ents.GetStored( "sneakyjetpack" )
 ent.t:SpawnFunction( self, self:GetEyeTrace() )
end


function GiveJetpackHook( ply, text, public )
if ( string.lower( text ) == "!jetpack" ) then
		if table.HasValue( JetpackJobs, ply:Team() ) then
			ply:GiveJetPack()
		end
		return ""
	end
	
end
hook.Add( "PlayerSay", "GiveJetpackSayHook", GiveJetpackHook )

