CharStats = CharStats or {}
CharStatsConfig = CharStatsConfig or {}

CharStatsConfig.Taste = KEY_H
CharStatsConfig.Commands = {"!stats"}


CharStatsConfig.Colors = {}
CharStatsConfig.Colors.Orange = Color(255,165,0,255)
CharStatsConfig.Colors.White = Color(255,255,255,255)

CharStatsConfig.Colors.LightBlack = Color(40,40,40,255)
CharStatsConfig.Colors.LightBlack2 = Color(30,30,30,255)
CharStatsConfig.Colors.LightBlack3 =Color(100,100,100,255)
CharStatsConfig.Colors.LightBlack4 = Color(60,60,60,255)
CharStatsConfig.Colors.CC = Color(255, 255, 255, 0)




if ( SERVER ) then
	util.AddNetworkString("CharStats_OpenMenu")

	function CharStats.OpenMenu(ply)
		net.Start("CharStats_OpenMenu")
		net.Send(ply)
	end

	hook.Add("PlayerButtonDown", "CharStats_ButtonPressed", function(ply, button)
		if ( button == CharStatsConfig.Taste ) then
			CharStats.OpenMenu(ply)

	end
	end)

	hook.Add( "PlayerSay", "CharStats_Commands", function(ply, text, public)
		text = string.lower( text )
		if ( table.HasValue(CharStatsConfig.Commands, text) ) then
			CharStats.OpenMenu(ply)
			return ""
		end
	end)

hook.Add( "PlayerSpawn", "SpawnArmor", function(ply) 

if ply:IsPlayer() and ply:Alive() then
timer.Simple( 1, function() 
ply:SetNWInt( "Armor", ply:Armor() )
 end )
end

end)



end

function timeToStr( time )
	local tmp = time
	local s = tmp % 60
	tmp = math.floor( tmp / 60 )
	local m = tmp % 60
	tmp = math.floor( tmp / 60 )
	local h = tmp % 24
	tmp = math.floor( tmp / 24 )
	local d = tmp % 7
	local w = math.floor( tmp / 7 )

	return string.format( "%02iw %id %02ih %02im %02is", w, d, h, m, s )
end

if ( CLIENT ) then
	local UnknownLanding = 0

	surface.CreateFont("CharStats_Font_1", {
		font = "Arial",
		extended = false,
		size = 24,
		weight = 2000,
	})

	surface.CreateFont("CharStats_Font_2", {
		font = "Arial",
		extended = false,
		size = 20,
		weight = 2000,
	})

	surface.CreateFont("CharStats_Font_3", {
		font = "Arial",
		extended = false,
		size = 24,
		weight = 2000,
	})

	net.Receive("CharStats_OpenMenu", function()
			--NO Menu when on piano tool--
		if IsValid( LocalPlayer().Instrument ) then return end
	if( !MainCharMenu ) then
		MainCharMenu = vgui.Create( "charstats_main" )
		MainCharMenu:SetVisible( false )
	end
	
	if( MainCharMenu.x == -MainCharMenu:GetWide() ) then
	
		MainCharMenu:MoveTo( ScrW()/2 - MainCharMenu:GetWide()/2, ScrH()/2 - MainCharMenu:GetTall()/2, .1, 0, .5 )
		MainCharMenu:Show()
		gui.EnableScreenClicker( true )
	
		
	else
		MainCharMenu:MoveTo( -MainCharMenu:GetWide(),ScrH()/2 - MainCharMenu:GetTall()/2, .1, 0, .5 )
		MainCharMenu:NewAnimation( 0, .1, .5, function()
			MainCharMenu:Hide()
			MainCharMenu:Remove()
			MainCharMenu = nil
			PlayerName = nil
				UnknownMessage = 0
		end)
		
		gui.EnableScreenClicker( false )
	end
	
	end)
	
	--PANELREGISTERPART



