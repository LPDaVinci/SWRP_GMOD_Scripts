AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )

include( "shared.lua" )

surface.CreateFont( "PressPad_Font_1", {
	font = "Arial",
	extended = false,
	size = 55,
	weight = 1000,
} )


surface.CreateFont( "PressPad_Font_2", {
	font = "Arial",
	extended = false,
	size = 45,
	weight = 1000,
} )

net.Receive("entityupdate", function()
	local ent = net.ReadEntity()
	local tbl = net.ReadTable()

	entstable[ent] = tbl

end)
entstable = {}

local function isempty(tbl)
	if ( table.Count(tbl) <= 0 ) then
		return true
	else
		return false
	end
end

net.Receive("wipeenttable", function() -- Ha Ha Ha, go on cheaters
	entstable = {}
end)

function ENT:Draw()
local ply = LocalPlayer()
	--self:DrawModel()
	if entstable == {} then return end
	if ( self:GetPos():Distance(ply:GetPos()) < 1200 ) then
		local ang = self:GetAngles()
		local pos = self:GetPos() - ( self:GetUp() * 1.7 )  --orig is *1.7  wall 0.1

		ang:RotateAroundAxis( self:GetAngles():Up(), 180 )
		ang:RotateAroundAxis( self:GetAngles():Right(), 180 )
		
		cam.Start3D2D(pos, ang, 0.03)
			draw.RoundedBox(4,-200,-400,400,800,Color(255,165,0,255))
			draw.RoundedBox(4,-200+4,-400+4,400-8,800-8,Color(40,40,40,255))

			surface.SetDrawColor(255,165,0,255)
			surface.DrawRect(-200,-400,400,75)

			draw.SimpleText("Benutzt von:","PressPad_Font_1",0,-390,Color(255,255,255), TEXT_ALIGN_CENTER)
		cam.End3D2D()
	
	for self, tbl in pairs(entstable) do
		if !IsValid(self) then continue end
		local Data = tbl

		local ang = self:GetAngles()
		local pos = self:GetPos() - ( self:GetUp() *  1.7 )

		ang:RotateAroundAxis( self:GetAngles():Up(), 180 )
		ang:RotateAroundAxis( self:GetAngles():Right(), 180 )

		cam.Start3D2D(pos, ang, 0.03)
			draw.RoundedBox(4,-200,-400,400,800,Color(255,165,0,255))
			draw.RoundedBox(4,-200+4,-400+4,400-8,800-8,Color(40,40,40,255))

			surface.SetDrawColor(255,165,0,255)
			surface.DrawRect(-200,-400,400,75)

			draw.SimpleText("Benutzt von:","PressPad_Font_1",0,-390,Color(255,255,255), TEXT_ALIGN_CENTER)

			 local y = -280

              if (Data) and !isempty(Data) then
				--PrintTable(tbl)--CHECK FUNCTIOn
                  for k = 0, 4 do
                      local v1 = tbl[#tbl - k]
                      if IsValid(v1) then
                      	  draw.SimpleText(v1:Nick(),"PressPad_Font_2",0,y + (50 *k),Color(255,0,0,255), TEXT_ALIGN_CENTER)
                      end
                  end
              end
		cam.End3D2D()
	end
	end
end

