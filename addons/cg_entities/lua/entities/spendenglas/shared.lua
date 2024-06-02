ENT.Type = "anim"

ENT.Category = "CG Entities"
ENT.PrintName = "Spendenglas"
ENT.Spawnable = true

function ENT:SetupDataTables()
	self:NetworkVar("Entity",0,"owning_ent")
end

