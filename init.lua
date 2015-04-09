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

-- functions to detect if there is liquid around pos
-- used to avoid placing torches in water or lava
function isliquid (pos)
	local n = minetest.get_node(pos)
	local liquidtype = minetest.registered_nodes[n.name].liquidtype or " "
	if ((liquidtype == "flowing" and n.param2 > 0) or liquidtype == "source") then return true end
	return false
end
function iswet (pos)
	local pi = pos
	local p0 = {x = pos.x, y = pos.y + 1, z = pos.z}
	local p1 = {x = pos.x - 1, y = pos.y, z = pos.z}
	local p2 = {x = pos.x + 1, y = pos.y, z = pos.z}
	local p3 = {x = pos.x, y = pos.y, z = pos.z + 1}
	local p4 = {x = pos.x, y = pos.y, z = pos.z - 1}
	return isliquid(pi)
		or isliquid(p0)
		or isliquid(p1)
		or isliquid(p2)
		or isliquid(p3)
		or isliquid(p4)
end
