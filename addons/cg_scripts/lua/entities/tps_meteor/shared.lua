ENT.Base 			= "base_ai"
ENT.Type 			= "ai"
ENT.PrintName		= "Meteor Station"
ENT.Author			= "LPDaVinci"
ENT.Information		= "Teleports you to the Meteor Station"
ENT.Category		= "CG Teleport"
ENT.Spawnable		= true
ENT.AdminSpawnable	= false


function ENT:Draw()

	self:DrawModel()

for k, v in pairs(ents.FindByClass("tps_meteor" )) do 

	if LocalPlayer():GetPos():Distance( v:GetPos() ) > 300 then continue end
	
	
	local name = self.PrintName
	local description = self.Information
	 local direction = v:GetPos() - LocalPlayer():GetPos()
local x_d = direction.x
local y_d = direction.y
local Ang = Angle(0, math.deg(math.atan(y_d/x_d))+90/(x_d/-math.abs(x_d)), 90)

        cam.Start3D2D( v:GetPos() + Vector( 0, 0, 85 ),Ang, 0.1 )
                draw.DrawText(name, "LargeText", 0, 700, Color(255,0,0,255), TEXT_ALIGN_CENTER )
				draw.DrawText(description, "SmallText", 0, 760, Color(255,255,255,255), TEXT_ALIGN_CENTER )
        cam.End3D2D()
		
		end
end 

