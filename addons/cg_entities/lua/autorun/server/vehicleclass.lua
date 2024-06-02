function AddOwner(ply)
			ply.BactaEntryPoint = ply:GetPos()
			ply.BactaEntryAngles = ply:EyeAngles()
			
	end
		
function GetVehiclePositions(ply,veh)
			ply:SetPos( ply.BactaEntryPoint )
			ply:SetEyeAngles( ply.BactaEntryAngles )
	end
	
	local function HookBactaChair( ply, veh )

	if IsValid( veh ) and veh:GetVehicleClass() == "bactacg_seat"  then 
		if veh:GetParent():GetNWInt("BactaTankHealth", 0) <= 0 then
					ply:ChatPrint("Call for an EOD to get the Bactatank repaired")
					return false
		else
					AddOwner(ply)
					return true
				end
		end

	return true
	end
	hook.Add( "CanPlayerEnterVehicle", "MyBactaHook", HookBactaChair )

	
	local function HookLeaveBactaChair( ply, veh )
	if veh:GetVehicleClass() == "bactacg_seat" then 
		GetVehiclePositions(ply)
	return false

	end
	
	
	end
	hook.Add("PlayerLeaveVehicle", "PlayerLeaveBactaTank", HookLeaveBactaChair)

	local function BactaTankHealFunction()
			for k,v in pairs (player.GetAll()) do 
			if v:InVehicle() and  v:GetVehicle():GetVehicleClass() == "bactacg_seat" then 
				local maxhealth =  v:GetMaxHealth() or 100
				
				if (v.NextHeal || 0 ) < CurTime() then
					if v:Health() < maxhealth then
					v.NextHeal = CurTime() + 0.2
						v:SetHealth(v:Health() + 1)
						
					end
					end
				
			end
		end
	
	end

	hook.Add("Think","Bactaheal",BactaTankHealFunction)
