function tid:dungeon/neon/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-2 ~0 if blocks ~ ~-2 ~-1 ~1 ~3 ~2 1033 1 1001 all run function tid:dungeon/neon/select_outside
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-7 ~-2 ~0 if blocks ~ ~-2 ~-1 ~6 ~3 ~2 1033 1 1001 all run function tid:dungeon/neon/select_straight_west
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-2 ~-2 ~0 if blocks ~ ~-2 ~-1 ~1 ~6 ~2 1033 1 1001 all run function tid:dungeon/neon/select_stairs_west
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-2 ~-4 ~0 if blocks ~ ~-2 ~-1 ~1 ~6 ~2 1033 1 1001 all run function tid:dungeon/neon/select_stairs_east
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-9 ~-3 ~-4 if blocks ~ ~-3 ~ ~8 ~9 ~8 1033 1 1001 all run function tid:dungeon/neon/select_cross