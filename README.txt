Minetest mod "Torches"
======================
Version: 3.0

(c) Copyright BlockMen (2013-2015)


About this mod:
~~~~~~~~~~~~~~~
This mod adds two different styles of 3D torches to Minetest, by default in Minetest style (flames are animated textures).
The second style is Minecraft like, so flames are "animated" by using particles

Minetest styled:
Those torches use the same textures as the 2D torch, so its fully compatible with Texture Packs. By default ceiling torches
are removed and cannot be placed aswell. You can change this behavior by adding "torches_enable_ceiling = true" to your minetest.conf
Furthermore this style is more server traffic friendly, so it is enabled by default

Minecraft styled:
Those torches have a non-animated texture and needs to be supported by Texture Packs (currently most don't support this mod).
"Animation" is done like in Minecraft with particles, which cause (in the current implementation in the Minetest engine)
some amount of traffic and can cause lags at slow connections. The rate and distance when particles are send is configurable
in the first lines of "mc_style.lua". Enable this style by adding "torches_style = minecraft" to your minetest.conf. Note that
the ceiling setting is ignored with this style.

More informations:
Both styles convert existing torches to the new style. Keep in mind that by default ceiling torches get removed!


License:
~~~~~~~~
(c) Copyright BlockMen (2013-2015)

Code:
WTFPL
This program is free software. It comes without any warranty, to
the extent permitted by applicable law. You can redistribute it
and/or modify it under the terms of the Do What The Fuck You Want
To Public License, Version 2, as published by Sam Hocevar. See
http://sam.zoy.org/wtfpl/COPYING for more details.

Textures and Meshes/Models:
CC-BY 3.0 BlockMen


Github:
~~~~~~~
https://github.com/BlockMen/torches

Forum:
~~~~~~
https://forum.minetest.net/viewtopic.php?id=6099


Changelog:
~~~~~~~~~~
see changelog.txt
