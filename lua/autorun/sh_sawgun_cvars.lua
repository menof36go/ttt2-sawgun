if SERVER then
	AddCSLuaFile()
	if file.Exists("scripts/sh_convarutil.lua", "LUA") then
		AddCSLuaFile("scripts/sh_convarutil.lua")
		print("[INFO][Sawgun] Using the utility plugin to handle convars instead of the local version")
	else
		AddCSLuaFile("scripts/sh_convarutil_local.lua")
		print("[INFO][Sawgun] Using the local version to handle convars instead of the utility plugin")
	end
end

if file.Exists("scripts/sh_convarutil.lua", "LUA") then
	include("scripts/sh_convarutil.lua")
else
	include("scripts/sh_convarutil_local.lua")
end

-- Must run before hook.Add
local cg = ConvarGroup("Sawgun", "Sawgun")
Convar(cg, false, "ttt_sawblade_rotate", 1, { FCVAR_ARCHIVE, FCVAR_NOTIFY, FCVAR_REPLICATED }, "Do you want the sawblade to rotate?", "bool")
Convar(cg, false, "ttt_sawblade_collide", 1, { FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Do you want the sawblade to collide with players?", "bool")
Convar(cg, false, "ttt_sawgun_secondaryFire", 1, { FCVAR_ARCHIVE, FCVAR_NOTIFY, FCVAR_REPLICATED }, "Do you want to enable the secondary fire?", "bool")
Convar(cg, false, "ttt_sawgun_automaticFire", 0, { FCVAR_ARCHIVE, FCVAR_NOTIFY, FCVAR_REPLICATED }, "Do you want to enable automatic fire?", "bool")
Convar(cg, false, "ttt_sawgun_damage", 100, { FCVAR_ARCHIVE, FCVAR_NOTIFY }, "How much damage you want the sawblade to have on impact?", "int", 1, 500)
Convar(cg, false, "ttt_sawgun_ammo", 6, { FCVAR_ARCHIVE, FCVAR_NOTIFY, FCVAR_REPLICATED }, "How much ammo do you want the sawgun to spawn with?", "int", 1, 255)
Convar(cg, false, "ttt_sawgun_clipSize", 3, { FCVAR_ARCHIVE, FCVAR_NOTIFY, FCVAR_REPLICATED }, "How much ammo per clip do you want the sawgun to have?", "int", 1, 255)
Convar(cg, false, "ttt_sawgun_rpm", 60, { FCVAR_ARCHIVE, FCVAR_NOTIFY, FCVAR_REPLICATED }, "How many sawblades should this baby fire per minute?", "int", 1, 255)
--
--generateCVTable()
--