Minetest mod "Torches"
======================
version: 2.1

License of source code and textures: WTFPL
------------------------------------------
(c) Copyright BlockMen (2013-2015)


This program is free software. It comes without any warranty, to
the extent permitted by applicable law. You can redistribute it
and/or modify it under the terms of the Do What The Fuck You Want
To Public License, Version 2, as published by Sam Hocevar. See
http://sam.zoy.org/wtfpl/COPYING for more details.


Using the mod:
--------------
This mod adds 3D torches to Minetest. They also have "real" flames and look much more realistic.
Notice: Already placed old torches will be converted to new, ceiling placed will be removed


!! Warning: Extensive use (like a few dozen per mapblock [16x16x16 nodes]) can slowdown servers.


Changelog:
----------
- Torches on wall dont fall when node under it is dug
- Torches fall directly when not placed on floor or wall
- fixed different placing bugs

1.3:
- Torches only show flames when player is near (13 blocks)
- Old torches are converted to new, ceiling torches are dropped

1.3.1:
- fix dropping torches when digging a block next to it
- all torches attached to a block get droped when dug

1.3.2:
- fix crashes by unknown nodes

2.0:
- Use new mesh drawtype to improve wallmounted torches
- Update particle usage
- New textures; flame texture fix by Yepoleb
- Fix for doors, chests, etc (rightclick support)

2.1
- Fix wallmounted torch mesh
- Clean up code, use wallmounted paramtype2
- Fix torches being placeable on ceilings (reported by kilbith)
