if (SERVER) then
	AddCSLuaFile();
end;

ENT.Type 		= "anim"
ENT.PrintName	= "Gate Lvl3"
ENT.Author		= "LPDaVinci"
ENT.Contact		= ""
ENT.Category = "CG Entities"
ENT.Spawnable			= true
ENT.AdminSpawnable		= true
ENT.RenderGroup 	= RENDERGROUP_BOTH;
ENT.Level = 2

local material = Material("effects/com_shield003a");

local min1 = Vector( 1, -24, 45 ) -- Box1 minimum corner
local max1 = Vector( -1, 24, -62 ) -- Box1 maximum corner





if SERVER then

function ENT:SetupDataTables()
		self:DTVar("Bool", 0, "Enabled");
	end;

	
function ENT:SpawnFunction(player, trace, class)
		if (!trace.Hit) then return end
		local entity = ents.Create(class);
		entity:SetAngles(Angle(0, trace.HitNormal:Angle().y - 90, 0));
		entity:SetPos(trace.HitPos + Vector(0,0,90));
		entity:Spawn()
		entity:DropToFloor()
		return entity
	end;
	
	
		function ENT:Initialize()
		self:SetModel("models/props_wasteland/interior_fence002e.mdl")

	
	self:SetColor( Color( 255,129,0, 255 ) )
	self:SetMaterial( "models/debug/debugwhite" )
		self:DrawShadow(false);
		self:SetDTBool(0, true);

		self:PhysicsInitMultiConvex( {
			{ -- Each sub-table is a set of vertices of a convex piece, order doesn't matter
				Vector( min1.x, min1.y, min1.z ), -- The first box vertices
				Vector( min1.x, min1.y, max1.z ),
				Vector( min1.x, max1.y, min1.z ),
				Vector( min1.x, max1.y, max1.z ),
				Vector( max1.x, min1.y, min1.z ),
				Vector( max1.x, min1.y, max1.z ),
				Vector( max1.x, max1.y, min1.z ),
				Vector( max1.x, max1.y, max1.z ),
			},		
		} )	


		self:SetSolid(SOLID_VPHYSICS);
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:EnableCustomCollisions(true)
		self:PhysWake()
		
		self:SetCustomCollisionCheck( true )
		self:CollisionRulesChanged()
	end;

	--FUNCTION MAKES BEEP SOUND WHEN HAVE THE RIGHT CARD IN INVENTORY

end



if CLIENT then

function ENT:Draw()
		self:DrawModel()

		local pos, ang = self:GetPos(), self:GetAngles()
		render.SetMaterial( material )
		--render.DrawWireframeBox( pos, ang, min1, max1,  Color( 0, 0, 255, 255 ) ) -- Drawing the first collision box (wireframe test box)
		render.DrawBox( pos, ang, min1, max1, Color(255,0,0), true)
		
		
		
		if LocalPlayer():GetPos():Distance( self:GetPos() ) > 600 then return end
	
		local pos2 = self:GetPos() + ( self:GetAngles():Forward() * -1 ) + ( self:GetAngles():Up() * 56 )
		local ang2 = self:GetAngles() 
		ang2:RotateAroundAxis( ang2:Forward(), 90 )
		ang2:RotateAroundAxis( ang2:Right(), 90 )
        cam.Start3D2D( pos2, ang2, 0.1 )
                draw.DrawText("Sicherheitslevel 3", "StarJediBoss", 0, 0, Color(255,129,0), TEXT_ALIGN_CENTER )
        cam.End3D2D()

		local pos3 = self:GetPos() + ( self:GetAngles():Forward() * 1 ) + ( self:GetAngles():Up() * 56 )
		local ang3 = self:GetAngles() 
		ang3:RotateAroundAxis( ang3:Forward(), 90 )
		ang3:RotateAroundAxis( ang3:Right(), -90 )
		
		cam.Start3D2D( pos3, ang3, 0.1 )
                draw.DrawText("Sicherheitslevel 3", "StarJediBoss", 0, 0, Color(255,129,0), TEXT_ALIGN_CENTER )
        cam.End3D2D()

		
	end

end



