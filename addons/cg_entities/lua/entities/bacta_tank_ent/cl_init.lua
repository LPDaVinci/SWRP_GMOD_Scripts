include("shared.lua")

surface.CreateFont( "StarJediBoss", {
	font = "Starjedi", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 60,
	weight = 500,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = true,
	symbol = false,
	rotary = false,
	shadow = true,
	additive = false,
	outline = true,
} )
function ENT:Draw()
local health = self:GetNWInt("BactaTankHealth", 0)
local maxhealth = BactaTankDefaultHealth

local healthratio = math.Round(health*10/maxhealth)/10

	self:DrawModel()
	if LocalPlayer():GetPos():Distance( self:GetPos() ) > 600 then return end
	

	

		local pos = self:GetPos() + ( self:GetAngles():Forward() * 41 ) + ( self:GetAngles():Up() * 26 )
		local ang = self:GetAngles() 
		ang:RotateAroundAxis( ang:Forward(), 90 )
		ang:RotateAroundAxis( ang:Right(), -90 )
		
		cam.Start3D2D( pos, ang, 0.1 )
		surface.SetDrawColor( 100, 100 , 100, 200 )
		surface.DrawOutlinedRect( -260, -1, 520, 64 )
		surface.SetDrawColor( 200*(1-healthratio), 200*healthratio , 0, 200 )
		surface.DrawRect( -259, 0, 518*healthratio, 62 )
		if self:GetNWInt("BactaTankHealth", 0) <= 0 then
		draw.DrawText("Destroyed Need repair", "StarJediBoss", 0, 0, Color(255,255,255), TEXT_ALIGN_CENTER )
		else
		
        draw.DrawText("Bacta Tank Health:"..self:GetNWInt("BactaTankHealth", 0), "StarJediBoss", 0, 0, Color(255,255,255), TEXT_ALIGN_CENTER )
		end
       cam.End3D2D()
		
end


