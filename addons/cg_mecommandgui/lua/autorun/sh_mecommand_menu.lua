MeCommands = MeCommands or {}
MeCommandsConfig = MeCommandsConfig or {}

--MeCommandsConfig.Taste = KEY_L
MeCommandsConfig.Commands = {"!mecoms"}

MeCommandsConfig.Colors = {}
MeCommandsConfig.Colors.Orange = Color(255,165,0,255)
MeCommandsConfig.Colors.Blue = Color(0,163,255,255)
MeCommandsConfig.Colors.White = Color(255,255,255,255)

MeCommandsConfig.Colors.LightBlack = Color(40,40,40,255)
MeCommandsConfig.Colors.LightBlack2 = Color(30,30,30,255)
MeCommandsConfig.Colors.LightBlack3 =Color(100,100,100,255)
MeCommandsConfig.Colors.LightBlack4 = Color(60,60,60,255)
MeCommandsConfig.Colors.CC = Color(255, 255, 255, 0)

if ( SERVER ) then
	util.AddNetworkString("MeCommands_OpenMenu")

	function MeCommands.OpenMenu(ply)
		
		net.Start("MeCommands_OpenMenu")
		net.Send(ply)
	end
	--Button Funktion disabled
	--hook.Add("PlayerButtonDown", "MeCommands_ButtonPressed2", function(ply, button)
		--if ( button == MeCommandsConfig.Taste ) then
			--MeCommands.OpenMenu(ply)
		--end
	--end)

	hook.Add( "PlayerSay", "MeCommands_Commands", function(ply, text, public)
		text = string.lower( text )
		if ( table.HasValue(MeCommandsConfig.Commands, text) ) then
			MeCommands.OpenMenu(ply)
			return ""
		end
	end)
end


if ( CLIENT ) then

surface.CreateFont("MyFont", {
		font = "Arial",
		extended = false,
		size = 24,
		weight = 2000,
	})


