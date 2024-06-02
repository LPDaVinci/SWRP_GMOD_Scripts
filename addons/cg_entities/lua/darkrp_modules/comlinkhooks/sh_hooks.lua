local BlockedCommands = {"vadvert","advert","funk","vfunk","a", "av"} 

hook.Add("canChatCommand","BlockChatCommands",function(ply,com,args)

local ent = nil
for index, en in pairs(ents.FindByClass("com_generator")) do
ent = en
break
end


if !IsValid(ent) then return end

local maxComLinkHealth = ent.EntHealth
local currentComLinkHealth = ent:GetEntHealth()

if currentComLinkHealth <= 0 then
	if table.HasValue(BlockedCommands,com) then 
	ply:ChatPrint("Der ComLink Generator muss repariert werden")

		return false
			--U can do somethink here like notification 
	end 
end
end)




hook.Add("onChatCommand","modifychatcommand", function(ply,com,args)
local ent = nil
for index, en in pairs(ents.FindByClass("com_generator")) do
ent = en
break
end

if !IsValid(ent) then return end

local maxComLinkHealth = ent.EntHealth
local currentComLinkHealth = ent:GetEntHealth()

text = args

if currentComLinkHealth <= maxComLinkHealth/2 then
text = string.gsub( args,"(%w)%w", "%1*" )
end
if currentComLinkHealth <= maxComLinkHealth/4 then
text = string.gsub( args,"%w", "*" )
end

for k,v in pairs(player.GetAll()) do
local col = team.GetColor(ply:Team())
if com == "advert" or com == "funk" or com == "a" then

return "", DarkRP.talkToPerson(v, col, "[Funk] " ..ply:Nick(), Color(255,255,0,255), text, ply)
elseif com == "vfunk" or com == "vadvert" or com == "av" then

return "", DarkRP.talkToPerson(v, col, "[Funk] " ..ply:Nick(), Color(255,255,0,255), text .." ".."[Verschl.]", ply)
end
end
end)