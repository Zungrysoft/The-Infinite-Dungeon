function tid:update_coords
function tid:dungeon/jungle/room_checks

execute if entity @s[name="jungle_east"] unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-2 ~-2 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_east
execute if entity @s[name="jungle_junction_east"] unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-2 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_east

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~1 ~-4 ~-2 if blocks ~ ~-128 ~ ~12 ~-120 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~1 ~-2 ~-2 if blocks ~ ~-128 ~ ~6 ~-117 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_east
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~1 ~-10 ~-2 if blocks ~ ~-128 ~ ~6 ~-117 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_west
execute unless score @s failed matches 1.. if predicate tid:random_03 if score @s y matches 180..230 unless entity @e[type=area_effect_cloud,name="jungle_towerbase",distance=0..55] positioned ~1 ~-4 ~-10 if blocks ~ ~-128 ~ ~20 ~-111 ~20 1001 129 1001 all run function tid:dungeon/jungle/select_towerbase
execute unless score @s failed matches 1.. if predicate tid:random_004 positioned ~1 ~-2 ~-5 if blocks ~ ~-128 ~ ~10 ~-121 ~10 1001 129 1001 all run function tid:dungeon/jungle/select_totem

execute if score @s failed matches 1.. positioned ~1 ~-2 ~-2 if blocks ~ ~-128 ~ ~2 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_endcap_east