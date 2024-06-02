local function NoclipThink()
for k,v in ipairs(player.GetAll()) do


local oldstate = v:GetMoveType()
local CamIsOn = v:GetNWBool("CamoEnabled")
local wep = v:GetActiveWeapon()
if CamIsOn then return end
if oldstate == MOVETYPE_NOCLIP and not v:InVehicle()then

v:DrawShadow( false )
v:SetMaterial( "models/effects/vol_light001" )
if IsValid(wep) then
wep:SetMaterial("models/effects/vol_light001")
wep:SetColor( Color( 0, 0, 0, 0 ) )
--v:SetNoDraw(true)
wep:DrawShadow( false )
wep:SetRenderMode( RENDERMODE_TRANSALPHA )
end
v:SetRenderMode( RENDERMODE_TRANSALPHA )

v:SetColor( Color( 0, 0, 0, 0 ) )
v:GetTable().invis = { vis=visibility, wep=v:GetActiveWeapon() }


else

v:DrawShadow( true )
v:SetMaterial( "" )
if IsValid(wep) then
wep:SetMaterial( "" )
wep:SetRenderMode( RENDERMODE_NORMAL )
wep:DrawShadow( true )
wep:SetColor( Color( 255, 255, 255, 255 ) )
end
v:SetRenderMode( RENDERMODE_NORMAL )

v:SetColor( Color( 255, 255, 255, 255 ) )

v:GetTable().invis = nil
--v:SetNoDraw(false)
end
end
end


hook.Add( "Think", "NoClipThinkHook", NoclipThink )
