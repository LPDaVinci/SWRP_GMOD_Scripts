// Fortifications Builder Tablet by Alydus
// If you'd like to modify this, go ahead, but please leave credit, thank you!

AddCSLuaFile()

if CLIENT then
	SWEP.PrintName = "Fortifications Tablet"
	SWEP.Slot = 1
	SWEP.SlotPos = 1
	SWEP.DrawAmmo = false
	SWEP.DrawCrosshair = false

	surface.CreateFont("Alydus.FortificationsTablet.Title", {font = "Roboto Condensed", size = 70})
	surface.CreateFont("Alydus.FortificationsTablet.Subtitle", {font = "Roboto Condensed", size = 55})

	if GAMEMODE.IsSandboxDerived then
		language.Add("SBoxLimit_fortifications", "You've hit the Fortification limit!")
	end

	language.Add("Undone_Fortification", "Undone Fortification")

	language.Add("Cleanup_fortifications", "Fortifications")
	language.Add("Cleaned_fortifications", "Cleaned up all fortifications")
elseif SERVER then
	CreateConVar("sbox_maxfortifications", 10)
end

cleanup.Register("fortifications")

SWEP.Author = "Alydus&LPDaVinci"
SWEP.Instructions = "A utility weapon that allows the user to build fortifications."
SWEP.Contact = ""
SWEP.Purpose = ""
SWEP.WorldModel = ""
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Category = "CG Weapons"

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP.Primary.Delay = 3.5

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Delay = 3.5

