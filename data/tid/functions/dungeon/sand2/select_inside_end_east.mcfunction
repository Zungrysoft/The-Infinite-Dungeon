#Pick the Room
function tid:dungeon/sand2/select_inside_end

function tid:dungeon/sand2/orient_room_90
execute if predicate tid:random_50 run function tid:dungeon/sand2/orient_room_270f

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block