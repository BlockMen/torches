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
	local p0 = pos
	local p1 = {x = p0.x - 1, y = p0.y - 0.5, z = p0.z}
	local p2 = {x = p0.x + 1, y = p0.y - 0.5, z = p0.z}
	local p3 = {x = p0.x, y = p0.y - 0.5, z = p0.z + 1}
	local p4 = {x = p0.x, y = p0.y - 0.5, z = p0.z - 1}
	if iswater(p0) == true
	or iswater(p1) == true
	or iswater(p2) == true
	or iswater(p3) == true
	or iswater(p4) == true then	
		return true -- is wet
	end
	return false 	-- all dry
end
