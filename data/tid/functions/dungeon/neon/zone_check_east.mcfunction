function tid:dungeon/neon/zone_room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-9 if blocks ~2 ~128 ~ ~31 ~152 ~19 1001 1 1001 all run function tid:dungeon/neon/select_zone_large_west
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-15 if blocks ~2 ~128 ~ ~31 ~152 ~31 1001 1 1001 all run function tid:dungeon/neon/select_zone_square