SWEP.HoldType = "slam"
SWEP.ViewModelFOV = 65
SWEP.ViewModelFlip = false
SWEP.UseHands = false
SWEP.ViewModel = "models/weapons/v_grenade.mdl"
SWEP.WorldModel = ""
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true
SWEP.ViewModelBoneMods = {
	["ValveBiped.Grenade_body"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.IronSightsPos = Vector(12.72, 0, 0.36)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.Fortifications = {
	{name = "Sandbags Corner 1", model = "models/props_fortifications/sandbags_corner1.mdl"},
	{name = "Sandbags Corner 1 Tall", model = "models/props_fortifications/sandbags_corner1_tall.mdl"},
	{name = "Sandbags Corner 2", model = "models/props_fortifications/sandbags_corner2.mdl"},
	{name = "Sandbags Corner 2 Tall", model = "models/props_fortifications/sandbags_corner2_tall.mdl"},
	{name = "Sandbags Corner 3", model = "models/props_fortifications/sandbags_corner3.mdl"},
	{name = "Sandbags Line 1", model = "models/props_fortifications/sandbags_line1.mdl"},
	{name = "Sandbags Line 1 Tall", model = "models/props_fortifications/sandbags_line1_tall.mdl"},
	{name = "Sandbags Line 2", model = "models/props_fortifications/sandbags_line2.mdl"},
	{name = "Sandbags Line 2 Tall", model = "models/props_fortifications/sandbags_line2_tall.mdl"},
	{name = "Sandbags Line 3", model = "models/props_fortifications/sandbags_line2b.mdl"},
	{name = "Concrete Wall", model = "models/props_fortifications/concrete_wall001_96_reference.mdl"},
	{name = "Concrete Barrier 1", model = "models/props_c17/concrete_barrier001a.mdl"},
	{name = "Concrete Barrier 2 Small", model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"},
	{name = "Concrete Barrier 2 Large", model = "models/props_fortifications/concrete_barrier001_128_reference.mdl"},
	{name = "Concrete Barrier 3", model = "models/jbarnes/props/concrete barricade.mdl"},
	{name = "Small Fence", model = "models/props_c17/fence01b.mdl"},
	{name = "Medium Fence", model = "models/props_c17/fence01a.mdl"},
	{name = "Large Fence", model = "models/props_c17/fence03a.mdl"},
	{name = "Small Anti-Climb Fence", model = "models/props_wasteland/exterior_fence002b.mdl",},
	{name = "Medium Anti-Climb Fence", model = "models/props_wasteland/exterior_fence002c.mdl"},
	{name = "Large Anti-Climb Fence", model = "models/props_wasteland/exterior_fence002d.mdl"},
	{name = "Police Barricade Single", model = "models/props_street/police_barricade.mdl"},
	{name = "Police Barricade Triple", model = "models/props_street/police_barricade2.mdl"},
	{name = "Hesco Small", model = "models/static_afghan/prop_fortification_hesco_small.mdl"},
	{name = "Hesco Tall", model = "models/iraq/ir_hesco_basket_01.mdl"},
	{name = "Hesco Tall Leaning", model = "models/iraq/ir_hesco_basket_01b.mdl"}
}

hook.Add("Alydus.FortificationBuilderTablet.AddFortification", "Alydus_FortificationBuilderTablet_AddFortificationHook", function(fortification)
	if fortification["name"] and fortification["model"] then
		table.insert(SWEP.Fortifications, fortification)
	else
		print("Invalid fortification data, failed to add fortification. Please include name, and model.")
	end
end)

SWEP.FortificationsModelList = {}

print("Caching fortifications models for builder tablet...")

for _, fortification in pairs(SWEP.Fortifications) do
	util.PrecacheModel(fortification["model"])
	table.insert(SWEP.FortificationsModelList, fortification["model"])
end

print("Fortifications models successfully cached.")

SWEP.VElements = {
	["tablet"] = { type = "Model", model = "models/nirrti/tablet/tablet_sfm.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.714, 5.714, -3.636), angle = Angle(15.194, 118.052, -127.403), size = Vector(0.95, 0.95, 0.95), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} }
}

SWEP.WElements = {
	["tablet"] = { type = "Model", model = "models/nirrti/tablet/tablet_sfm.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.513, 5.714, -2.597), angle = Angle(26.882, 113.376, -127.403), size = Vector(0.82, 0.82, 0.82), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["light"] = { type = "Sprite", sprite = "sprites/blueglow1", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.675, 1, -2.398), size = { x = 1.729, y = 1.729 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}

function SWEP:PrimaryAttack()
	if SERVER then
		local ply = self:GetOwner()
		if IsValid(ply) and ply:Alive() and IsValid(ply.fortificationHologram) and self.fortificationSelection != nil and not ply:Crouching() 
		-- and ply:GetVelocity():Length() < 25 --allow to change baricade type while moving
		
		then
			if ply:GetEyeTrace().HitPos:Distance(ply:GetPos()) >= 250 then
				ply:SendLua("surface.PlaySound(\"common/warning.wav\")")
				return
			end
			if self.Fortifications[self.fortificationSelection + 1] then
				self.fortificationSelection = self.fortificationSelection + 1
			else
				self.fortificationSelection = 1
			end
			ply.fortificationHologram:EmitSound("physics/concrete/rock_impact_hard1.wav")
		end
	end
end



function SWEP:SecondaryAttack()
	if SERVER then
		local ply = self:GetOwner()
		if IsValid(ply) and ply:Alive() and IsValid(ply.fortificationHologram) and self.fortificationSelection != nil and not ply:Crouching() 
		--and ply:GetVelocity():Length() < 25  --allow to change baricade type while moving
		
		then
			if ply:GetEyeTrace().HitPos:Distance(ply:GetPos()) >= 250 then
				ply:SendLua("surface.PlaySound(\"common/warning.wav\")")
				return
			end
			if self.Fortifications[self.fortificationSelection - 1] then
				self.fortificationSelection = self.fortificationSelection - 1
			else
				self.fortificationSelection = table.Count(self.Fortifications)
			end
			ply.fortificationHologram:EmitSound("physics/concrete/rock_impact_hard3.wav")
		end
	end
end

function SWEP:Reload()
	if SERVER then
		local ply = self:GetOwner()
		if not self.Owner:KeyPressed(IN_RELOAD) then 
			return
		end
		if IsValid(ply) and ply:Alive() and IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "alydus_fortificationbuildertablet" and ply:GetActiveWeapon().fortificationSelection then
			if ply:GetEyeTrace().Entity.isPlayerPlacedFortification == ply then
				ply:GetEyeTrace().Entity:EmitSound("physics/concrete/rock_impact_hard" .. math.random(1, 6) .. ".wav")
				ply:GetEyeTrace().Entity:Remove()
			end
		end
		return
	end
end

if CLIENT then
	local Timer = 0

	surface.CreateFont("FORTIFICATION_Font_1", {
		font = "Arial",
		extended = false,
		size = 24,
		weight = 1000,
	})

	net.Receive("FORTIFICATION_SetTimer", function()
		local time = net.ReadFloat()
		local ply = net.ReadEntity()
		ply.Timer = time
	end)
	
	
	
	
		hook.Add("PostDrawOpaqueRenderables", "FORTIFICATION_DrawBar", function()
		local ply = LocalPlayer()
		local CurTime = CurTime()

		for k, v in pairs(player.GetAll()) do
			if ( ply:GetPos():Distance(v:GetPos()) < 1100 and v.Timer and v.Timer > CurTime and v:GetNWBool("IsBuilding") ) then
				local pos = v:GetPos()
				local PlayersAngle = ply:GetAngles()
				local ang = Angle( 0, PlayersAngle.y - 180 , 0 )

				ang:RotateAroundAxis(ang:Right(), -90)
				ang:RotateAroundAxis(ang:Up(), 90)

				local v1 = 200/2
				local v2 = (v.Timer - CurTime)*v1
				local v3 = v2

				cam.Start3D2D(pos, ang, 0.2)
					surface.SetDrawColor(Color(30,30,30,255))
					surface.DrawRect(-100,-420,200,25)

					surface.SetDrawColor(Color(33,255,0,255))
					surface.DrawRect(-100,-420,200-v3,25)

					draw.SimpleTextOutlined("Platziere Barrikade...", "FORTIFICATION_Font_1", 0, -450, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, Color(0,0,0,255))
				cam.End3D2D()
			end
		end
	end)

	language.Add("#Undone_Fortification", "Undone Fortification")

	local wrenchMat = Material("alydus/icons/wrench.png")
	local nextMat = Material("alydus/icons/next.png")
	local lastMat = Material("alydus/icons/last.png")
	local shieldMat = Material("alydus/icons/shield.png")
	local refreshMat = Material("alydus/icons/refresh.png")
	
	local toolsMat = Material("alydus/icons/tools.png")
	
	local useBind = input.LookupBinding("+use") or "E"
	local reloadBind = input.LookupBinding("+reload") or "R"

	function SWEP:PostDrawViewModel(vm, wep, ply)
		if IsValid(vm) then
			local atch = vm:GetBoneMatrix(vm:LookupBone("ValveBiped.Bip01_R_Hand"))
			local pos, ang = vm:GetBonePosition(vm:LookupBone("ValveBiped.Bip01_R_Hand")), vm:GetBoneMatrix(vm:LookupBone("ValveBiped.Bip01_R_Hand")):GetAngles()
			ang:RotateAroundAxis(ang:Right(), 90)
			
			cam.Start3D2D(pos - ang:Right() * 3 - ang:Forward() * 8.25 + ang:Right() * 7.4, Angle(0, ply:EyeAngles().y, ang.z) + Angle(180, 90, 160), 0.01)
				surface.SetDrawColor(255, 255, 255, 255)
				if self:GetNWBool("tabletBootup", false) == false then
					draw.SimpleText("Fortification Builder", "Alydus.FortificationsTablet.Title", 15, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

					surface.SetMaterial(nextMat)
					surface.DrawTexturedRect(230, 42, 40, 40)
					surface.SetMaterial(lastMat)
					surface.DrawTexturedRect(-235, 38, 40, 40)

					draw.SimpleText("LMB: Last | RMB: Next", "Alydus.FortificationsTablet.Subtitle", 15, 60, Color(150, 150, 150, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

					surface.SetMaterial(wrenchMat)
					surface.DrawTexturedRect(-215, 98, 40, 40)

					draw.SimpleText("    [" .. string.upper(useBind) .. "]: Build | [" .. string.upper(reloadBind) .. "]: Remove", "Alydus.FortificationsTablet.Subtitle", 15, 120, Color(150, 150, 150, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

					if alydusDestructableFortificationExtension then
						surface.SetMaterial(toolsMat)
						surface.DrawTexturedRect(-260, 158, 40, 40)

						draw.SimpleText("      [G]: Repair | [X]: Stop Building", "Alydus.FortificationsTablet.Subtitle", 15, 180, Color(150, 150, 150, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

						surface.SetMaterial(shieldMat)
						surface.DrawTexturedRect(-237, 222, 40, 40)

						draw.SimpleText("      " .. table.Count(self.Fortifications) .. " Fortifications Available", "Alydus.FortificationsTablet.Subtitle", 15, 240, Color(100, 100, 100, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					else
						surface.SetMaterial(shieldMat)
						surface.DrawTexturedRect(-237, 158, 40, 40)

						draw.SimpleText("      " .. table.Count(self.Fortifications) .. " Fortifications Available", "Alydus.FortificationsTablet.Subtitle", 15, 180, Color(100, 100, 100, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					end
				else
					draw.SimpleText("Fortification Builder", "Alydus.FortificationsTablet.Title", 15, 30, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

					surface.SetMaterial(refreshMat)
					surface.DrawTexturedRect(-130, 70, 40, 40)

					draw.SimpleText("    Booting up...", "Alydus.FortificationsTablet.Subtitle", 15, 90, Color(150, 150, 150, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
				end
			cam.End3D2D()
		end
	end
end

	hook.Add("PostDrawTranslucentRenderables","Alydus_PostDrawOpaqueRenderables_EntityDisplays", function()
		local ply = LocalPlayer()

		-- Selected Fortification Display
		if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "alydus_fortificationbuildertablet" and ply:Alive() and not ply:Crouching() 
		--and ply:GetVelocity():Length() < 25 
		then
			for _, v in pairs(ents.GetAll()) do
				if IsValid(v) and v:GetPos():Distance(LocalPlayer():GetPos()) <= 250 then
					if v:GetClass() == "prop_physics" and v:GetNWString("alydusFortificationHologramName", false) != false and not (ply:GetEyeTrace().Entity and (ply:GetEyeTrace().Entity:GetClass() == "prop_physics" or ply:GetEyeTrace().Entity:GetClass() == "alydus_destructablefortification")) then
						local offset = Vector(0, 0, 50)
						local ang = LocalPlayer():EyeAngles()
						local pos = v:GetPos() + offset + ang:Up()

						ang:RotateAroundAxis(ang:Forward(), 90)
						ang:RotateAroundAxis(ang:Right(), 90)

						local fade = math.abs(math.sin(CurTime() * 3))

						cam.Start3D2D(pos, Angle(0, ang.y, 90), 0.10)
							draw.DrawText("Fortification Selection", "Alydus.FortificationsTablet.Title", 0, 0, Color(255, 255, 255), TEXT_ALIGN_CENTER)
							draw.DrawText(v:GetNWString("alydusFortificationHologramName", "Unknown Fortification"), "Alydus.FortificationsTablet.Subtitle", 0, 60, Color(150, 150, 150), TEXT_ALIGN_CENTER)
						cam.End3D2D()
					elseif v:GetClass() == "alydus_destructablefortification" and v:GetNWInt("fortificationHealth", false) != false then
						local offset = Vector(0, 0, 65)
						local ang = LocalPlayer():EyeAngles()
						local pos = v:GetPos() + offset + ang:Up()

						ang:RotateAroundAxis(ang:Forward(), 90)
						ang:RotateAroundAxis(ang:Right(), 90)

						local fade = math.abs(math.sin(CurTime() * 3))

						cam.Start3D2D(pos, Angle(0, ang.y, 90), 0.10)
							draw.DrawText("Destructable Fortification", "Alydus.FortificationsTablet.Title", 0, 0, Color(255, 255, 255), TEXT_ALIGN_CENTER)
							draw.DrawText(math.Round(v:GetNWInt("fortificationHealth", 0)) .. " health remaining", "Alydus.FortificationsTablet.Subtitle", 0, 60, Color(150, 150, 150), TEXT_ALIGN_CENTER)
						cam.End3D2D()
					end
				end
			end
		end
	end)


function SWEP:GetViewModelPosition( pos, ang )
	self.SwayScale = 0;
	self.BobScale = 0.1;

	return pos, ang;
end

function SWEP:Initialize()
	self:SetHoldType("slam")
	if CLIENT then
		self.VElements = table.FullCopy( self.VElements )
		self.WElements = table.FullCopy( self.WElements )
		self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )

		self:CreateModels(self.VElements)
		self:CreateModels(self.WElements)
		
		if IsValid(self.Owner) then
			local vm = self.Owner:GetViewModel()
			if IsValid(vm) then
				self:ResetBonePositions(vm)
				
				if (self.ShowViewModel == nil or self.ShowViewModel) then
					vm:SetColor(Color(255,255,255,255))
				else
					vm:SetColor(Color(255,255,255,1))
					vm:SetMaterial("Debug/hsv")			
				end
			end
		end
		
	end

end

function SWEP:Holster()
	
	if CLIENT and IsValid(self.Owner) then
		local vm = self.Owner:GetViewModel()
		if IsValid(vm) then
			self:ResetBonePositions(vm)
		end
	end
	
	return true
end

function SWEP:OnRemove()
	self:Holster()
end

if CLIENT then

	SWEP.vRenderOrder = nil
	function SWEP:ViewModelDrawn()
		
		local vm = self.Owner:GetViewModel()
		if !IsValid(vm) then return end
		
		if (!self.VElements) then return end
		
		self:UpdateBonePositions(vm)

		if (!self.vRenderOrder) then
			
			// we build a render order because sprites need to be drawn after models
			self.vRenderOrder = {}

			for k, v in pairs( self.VElements ) do
				if (v.type == "Model") then
					table.insert(self.vRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.vRenderOrder, k)
				end
			end
			
		end

		for k, name in ipairs( self.vRenderOrder ) do
		
			local v = self.VElements[name]
			if (!v) then self.vRenderOrder = nil break end
			if (v.hide) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (!v.bone) then continue end
			
			local pos, ang = self:GetBoneOrientation( self.VElements, v, vm )
			
			if (!pos) then continue end
			
			if (v.type == "Model" and IsValid(model)) then

				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				model:SetAngles(ang)
				//model:SetModelScale(v.size)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
				
			elseif (v.type == "Sprite" and sprite) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
				
			elseif (v.type == "Quad" and v.draw_func) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()

			end
			
		end
		
	end

	SWEP.wRenderOrder = nil
	function SWEP:DrawWorldModel()
		
		if (self.ShowWorldModel == nil or self.ShowWorldModel) then
			self:DrawModel()
		end
		
		if (!self.WElements) then return end
		
		if (!self.wRenderOrder) then

			self.wRenderOrder = {}

			for k, v in pairs( self.WElements ) do
				if (v.type == "Model") then
					table.insert(self.wRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.wRenderOrder, k)
				end
			end

		end
		
		if (IsValid(self.Owner)) then
			bone_ent = self.Owner
		else
			// when the weapon is dropped
			bone_ent = self
		end
		
		for k, name in pairs( self.wRenderOrder ) do
		
			local v = self.WElements[name]
			if (!v) then self.wRenderOrder = nil break end
			if (v.hide) then continue end
			
			local pos, ang
			
			if (v.bone) then
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )
			else
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
			end
			
			if (!pos) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (v.type == "Model" and IsValid(model)) then

				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				model:SetAngles(ang)
				//model:SetModelScale(v.size)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
				
			elseif (v.type == "Sprite" and sprite) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
				
			elseif (v.type == "Quad" and v.draw_func) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()

			end
			
		end
		
	end

	function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )
		
		local bone, pos, ang
		if (tab.rel and tab.rel != "") then
			
			local v = basetab[tab.rel]
			
			if (!v) then return end
			
			// Technically, if there exists an element with the same name as a bone
			// you can get in an infinite loop. Let's just hope nobody's that stupid.
			pos, ang = self:GetBoneOrientation( basetab, v, ent )
			
			if (!pos) then return end
			
			pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
			ang:RotateAroundAxis(ang:Up(), v.angle.y)
			ang:RotateAroundAxis(ang:Right(), v.angle.p)
			ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
		else
		
			bone = ent:LookupBone(bone_override or tab.bone)

			if (!bone) then return end
			
			pos, ang = Vector(0,0,0), Angle(0,0,0)
			local m = ent:GetBoneMatrix(bone)
			if (m) then
				pos, ang = m:GetTranslation(), m:GetAngles()
			end
			
			if (IsValid(self.Owner) and self.Owner:IsPlayer() and 
				ent == self.Owner:GetViewModel() and self.ViewModelFlip) then
				ang.r = -ang.r // Fixes mirrored models
			end
		
		end
		
		return pos, ang
	end

	function SWEP:CreateModels( tab )

		if (!tab) then return end

		// Create the clientside models here because Garry says we can't do it in the render hook
		for k, v in pairs( tab ) do
			if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and 
					string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then
				
				v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)
				if (IsValid(v.modelEnt)) then
					v.modelEnt:SetPos(self:GetPos())
					v.modelEnt:SetAngles(self:GetAngles())
					v.modelEnt:SetParent(self)
					v.modelEnt:SetNoDraw(true)
					v.createdModel = v.model
				else
					v.modelEnt = nil
				end
				
			elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite) 
				and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then
				
				local name = v.sprite.."-"
				local params = { ["$basetexture"] = v.sprite }
				// make sure we create a unique name based on the selected options
				local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }
				for i, j in pairs( tocheck ) do
					if (v[j]) then
						params["$"..j] = 1
						name = name.."1"
					else
						name = name.."0"
					end
				end

				v.createdSprite = v.sprite
				v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)
				
			end
		end
		
	end
	
	local allbones
	local hasGarryFixedBoneScalingYet = false

	function SWEP:UpdateBonePositions(vm)
		
		if self.ViewModelBoneMods then
			
			if (!vm:GetBoneCount()) then return end
			
			local loopthrough = self.ViewModelBoneMods
			if (!hasGarryFixedBoneScalingYet) then
				allbones = {}
				for i=0, vm:GetBoneCount() do
					local bonename = vm:GetBoneName(i)
					if (self.ViewModelBoneMods[bonename]) then 
						allbones[bonename] = self.ViewModelBoneMods[bonename]
					else
						allbones[bonename] = { 
							scale = Vector(1,1,1),
							pos = Vector(0,0,0),
							angle = Angle(0,0,0)
						}
					end
				end
				
				loopthrough = allbones
			end
			
			for k, v in pairs( loopthrough ) do
				local bone = vm:LookupBone(k)
				if (!bone) then continue end
				
				local s = Vector(v.scale.x,v.scale.y,v.scale.z)
				local p = Vector(v.pos.x,v.pos.y,v.pos.z)
				local ms = Vector(1,1,1)
				if (!hasGarryFixedBoneScalingYet) then
					local cur = vm:GetBoneParent(bone)
					while(cur >= 0) do
						local pscale = loopthrough[vm:GetBoneName(cur)].scale
						ms = ms * pscale
						cur = vm:GetBoneParent(cur)
					end
				end
				
				s = s * ms
				
				if vm:GetManipulateBoneScale(bone) != s then
					vm:ManipulateBoneScale( bone, s )
				end
				if vm:GetManipulateBoneAngles(bone) != v.angle then
					vm:ManipulateBoneAngles( bone, v.angle )
				end
				if vm:GetManipulateBonePosition(bone) != p then
					vm:ManipulateBonePosition( bone, p )
				end
			end
		else
			self:ResetBonePositions(vm)
		end
		   
	end
	 
	function SWEP:ResetBonePositions(vm)
		
		if (!vm:GetBoneCount()) then return end
		for i=0, vm:GetBoneCount() do
			vm:ManipulateBoneScale( i, Vector(1, 1, 1) )
			vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )
			vm:ManipulateBonePosition( i, Vector(0, 0, 0) )
		end
		
	end

	function table.FullCopy( tab )

		if (!tab) then return nil end
		
		local res = {}
		for k, v in pairs( tab ) do
			if (type(v) == "table") then
				res[k] = table.FullCopy(v)
			elseif (type(v) == "Vector") then
				res[k] = Vector(v.x, v.y, v.z)
			elseif (type(v) == "Angle") then
				res[k] = Angle(v.p, v.y, v.r)
			else
				res[k] = v
			end
		end
		
		return res
		
	end
	
end


