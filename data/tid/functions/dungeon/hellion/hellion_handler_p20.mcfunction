#Type 1
execute if score hellion_global value matches 0 as @e[type=minecraft:area_effect_cloud,name="hellion_north",sort=random] at @s run function tid:dungeon/hellion/check_north_1
execute if score hellion_global value matches 0 as @e[type=minecraft:area_effect_cloud,name="hellion_east",sort=random] at @s run function tid:dungeon/hellion/check_east_1
execute if score hellion_global value matches 0 as @e[type=minecraft:area_effect_cloud,name="hellion_south",sort=random] at @s run function tid:dungeon/hellion/check_south_1
execute if score hellion_global value matches 0 as @e[type=minecraft:area_effect_cloud,name="hellion_west",sort=random] at @s run function tid:dungeon/hellion/check_west_1

#Type 2
execute if score hellion_global value matches 1 as @e[type=minecraft:area_effect_cloud,name="hellion_north",sort=random] at @s run function tid:dungeon/hellion/check_north_2
execute if score hellion_global value matches 1 as @e[type=minecraft:area_effect_cloud,name="hellion_east",sort=random] at @s run function tid:dungeon/hellion/check_east_2
execute if score hellion_global value matches 1 as @e[type=minecraft:area_effect_cloud,name="hellion_south",sort=random] at @s run function tid:dungeon/hellion/check_south_2
execute if score hellion_global value matches 1 as @e[type=minecraft:area_effect_cloud,name="hellion_west",sort=random] at @s run function tid:dungeon/hellion/check_west_2

#Up direction
execute as @e[type=minecraft:area_effect_cloud,name="hellion_up",sort=random] at @s run function tid:dungeon/hellion/check_up

#Super Safety Measure
execute as @a[predicate=tid:in_layer_hellion,gamemode=survival] at @s if block ~ ~-2 ~ lava run tp @s 0 183 0

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="hellion_north"] unless entity @e[type=area_effect_cloud,name="hellion_south"] unless entity @e[type=area_effect_cloud,name="hellion_east"] unless entity @e[type=area_effect_cloud,name="hellion_west"] unless entity @e[type=area_effect_cloud,name="hellion_up"] run scoreboard players set hellion_handler_phase value 30