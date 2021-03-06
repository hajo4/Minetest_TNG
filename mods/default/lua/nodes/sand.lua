-- mods/default/lua/nodes/sand.lua
-- ===============================
-- See README.txt for licensing and other information.

default.register_node("default:sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = default.node_sound_sand_defaults(),
})

default.register_node("default:desert_sand", {
	description = "Desert Sand",
	tiles = {"default_desert_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = default.node_sound_sand_defaults(),
})

-- Crafting
core.register_craft({
	output = "default:sand 4",
	recipe = {
		{"default:sandstone"},
	}
})
