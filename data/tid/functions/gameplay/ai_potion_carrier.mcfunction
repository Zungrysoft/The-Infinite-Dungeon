#Schedule this function every one second
schedule function tid:gameplay/ai_potion_carrier 40t replace

#For each potion carrier, search for nearby mobs to apply the effect to
execute as @e[type=zombie,tag=potion_carrier_swiftness] at @s as @e[type=#tid:potion_appliable,tag=!potion_carrier,distance=0.5..8,sort=random,limit=10] run function tid:gameplay/ai_potion_carrier_swiftness
execute as @e[type=zombie,tag=potion_carrier_strength] at @s as @e[type=#tid:potion_appliable,tag=!potion_carrier,distance=0.5..8,sort=random,limit=10] run function tid:gameplay/ai_potion_carrier_strength
execute as @e[type=zombie,tag=potion_carrier_healing] at @s as @e[type=#tid:potion_appliable,tag=!potion_carrier,distance=0.5..8,sort=random,limit=1] run function tid:gameplay/ai_potion_carrier_healing
