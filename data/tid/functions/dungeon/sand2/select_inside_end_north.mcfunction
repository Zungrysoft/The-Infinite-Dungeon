#Pick the Room
function tid:dungeon/sand2/select_inside_end


execute if predicate tid:random_50 run function tid:dungeon/sand2/orient_room_180f

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block