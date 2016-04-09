-- This file is part of Minetest TNG
-- =================================
-- mods/default/lua/init.lua
-- 
-- See README.txt for licensing and other information.

-- Load files
local modpath = core.get_modpath("default")
local luapath = modpath .. "/lua/"
local mg_name = core.get_mapgen_params().mgname or ""


dofile(luapath .. "gui.lua")
dofile(luapath .. "functions.lua")
dofile(luapath .. "register.lua")
dofile(luapath .. "environment.lua")
dofile(luapath .. "sounds.lua")
dofile(luapath .. "apis/fences.lua")
dofile(luapath .. "apis/fencegates.lua")
dofile(luapath .. "apis/tables.lua")
dofile(luapath .. "apis/slabs.lua")
dofile(luapath .. "apis/stairs.lua")
dofile(luapath .. "apis/walls.lua")
dofile(luapath .. "apis/screwdriver.lua")
dofile(luapath .. "apis/trees.lua")
dofile(luapath .. "apis/saplings.lua")
dofile(luapath .. "nodes.lua") -- loads files in ./nodes/
dofile(luapath .. "items.lua") -- loads files in ./items/
dofile(luapath .. "crafting.lua")
dofile(luapath .. "mapgen/mapgen.lua")
if mg_name == "v6" then
	dofile(luapath .. "mapgen/mapgenv6.lua")
elseif mg_name == "v5" or mg_name == "v7" or mg_name == "valleys" then
	dofile(luapath .. "mapgen/mapgenv57.lua")
end
dofile(luapath .. "mapgen/ruins.lua")
dofile(luapath .. "chat_cmds.lua")
dofile(luapath .. "item_pickup.lua")
dofile(luapath .. "item_physics.lua")
dofile(luapath .. "player.lua")
dofile(luapath .. "sethome.lua")
dofile(luapath .. "spectator_mode.lua")

if core.setting_getbool("creative_mode") then
	dofile(luapath .. "creative.lua")
end

dofile(luapath .. "aliases.lua")
dofile(luapath .. "legacy.lua")
