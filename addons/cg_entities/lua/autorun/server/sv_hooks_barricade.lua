if SERVER then
util.AddNetworkString("FORTIFICATION_SetTimer")

hook.Add("PlayerInitialSpawn", "FORTIFICATION_SetupVars", function(ply)
ply:SetNWBool("IsBuilding", false)
end)
	
hook.Add("PreCleanupMap", "FORTIFICATION_CleanUpPssE", function()
for k, v in pairs(player.GetAll()) do
if ( timer.Exists("FORTIFICATION_StartedBuilding"..v:UniqueID()) ) then 
timer.Destroy("FORTIFICATION_StartedBuilding"..v:UniqueID())
	net.Start("FORTIFICATION_SetTimer")
			net.WriteFloat(0)
			net.WriteEntity(v)
			net.Broadcast()
end
end
end)
	
hook.Add("PlayerDeath","destroytimeronrespawnwhilevuild", function(ply)
ply:SetNWBool("IsBuilding", false)
if ( timer.Exists("FORTIFICATION_StartedBuilding"..ply:UniqueID()) ) then  
ply.fortificationPlacedHologram:Remove()
timer.Destroy("FORTIFICATION_StartedBuilding"..ply:UniqueID())
end
end)



	hook.Add("PlayerButtonDown", "HACK_AbortHack", function(ply, button)
		if ( ply:GetNWBool("IsBuilding") and button == KEY_X ) then
			if ( timer.Exists("FORTIFICATION_StartedBuilding"..ply:UniqueID()) ) then 
				ply:SetNWBool("IsBuilding", false)

				ply:SetRunSpeed(ply.oldRunSpeed)
				ply:SetWalkSpeed(ply.oldWalkSpeed)

				ply.fortificationPlacedHologram:Remove()
		timer.Destroy("FORTIFICATION_StartedBuilding"..ply:UniqueID())
		end
		end
	end)


