function tid:dungeon/soulsand/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-14 if blocks ~ ~128 ~ ~28 ~138 ~28 1001 129 1001 all run function tid:dungeon/soulsand/select_arena
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-3 if blocks ~ ~128 ~ ~6 ~134 ~16 1001 129 1001 all run function tid:dungeon/soulsand/select_hall_west