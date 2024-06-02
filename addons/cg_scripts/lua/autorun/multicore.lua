if (SERVER) then
	AddCSLuaFile ( "multicore.lua" )

	util.AddNetworkString("MCORE_OpenMenu")

--	hook.Add("PlayerInitialSpawn", "MCORE_OpenMenu", function(ply)
	--	timer.Simple(6, function()
		--	net.Start("MCORE_OpenMenu")
		--	net.Send(ply)
	--	end)
	--end)
	
	hook.Add( "PlayerSay", "playersaymulticore", function( _p, _text, public )
	
			if ( _text == "!multicore" ) then
				net.Start("MCORE_OpenMenu");
				net.Send(_p);
				return "";
                        end
		end );
end



if (CLIENT) then
	surface.CreateFont( "MCORE_Font_1", {
		font = "Arial",
		extended = false,
		size = 24,
		weight = 500,
	} )
  	surface.CreateFont( "MCORE_Font_2", {
  		font = "Arial",
  		extended = false,
  		size = 19,
  		weight = 800,
  } )

	local midW, midH = ScrW() / 2, ScrH() / 2
		local function OpenMultiCoreButton()
			local mcderma = vgui.Create( "DFrame" )
			mcderma:SetPos( midW - 350/2 , midH - 150/2 )
			mcderma:SetSize( 350, 250 )
			mcderma:SetTitle( "Multicore Rendering" )
			mcderma:ShowCloseButton( false )
			mcderma:MakePopup()
			mcderma.Paint = function( self, w, h )
				surface.SetDrawColor(255,165,0,255)
				surface.DrawRect(0,0,w,25)

				surface.SetDrawColor(40,40,40,255)
				surface.DrawRect(0,25,w,h-25)
			end

			local mclabel = vgui.Create( "DLabel", mcderma )
			mclabel:SetPos( 0, 30 )
			mclabel:SetSize( 350, 30 )
			mclabel:SetFont("MCORE_Font_2")
			mclabel:SetText( "Willst du Multicore Rendering aktivieren?" )
			mclabel:SetContentAlignment(5)
			mclabel:SetTextColor( Color( 255, 255, 255 ) )

			local mclabel2 = vgui.Create( "DLabel", mcderma )
			mclabel2:SetPos( 32, 58 )
			mclabel2:SetSize( 280, 16 )
			mclabel2:SetFont("MCORE_Font_2")
			mclabel2:SetText( "Dies kann deine FPS erhöhen" )
			mclabel2:SetContentAlignment(5)
			mclabel2:SetTextColor( Color( 255, 255, 255 ) )

			local textinfo = [[(Mit !multicore kannst du
			dieses Menü erneut öffnen)]]
			local mclabel3 = vgui.Create( "DLabel", mcderma )
			mclabel3:SetPos( 32, 84 )
			mclabel3:SetSize( 280, 32 )
			mclabel3:SetFont("MCORE_Font_2")
			mclabel3:SetText( textinfo )
			mclabel3:SetContentAlignment(5)
			mclabel3:SetTextColor( Color( 255, 255, 255 ) )
			
			
			
			local mcbutton = vgui.Create( "DButton", mcderma )
			mcbutton:SetFont("MCORE_Font_1")
			mcbutton:SetText( "Aktivieren" )
			mcbutton:SetTextColor( Color( 255, 255, 255 ) )
			mcbutton:SetPos( 73, 130 )
			mcbutton:SetSize( 200, 45 )
			mcbutton.Paint = function( self, w, h )
				draw.RoundedBox( 4, 0, 0, w, h, Color( 255,165,0,255 ) )
				draw.RoundedBox( 4, 2, 2, w-4, h-4, Color( 40,40,40,255 ) )
			end
			mcbutton.DoClick = function()
				RunConsoleCommand( "gmod_mcore_test", "1" )
				RunConsoleCommand( "mat_queue_mode", "2" )
				RunConsoleCommand( "cl_threaded_bone_setup", "1" )
				RunConsoleCommand( "r_queued_ropes", "1" )
				RunConsoleCommand( "cl_threaded_client_leaf_system", "1" )
				RunConsoleCommand( "r_threaded_renderables", "1" )
				RunConsoleCommand( "r_threaded_particles", "1" )
				RunConsoleCommand( "M9KGasEffect", "0" )
				print( "Multicore Rendering wurde nun aktiviert" )
				mcderma:Close()
			end
			local mcbuttonclose = vgui.Create( "DButton", mcderma )
			mcbuttonclose:SetFont("MCORE_Font_1")
			mcbuttonclose:SetText( "Deaktivieren" )
			mcbuttonclose:SetTextColor( Color( 255, 255, 255 ) )
			mcbuttonclose:SetPos( 73, 180 )
			mcbuttonclose:SetSize( 200, 45 )
			mcbuttonclose.Paint = function( self, w, h )
				draw.RoundedBox( 4, 0, 0, w, h, Color( 255,165,0,255 ) )
				draw.RoundedBox( 4, 2, 2, w-4, h-4, Color( 40,40,40,255 ) )
			end
			mcbuttonclose.DoClick = function()
				RunConsoleCommand( "gmod_mcore_test", "0" )
				RunConsoleCommand( "mat_queue_mode", "-1" )
				RunConsoleCommand( "cl_threaded_bone_setup", "0" )
				RunConsoleCommand( "r_queued_ropes", "1" )
				RunConsoleCommand( "cl_threaded_client_leaf_system", "0" )
				RunConsoleCommand( "r_threaded_renderables", "0" )
				RunConsoleCommand( "r_threaded_particles", "1" )
				RunConsoleCommand( "M9KGasEffect", "1" )
				print( "Multicore Rendering wurde nun deaktiviert" )
				mcderma:Close()
			end
		end

	net.Receive("MCORE_OpenMenu", OpenMultiCoreButton)
end