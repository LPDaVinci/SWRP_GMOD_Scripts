hook.Add("PlayerSpawn", "fixinggravity", function(ply)
local ent = nil
for index, en in pairs(ents.FindByClass("grav_generator")) do
ent = en
break
end
if !IsValid(ent) then return end

local maxHealth = ent.EntHealth
local currentHealth = ent:GetEntHealth()
local gravity = currentHealth / maxHealth * 1.0

if ( gravity < 0.1 ) then
		gravity = 0.1
	end

ply:SetGravity(gravity)

end)

