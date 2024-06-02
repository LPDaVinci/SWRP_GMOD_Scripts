AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

util.AddNetworkString("TipJar")

function ENT:Initialize()
	
	self.Active = false
	self:SetModel("models/props_lab/jar01a.mdl")
	self:SetMaterial("models/shadertest/shader3")
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType( SIMPLE_USE )

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:EnableMotion(true)

	end
end

function ENT:SpawnFunction( ply, tr )
    if ( !tr.Hit ) then return end
    local ent = ents.Create("spendenglas")
	ent:CPPISetOwner(ply)
    ent:SetPos( tr.HitPos + tr.HitNormal * 16 )
    ent:Spawn()
	ent:GravGunPickupAllowed(ply)
    return ent
end

function ENT:OnTakeDamage(dmg)

end


function ENT:OnRemove()

end

function ENT:Use( activator )
	
	if activator:IsPlayer() then 
		if activator == self:Getowning_ent() then 
		activator:SendLua("GAMEMODE:AddNotify(\"Du kannst dir nichts selber spenden.\", NOTIFY_ERROR, 5)")
		activator:EmitSound("buttons/button10.wav")
		else
		net.Start("TipJar")
		net.WriteEntity(self)
		net.Send(activator)
end
	end

end

net.Receive("TipJar",function(_, ply)
local summe = net.ReadInt(32)
local spendenglas = net.ReadEntity()
local owner = spendenglas:Getowning_ent()
DarkRP.payPlayer(ply, owner, summe)
owner:SendLua("GAMEMODE:AddNotify(\"Der Spieler "..ply:Name().."hat dir "..summe.." € gespendet.\", NOTIFY_GENERIC, 5)")
end)