#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/bridge_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-126 ~ ~4 ~-120 ~12 air

#Count the room in the total
scoreboard players remove jungle_rooms value 1

#Remove torches
execute if predicate tid:random_90 positioned ~ ~5 ~2 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~ ~5 ~6 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~ ~5 ~10 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~4 ~5 ~2 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~4 ~5 ~6 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~4 ~5 ~10 run setblock ~ ~ ~ air

#Pillars
clone ~ ~-129 ~ ~4 ~-173 ~1 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~4 ~-45 ~1 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~ ~4 ~-218 ~1 ~ ~-90 ~ masked
fill ~ ~-46 ~ ~4 ~-90 ~1 mossy_cobblestone replace orange_wool

clone ~ ~-129 ~11 ~4 ~-173 ~12 ~ ~-45 ~11 masked
fill ~ ~-1 ~11 ~4 ~-45 ~12 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~11 ~4 ~-218 ~12 ~ ~-90 ~11 masked
fill ~ ~-46 ~11 ~4 ~-90 ~12 mossy_cobblestone replace orange_wool

#Run the randomizer
#Pillars
scoreboard players set xmax value 7
scoreboard players set zmax value 4
scoreboard players set ymax value 0
execute positioned ~-1 149 ~-1 run function tid:dungeon/jungle/rng/run_rng
scoreboard players set ymax value 0
execute positioned ~-1 149 ~10 run function tid:dungeon/jungle/rng/run_rng
#Base
scoreboard players set xmax value 7
scoreboard players set zmax value 15
scoreboard players set ymax value 10
execute positioned ~-1 ~-1 ~-1 run function tid:dungeon/jungle/rng/run_rng_nopillar

#We're done here
kill @s

