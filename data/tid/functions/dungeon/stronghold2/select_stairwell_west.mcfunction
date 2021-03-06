#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_west_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_west_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_west_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~4 ~143 ~4 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~4 minecraft:stone replace minecraft:black_concrete
fill ~ 255 ~ ~4 255 ~4 minecraft:stone replace minecraft:bricks
fill ~ 255 ~2 ~4 255 ~2 minecraft:light_gray_concrete replace minecraft:stone
fill ~1 255 ~1 ~3 255 ~3 minecraft:light_gray_concrete replace minecraft:stone

#Randomize blocks
scoreboard players set xmax value 5
scoreboard players set ymax value 16
scoreboard players set zmax value 5
function tid:dungeon/stronghold2/rng/run_rng

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1

#We're done here
kill @s

