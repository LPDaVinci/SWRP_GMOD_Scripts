ucg = ucg or {};
ucg.Rundfunk = ucg.Rundfunk or {};

if (SERVER) then
  util.AddNetworkString( "ucg_rundfunk" )
end;

if CLIENT then
	AddCSLuaFile("thirdparty/medialib.lua")
end

ucg.MediaLib = include("thirdparty/medialib.lua")
