function tid:dungeon/neon/zone_room_checks

#Rooms
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-9 ~-1 ~1 if blocks ~ ~128 ~2 ~19 ~152 ~31 1001 1 1001 all run function tid:dungeon/neon/select_zone_large_north
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-15 ~-1 ~1 if blocks ~ ~128 ~2 ~31 ~152 ~31 1001 1 1001 all run function tid:dungeon/neon/select_zone_square
