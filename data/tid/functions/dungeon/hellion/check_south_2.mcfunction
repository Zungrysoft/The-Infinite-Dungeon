function tid:dungeon/hellion/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if score @s x matches 0.. if predicate tid:random_08 positioned ~-3 ~-1 ~1 if blocks ~ ~-128 ~ ~6 ~-123 ~6 1001 129 1001 all run function tid:dungeon/hellion/select_room
execute unless score @s failed matches 1.. if score @s z matches 0.. if predicate tid:random_08 positioned ~-3 ~-1 ~1 if blocks ~ ~-128 ~ ~6 ~-123 ~6 1001 129 1001 all run function tid:dungeon/hellion/select_room
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-1 ~-1 ~1 if blocks ~ ~-128 ~ ~2 ~-122 ~5 1001 129 1001 all run function tid:dungeon/hellion/select_stairs_south
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-1 ~-4 ~1 if blocks ~ ~-128 ~ ~2 ~-122 ~5 1001 129 1001 all run function tid:dungeon/hellion/select_stairs_north
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-1 ~-1 ~1 if blocks ~ ~-128 ~ ~2 ~-124 ~2 1001 129 1001 all run function tid:dungeon/hellion/select_outside
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-4 ~-2 ~1 if blocks ~ ~-128 ~ ~8 ~-112 ~8 1001 129 1001 all run function tid:dungeon/hellion/select_totem
execute unless score @s failed matches 1.. if predicate tid:random_06 positioned ~-1 ~-3 ~1 if blocks ~ ~-128 ~ ~2 ~-123 ~9 1001 129 1001 all run function tid:dungeon/hellion/select_bridge_north

#Downward stairs show up more often in the (-, -) quadrant
execute unless score @s failed matches 1.. if score @s x matches ..0 if score @s z matches ..0 if predicate tid:random_06 positioned ~-1 ~-4 ~1 if blocks ~ ~-127 ~ ~2 ~-123 ~5 1001 129 1001 all run function tid:dungeon/hellion/select_stairs_north

#Largerooms only show up in the (+, -) quadrant
execute unless score @s failed matches 1.. if score @s x matches 0.. if score @s z matches ..0 if predicate tid:random_06 positioned ~-5 ~-1 ~1 if blocks ~ ~-128 ~ ~10 ~-118 ~10 1001 129 1001 all run function tid:dungeon/hellion/select_largeroom

#Stairwells only show up in the (-, ~) half
execute unless score @s failed matches 1.. if score @s x matches ..0 if predicate tid:random_04 positioned ~1 ~-1 ~-1 if blocks ~ ~-128 ~ ~2 ~-122 ~2 1001 129 1001 all run function tid:dungeon/hellion/select_stairwell