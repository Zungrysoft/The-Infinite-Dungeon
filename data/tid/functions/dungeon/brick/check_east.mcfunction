function tid:dungeon/brick/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~0 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_room_east