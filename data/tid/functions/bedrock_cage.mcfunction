#Platform
fill ~-7 ~-3 ~-7 ~7 ~ ~7 minecraft:bedrock
#Cage
fill ~-5 ~1 ~-5 ~5 ~5 ~5 minecraft:bedrock
fill ~-4 ~1 ~-4 ~4 ~4 ~4 minecraft:air
#Torches
setblock ~2 ~1 ~2 torch
setblock ~-2 ~1 ~2 torch
setblock ~2 ~1 ~-2 torch
setblock ~-2 ~1 ~-2 torch
#Reserve the area this dungeon takes up
fill ~-7 ~-131 ~-7 ~7 ~-123 ~7 minecraft:air
fill ~-7 ~125 ~-7 ~7 ~133 ~7 minecraft:air
#These chunks are no longer needed
forceload remove -7 -7 7 7