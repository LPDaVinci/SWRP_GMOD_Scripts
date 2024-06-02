-- REPLACE WITH SecurityLevelCards
  local willSetOff = {
  ["clone_card_sec1"] = 1, --SL 1
  ["clone_card_sec2"] = 2, -- SL2
  ["clone_card_sec3"] = 3, --SL3
  ["clone_card_sec4"] = 4, -- SL4
  ["clone_card_sec6"] = 5, --Fleet
  ["clone_card_sec5"] = 6, -- EOD
  ["clone_card_secjedi"] = 7, --JEDI
  }
  
  --This are the Defcon States
  local DefconTable = {
  	[0] = { -- Entity Level
    	[1] = true, -- Defcon level
    	[2] = true,
		[3] = true,
		[4] = true,
		-- Other numbers are not needed as they are classed as nil which in an if statement acts as false
 	 },
	[1] = { -- Entity Level
    	[1] = true, -- Defcon level
    	[2] = true,
		[3] = true,
		[4] = true,
		-- Other numbers are not needed as they are classed as nil which in an if statement acts as false
 	 },
	[2] = { -- Entity Level
    	[1] = true, -- Defcon level
    	[2] = true,
		[3] = true,
		-- Other numbers are not needed as they are classed as nil which in an if statement acts as false
 	 },
	[3] = { -- Entity Level
    	[1] = true, -- Defcon level
    	[2] = true,
		[3] = true,
		-- Other numbers are not needed as they are classed as nil which in an if statement acts as false
 	 },
	[4] = { -- Entity Level
    	[1] = true, -- Defcon level
    	[2] = true,
		-- Other numbers are not needed as they are classed as nil which in an if statement acts as false
 	 },
  
	}

function CollisionChecker( ent1, ent2 )
	
    if ent1:IsValid() and ent2:IsValid() and ent2:IsPlayer() and ent1.Level then	
    	local plyval = 0
		--added HasWeapon when player is stripped they come errors
		if ent2:HasWeapon("weapon_physgun") and ent2:GetActiveWeapon():GetClass() == "weapon_physgun" then return end
		--if ent2:GetActiveWeapon():GetClass() == "weapon_physgun" then return true end	--This breaks the Physic
			if ent2:GetNWBool("Ausbildung") then return false end
			if DefconTable[ent1.Level] then
				if DefconTable[ent1.Level][GetDefcon()] then    
					return false
				end
			end		
        for index, class in pairs(ent2:GetWeapons()) do
		
      		local str = string.lower(class:GetClass())
      		if willSetOff[str] then
        		if willSetOff[str] > plyval then
          			plyval = willSetOff[str]
          		end
        	end
      	end
    	return (plyval <= ent1.Level )
		end
    end

  hook.Add( "ShouldCollide", "ShouldCollideChecks", CollisionChecker )