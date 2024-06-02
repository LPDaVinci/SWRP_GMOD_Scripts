AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include('shared.lua')




function ENT:Initialize()

	self.Active = false
	self:SetModel("models/hunter/plates/plate025x025.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType( SIMPLE_USE )
	self:SetCollisionGroup(COLLISION_GROUP_WORLD)
	self:DrawShadow( false )

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:EnableMotion(false)
	end
end

function ENT:SpawnFunction( ply, tr )
    if ( !tr.Hit ) then return end
    local ent = ents.Create("swrp_presspad")
    ent:SetPos( tr.HitPos + tr.HitNormal * 16 )
    ent:Spawn()

    return ent
end


function ENT:Use( activator, caller )

for i, entity in ipairs( ents.FindByClass( "func_button" ) ) do 
local distance = self:GetPos():Distance( entity:GetPos() );
	if( distance <= 50 ) then
	entity:Use(activator, caller ,USE_ON,0)
	end
end

if entswithtbl[self] then
			if entswithtbl[self][#entswithtbl[self]] != activator then 
				entswithtbl[self][#entswithtbl[self] + 1] = activator
			end
		else
			entswithtbl[self] = {activator}
		end
    updateusetable(self)
end
	

function updateusetable(ent)
	net.Start("entityupdate")
    	net.WriteEntity(ent)
    	net.WriteTable(entswithtbl[ent])
    net.Broadcast()
end






