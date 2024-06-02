	     --HUD Author :LPDaVinci--
		 
		 --Configuration
		 CustomHud = false --Activates the Custom JvS Hud set to false to deactivate it.
		 -- Fonts --
		 
		 
surface.CreateFont( "SelectedForceHUDblur", {
font= "Roboto Cn",
size= ScreenScale( 6 ),
blursize = 2,
outline = true,
antialias = true,
} )


surface.CreateFont( "SmallText", {
font= "Roboto Cn",
size= ScreenScale(12),
weight= 500
} )
surface.CreateFont( "LargeTextBLUR", {
font= "Roboto Cn",
size= ScreenScale( 12 ),
weight= 600,
blursize = 4,
} )
surface.CreateFont( "LargeText", {
font= "Roboto Cn",
size= ScreenScale( 20 ),
weight= 600
} )


surface.CreateFont( "SelectedForceTypeGlowHUD", {
font= "Roboto Cn",
size= ScreenScale( 10 ),
weight= 600,
blursize = 1,
} )

	function hidehud(name) 
	for k, v in pairs({"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo", })do
		if name == v then return false end
	end

end
hook.Add("HUDShouldDraw", "HideOurHud:D", hidehud)


function MapVectors()


if game.GetMap() == "rp_jedivssith_wos" then
	Planets = {}
	Planets.Tatooine = Vector(5041.279297, -10395.308594, -3384.780029)
	Planets.StarDestroyer = Vector(12237.985352, -372.813477, -145.738098)
	Planets.Korriban = Vector(5184.658203, 7078.943848, -8887.017578)
	Planets.Hoth = Vector(-3953.558838, -218.058472, 2394.869141)
	Planets.Tython = Vector(-10251.671875, -11310.196289, 10934.111328)
	Planets.MeteorStation = Vector(7103.246094, -10414.893555, 9499.745117)
	Planets.Illum = Vector(10146.198242, 9141.271484, 6568.258301)
	Planets.Endor = Vector(-9048.547852, 9388.367188, -7176.233887)

for k,v in pairs (player.GetAll()) do
if v:IsPlayer() then
if(v:GetPos():Distance(Planets.Tatooine) < 5000) then v:SetNWString("Planet","Tatooine")
elseif(v:GetPos():Distance(Planets.StarDestroyer) < 5000) then v:SetNWString("Planet","Star Destroyer")
elseif(v:GetPos():Distance(Planets.Korriban) < 5000) then v:SetNWString("Planet","Korriban")
elseif(v:GetPos():Distance(Planets.Hoth) < 5000) then v:SetNWString("Planet","Hoth")
elseif(v:GetPos():Distance(Planets.Tython) < 5000) then v:SetNWString("Planet","Tython")
elseif(v:GetPos():Distance(Planets.MeteorStation) < 5000) then v:SetNWString("Planet","Meteor Station")
elseif(v:GetPos():Distance(Planets.Illum) < 5000) then v:SetNWString("Planet","Illum")
elseif(v:GetPos():Distance(Planets.Endor) < 5000) then v:SetNWString("Planet","Endor")
end
end
end
end

if game.GetMap() == "rp_jedivssith_wos_v2" then
	Planets = {}
	Planets.Geonosis = Vector(-10581.800781, 9236.337891, 9142.022461)
	Planets.Tatooine = Vector(4981.065430, -10476.456055, -3403.647949)
	Planets.StarDestroyer = Vector(12534.126953,  -152.772552, -87.202774)
	Planets.Korriban = Vector(5259.708984, 6006.854004, -8959.848633)
	Planets.Hoth = Vector( -4538.690918, -2728.577637, 2220.337402)
	Planets.Tython = Vector(-11132.938477,  -10802.613281,  10845.554688)
	Planets.MeteorStation = Vector(7179.155273, -10129.778320, 9528.225586)
	Planets.Illum = Vector(7743.474121, 9699.933594,  7000.692383)
	Planets.Endor = Vector(-9240.079102, 10053.739258, -7239.198730)

