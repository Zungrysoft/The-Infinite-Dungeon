#Kill the entity if the chest has been disturbed
execute unless data block ~ ~-1 ~ {LootTable:"tid:chests/station_secret"} run kill @s
execute unless block ~ ~-1 ~ chest run kill @s

#Check if a player is holding a glow stick nearby
scoreboard players set temp value 0
execute if entity @a[nbt={SelectedItem:{tag:{glow_stick:1b}}},distance=0..15] run scoreboard players set temp value 1
execute if entity @a[nbt={Inventory:[{Slot:-106b,tag:{glow_stick:1b}}]},distance=0..15] run scoreboard players set temp value 1
execute if entity @a[nbt={Inventory:[{Slot:103b,tag:{glow_stick:1b}}]},distance=0..15] run scoreboard players set temp value 1

#Run the particles
execute if score temp value matches 1 run particle flame ~3.7 ~3 ~ 0.1 0.1 0.1 0 1
execute if score temp value matches 1 run particle flame ~ ~3 ~3.7 0.1 0.1 0.1 0 1
execute if score temp value matches 1 run particle flame ~-3.7 ~3 ~ 0.1 0.1 0.1 0 1
execute if score temp value matches 1 run particle flame ~ ~3 ~-3.7 0.1 0.1 0.1 0 1
