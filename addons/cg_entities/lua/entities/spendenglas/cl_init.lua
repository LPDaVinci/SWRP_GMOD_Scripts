-- addons/sb_addons/lua/entities/tip_jar/cl_init.lua
-- Retrieved by https://github.com/lewez/glua-steal
-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

include("shared.lua")

surface.CreateFont("TipJar",{
	font = "Trebuchet24",
	size = 75,
})

local dist = 250^2
function ENT:Draw()
	self:DrawModel()

	if self:GetPos():DistToSqr(LocalPlayer():GetPos()) > dist then return end

	local ang = LocalPlayer():EyeAngles()
	ang:RotateAroundAxis(ang:Forward(),90)
	ang:RotateAroundAxis(ang:Right(),90)

	cam.Start3D2D(self:GetPos() + self:GetUp()*12,Angle(0,ang.y,90),0.04)
		draw.SimpleText("Spendenglas","TipJar",0,-5,Color(255,50,50),TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)	

		local ply = self:Getowning_ent()
		if ply and IsValid(ply) then
			draw.SimpleText(ply:Name(),"TipJar",0,50,Color(50,250,50),TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		else
			draw.SimpleText("Kein Besitzer","TipJar",0,50,Color(250,250,50),TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	cam.End3D2D()
end

local function actualDraw(x,y,w,h,startU,startV,endU,endV,bg)
	local curBG = Material("cg/blurs/blue_red.jpg")
	local alpha = 240
		if alpha > 0 then
				surface.SetMaterial(curBG)
				surface.SetDrawColor(255,255,255,alpha)
				surface.DrawTexturedRectUV(x,y,w,h,startU,startV,endU,endV)
		end
			surface.SetDrawColor(Color(30,30,30,50))
			surface.DrawRect(x,y,w,h)
end

net.Receive("TipJar",function()
	local jar = net.ReadEntity()
	local owner = jar:Getowning_ent()
	if !IsValid(owner) then
		notification.AddLegacy("Besitzer nicht mehr online",0,5)
		return
	end
	local fr = vgui.Create("DFrame")
	fr:SetPos(ScrW()/2 - 350/2, ScrH()/2 - 95/2)
	fr:SetSize(350,95)
	fr:MakePopup()

	function fr:Paint(w,h)
	if self.PrePaint then if self:PrePaint(w,h) == false then return end end
	
	local x, y = fr:LocalToScreen(0,0)
	local w, h = fr:GetWide(), fr:GetTall()
	local scrw, scrh = ScrW(), ScrH()

	actualDraw(0,0,w,h,x/scrw,y/scrh,(x+w)/scrw,(y+h)/scrh)
	
	
		surface.SetDrawColor(Color(0,0,0,50))
		surface.DrawRect(0,0,w,30)

		surface.SetDrawColor(Color(0,0,0,100))
		surface.DrawOutlinedRect(0,0,w,h)
		surface.DrawLine(0,30,w,30)

		surface.SetDrawColor(Color(252,98,3))
		surface.DrawRect(1,1,2,29)



			surface.SetFont("Trebuchet24")
			surface.SetTextColor(255,255,255,255)
			surface.SetTextPos(10,2.5)
			surface.DrawText("Spendenglas - "..owner:Name())
		if self.PostPaint then self:PostPaint(w,h) end
		
		end
		
		-- Remove Parent Panels we dont need
	fr.btnClose:Remove()
	fr.btnMaxim:Remove()
	fr.btnMinim:Remove()
	fr.lblTitle:Remove()
	
	-- New Layout function
	function fr:PerformLayout()
		local btn_Close = self.btn_Close
		if IsValid(btn_Close) then
			btn_Close:SetPos(self:GetWide()-btn_Close:GetWide()-5,5)
		end
	end

local closebtn = vgui.Create("DButton",fr)
	closebtn:SetSize(20,20)
	closebtn:SetPos(2,65)
	closebtn:SetText("")
	
	
		function closebtn:Paint(w,h)
			surface.SetDrawColor(Color(252,98,3))
			surface.DrawLine(0,0,w,h)
			surface.DrawLine(w,0,0,h)
		end
		function closebtn:DoClick()
			fr:Remove()
		end
		fr.btn_Close = closebtn	
		

		

	local txt = vgui.Create("DTextEntry",fr)
	txt:SetSize(fr:GetWide()-10,25)
	txt:SetPos(2,35)
	txt:SetFont("Trebuchet24")
	txt:SetNumeric(true)
	function txt:Paint(w,h)
		surface.SetDrawColor(Color(0,0,0,100))
		surface.DrawOutlinedRect(0,0,w,h)
		
		

			if self:GetValue() == "" and !self:IsEditing() then
				surface.SetFont(self:GetFont())
				surface.SetTextColor(ColorAlpha(Color(255,255,255),150))
				surface.SetTextPos(5,2.5)
				surface.DrawText("Menge")
		end

		self:DrawTextEntryText(Color(255,255,255),Color(252,98,3),Color(255,255,255))
	end
	
	
	txt:SetUpdateOnType(true)
	function txt:OnValueChange(val)
		if fr.OnValueChanged then
			fr:OnValueChanged(val)
		end
	end

	local b = vgui.Create("DButton",fr)
	b:SetSize(fr:GetWide()-10,25)
	b:SetPos(2,65)
	b:SetText("")
	
	
	function b:Paint(w,h)

		local clickable = self.Clickable == nil or self:Clickable() == true

			surface.SetDrawColor(clickable and self:IsHovered() and (self:IsDown() and Color(0,0,0,50) or Color(0,0,0,50)) or Color(0,0,0,50))
			surface.DrawRect(0,0,w,h)
			surface.SetDrawColor(Color(252,98,3))
			surface.DrawRect(1,1,2,h-2)
	
		surface.SetDrawColor(Color(0,0,0,100))
		surface.DrawOutlinedRect(0,0,w,h)
		draw.SimpleText("Spenden", "Trebuchet24", true and 8 or w/2, h/2, Color(255,255,255,255), true and TEXT_ALIGN_LEFT or TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)	
	

	
	
	end
	b.WasHovered = false
		function b:Think()
		if self.ExtraThink then self:ExtraThink() end
		
		local hoverNow = self:IsHovered() 
		local hoverLast = self.WasHovered
		if hoverNow != hoverLast then
			self.WasHovered = hoverNow
			surface.PlaySound("UI/buttonrollover.wav")
		end
	end
	
		function b:DoClick()
		local am = tonumber(txt:GetValue())
		if am then
				if am < 1 then
					notification.AddLegacy("Du kannst nicht weniger als 1€ spenden!",0,5)
				
				elseif am > LocalPlayer():getDarkRPVar("money") then
					notification.AddLegacy("Du hast nicht genug Geld auf der Hand!",0,5)
				else
				net.Start("TipJar")
				net.WriteInt(am,32)
				net.WriteEntity(jar)
				net.SendToServer()
				notification.AddLegacy("Du hast "..jar:Getowning_ent():Name().." "..DarkRP.formatMoney(am).." gespendet!",2,5)
				end
		end
		surface.PlaySound("UI/buttonclick.wav")
		fr:Close()
	end
end)

