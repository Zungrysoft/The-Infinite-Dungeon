function tid:dungeon/stronghold2/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-13 ~-1 ~-6 if blocks ~ ~128 ~ ~12 ~135 ~12 1001 1 1001 all run function tid:dungeon/stronghold2/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_06 positioned ~-14 ~-1 ~-2 if blocks ~ ~128 ~ ~13 ~133 ~4 1001 1 1001 all run function tid:dungeon/stronghold2/select_hall_west
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-5 ~-1 ~-2 if blocks ~ ~128 ~ ~4 ~133 ~4 1001 1 1001 all run function tid:dungeon/stronghold2/select_junction_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-5 ~-10 ~-2 if blocks ~ ~128 ~ ~4 ~143 ~4 1001 1 1001 all run function tid:dungeon/stronghold2/select_stairwell_west
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-16 ~-1 ~-5 if blocks ~ ~-127 ~ ~6 ~-123 ~6 1001 1 1001 all run function tid:dungeon/stronghold2/select_portal_west