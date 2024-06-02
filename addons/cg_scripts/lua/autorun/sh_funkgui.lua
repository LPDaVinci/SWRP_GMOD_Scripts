Funk = Funk or {}
FunkConfig = FunkConfig or {}

FunkConfig.Taste = KEY_M
FunkConfig.Commands = {"!funkmenu"}


FunkConfig.Colors = {}
FunkConfig.Colors.Orange = Color(255,165,0,255)
FunkConfig.Colors.White = Color(255,255,255,255)

FunkConfig.Colors.LightBlack = Color(40,40,40,255)
FunkConfig.Colors.LightBlack2 = Color(30,30,30,255)
FunkConfig.Colors.LightBlack3 =Color(100,100,100,255)
FunkConfig.Colors.LightBlack4 = Color(60,60,60,255)
FunkConfig.Colors.CC = Color(255, 255, 255, 0)

if ( SERVER ) then
	util.AddNetworkString("Funk_OpenMenu")

	function Funk.OpenMenu(ply)
		net.Start("Funk_OpenMenu")
		net.Send(ply)
	end

	hook.Add("PlayerButtonDown", "Funk_ButtonPressed", function(ply, button)
		if ( button == FunkConfig.Taste ) then
			Funk.OpenMenu(ply)
		end
	end)

	hook.Add( "PlayerSay", "Funk_Commands", function(ply, text, public)
		text = string.lower( text )
		if ( table.HasValue(FunkConfig.Commands, text) ) then
			Funk.OpenMenu(ply)
			return ""
		end
	end)
end

if ( CLIENT ) then
	local UnknownMessage = 0
	local PlayerName = nil
	local PlayerMessage = nil

	surface.CreateFont("Landung_Font_1", {
		font = "Arial",
		extended = false,
		size = 24,
		weight = 2000,
	})

	surface.CreateFont("Landung_Font_2", {
		font = "Arial",
		extended = false,
		size = 30,
		weight = 2000,
	})

	surface.CreateFont("Landung_Font_3", {
		font = "Arial",
		extended = false,
		size = 24,
		weight = 2000,
	})

	net.Receive("Funk_OpenMenu", function()
		--NO Menu when on piano tool--
		if IsValid( LocalPlayer().Instrument ) then return end
		if( !MainFunkMenu ) then
		MainFunkMenu = vgui.Create( "funkmenu_main" )
		MainFunkMenu:SetVisible( false )
	end
	
	if( MainFunkMenu.x == -MainFunkMenu:GetWide() ) then
	
		MainFunkMenu:MoveTo( ScrW()/2 - MainFunkMenu:GetWide()/2, ScrH()/2 - MainFunkMenu:GetTall()/2, .1, 0, .5 )
		MainFunkMenu:Show()
		gui.EnableScreenClicker( true )
	
		
	else
		MainFunkMenu:MoveTo( -MainFunkMenu:GetWide(),ScrH()/2 - MainFunkMenu:GetTall()/2, .1, 0, .5 )
		MainFunkMenu:NewAnimation( 0, .1, .5, function()
			MainFunkMenu:Hide()
			MainFunkMenu:Remove()
			MainFunkMenu = nil
			PlayerName = nil
				UnknownMessage = 0
		end)
		
		gui.EnableScreenClicker( false )
	end
		
	end)
	
	
--PANELREGISTERPART



