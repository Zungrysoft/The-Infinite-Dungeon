#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/arena_path_1", posX: 1, posY: 2, posZ: 1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/arena_path_2", posX: 1, posY: 2, posZ: 1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/arena_path_3", posX: 1, posY: 2, posZ: 1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/arena_path_4", posX: 1, posY: 2, posZ: 1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/arena_path_5", posX: 1, posY: 2, posZ: 1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/arena_path_6", posX: 1, posY: 2, posZ: 1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/arena_path_7", posX: 1, posY: 2, posZ: 1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Randomly rotate and flip the structure
execute if predicate tid:random_50 run function tid:dungeon/soulsand/load_arena_0f
execute if predicate tid:random_33 run function tid:dungeon/soulsand/load_arena_90
execute if predicate tid:random_25 run function tid:dungeon/soulsand/load_arena_90f
execute if predicate tid:random_20 run function tid:dungeon/soulsand/load_arena_180
execute if predicate tid:random_15 run function tid:dungeon/soulsand/load_arena_180f
execute if predicate tid:random_15 run function tid:dungeon/soulsand/load_arena_270
execute if predicate tid:random_10 run function tid:dungeon/soulsand/load_arena_270f

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Remove the structure block and redstone block
fill ~ ~ ~ ~ ~1 ~ nether_bricks