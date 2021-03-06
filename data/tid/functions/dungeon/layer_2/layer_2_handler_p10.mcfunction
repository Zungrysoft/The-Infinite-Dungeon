#Message to notify that the world is being built
say Generating Dungeons...

#Storehouse for orange wool
fill 1000 1 1000 1032 28 1032 minecraft:bedrock
fill 1001 1 1001 1032 27 1032 minecraft:orange_wool
fill 1000 129 1000 1032 156 1032 minecraft:blue_wool
#Storehouse for yellow wool
fill 1033 1 1033 1065 28 1065 minecraft:bedrock
fill 1033 1 1033 1064 27 1064 minecraft:yellow_wool
fill 1033 129 1033 1065 156 1065 minecraft:blue_wool
#Storehouse for green wool
fill 1000 1 1033 1032 28 1065 minecraft:bedrock
fill 1001 1 1033 1032 27 1064 minecraft:green_wool
fill 1000 129 1032 1065 156 1065 minecraft:blue_wool
#Storehouse for air
fill 1033 1 1000 1065 28 1032 minecraft:bedrock
fill 1033 1 1001 1064 27 1032 minecraft:air
fill 1033 129 1000 1065 156 1032 minecraft:blue_wool

#Determine the number of rooms to generate
scoreboard players set soulsand_rooms value 150
scoreboard players set sand1_rooms value 10
scoreboard players set sand2_rooms value 100
scoreboard players set nature_rooms value 150
scoreboard players set neon_rooms value 18
scoreboard players set neon_ports value 5
scoreboard players set neon_halls_rooms value 90
scoreboard players set neon_halls_ends value 15

#Set some other starting values
scoreboard players set sand1_x_spot_build value 0
scoreboard players set sin_portals value 0
scoreboard players set wicked_portals value 0
scoreboard players set nature_totems value 0
scoreboard players set nature_cake value 0
scoreboard players set soulsand_arenas_built value 0
scoreboard players set haunted_chests_found value 0
scoreboard players set art_templates_nature value 0
scoreboard players set art_templates_sand2 value 0
scoreboard players set art_templates_soulsand value 0
scoreboard players set art_templates_neon value 0
scoreboard players set art_nature value 0
scoreboard players set art_sand2 value 0
scoreboard players set art_soulsand value 0
scoreboard players set art_neon value 0

#Set random globals
scoreboard players set neon_junk_global value 0
execute if predicate tid:random_50 run scoreboard players add neon_junk_global value 1
execute if predicate tid:random_50 run scoreboard players add neon_junk_global value 2
execute if predicate tid:random_50 run scoreboard players add neon_junk_global value 4

#Summon the entrance rooms and starting area
function tid:dungeon/layer_2/generate_junction
execute positioned 0 55 24 positioned ~-10 ~-37 ~0 run function tid:dungeon/neon/select_zone_large_west

execute positioned 0 55 -24 positioned ~-6 ~-21 ~-31 run function tid:dungeon/sand1/select_entrance_north
execute positioned 24 55 0 positioned ~1 ~-1 ~-6 run function tid:dungeon/soulsand/select_entrance_east
execute positioned -24 55 0 positioned ~-26 ~-1 ~-10 run function tid:dungeon/nature/select_entrance_west
execute positioned 0 55 24 positioned ~-5 ~-14 ~1 run function tid:dungeon/neon/select_entrance_south

#Done, now move to the next phase
scoreboard players set layer_2_handler_phase value 20