local PANEL = {

Init = function(self)
		self:SetSize(600,300)
		self:Center()
		--self:SetTitle("")
		local x,y = self:GetSize()
		self:SetPos ( - x, ScrH()/2 - y/2 )
		

	self:MakePopup()
	self:SetKeyboardInputEnabled(false)
	--self:SetKeyboardInputEnabled()
	
		local button = vgui.Create( "DButton", self)
		button:SetFont( "Landung_Font_1" )
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
			MainFunkMenu:MoveTo( -MainFunkMenu:GetWide(),ScrH()/2 - MainFunkMenu:GetTall()/2, .1, 0, .5 )
			MainFunkMenu:NewAnimation( 0, .1, .5, function()
				MainFunkMenu:Hide()
				MainFunkMenu:Remove()
			MainFunkMenu = nil
			PlayerName = nil
				UnknownMessage = 0
				
			end)
			gui.EnableScreenClicker( false )
		end
		
		
	local list_view = vgui.Create("DComboBox")
	list_view:SetParent(self)
	list_view:SetPos(25, 100)
	list_view:SetSize(200, 25)
	list_view:SetValue( "Name" )
	list_view.OnSelect = function( panel, index, value )
	PlayerName = value
end
	--ADCHOICE ONLY IDS--

	for k,v in pairs(player.GetAll()) do
		if string.match(v:Nick(), "[^%s]+[^%w]+(...%d)") then
		local line = list_view:AddChoice(string.match(v:Nick(), "[^%s]+[^%w]+(...%d)"))
		elseif string.match(v:Nick(), "[^%s]+[^%w]+(..%d)") then
		local line = list_view:AddChoice(string.match(v:Nick(), "[^%s]+[^%w]+(..%d)"))
		else
		local line = list_view:AddChoice(v:Nick())
		end
	end

	--Original
	--[[
		for k,v in pairs(player.GetAll()) do
		
		local line = list_view:AddChoice(v:Nick())

	end
	]]--
	
	
	
	local jedirat = list_view:AddChoice("Jedi Rat")
	local basis = list_view:AddChoice("Basis")
	local venator = list_view:AddChoice("Venator")
	local coruscant = list_view:AddChoice("Coruscant")
	
local TextEntry = vgui.Create( "DTextEntry", self ) -- create the form as a child of frame
TextEntry:SetPos( 300, 100 )
TextEntry:SetSize( 200, 25 )
TextEntry:SetText( "" )
--TextEntry:SetEditable(true)
TextEntry.MaxChars = 100

TextEntry.OnGetFocus = function(PanelVar) -- Passes a single argument, the text entry object.
		self:SetKeyboardInputEnabled(true)
	end
	TextEntry.OnLoseFocus = function(PanelVar) -- Passes a single argument, the text entry object.
		self:SetKeyboardInputEnabled(false)
	end
	
TextEntry.OnTextChanged = function(self)
	local txt = self:GetValue()
	local amt = string.len(txt)
	if amt > self.MaxChars then
		self:SetText(self.OldText)
		self:SetValue(self.OldText)
	else
		self.OldText = txt
	end
end
TextEntry.OnEnter = function( self )
PlayerMessage = self:GetValue()
if PlayerName == nil then 
LocalPlayer():ChatPrint( "Du hast keinen Spieler ausgewählt" )
MainFunkMenu:MoveTo( -MainFunkMenu:GetWide(),ScrH()/2 - MainFunkMenu:GetTall()/2, .1, 0, .5 )
			MainFunkMenu:NewAnimation( 0, .1, .5, function()
				MainFunkMenu:Hide()
				MainFunkMenu:Remove()
			MainFunkMenu = nil
			PlayerName = nil
			UnknownMessage = 0
			end)
			gui.EnableScreenClicker( false )
return

end

--Short ID Funkmenu

LocalName = LocalPlayer():Nick()

		if string.match(LocalPlayer():Nick(), "[^%s]+[^%w]+(...%d)") then
		 LocalName = string.match(LocalPlayer():Nick(), "[^%s]+[^%w]+(...%d)")
		elseif string.match(LocalPlayer():Nick(), "[^%s]+[^%w]+(..%d)") then
		 LocalName = string.match(LocalPlayer():Nick(), "[^%s]+[^%w]+(..%d)") 
		else
		 LocalName = LocalPlayer():Nick()
		end


--Original
--[[
LocalName = LocalPlayer():Nick()
]]--

if (UnknownMessage == 1) then

					LocalPlayer():ConCommand("say /vfunk ".."*"..LocalName.." an " .. PlayerName.. "* " ..PlayerMessage )
				else
					LocalPlayer():ConCommand("say /funk ".."*"..LocalName.." an " .. PlayerName.. "* " ..PlayerMessage )
				end
MainFunkMenu:MoveTo( -MainFunkMenu:GetWide(),ScrH()/2 - MainFunkMenu:GetTall()/2, .1, 0, .5 )
			MainFunkMenu:NewAnimation( 0, .1, .5, function()
				MainFunkMenu:Hide()
				MainFunkMenu:Remove()
				MainFunkMenu = nil
				PlayerName = nil
				UnknownMessage = 0
			end)
			gui.EnableScreenClicker( false )
end




			local LCheckBox = vgui.Create("DCheckBox", self)
		LCheckBox:SetSize(24,24)
		LCheckBox:SetPos( 415, 240 )
		LCheckBox:SetValue( UnknownMessage )
		LCheckBox.OnChange = function(self)
			if ( self:GetChecked() ) then
				UnknownMessage = 1
			else
				UnknownMessage = 0
			end
		end

end,
Paint = function( self, w, h )
surface.SetDrawColor(FunkConfig.Colors.Orange)
			surface.DrawRect(0,0,w,30)

			surface.SetDrawColor(FunkConfig.Colors.LightBlack)
			surface.DrawRect(0,30,w,h-30)

			draw.SimpleText("Funk Menü","Landung_Font_1",5,3,FunkConfig.Colors.White,TEXT_ALIGN_LEFT)

			draw.RoundedBox(4,w/2-150,h-50-25,325-25,50,FunkConfig.Colors.Orange)
			draw.RoundedBox(4,w/2-150+2,h-50-25+2,325-4-25,50-4,FunkConfig.Colors.LightBlack2)

			
			draw.SimpleText("Nachricht an:","Landung_Font_3",90,50,FunkConfig.Colors.White,TEXT_ALIGN_CENTER)
			draw.SimpleText("Nachricht:","Landung_Font_3",350,50,FunkConfig.Colors.White,TEXT_ALIGN_CENTER)
			draw.SimpleText("Drücke Enter um deine Nachricht abzusenden:","Landung_Font_3",300,150,FunkConfig.Colors.White,TEXT_ALIGN_CENTER)
			draw.SimpleText("Verschlüsselte Nachricht?","Landung_Font_3",w/2-10,240,FunkConfig.Colors.White,TEXT_ALIGN_CENTER)

end

}
vgui.Register( "funkmenu_main", PANEL, "EditablePanel")


end