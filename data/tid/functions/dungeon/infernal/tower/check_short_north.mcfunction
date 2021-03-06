function tid:dungeon/infernal/tower/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-6 if blocks ~ ~128 ~ ~6 ~132 ~6 1001 1 1001 all run function tid:dungeon/infernal/tower/select_short_small
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-6 ~-1 ~-8 if blocks ~ ~128 ~ ~12 ~132 ~8 1001 1 1001 all run function tid:dungeon/infernal/tower/select_short_long

scoreboard players set success value 0
execute unless score @s failed matches 1.. if predicate tid:random_10 run function tid:dungeon/infernal/tower/check_stairs
execute if predicate tid:random_33 if score success value matches 1 positioned ~-3 ~-1 ~-6 if blocks ~ ~128 ~ ~6 ~136 ~6 1001 1 1001 all run function tid:dungeon/infernal/tower/select_short_stairs_short
execute if score success value matches 1 positioned ~-3 ~-1 ~-6 if blocks ~ ~128 ~ ~6 ~140 ~6 1001 1 1001 all run function tid:dungeon/infernal/tower/select_short_stairs_tall
