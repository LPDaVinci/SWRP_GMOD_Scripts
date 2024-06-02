if game.GetMap() == "rp_jedivssith_wos" then


AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )

include( "shared.lua" )


sound.Add( {
	name = "initteleport",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = { 95, 110 },
	sound = "vo/k_lab/kl_initializing02.wav"
} )


function ENT:Initialize()
	
	self.Active = false
	self:SetModel("models/starwars/syphadias/props/sw_tor/bioware_ea/planets/tatooine/tatooine.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType( SIMPLE_USE )


	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:EnableMotion(false)
	end
end

function ENT:SpawnFunction( ply, tr )
    if ( !tr.Hit ) then return end
    local ent = ents.Create("tps_tatooine")
    ent:SetPos( tr.HitPos + tr.HitNormal * 16 )
    ent:Spawn()

    return ent
end

function ENT:Think()
for k, v in pairs(player.GetAll()) do


   if v:GetVelocity():Length() > 0 and ( timer.Exists( "Teleport".. v:SteamID() )) then
timer.Remove("Teleport".. v:SteamID())
v:StopSound( "initteleport" )
v:PrintMessage( HUD_PRINTTALK, "Teleport abgebrochen. Du sollst dich nicht bewegen!" ) 
end


end
		
end


function ENT:AcceptInput( name, activator, ply )	
for k, v in pairs(player.GetAll()) do
 if not ply:GetUserGroup() == "superadmin" or !ply:GetUserGroup() == "admin"  then 
 ply:PrintMessage( HUD_PRINTTALK, "Du hast nicht die Rechte das Teleportsystem zu nutzen!" ) 
 return 
 false end
	if not (name == "Use" and ply:IsPlayer()) then return end
if ( timer.Exists( "Teleport".. ply:SteamID() ) ) then return false end




	ply:EmitSound("initteleport", 100)
	
	ply:PrintMessage( HUD_PRINTTALK, "Teleport startet in 3 Sekunden, bitte bewege dich nicht!" ) 
	timer.Create( "Teleport".. ply:SteamID(), 5, 1, function() 

	ply:SetPos(( Vector( 6212.609375, -8959.704102, -3419.247070 ) ))
	ply:SetAngles(( Angle (10.296137, -1.593778, 0.000000) ))
	

	

	
	local vPoint = ply:GetPos()
									local effectdata = EffectData()
									effectdata:SetStart( vPoint )
									effectdata:SetOrigin( vPoint )
									effectdata:SetEntity( ply )
									effectdata:SetScale( 0.3 )
									util.Effect( "ats_teleport_out", effectdata )	
	
	ply:EmitSound("ambient/machines/teleport" .. math.random( 3, 4 ) ..".wav", 100)

	ply:PrintMessage( HUD_PRINTTALK, "Teleport nach Tatooine war erfolgreich!" ) 
	
	end )
	
end
end
end
