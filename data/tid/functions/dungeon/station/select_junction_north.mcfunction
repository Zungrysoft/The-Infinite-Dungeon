#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/junction_cross", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/junction_tee_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/junction_tee_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/junction_tee_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/junction_turn_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/junction_turn_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/junction_straight_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~4 ~136 ~4 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~4 minecraft:red_nether_bricks replace minecraft:purple_concrete
fill ~ 255 ~ ~4 255 ~4 minecraft:red_nether_bricks replace minecraft:black_concrete
execute if block ~2 ~3 ~ air run fill ~2 255 ~2 ~2 255 ~ minecraft:red_concrete replace minecraft:red_nether_bricks
execute if block ~ ~3 ~2 air run fill ~2 255 ~2 ~ 255 ~2 minecraft:red_concrete replace minecraft:red_nether_bricks
execute if block ~2 ~3 ~4 air run fill ~2 255 ~2 ~2 255 ~4 minecraft:red_concrete replace minecraft:red_nether_bricks
execute if block ~4 ~3 ~2 air run fill ~2 255 ~2 ~4 255 ~2 minecraft:red_concrete replace minecraft:red_nether_bricks

#Count the room in the total
scoreboard players remove station_rooms value 1

#We're done here
kill @s

