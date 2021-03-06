#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/entrance_east", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Add entrance detail
execute positioned ~3 ~2 ~5 run function tid:dungeon/moon/select_detail

#Mark this area as generated
fill ~ ~128 ~ ~25 ~134 ~16 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~25 255 ~16 minecraft:granite replace minecraft:end_stone
fill ~ 255 ~ ~25 255 ~16 minecraft:granite replace minecraft:black_concrete
fill ~ 255 ~8 ~25 255 ~8 minecraft:red_sandstone replace minecraft:granite

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s

