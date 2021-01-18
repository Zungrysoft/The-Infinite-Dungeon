#Starting base
fill ~-15 ~11 ~-15 ~15 ~38 ~15 nether_bricks
fill ~-15 ~39 ~-15 ~15 ~66 ~15 nether_bricks
fill ~-15 ~67 ~-15 ~15 ~94 ~15 nether_bricks
execute positioned ~ ~128 ~ run fill ~-15 ~11 ~-15 ~15 ~38 ~15 yellow_wool
execute positioned ~ ~128 ~ run fill ~-15 ~39 ~-15 ~15 ~66 ~15 yellow_wool
execute positioned ~ ~128 ~ run fill ~-15 ~67 ~-15 ~15 ~94 ~15 yellow_wool
execute positioned ~ ~128 ~ run fill ~-15 ~11 ~-15 ~15 ~20 ~15 blue_wool

#Mark it on the map
fill ~-15 255 ~-15 ~15 255 ~15 stone_bricks replace black_concrete

#Extensions
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
spreadplayers ~ ~ 12 40 false @e[type=area_effect_cloud,tag=scatter]
execute as @e[type=area_effect_cloud,tag=scatter] at @s run function tid:dungeon/infernal/factory/extension

#Modifiers
execute if predicate tid:random_90 run function tid:dungeon/infernal/factory/mod_underbelly
execute if predicate tid:random_90 run function tid:dungeon/infernal/factory/mod_shafts

#Place the starting doorways
summon minecraft:area_effect_cloud ~ 22 ~ {Duration:99999999,CustomName:"\"infernal_factory_north\""}
summon minecraft:area_effect_cloud ~ 40 ~ {Duration:99999999,CustomName:"\"infernal_factory_south\""}
summon minecraft:area_effect_cloud ~ 60 ~ {Duration:99999999,CustomName:"\"infernal_factory_west\""}
summon minecraft:area_effect_cloud ~ 80 ~ {Duration:99999999,CustomName:"\"infernal_factory_east\""}

#We're done here
kill @s
