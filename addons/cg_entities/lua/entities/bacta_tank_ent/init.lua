	AddCSLuaFile( "cl_init.lua" )
	AddCSLuaFile( "shared.lua" )
	include( "shared.lua" )
	
	

	function ENT:Initialize()

		self:SetModel( self.ChairModel )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetUseType( SIMPLE_USE )
		self:SetNWInt("BactaTankHealth", BactaTankDefaultHealth)
		self:DrawShadow( false )
		
		local phys = self:GetPhysicsObject()
		if IsValid( phys ) then
			phys:EnableMotion(false)
			phys:Sleep()
		end
		
		self:InitializeAfter()
		self:SetKeyValue( "minhealthdmg", "999999" )
	end

	function ENT:InitializeAfter()
	
	local pos = Vector( 0, 0, 30 )
		local ang = self:GetAngles()
		--local ang = Angle( 0, -90, 0 )

	self:SetupChair( 
			pos, ang // actual chair vehicleclass
		)
	end


	
	function ENT:OnTakeDamage(dmg)
	if SERVER then
		local currentBactaHealth = self:GetNWInt("BactaTankHealth", 0)

		if currentBactaHealth <= 0 then
			return false
		end

		if dmg:GetDamage() >= 1 then

		if currentBactaHealth - dmg:GetDamage() <= 0 then 
				currentBactaHealth = 0
				self:SetNWInt("BactaTankHealth",currentBactaHealth)
			else		
			currentBactaHealth = currentBactaHealth - math.Round(dmg:GetDamage())

			self:SetNWInt("BactaTankHealth", currentBactaHealth)
		end
		end
	end
end
	


	local function StandAnimation( vehicle, player )
		return player:SelectWeightedSequence( ACT_GMOD_NOCLIP_LAYER )
	end

	function ENT:SetupChair( vecvehicle, angvehicle )

		
		
		
		self.Chair = ents.Create( "prop_vehicle_prisoner_pod" )
		self.Chair:SetModel( "models/nova/airboat_seat.mdl" )
		self.Chair:SetKeyValue( "vehiclescript","scripts/vehicles/prisoner_pod.txt" )
		self.Chair:SetPos( self:GetPos() + vecvehicle )
		self.Chair:SetParent( self )
		self.Chair:SetAngles( angvehicle )
		self.Chair:SetNotSolid( true )
		self.Chair:SetNoDraw( true )
		self.Chair:DrawShadow( false )
		self.Chair:SetCollisionGroup( COLLISION_GROUP_DEBRIS_TRIGGER )

		self.Chair.HandleAnimation = StandAnimation
		
		self.Chair:SetVehicleClass("bactacg_seat")
		
		self.Chair:SetOwner( self )

		self.Chair:Spawn()
		self.Chair:Activate()
		
		local phys = self.Chair:GetPhysicsObject()
		if IsValid(phys) then
			phys:EnableMotion(false)
			phys:Sleep()
		end

		
	end
	-- REPAIR TOOL FUNCTION--
--self:SetNWInt("BactaTankHealth", self:GetNWInt("BactaTankHealth",0)+1)
	function ENT:Use( ply )

	local currentBactaHealth = self:GetNWInt("BactaTankHealth", 0)

		if currentBactaHealth <= 0 then
			ply:ChatPrint("Call for an EOD to get the Bactatank repaired")
			return false
		else
			ply:EnterVehicle( self.Chair )
		end
		


	end