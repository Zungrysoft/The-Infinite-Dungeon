#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/hall_west_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/hall_west_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/hall_west_3", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Trapped room
execute if predicate tid:random_04 if block ~2 ~ ~4 polished_granite positioned ~2 ~8 ~4 run function tid:misc/moon_potion_dropper

#Open wall
execute at @s run function tid:dungeon/moon/open_room

#Mark this area on the map
fill ~ 255 ~ ~5 255 ~8 minecraft:granite replace minecraft:end_stone
fill ~ 255 ~ ~5 255 ~8 minecraft:granite replace minecraft:black_concrete
fill ~ 255 ~4 ~5 255 ~4 minecraft:red_sandstone replace minecraft:granite

#Mark this area as generated
fill ~ ~128 ~ ~5 ~136 ~8 minecraft:blue_wool

#Fill moon stone around the edge
fill ~-1 ~-1 ~-1 ~6 ~9 ~9 end_stone replace stone

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s

