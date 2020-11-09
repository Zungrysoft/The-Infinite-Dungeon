#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="neon_north"] at @s run function tid:dungeon/neon/check_north
execute as @e[type=minecraft:area_effect_cloud,name="neon_east"] at @s run function tid:dungeon/neon/check_east
execute as @e[type=minecraft:area_effect_cloud,name="neon_south"] at @s run function tid:dungeon/neon/check_south
execute as @e[type=minecraft:area_effect_cloud,name="neon_west"] at @s run function tid:dungeon/neon/check_west

execute as @e[type=minecraft:area_effect_cloud,name="neon_lava_north"] at @s run function tid:dungeon/neon/lava_check_north
execute as @e[type=minecraft:area_effect_cloud,name="neon_lava_east"] at @s run function tid:dungeon/neon/lava_check_east
execute as @e[type=minecraft:area_effect_cloud,name="neon_lava_south"] at @s run function tid:dungeon/neon/lava_check_south
execute as @e[type=minecraft:area_effect_cloud,name="neon_lava_west"] at @s run function tid:dungeon/neon/lava_check_west

execute as @e[type=minecraft:area_effect_cloud,name="neon_zone_north"] at @s run function tid:dungeon/neon/zone_check_north
execute as @e[type=minecraft:area_effect_cloud,name="neon_zone_east"] at @s run function tid:dungeon/neon/zone_check_east
execute as @e[type=minecraft:area_effect_cloud,name="neon_zone_south"] at @s run function tid:dungeon/neon/zone_check_south
execute as @e[type=minecraft:area_effect_cloud,name="neon_zone_west"] at @s run function tid:dungeon/neon/zone_check_west

execute as @e[type=minecraft:area_effect_cloud,name="sand1_north"] at @s run function tid:dungeon/sand1/check_north
execute as @e[type=minecraft:area_effect_cloud,name="sand1_east"] at @s run function tid:dungeon/sand1/check_east
execute as @e[type=minecraft:area_effect_cloud,name="sand1_south"] at @s run function tid:dungeon/sand1/check_south
execute as @e[type=minecraft:area_effect_cloud,name="sand1_west"] at @s run function tid:dungeon/sand1/check_west

execute as @e[type=minecraft:area_effect_cloud,name="sand2_north"] at @s run function tid:dungeon/sand2/check_north
execute as @e[type=minecraft:area_effect_cloud,name="sand2_east"] at @s run function tid:dungeon/sand2/check_east
execute as @e[type=minecraft:area_effect_cloud,name="sand2_south"] at @s run function tid:dungeon/sand2/check_south
execute as @e[type=minecraft:area_effect_cloud,name="sand2_west"] at @s run function tid:dungeon/sand2/check_west

execute as @e[type=minecraft:area_effect_cloud,name="nature_north"] at @s run function tid:dungeon/nature/check_north
execute as @e[type=minecraft:area_effect_cloud,name="nature_east"] at @s run function tid:dungeon/nature/check_east
execute as @e[type=minecraft:area_effect_cloud,name="nature_south"] at @s run function tid:dungeon/nature/check_south
execute as @e[type=minecraft:area_effect_cloud,name="nature_west"] at @s run function tid:dungeon/nature/check_west

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="neon_north"] unless entity @e[type=area_effect_cloud,name="neon_south"] unless entity @e[type=area_effect_cloud,name="neon_east"] unless entity @e[type=area_effect_cloud,name="neon_west"] unless entity @e[type=area_effect_cloud,name="neon_lava_north"] unless entity @e[type=area_effect_cloud,name="neon_lava_south"] unless entity @e[type=area_effect_cloud,name="neon_lava_east"] unless entity @e[type=area_effect_cloud,name="neon_lava_west"] unless entity @e[type=area_effect_cloud,name="neon_zone_north"] unless entity @e[type=area_effect_cloud,name="neon_zone_south"] unless entity @e[type=area_effect_cloud,name="neon_zone_east"] unless entity @e[type=area_effect_cloud,name="neon_zone_west"] unless entity @e[type=area_effect_cloud,name="sand1_north"] unless entity @e[type=area_effect_cloud,name="sand1_south"] unless entity @e[type=area_effect_cloud,name="sand1_east"] unless entity @e[type=area_effect_cloud,name="sand1_west"] unless entity @e[type=area_effect_cloud,name="sand2_north"] unless entity @e[type=area_effect_cloud,name="sand2_south"] unless entity @e[type=area_effect_cloud,name="sand2_east"] unless entity @e[type=area_effect_cloud,name="sand2_west"] unless entity @e[type=area_effect_cloud,name="nature_north"] unless entity @e[type=area_effect_cloud,name="nature_south"] unless entity @e[type=area_effect_cloud,name="nature_east"] unless entity @e[type=area_effect_cloud,name="nature_west"] run scoreboard players set layer_2_handler_phase value 30
