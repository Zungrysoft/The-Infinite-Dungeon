function tid:dungeon/jungle/tower_room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~0 ~-1 ~-3 if block ~3 ~ ~3 #tid:jungle_solid_blocks if blocks ~ ~-128 ~ ~6 ~-124 ~6 1001 129 1001 all run function tid:dungeon/jungle/select_tower_quad
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~0 ~-1 ~-2 if block ~3 ~ ~2 #tid:jungle_solid_blocks if blocks ~ ~-128 ~ ~6 ~-124 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_tower_thin_west
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~0 ~-1 ~-3 if block ~2 ~ ~3 #tid:jungle_solid_blocks if blocks ~ ~-128 ~ ~4 ~-124 ~6 1001 129 1001 all run function tid:dungeon/jungle/select_tower_thin_north