hook.Add("InitPostEntity", "init_mecomjobs", function()
--Here u can add all Medic Teams
Medics = {
	TEAM_MED_PVT,
	TEAM_MED_CPL,
	TEAM_MED_SGT,
	TEAM_MED_SSGT,
	TEAM_MED_FSGT,
	TEAM_MED_2LT,
	TEAM_MED_1LT,
	TEAM_MED_CPT,
	TEAM_MED_MAJ,
	TEAM_MED_COL,
	TEAM_MED_VCMD,
	TEAM_MED_CMD,
}
--Here u can add Other Teams for the Me Commands and Create your Own (look into line 162)
--local Other = {
--	TEAM_HOBO,
--}
--This are the Undertables
MEDICCOMS = {}
OTHERCOMS = {}
MeCommandsConfig.MeComms = {
					[MEDICCOMS] = {
					[1] = {
						Name = "Roll",
						Text = "say /roll",
						--Text2 = "/me liebt dieses Skript",
						Icon =  Material("ucg/mecomms/ucg.png"),
					},
					[2] = {
					Name = "Salute",
						Text = "say /me salutiert mit höchstem Respekt!;salute",
						Icon =  Material("ucg/mecomms/ucg.png"),
					},
					[3] = {
					Name = "Schocken",
						Text = "say /me lädt den Defibrillator auf und setzt zum Schock an",
						Icon =  Material("ucg/mecomms/medic1.png"),
					},
					[4] = {
					Name = "Verband anlegen",
						Text = "say /me desinfiziert,schmiert Bacta auf die Wunde und verbindet diese anschließend",
						Icon =  Material("ucg/mecomms/medic1.png"),
					},
					[5] = {
					Name = "Puls messen",
						Text = "say /me sucht nach Puls",
						Icon =  Material("ucg/mecomms/medic1.png"),
					}
					},
					[OTHERCOMS] = {
					[1] = {
					Name = "Roll",
						Text = "say /roll",
						--Text2 = "/me liebt dieses Skript",
						Icon =  Material("ucg/mecomms/ucg.png"),
					},
					[2] = {
					Name = "Salute",
						Text = "say /me salutiert mit höchstem Respekt!;salute",
						Icon =  Material("ucg/mecomms/ucg.png"),
					},
					}
}
end)


	surface.CreateFont("MeCommands_Font_1", {
		font = "starjedi",
		extended = true,
		size = 24,
		weight = 2000,
	})

	surface.CreateFont("MeCommands_Font_2", {
		font = "starjedi",
		extended = true,
		size = 30,
		weight = 2000,
	})

	surface.CreateFont("MeCommands_Font_3", {
		font = "starjedi",
		extended = true,
		size = 24,
		weight = 2000,
	})
	net.Receive("MeCommands_OpenMenu", function(len, pl)
	
	if( !MainMeComMenu ) then
		MainMeComMenu = vgui.Create( "mecomsmenu_main" )
		MainMeComMenu:SetVisible( false )
	end
	
	if( MainMeComMenu.x == -MainMeComMenu:GetWide() ) then
	
		MainMeComMenu:MoveTo( ScrW()/2 - MainMeComMenu:GetWide()/2, ScrH()/2 - MainMeComMenu:GetTall()/2, .1, 0, .5 )
		MainMeComMenu:Show()
		gui.EnableScreenClicker( true )
	
		
	else
		MainMeComMenu:MoveTo( -MainMeComMenu:GetWide(),ScrH()/2 - MainMeComMenu:GetTall()/2, .1, 0, .5 )
		MainMeComMenu:NewAnimation( 0, .1, .5, function()
			MainMeComMenu:Hide()
			MainMeComMenu:Remove()
			MainMeComMenu = nil
		end)
		
		gui.EnableScreenClicker( false )
	end

	end)
	
		local PANEL = {

		Init = function(self)
		self:SetSize(500,750)
		self:Center()
		--self:SetTitle("")
		local x,y = self:GetSize()
		self:SetPos ( - x, ScrH()/2 - y/2 )
		

		--self:MakePopup()
		--self:SetKeyboardInputEnabled(true)
		
		local button = vgui.Create( "DButton", self)
		button:SetFont( "MeCommands_Font_1" )
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
			MainMeComMenu:MoveTo( -MainMeComMenu:GetWide(),ScrH()/2 - MainMeComMenu:GetTall()/2, .1, 0, .5 )
			MainMeComMenu:NewAnimation( 0, .1, .5, function()
				MainMeComMenu:Hide()
				MainMeComMenu:Remove()
			MainMeComMenu = nil
				
			end)
			gui.EnableScreenClicker( false )
		end

		local ScrollBar = vgui.Create("DScrollPanel", self)
		ScrollBar:SetSize( 450+20, 670 )
		ScrollBar:SetPos( 20, 55 )
		ScrollBar:GetVBar().Paint = function(self, w, h) draw.RoundedBox(0, 0, 0, w, h, MeCommandsConfig.Colors.CC) end
		ScrollBar:GetVBar().btnUp.Paint = function(self, w, h) 
			draw.RoundedBox(0, 0, 0, w, h, MeCommandsConfig.Colors.LightBlack2) 

			surface.SetDrawColor(MeCommandsConfig.Colors.Blue)
			surface.DrawRect(0,0,w,1)
			surface.DrawRect(0,h-1,w,1)
			surface.DrawRect(0,0,1,h)
			surface.DrawRect(w-1,0,1,h)
		end
		ScrollBar:GetVBar().btnDown.Paint = function(self, w, h) 
			draw.RoundedBox(0, 0, 0, w, h, MeCommandsConfig.Colors.LightBlack2) 

			surface.SetDrawColor(MeCommandsConfig.Colors.Blue)
			surface.DrawRect(0,0,w,1)
			surface.DrawRect(0,h-1,w,1)
			surface.DrawRect(0,0,1,h)
			surface.DrawRect(w-1,0,1,h)
		end
		ScrollBar:GetVBar().btnGrip.Paint = function(self, w, h) 
			draw.RoundedBox(0, 0, 0, w, h, MeCommandsConfig.Colors.LightBlack2)

			surface.SetDrawColor(MeCommandsConfig.Colors.Blue)
			surface.DrawRect(0,0,w,1)
			surface.DrawRect(0,h-1,w,1)
			surface.DrawRect(0,0,1,h)
			surface.DrawRect(w-1,0,1,h)
		end

		local List = vgui.Create("DIconLayout", ScrollBar)
		List:SetSize( 450, 670-150 )
		List:SetPos( 0, 0 )
		List:SetSpaceY( 15 )
		List:SetSpaceX( 0 )

		
		--Here you can add Custom TeamChecks to add Other Mecommands to the System
		if table.HasValue(Medics, LocalPlayer():Team()) then
			check = MEDICCOMS
		else
			check = OTHERCOMS
		end 
		
		for k, v in ipairs(MeCommandsConfig.MeComms[check]) do
		
			local LButton = List:Add("DButton")
			LButton:SetSize(450,120)
			LButton:SetText("")
			LButton.Paint = function(self, w, h)
				if ( self:IsHovered() ) then
					draw.RoundedBox(4,0,0,w,h,MeCommandsConfig.Colors.Blue)
					draw.RoundedBox(4,2,2,w-4,h-4,MeCommandsConfig.Colors.LightBlack3)
					
				else
					draw.RoundedBox(4,0,0,w,h,MeCommandsConfig.Colors.Blue)
					draw.RoundedBox(4,2,2,w-4,h-4,MeCommandsConfig.Colors.LightBlack4)
				end

				draw.SimpleText(v.Name,"MeCommands_Font_2",w/2,h/2-15,MeCommandsConfig.Colors.White,TEXT_ALIGN_CENTER)
				surface.SetMaterial( v.Icon ) -- If you use Material, cache it!
					surface.SetDrawColor(MeCommandsConfig.Colors.White)
					surface.DrawTexturedRect( 10,10,100,100 )
				
			end
			LButton.DoClick = function()
				MainMeComMenu:MoveTo( -MainMeComMenu:GetWide(),ScrH()/2 - MainMeComMenu:GetTall()/2, .1, 0, .5 )
			MainMeComMenu:NewAnimation( 0, .1, .5, function()
				MainMeComMenu:Hide()
				MainMeComMenu:Remove()
			MainMeComMenu = nil
				
			end)
			gui.EnableScreenClicker( false )
				local ply = LocalPlayer()
					if v.Text == nil then return end
					ply:ConCommand(v.Text)
					if v.Text2 == nil then return end
					timer.Create( "Text2Timer", 1.5, 1, function() ply:ConCommand(v.Text2) end )
					
			end
		end
		
		end,
		
		Paint = function( self, w, h )
			surface.SetDrawColor(MeCommandsConfig.Colors.Blue)
			surface.DrawRect(0,0,w,30)

			surface.SetDrawColor(MeCommandsConfig.Colors.LightBlack)
			surface.DrawRect(0,30,w,h-30)

			draw.SimpleText("Me Commands","MeCommands_Font_1",5,3,MeCommandsConfig.Colors.White,TEXT_ALIGN_LEFT)

		end
	
	
	
	
	}
vgui.Register( "mecomsmenu_main", PANEL, "EditablePanel")
end