function tid:dungeon/sin/chambers/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-7 ~-2 ~-3 if blocks ~ ~-128 ~ ~6 ~-119 ~6 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-15 ~-2 ~-4 if blocks ~ ~-128 ~ ~14 ~-121 ~8 1033 1 1033 all run function tid:dungeon/sin/chambers/select_straight_west
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-17 ~-3 ~-8 if blocks ~ ~-128 ~ ~16 ~-120 ~16 1033 1 1033 all run function tid:dungeon/sin/chambers/select_treasure_west
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-5 ~-2 ~-2 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1033 1 1033 all run function tid:dungeon/sin/chambers/select_junction_west
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~-11 ~-2 ~-5 if blocks ~ ~-128 ~ ~10 ~-113 ~10 1033 1 1033 all run function tid:dungeon/sin/chambers/select_nexus

#Special rooms (rare)
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-19 ~-1 ~-9 if blocks ~ ~-128 ~ ~18 ~-124 ~18 1033 1 1033 all run function tid:dungeon/sin/chambers/select_magma_room
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-6 ~-1 ~-3 if blocks ~ ~-128 ~ ~5 ~-110 ~18 1033 1 1033 all run function tid:dungeon/sin/chambers/select_alley

#Special rooms (common if global value)
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 0 if predicate tid:random_04 positioned ~-19 ~-1 ~-9 if blocks ~ ~-128 ~ ~18 ~-124 ~18 1033 1 1033 all run function tid:dungeon/sin/chambers/select_magma_room
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 3 if predicate tid:random_08 positioned ~-6 ~-1 ~-3 if blocks ~ ~-128 ~ ~5 ~-110 ~18 1033 1 1033 all run function tid:dungeon/sin/chambers/select_alley