hook.Add("KeyPress", "Alydus_KeyPress_HandleBuildTabletHologramFinished", function(ply, key)
	if key == IN_USE and IsValid(ply) and ply:Alive() and IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "alydus_fortificationbuildertablet" and ply:GetActiveWeapon().fortificationSelection then
			storedpos = ply:GetEyeTrace().HitPos - ply:GetEyeTrace().HitNormal * ply.fortificationHologram:OBBMins().z
			storedangles = Angle(0, ply:EyeAngles().y - 180, 0)
			storedmodel = ply:GetActiveWeapon().Fortifications[ply:GetActiveWeapon().fortificationSelection]["model"]
		
	if ( timer.Exists("FORTIFICATION_StartedBuilding"..ply:UniqueID()) ) then return end
				
	if ply:GetCount("fortifications") < GetConVar("sbox_maxfortifications"):GetInt() then		
			if (ply:GetEyeTrace().Entity and ply:GetEyeTrace().Entity:IsPlayer() or ply:GetEyeTrace().HitPos:Distance(ply:GetPos()) >= 250) or ply:Crouching() or (IsValid(ply:GetEyeTrace().Entity) and table.HasValue(ply:GetActiveWeapon().FortificationsModelList, ply:GetEyeTrace().Entity:GetModel())) or hook.Call("Alydus.FortificationBuilderTablet.CanBuildFortification", ply) or (IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "alydus_fortificationbuildertablet" and ply:GetActiveWeapon():GetNWBool("tabletBootup", false) == true) then
				ply:ChatPrint("Failed to deploy fortification.")
			else
			local fortificationClass = "prop_physics"
					if alydusDestructableFortificationExtension then
						fortificationClass = "alydus_destructablefortification"
					end
			
			if not IsValid(ply.fortificationPlacedHologram) then
				ply.fortificationPlacedHologram = ents.Create(fortificationClass)
				if IsValid(ply.fortificationPlacedHologram) then
					ply.fortificationPlacedHologram:SetAngles(storedangles)
					ply.fortificationPlacedHologram:SetPos(storedpos)
					ply.fortificationPlacedHologram:SetColor(Color(46, 204, 113, 200))
					
					if alydusDestructableFortificationExtension then
						ply.fortificationPlacedHologram:SetNWInt("fortificationHealth", GetConVar("alydus_defaultfortificationhealth"):GetInt())
					else
						ply.fortificationPlacedHologram:SetModel(storedmodel)
					end

					ply.fortificationPlacedHologram:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
					ply.fortificationPlacedHologram:SetRenderMode(RENDERMODE_TRANSALPHA)
					ply.fortificationPlacedHologram:Spawn()
					if alydusDestructableFortificationExtension then
						ply.fortificationPlacedHologram:SetModel(storedmodel)
					end
					ply.oldRunSpeed = ply:GetRunSpeed()
					ply.oldWalkSpeed = ply:GetWalkSpeed()
					ply:SetRunSpeed(1)
					ply:SetWalkSpeed(1)
					
				else
					ply.fortificationPlacedHologram = nil
				end
				end
			local physhologram = ply.fortificationPlacedHologram:GetPhysicsObject()
						if IsValid(physhologram) then
							physhologram:SetMass(50000)
							physhologram:EnableMotion(false)
						end
			net.Start("FORTIFICATION_SetTimer")
			net.WriteFloat(CurTime() + 2)
			net.WriteEntity(ply)
			net.Broadcast()
			ply:SetNWBool("IsBuilding", true)
			
			timer.Create("FORTIFICATION_StartedBuilding"..ply:UniqueID(), 2, 1, function()
			
					ply:SetNWBool("IsBuilding", false)
					ply.fortification = ents.Create(fortificationClass)
					ply.fortification:SetAngles(ply.fortificationPlacedHologram:GetAngles())  --here you should make a hologram shared function that gets the setting from the hologram prebuild
					ply.fortification:SetPos(ply.fortificationPlacedHologram:GetPos())
					ply.fortification:Spawn()
					ply.fortification:SetGravity(150)
					ply.fortification.isPlayerPlacedFortification = ply
					ply.fortification:EmitSound("physics/concrete/rock_impact_hard" .. math.random(1, 6) .. ".wav")
					ply.fortification:SetColor(Color(255, 255, 255, 255))
					if alydusDestructableFortificationExtension then
						ply.fortification:SetNWInt("fortificationHealth", GetConVar("alydus_defaultfortificationhealth"):GetInt())
					else
						ply.fortification:SetModel(ply.fortificationPlacedHologram:GetModel())
					end
					
					ply.fortification:SetCollisionGroup(COLLISION_GROUP_NONE)
					ply.fortification:SetRenderMode(RENDERMODE_TRANSALPHA)
					if alydusDestructableFortificationExtension then
						ply.fortification:SetModel(ply.fortificationPlacedHologram:GetModel())
					end
					ply.fortificationPlacedHologram:Remove()
				
					ply:AddCount("fortifications", ply.fortification)
					ply:AddCleanup("fortifications", ply.fortification)
					ply:SetRunSpeed(ply.oldRunSpeed)
					ply:SetWalkSpeed(ply.oldWalkSpeed)
					local phys = ply.fortification:GetPhysicsObject()
						if IsValid(phys) then
							phys:SetMass(50000)
							phys:EnableMotion(false)
						end
						
						if table.HasValue({"sandbox", "darkrp", "starwarsrp"}, engine.ActiveGamemode()) then
							undo.Create("fortification")
								undo.AddEntity(ply.fortification)
								undo.SetPlayer(ply)
							undo.Finish()
						end

			timer.Destroy("FORTIFICATION_StartedBuilding"..ply:UniqueID())
		end)
			end
				else
				ply:LimitHit("fortifications")
			end
		
		end

	end)

	hook.Add("PlayerSwitchWeapon", "Alydus_PlayerSwitchWeapon_FortificationBuilderTabletBootup", function(ply, oldWep, newWep)
		if newWep:GetClass() == "alydus_fortificationbuildertablet" and newWep:GetNWBool("tabletBootup", false) != true then
			newWep:SetNWBool("tabletBootup", true)
			newWep.fortificationSelection = newWep.fortificationSelection or 1
			ply:EmitSound("ambient/machines/thumper_startup1.wav")
			timer.Simple(2.5, function()
				if ply:GetNWBool("tabletBootup", false) == false and ply:HasWeapon("alydus_fortificationbuildertablet") then
					ply:EmitSound("npc/scanner/combat_scan4.wav")
					newWep:SetNWBool("tabletBootup", false)
				end
			end)
		elseif ply:HasWeapon("alydus_fortificationbuildertablet") and IsValid(oldWep) and oldWep:GetClass() == "alydus_fortificationbuildertablet" then
			ply:EmitSound("npc/roller/mine/combine_mine_deactivate1.wav")

			if ply.fortificationHologram != nil and IsValid(ply.fortificationHologram) then
				ply.fortificationHologram:Remove()
				ply.fortificationHologram = nil
			end
		end
	end)
		hook.Add("PlayerTick", "Alydus_Think_FortificationBuilderTabletHologram", function(ply, mv)
		local wep = ply:GetActiveWeapon()
		local ang = ply:GetAngles()
		local tr = ply:GetEyeTrace()

		if IsValid(ply) and ply:Alive() and ply:HasWeapon("alydus_fortificationbuildertablet") and IsValid(wep) and wep:GetClass() == "alydus_fortificationbuildertablet" and wep:GetNWBool("tabletBootup", false) == false and wep.fortificationSelection != nil then
			if not IsValid(ply.fortificationHologram) then
				ply.fortificationHologram = ents.Create("prop_physics")
				if IsValid(ply.fortificationHologram) then
					ply.fortificationHologram:SetAngles(Angle(0, ply:EyeAngles().y - 180, 0))
					ply.fortificationHologram:SetPos(tr.HitPos - tr.HitNormal * ply.fortificationHologram:OBBMins().z)
					ply.fortificationHologram:SetColor(Color(46, 204, 113, 200))
					ply.fortificationHologram:SetModel(wep.Fortifications[wep.fortificationSelection]["model"])
					ply.fortificationHologram:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
					ply.fortificationHologram:SetRenderMode(RENDERMODE_TRANSALPHA)
					ply.fortificationHologram:Spawn()
					ply.fortificationHologram:SetNWString("alydusFortificationHologramName", wep.Fortifications[wep.fortificationSelection]["name"])
					ply.fortificationHologram:EmitSound("physics/concrete/rock_impact_hard1.wav")
				else
					ply.fortificationHologram = nil
				end
			elseif IsValid(ply.fortificationHologram) then
				if ply:Crouching() or 
				--ply:GetVelocity():Length() > 15 
				(IsValid(tr.Entity) and table.HasValue(wep.FortificationsModelList, tr.Entity:GetModel())) then
					ply.fortificationHologram:SetColor(Color(255, 255, 255, 0))
				else
					if ply.fortificationHologram:GetModel() != wep.Fortifications[wep.fortificationSelection]["model"] then
						ply.fortificationHologram:SetModel(wep.Fortifications[wep.fortificationSelection]["model"])
						ply.fortificationHologram:SetNWString("alydusFortificationHologramName", wep.Fortifications[wep.fortificationSelection]["name"])
					end
					ply.fortificationHologram:SetPos(tr.HitPos - tr.HitNormal * ply.fortificationHologram:OBBMins().z)
					ply.fortificationHologram:SetAngles(Angle(0, ply:EyeAngles().y - 180, 0))
					if tr.HitPos:Distance(ply:GetPos()) >= 250 then
						ply.fortificationHologram:SetColor(Color(255, 255, 255, 0))
					elseif ply.fortificationHologram:GetColor().a == 0 then
						ply.fortificationHologram:SetColor(Color(46, 204, 113, 200))
					end
				end
			end
		elseif ply.fortificationHologram != nil and IsValid(ply.fortificationHologram) then
			ply.fortificationHologram:Remove()
			ply.fortificationHologram = nil
		end
	end)
end

