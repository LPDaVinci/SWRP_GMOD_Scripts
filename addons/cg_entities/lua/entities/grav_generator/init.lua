AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include( "shared.lua" )




function ENT:SpawnFunction( ply, tr, class )
	if ( !tr.Hit ) then return end
	local pos = tr.HitPos + tr.HitNormal * 4
	local ent = ents.Create( class )
	ent:SetPos( pos )
	ent:Spawn()
	ent:Activate()
	return ent
end

function ENT:Initialize()
	
	self:SetModel( "models/hawksstarwarsplacements/grav_gen.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetEntHealth( self.EntHealth )
	self:SetSkin(0)
	local phys = self.Entity:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
	end
end
function ENT:UpdateTransmitState()

	return TRANSMIT_ALWAYS 

end

function ENT:OnTakeDamage(dmg)

local health = self:GetEntHealth()
		
	if health <= 0 then	return end
	
		if dmg:GetDamage() >= 1 then
			if health - dmg:GetDamage() <= 0 then 
				health = 0
				self:SetEntHealth(health)
			else
	
			self:SetEntHealth( health - math.Round(dmg:GetDamage()))
			end
		end
end

 function ENT:OnRemove()
 
 self:SetEntHealth(self.EntHealth)
 end
function ENT:Use( activator )

--self:SetEntHealth( math.Clamp(self:GetEntHealth()+20,0,self.EntHealth ) )
end