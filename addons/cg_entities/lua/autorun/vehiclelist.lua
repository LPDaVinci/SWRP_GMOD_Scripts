	local function HandleStandAnimation( vehicle, player )
		return player:SelectWeightedSequence( ACT_GMOD_NOCLIP_LAYER )
		
		--or ACT_HL2MP_IDLE  for idle animation but no flying like in noclip
	end

	local V = {
		Name = "Bacta Tank Seat(LPDaVinci)",
		Model = "models/nova/airboat_seat.mdl",
		Class = "prop_vehicle_prisoner_pod",
		Category = "CG Seats",
	 
		Author = "LPDaVinci, Syphadias",
		Information = "Seat with custom animation for BactaEntity",
		Offset = 16,
	 
		KeyValues = {
			vehiclescript = "scripts/vehicles/prisoner_pod.txt",
			limitview = "0"
		},
		Members = {
			HandleAnimation = HandleStandAnimation
		}
	}
	list.Set( "Vehicles", "bactacg_seat", V )