
----SERVER HOOKS---------------------------------------

if ( SERVER ) then
util.AddNetworkString("entityupdate")
util.AddNetworkString("wipeenttable")
entswithtbl = {
}

local GlobalUndoList = {
"swrp_presspad",
}



hook.Add("PreCleanupMap", "ahh", function()
    net.Start("wipeenttable")
    net.Broadcast()

    entswithtbl = {} -- Wipe the table we don't need it anymore
end)

hook.Add("EntityRemoved","ahhremovebutton", function(ent)
if not GlobalUndoList[ent] then return end
 net.Start("wipeenttable")
    net.Broadcast()

    entswithtbl = {}-- Wipe the table we don't need it anymore

end)

hook.Add("PostCleanupMap", "ahh", function()

	count = 0
    for ent, tbl in pairs(entswithtbl) do
    	count = count + 1
        timer.Simple(count/100, function()
            net.Start("entityupdate")
                net.WriteEntity(ent)
                net.WriteTable(tbl)
            net.Broadcast()
        end)
    end
end)




hook.Add("PlayerInitialSpawn", "ahh", function(ply)
    count = 0
    for ent, tbl in pairs(entswithtbl) do
    	count = count + 1
        timer.Simple(count/100, function()
            net.Start("entityupdate")
                net.WriteEntity(ent)
                net.WriteTable(tbl)
            net.Send(ply)
        end)
    end
end)
  


else
  HitFuncs = { -- Table of items that if it hits it'll create a hand.
    ["func_button"]           = true,
--    ["func_door"]             = true, --Draws Hand over Doors
--    ["func_door_rotating"]    = true, --Draws Hand over Doors
 --   ["prop_door_rotating"]    = true, --Draws Hand over Doors
--	["button_keypad"]     = true,  --Draws Hand over Doors
	["Buttons"]     = true,
	["class C_BaseEntity"]     = true,
	["swrp_presspad"]     = true,

}
hook.Add( "HUDPaint", "handIconOnDoor", function() -- HUDPaint hook
    if IsValid( LocalPlayer():GetEyeTrace().Entity ) and (LocalPlayer():GetPos():Distance(LocalPlayer():GetEyeTrace().HitPos) < 200) and HitFuncs[LocalPlayer():GetEyeTrace().Entity:GetClass() ] then
        surface.SetDrawColor( 255, 255, 255, 255 ) -- Next three lines draw the hand (your code)
        surface.SetMaterial( Material("ucg/handsymbol.png"))
        surface.DrawTexturedRect( ScrW()/2-32, ScrH()/2-50, 48, 48 )	
	end-- Ending the if statement
end ) -- Ending the hook

--hook.Add("HUDDrawDoorData", "hide_doordata", function() return true end) --This hook removes the darkrp Doordata Info

	end



