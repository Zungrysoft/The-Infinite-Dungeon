#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/junction_cross", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/junction_tee_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_40 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/junction_tee_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/junction_tee_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/junction_turn_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/junction_turn_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/junction_straight_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~4 ~133 ~4 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~4 minecraft:stone replace minecraft:black_concrete
fill ~ 255 ~ ~4 255 ~4 minecraft:stone replace minecraft:bricks
execute if block ~2 ~1 ~ air run fill ~2 255 ~2 ~2 255 ~ minecraft:light_gray_concrete replace minecraft:stone
execute if block ~ ~1 ~2 air run fill ~2 255 ~2 ~ 255 ~2 minecraft:light_gray_concrete replace minecraft:stone
execute if block ~2 ~1 ~4 air run fill ~2 255 ~2 ~2 255 ~4 minecraft:light_gray_concrete replace minecraft:stone
execute if block ~4 ~1 ~2 air run fill ~2 255 ~2 ~4 255 ~2 minecraft:light_gray_concrete replace minecraft:stone

#Build the spawner
execute if predicate tid:random_07 positioned ~2 ~1 ~2 run function tid:misc/stronghold2_random_spawner

#Randomize blocks
scoreboard players set xmax value 5
scoreboard players set ymax value 6
scoreboard players set zmax value 5
function tid:dungeon/stronghold2/rng/run_rng

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1

#We're done here
kill @s

