function tid:dungeon/infernal/factory/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-2 if blocks ~ ~128 ~ ~8 ~134 ~4 1033 1 1033 all run function tid:dungeon/infernal/factory/select_hall_west
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-5 if blocks ~ ~128 ~ ~14 ~136 ~10 1033 1 1033 all run function tid:dungeon/infernal/factory/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~1 ~-1 ~-2 if blocks ~ ~128 ~ ~4 ~134 ~4 1033 1 1033 all run function tid:dungeon/infernal/factory/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_08 positioned ~1 ~-1 ~-3 if blocks ~ ~128 ~ ~6 ~134 ~6 1033 1 1033 all run function tid:dungeon/infernal/factory/select_bigcross
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~1 ~-1 ~0 if blocks ~ ~128 ~ ~2 ~144 ~0 1033 1 1033 all run function tid:dungeon/infernal/factory/select_ladder_east
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~1 ~-10 ~0 if blocks ~ ~128 ~ ~2 ~139 ~0 1033 1 1033 all run function tid:dungeon/infernal/factory/select_ladder_east

execute if score @s failed matches 1.. positioned ~1 ~-1 ~-2 if blocks ~ ~128 ~ ~0 ~134 ~4 1033 1 1033 all run function tid:dungeon/infernal/factory/select_spacer_west
execute if score @s failed matches 1.. if block ~ ~1 ~2 stone_brick_stairs if block ~ ~1 ~-2 stone_brick_stairs positioned ~1 ~-1 ~-2 if blocks ~ ~128 ~ ~3 ~130 ~4 1001 1 1001 all run function tid:dungeon/infernal/factory/select_pad_east
