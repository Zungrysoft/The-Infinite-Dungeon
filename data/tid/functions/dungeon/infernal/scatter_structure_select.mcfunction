#Pick the structure
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
execute if predicate tid:random_50 run scoreboard players add temp value 16

#Ensure there is some room to build
execute unless blocks ~-10 ~125 ~-10 ~10 ~148 ~10 1001 1 1001 all run scoreboard players set temp value -1

#For the first few structures, also build a secret
execute if score temp value matches 0.. unless score power_drills value matches 1.. unless score elytras value matches 1.. if score infernal_secrets value matches 1.. positioned ~ 119 ~ if blocks ~ ~128 ~ ~19 ~135 ~18 1001 1 1001 all run function tid:dungeon/infernal/misc/select_secret

#For the first few structures, also build an elytra directly above it
execute if score temp value matches 0.. unless score power_drills value matches 1.. if score elytras value matches 1.. positioned ~-9 75 ~-9 if blocks ~ ~128 ~ ~18 ~148 ~18 1001 1 1001 all run function tid:dungeon/infernal/misc/select_elytra

#For the first few structures, also build an explosive drill directly above it
execute if score temp value matches 0.. if score power_drills value matches 1.. positioned ~-13 111 ~-13 if blocks ~ ~128 ~ ~26 ~143 ~26 1001 1 1001 all run function tid:dungeon/infernal/misc/select_power_drill

#Make sure a minimum number of towers are built
execute if score temp value matches 0.. if score infernal_built_towers value matches ..7 run scoreboard players set temp value 0

#Build it
execute if score temp value matches 0..9 run function tid:dungeon/infernal/tower/start
execute if score temp value matches 10..31 run function tid:dungeon/infernal/tanktower/start