local PANEL = {
Init = function(self)
		self:SetSize(800,710)
		self:Center()
		--self:SetTitle("test")
		local x,y = self:GetSize()
		self:SetPos ( - x, ScrH()/2 - y/2 )
		self:MakePopup()
		self:SetKeyboardInputEnabled(false)
		

		local icon = vgui.Create( "DModelPanel", self )
		icon:SetSize( 500, 550 )
		icon:SetPos(360,30)
		icon:SetModel( LocalPlayer():GetModel() )
		function icon:LayoutEntity( Entity ) return end
		
		
		local button = vgui.Create( "DButton", self)
		button:SetFont( "MyFont" )
		button:SetText( "Close" )
		button:SetSize( 50, 30 )
		button:SetPos( x - 50, -3 )
		function button:Paint( w, h )
			if(button:IsDown() ) then
				button:SetColor( Color ( 150, 255, 150 ) )
			elseif( button:IsHovered() ) then
				button:SetColor( Color( 200, 255, 200 ) )
			   
			else
				button:SetColor( Color( 100, 100, 100 ) )
			end
		end
		button.DoClick = function()
			MainCharMenu:MoveTo( -MainCharMenu:GetWide(),ScrH()/2 - MainCharMenu:GetTall()/2, .1, 0, .5 )
			MainCharMenu:NewAnimation( 0, .1, .5, function()
				MainCharMenu:Hide()
				MainCharMenu:Remove()
			MainCharMenu = nil
			PlayerName = nil
				UnknownMessage = 0
				
			end)
			gui.EnableScreenClicker( false )
		end
		
		
end,			
	Paint = function(self, w, h)
			surface.SetDrawColor(CharStatsConfig.Colors.Orange)
			surface.DrawRect(0,0,w,30)

			surface.SetDrawColor(CharStatsConfig.Colors.LightBlack)
			surface.DrawRect(0,30,w,h-30)
			
			
			--Materials
			local Box = Material( "ucg/charstat/box.png" )
			local HP = Material( "ucg/charstat/health.png" )
			local ARMOR = Material( "ucg/charstat/armor.png" )	
			local SPEED = Material( "ucg/charstat/speed.png" )	
			local CSTATS = Material( "ucg/charstat/characterstats.png" )	
			local XP = Material( "ucg/charstat/xpicon.png" )
			local CREDITS = Material( "ucg/charstat/credits.png" )
			local PLANET = Material( "ucg/charstat/planets.png" )
			local GUILD = Material( "ucg/charstat/guild.png" )
			local JOB = Material( "ucg/charstat/job.png" )
			local LEVEL = Material( "ucg/charstat/level.png" )
			
			
			local Map = "Default"

				if game.GetMap() == "rp_anaxes" then
					Map = "Anaxes"
				else Map = "Kein Planet gefunden"
				end
			

			--Playermodelbox
				surface.SetDrawColor(CharStatsConfig.Colors.Orange)
				surface.DrawRect(w/2+70,h-640-25,325-25,550)
				surface.SetDrawColor(CharStatsConfig.Colors.LightBlack)
				surface.DrawRect(w/2+70+2,h-640-25+2,325-4-25,550-4)
				surface.SetMaterial( Box ) -- If you use Material, cache it!
				surface.SetDrawColor(CharStatsConfig.Colors.White)
				surface.DrawTexturedRect( w/2+70+2,h-640-25+2,325-4-25,550-4 )
				
			--CstatsIcon
			surface.SetMaterial( GUILD ) -- If you use Material, cache it!
			surface.SetDrawColor(CharStatsConfig.Colors.White)
			surface.DrawTexturedRect( 5,230,30,30 )
			surface.SetMaterial( JOB ) -- If you use Material, cache it!
			surface.SetDrawColor(CharStatsConfig.Colors.White)
			surface.DrawTexturedRect( 5,190,30,30 )
			surface.SetMaterial( LEVEL ) -- If you use Material, cache it!
			surface.SetDrawColor(CharStatsConfig.Colors.White)
			surface.DrawTexturedRect( 5,110,30,30 )
			
			surface.SetMaterial( HP ) -- If you use Material, cache it!
			surface.SetDrawColor(CharStatsConfig.Colors.White)
			surface.DrawTexturedRect( 5,320,30,30 )
			surface.SetMaterial( ARMOR ) -- If you use Material, cache it!
			surface.SetDrawColor(CharStatsConfig.Colors.White)
			surface.DrawTexturedRect( 5,360,30,30 )
			surface.SetMaterial( SPEED ) -- If you use Material, cache it!
			surface.SetDrawColor(CharStatsConfig.Colors.White)
			surface.DrawTexturedRect( 5,400,30,30 )
			
			surface.SetMaterial( XP ) -- If you use Material, cache it!
			surface.SetDrawColor(CharStatsConfig.Colors.White)
			surface.DrawTexturedRect( 5,150,30,30 )
			surface.SetMaterial( PLANET ) -- If you use Material, cache it!
			surface.SetDrawColor(CharStatsConfig.Colors.White)
			surface.DrawTexturedRect( 5,510,30,30 )
			surface.SetMaterial( CREDITS ) -- If you use Material, cache it!
			surface.SetDrawColor(CharStatsConfig.Colors.White)
			surface.DrawTexturedRect( 5,470,30,30 )
			
			

			draw.SimpleText("CharStats Menü","CharStats_Font_1",5,3,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)

			
			draw.SimpleText("Player Name:","CharStats_Font_1",5,30,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText(LocalPlayer():GetName(),"CharStats_Font_1",170,30,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("Player Info","CharStats_Font_1",5,70,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("Level:","CharStats_Font_2",50,110,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			if (LocalPlayer():getDarkRPVar("level")) then 
			draw.SimpleText(LocalPlayer():getDarkRPVar("level"),"CharStats_Font_2",170,110,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			else
			draw.SimpleText("Vrondakis Level Addon Is Missing","CharStats_Font_2",170,110,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			end
			draw.SimpleText("XP:","CharStats_Font_2",50,150,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			if (LocalPlayer():getDarkRPVar("level")) then 
			draw.SimpleText(LocalPlayer():getDarkRPVar("xp"),"CharStats_Font_2",170,150,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			else
			draw.SimpleText("Vrondakis Level Addon Is Missing","CharStats_Font_2",170,150,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			end
			draw.SimpleText("Job:","CharStats_Font_2",50,190,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText(LocalPlayer():getDarkRPVar("job"),"CharStats_Font_2",170,190,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("Guild:","CharStats_Font_2",50,230,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText(LocalPlayer():GetNWString("orgName"),"CharStats_Font_2",170,230,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			
			draw.SimpleText("Character Stats","CharStats_Font_1",5,280,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("HP:","CharStats_Font_2",50,320,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText(LocalPlayer():Health().." / "..LocalPlayer():GetMaxHealth() ,"CharStats_Font_2",170,320,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("Armor:","CharStats_Font_2",50,360,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			if LocalPlayer():Armor() > LocalPlayer():GetNWInt("Armor") then 
			draw.SimpleText(LocalPlayer():Armor(),"CharStats_Font_2",170,360,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			elseif LocalPlayer():Armor() <= 0 then
			draw.SimpleText(LocalPlayer():Armor(),"CharStats_Font_2",170,360,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			else
			draw.SimpleText(LocalPlayer():Armor().." / "..LocalPlayer():GetNWInt( "Armor" ) ,"CharStats_Font_2",170,360,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			end
			draw.SimpleText("Movement:","CharStats_Font_2",50,400,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("Walkspeed: "..LocalPlayer():GetWalkSpeed(),"CharStats_Font_2",170,400,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("Runspeed: "..LocalPlayer():GetRunSpeed(),"CharStats_Font_2",170,430,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("Credits:","CharStats_Font_2",50,470,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText(LocalPlayer():getDarkRPVar("money"),"CharStats_Font_2",170,470,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("Planet:","CharStats_Font_2",50,510,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText(Map,"CharStats_Font_2",170,510,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			
			draw.SimpleText("Server Info","CharStats_Font_1",5,560,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText("ULX Rank:","CharStats_Font_2",5,600,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			draw.SimpleText(LocalPlayer():GetUserGroup(),"CharStats_Font_2",170,600,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			
			draw.SimpleText("Total Playtime:","CharStats_Font_2",5,640,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			if ( timer.Exists( "UTimeThink" ) ) then
			--if (LocalPlayer():GetUTimeTotalTime()) then 
			draw.SimpleText(timeToStr( LocalPlayer():GetUTimeTotalTime() ),"CharStats_Font_2",170,640,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			else
			draw.SimpleText("You need Utime installed" , "CharStats_Font_2",170,640,CharStatsConfig.Colors.White,TEXT_ALIGN_LEFT)
			end
			--Copyright--
			draw.SimpleText("Copyright at LPDaVinci","CharStats_Font_2",370,680,CharStatsConfig.Colors.White,TEXT_ALIGN_CENTER)

--Planet where im at  (with model underbox)
												

			
			

		end

	
	}
vgui.Register( "charstats_main", PANEL, "EditablePanel")


end