for k,v in pairs (player.GetAll()) do
if v:IsPlayer() then
if(v:GetPos():Distance(Planets.Geonosis) < 5000) then v:SetNWString("Planet","Geonosis")
elseif(v:GetPos():Distance(Planets.Tatooine) < 5000) then v:SetNWString("Planet","Tatooine")
elseif(v:GetPos():Distance(Planets.StarDestroyer) < 5000) then v:SetNWString("Planet","Star Destroyer")
elseif(v:GetPos():Distance(Planets.Korriban) < 5000) then v:SetNWString("Planet","Korriban")
elseif(v:GetPos():Distance(Planets.Hoth) < 5000) then v:SetNWString("Planet","Hoth")
elseif(v:GetPos():Distance(Planets.Tython) < 5000) then v:SetNWString("Planet","Tython")
elseif(v:GetPos():Distance(Planets.MeteorStation) < 5000) then v:SetNWString("Planet","Meteor Station")
elseif(v:GetPos():Distance(Planets.Illum) < 5000) then v:SetNWString("Planet","Illum")
elseif(v:GetPos():Distance(Planets.Endor) < 5000) then v:SetNWString("Planet","Endor")
end
end
end
end



end
hook.Add("Think", "MapVectors", MapVectors)


hook.Add("HUDPaint", "sup", function()
if CustomHud then
	local ply = LocalPlayer()
	local HP = LocalPlayer():Health()
	local Armor = LocalPlayer():Armor()
	local fac = LocalPlayer():GetFaction()
	if fac == "Sith" then
	draw.SimpleTextOutlined("Health","SelectedForceTypeGlowHUD" , 30, 170, Color(255, 255, 255, 255), 3,1, 2, Color(231,76,60,255))
    draw.SimpleTextOutlined(LocalPlayer():Health().."%","SelectedForceTypeGlowHUD" , 30, 200, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Jedi" then
	draw.SimpleTextOutlined("Health","SelectedForceTypeGlowHUD" , 30, 170, Color(255, 255, 255, 255), 3,1, 2, Color(52, 152, 219))
    draw.SimpleTextOutlined(LocalPlayer():Health().."%","SelectedForceTypeGlowHUD" , 30, 200, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Zakuul" then
    draw.SimpleTextOutlined("Health","SelectedForceTypeGlowHUD" , 30, 170, Color(255, 255, 255, 255), 3,1, 2, Color(241, 196, 15))
    draw.SimpleTextOutlined(LocalPlayer():Health().."%","SelectedForceTypeGlowHUD" , 30, 200, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	else 
	    draw.SimpleTextOutlined("Health","SelectedForceTypeGlowHUD" , 30, 170, Color(255, 255, 255, 255), 3,1, 2, Color(46, 204, 113))
    draw.SimpleTextOutlined(LocalPlayer():Health().."%","SelectedForceTypeGlowHUD" , 30, 200, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	end

	if fac == "Sith" then
	draw.SimpleTextOutlined("Armor","SelectedForceTypeGlowHUD" , 30, 110, Color(255, 255, 255, 255), 3,1, 2, Color(231,76,60,255))
    draw.SimpleTextOutlined(LocalPlayer():Armor().."%","SelectedForceTypeGlowHUD" , 30, 140, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Jedi" then
 	draw.SimpleTextOutlined("Armor","SelectedForceTypeGlowHUD" , 30, 110, Color(255, 255, 255, 255), 3,1, 2, Color(52, 152, 219))
    draw.SimpleTextOutlined(LocalPlayer():Armor().."%","SelectedForceTypeGlowHUD" , 30, 140, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Zakuul" then
	draw.SimpleTextOutlined("Armor","SelectedForceTypeGlowHUD" , 30, 110, Color(255, 255, 255, 255), 3,1, 2, Color(241, 196, 15))
    draw.SimpleTextOutlined(LocalPlayer():Armor().."%","SelectedForceTypeGlowHUD" , 30, 140, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	else
	draw.SimpleTextOutlined("Armor","SelectedForceTypeGlowHUD" , 30, 110, Color(255, 255, 255, 255), 3,1, 2, Color(46, 204, 113))
    draw.SimpleTextOutlined(LocalPlayer():Armor().."%","SelectedForceTypeGlowHUD" , 30, 140, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	end
	
	if fac == "Sith" then
 	draw.SimpleTextOutlined("Rank","SelectedForceTypeGlowHUD" , 30, 50, Color(255, 255, 255, 255), 3,1, 2, Color(231,76,60,255))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("job") ,"SelectedForceTypeGlowHUD" , 30, 80, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Jedi" then
	draw.SimpleTextOutlined("Rank","SelectedForceTypeGlowHUD" , 30, 50, Color(255, 255, 255, 255), 3,1, 2, Color(52, 152, 219))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("job") ,"SelectedForceTypeGlowHUD" , 30, 80, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Zakuul" then
	draw.SimpleTextOutlined("Rank","SelectedForceTypeGlowHUD" , 30, 50, Color(255, 255, 255, 255), 3,1, 2, Color(241, 196, 15))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("job") ,"SelectedForceTypeGlowHUD" , 30, 80, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	else
	draw.SimpleTextOutlined("Rank","SelectedForceTypeGlowHUD" , 30, 50, Color(255, 255, 255, 255), 3,1, 2, Color(46, 204, 113))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("job") ,"SelectedForceTypeGlowHUD" , 30, 80, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	end
	
	if fac == "Sith" then
	draw.SimpleTextOutlined("Credits","SelectedForceTypeGlowHUD" , 30, 230, Color(255, 255, 255, 255), 3,1, 2, Color(231,76,60,255))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("money") ,"SelectedForceTypeGlowHUD" , 30, 260, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Jedi" then
	draw.SimpleTextOutlined("Credits","SelectedForceTypeGlowHUD" , 30, 230, Color(255, 255, 255, 255), 3,1, 2, Color(52, 152, 219))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("money") ,"SelectedForceTypeGlowHUD" , 30, 260, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Zakuul" then
	draw.SimpleTextOutlined("Credits","SelectedForceTypeGlowHUD" , 30, 230, Color(255, 255, 255, 255), 3,1, 2, Color(241, 196, 15))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("money") ,"SelectedForceTypeGlowHUD" , 30, 260, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	else
	draw.SimpleTextOutlined("Credits","SelectedForceTypeGlowHUD" , 30, 230, Color(255, 255, 255, 255), 3,1, 2, Color(46, 204, 113))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("money") ,"SelectedForceTypeGlowHUD" , 30, 260, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	end
	
	if fac == "Sith" then
	draw.SimpleTextOutlined("Name","SelectedForceTypeGlowHUD" , 30, 290, Color(255, 255, 255, 255), 3,1, 2, Color(231,76,60,255))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("rpname") ,"SelectedForceTypeGlowHUD" , 30, 320, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Jedi" then
	draw.SimpleTextOutlined("Name","SelectedForceTypeGlowHUD" , 30, 290, Color(255, 255, 255, 255), 3,1, 2, Color(52, 152, 219))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("rpname") ,"SelectedForceTypeGlowHUD" , 30, 320, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Zakuul" then
	draw.SimpleTextOutlined("Name","SelectedForceTypeGlowHUD" , 30, 290, Color(255, 255, 255, 255), 3,1, 2, Color(241, 196, 15))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("rpname") ,"SelectedForceTypeGlowHUD" , 30, 320, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	else
	draw.SimpleTextOutlined("Name","SelectedForceTypeGlowHUD" , 30, 290, Color(255, 255, 255, 255), 3,1, 2, Color(46, 204, 113))
    draw.SimpleTextOutlined(LocalPlayer():getDarkRPVar("rpname") ,"SelectedForceTypeGlowHUD" , 30, 320, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	end

	if fac == "Sith" then
	draw.SimpleTextOutlined("State of force","SelectedForceTypeGlowHUD" , 30, 350, Color(255, 255, 255, 255), 3,1, 2, Color(231,76,60,255))
	elseif fac == "Jedi" then
	draw.SimpleTextOutlined("State of force","SelectedForceTypeGlowHUD" , 30, 350, Color(255, 255, 255, 255), 3,1, 2, Color(52, 152, 219))
	elseif fac == "Zakuul" then
	draw.SimpleTextOutlined("State of force","SelectedForceTypeGlowHUD" , 30, 350, Color(255, 255, 255, 255), 3,1, 2, Color(241, 196, 15))
	else
	draw.SimpleTextOutlined("State of force","SelectedForceTypeGlowHUD" , 30, 350, Color(255, 255, 255, 255), 3,1, 2, Color(46, 204, 113))
	end
	
	
	if LocalPlayer():Health() < 25 then 
	draw.SimpleTextOutlined("Out of control","SelectedForceTypeGlowHUD" , 30, 380, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))  
	elseif LocalPlayer():Health() < 50 then
	draw.SimpleTextOutlined("Really angry","SelectedForceTypeGlowHUD" , 30, 380, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))             
    elseif LocalPlayer():Health() < 75 then
	draw.SimpleTextOutlined("Angry","SelectedForceTypeGlowHUD" , 30, 380, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
    else
	draw.SimpleTextOutlined("Calm","SelectedForceTypeGlowHUD" , 30, 380, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
    end
	  
	if fac == "Sith" then
	draw.SimpleTextOutlined("Alignement","SelectedForceTypeGlowHUD" , 30, 410, Color(255, 255, 255, 255), 3,1, 2, Color(231,76,60,255))
	elseif fac == "Jedi" then
	draw.SimpleTextOutlined("Alignement","SelectedForceTypeGlowHUD" , 30, 410, Color(255, 255, 255, 255), 3,1, 2, Color(52, 152, 219))
	elseif fac == "Zakuul" then
	draw.SimpleTextOutlined("Alignement","SelectedForceTypeGlowHUD" , 30, 410, Color(255, 255, 255, 255), 3,1, 2, Color(241, 196, 15))
	else
	draw.SimpleTextOutlined("Alignement","SelectedForceTypeGlowHUD" , 30, 410, Color(255, 255, 255, 255), 3,1, 2, Color(46, 204, 113))
	end
	
	if fac == "Jedi" then
	draw.SimpleTextOutlined("Light Side","SelectedForceTypeGlowHUD" , 30, 440, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Sith" then
	draw.SimpleTextOutlined("Dark Side","SelectedForceTypeGlowHUD" , 30, 440, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	else
    draw.SimpleTextOutlined("Neutral","SelectedForceTypeGlowHUD" , 30, 440, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	end
	
if game.GetMap() == "rp_jedivssith_wos" or game.GetMap() == "rp_jedivssith_wos_v2" then
   

	if fac == "Sith" then
	draw.SimpleTextOutlined("Planet","SelectedForceTypeGlowHUD" , 30, 470, Color(255, 255, 255, 255), 3,1, 2, Color(231,76,60,255))
	elseif fac == "Jedi" then
	draw.SimpleTextOutlined("Planet","SelectedForceTypeGlowHUD" , 30, 470, Color(255, 255, 255, 255), 3,1, 2, Color(52, 152, 219))
	elseif fac == "Zakuul" then
	draw.SimpleTextOutlined("Planet","SelectedForceTypeGlowHUD" , 30, 470, Color(255, 255, 255, 255), 3,1, 2, Color(241, 196, 15))
	else
	draw.SimpleTextOutlined("Planet","SelectedForceTypeGlowHUD" , 30, 470, Color(255, 255, 255, 255), 3,1, 2, Color(46, 204, 113))
	end
	 
	 

	if fac == "Jedi" then
	draw.SimpleTextOutlined(LocalPlayer():GetNWString( "Planet" ),"SelectedForceTypeGlowHUD" , 30, 500, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Sith" then
	draw.SimpleTextOutlined(LocalPlayer():GetNWString( "Planet" ),"SelectedForceTypeGlowHUD" , 30, 500, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	elseif fac == "Zakuul" then
	draw.SimpleTextOutlined(LocalPlayer():GetNWString( "Planet" ),"SelectedForceTypeGlowHUD" , 30, 500, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	else
    draw.SimpleTextOutlined(LocalPlayer():GetNWString( "Planet" ),"SelectedForceTypeGlowHUD" , 30, 500, Color(255, 255, 255, 255), 3,1, 1, Color(127, 140, 141))
	end
  end
 end	   
end)