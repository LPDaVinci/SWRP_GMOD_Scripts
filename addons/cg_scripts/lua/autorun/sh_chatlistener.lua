--Set to false if you dont want fucking Sound if a chat message sent
MessageSound = false



sound.Add( {
	name = "chatmessage",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 0,
	pitch = { 100, 100 },
	sound = "ucg/chatsound/talk.mp3"
} )


hook.Add( "OnPlayerChat", "jediacademysound", function( ply, strText, bTeam, bDead ) 
	if MessageSound then 
		for k,v in pairs (player.GetAll()) do
		v:EmitSound("chatmessage")
		end
	end
end )