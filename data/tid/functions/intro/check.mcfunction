#The Wicked Seas
execute as @a[advancements={tid:intro/root=false}] at @s if predicate tid:in_layer_intro if block ~ ~-1 ~ #tid:intro_blocks run function tid:intro/intro

#The Stronghold Ruins
execute as @a[advancements={tid:layer_1/find_stronghold2=false}] at @s if entity @e[name="stronghold2_entrance",distance=..5] run function tid:intro/stronghold2

#Boomstick Basement
execute as @a[advancements={tid:layer_1/find_brick=false}] at @s if entity @e[name="brick_entrance",distance=..5] run function tid:intro/brick

#The Deep Cold
execute as @a[advancements={tid:layer_1/find_ice=false}] at @s if entity @e[name="ice_entrance",distance=..5] run function tid:intro/ice

#Hellion Heights
execute as @a[advancements={tid:hellion/root=false}] at @s if predicate tid:in_layer_hellion if block ~ ~-1 ~ quartz_bricks run function tid:intro/hellion

#The Lightless Gardens
execute as @a[advancements={tid:layer_2/find_nature=false}] at @s if entity @e[name="nature_entrance",distance=..5] run function tid:intro/nature

#Corethab's Tomb
execute as @a[advancements={tid:layer_2/find_sand1=false}] at @s if entity @e[name="sand1_entrance",distance=..5] run function tid:intro/sand1

#Zorethab's Tomb
execute as @a[advancements={tid:layer_2/find_sand2=false}] at @s if block ~ ~-1 ~ #tid:red_sandstone_blocks run function tid:intro/sand2

#Sin City
execute as @a[advancements={tid:sin/find_sin=false}] at @s if predicate tid:in_layer_sin if block ~ ~-1 ~ #tid:polished_blackstone_blocks run function tid:intro/sin

#The Fire Chambers
execute as @a[advancements={tid:sin/find_sin_chambers=false}] at @s if entity @e[name="sin_chambers_entrance",distance=..9] run function tid:intro/sin_chambers

#The Soul Sand Arenas
execute as @a[advancements={tid:layer_2/find_soulsand=false}] at @s if entity @e[name="soulsand_entrance",distance=..5] run function tid:intro/soulsand

#Fusion Central
execute as @a[advancements={tid:layer_2/find_neon=false}] at @s if entity @e[name="neon_entrance",distance=..5] run function tid:intro/neon

#Mutant Sludge Pits
execute as @a[advancements={tid:layer_3/find_mutant=false}] at @s if entity @e[name="mutant_entrance",distance=..5] run function tid:intro/mutant

#Damnation Station
execute as @a[advancements={tid:layer_3/find_station=false}] at @s if entity @e[name="station_entrance",distance=..5] run function tid:intro/station

#Reliquary Outpost
execute as @a[advancements={tid:jungle/root=false}] at @s if predicate tid:in_layer_jungle if block ~ ~-1 ~ #tid:jungle_blocks run function tid:intro/jungle

#The Moon Zone
execute as @a[advancements={tid:layer_3/find_moon=false}] at @s if entity @e[name="moon_entrance",distance=..5] run function tid:intro/moon

#Infernal Industries
execute as @a[advancements={tid:infernal/root=false}] at @s if predicate tid:in_layer_infernal if block ~ ~-1 ~ #tid:infernal_blocks run function tid:intro/infernal

#The Corridors
execute as @a[advancements={tid:finale/root=false}] at @s if predicate tid:in_layer_finale if block ~ ~-1 ~ netherite_block run function tid:intro/finale
