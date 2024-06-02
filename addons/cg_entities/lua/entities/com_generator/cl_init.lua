include('shared.lua')

surface.CreateFont( "StarJediBossGrav", {
	font = "Starjedi", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 46,
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
local health = self:GetEntHealth()
local maxhealth = self.EntHealth

local healthratio = math.Round(health*10/maxhealth)/10

	self:DrawModel()
	if LocalPlayer():GetPos():Distance( self:GetPos() ) > 600 then return end
	

	

		local pos = self:GetPos() +  ( self:GetAngles():Up() * 55 ) +  ( self:GetAngles():Right() * -1 ) + ( self:GetAngles():Forward() * 116 )
		local ang = self:GetAngles() 
		ang:RotateAroundAxis( ang:Forward(), 90 )
		ang:RotateAroundAxis( ang:Up(), 28 )
		ang:RotateAroundAxis( ang:Right(), -90 )
		
		cam.Start3D2D( pos, ang, 0.1 )
		surface.SetDrawColor( 100, 100 , 100, 200 )
		surface.DrawOutlinedRect( -260, -1, 520, 124 )
		surface.SetDrawColor( 200*(1-healthratio), 200*healthratio , 0, 200 )
		surface.DrawRect( -259, 0, 518*healthratio, 122 )

		
		if health <= 0 then
		draw.DrawText("Destroyed Need repair", "StarJediBossGrav", 0, 35, Color(255,255,255), TEXT_ALIGN_CENTER )
		else
		
        draw.DrawText("ComLink Generator Health:"..self:GetEntHealth(), "StarJediBossGrav", 0, 35, Color(255,255,255), TEXT_ALIGN_CENTER )
		end
		
		
        

       cam.End3D2D()
		
end