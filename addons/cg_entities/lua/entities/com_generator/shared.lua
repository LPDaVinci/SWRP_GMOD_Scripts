ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Generator: ComLink"
ENT.Category = "CG Entities"
ENT.Author = "LPDaVinci"
ENT.Contact = ""
ENT.Purpose = ""
ENT.Information = ""

ENT.Spawnable			= true
ENT.AdminSpawnable		= true

ENT.ComLinkRepair		= true
ENT.EntHealth = 100 --How much Health the thing have

function ENT:SetupDataTables()
	self:NetworkVar("Float", 0, "EntHealth")
	if SERVER then
		self:NetworkVarNotify("EntHealth", self.OnHealthChanged)
	end
end

function ENT:OnHealthChanged(name, old, new)

local maxHealth = self.EntHealth
local currentHealth = new
local gravity = currentHealth / maxHealth * 1.0

if new <= 0 then
self:SetSkin(1)

else
self:SetSkin(0)
end

		end
