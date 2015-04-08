torches = {}
torches.enable_ceiling = minetest.setting_getbool("torches_enable_ceiling") or false
local style = minetest.setting_get("torches_style")

local modpath = minetest.get_modpath("torches")

-- load torch definition depending on stlye
if style == "minecraft" then
	dofile(modpath.."/mc_style.lua")
else
	dofile(modpath.."/mt_style.lua")
end

-- functions to detect placing in water
function iswater (pos)
	local n = minetest.get_node(pos)
	if minetest.get_item_group(n.name, "water") ~= 0 then return true end --is water
	return false
end
function iswet (pos)
	local pi = pos
	local p0 = {x = pos.x, y = pos.y + 1, z = pos.z}
	local p1 = {x = pos.x - 1, y = pos.y, z = pos.z}
	local p2 = {x = pos.x + 1, y = pos.y, z = pos.z}
	local p3 = {x = pos.x, y = pos.y, z = pos.z + 1}
	local p4 = {x = pos.x, y = pos.y, z = pos.z - 1}
	-- returns true if it's wet around pos
	return iswater(pi) or iswater(p0) or iswater(p1) or iswater(p2) or iswater(p3) or iswater(p4)
end
