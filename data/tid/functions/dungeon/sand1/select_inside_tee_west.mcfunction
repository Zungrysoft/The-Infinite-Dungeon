#Pick the Room
function tid:dungeon/sand1/select_inside_tee

function tid:dungeon/sand2/orient_room_90f
execute if predicate tid:random_50 run function tid:dungeon/sand2/orient_room_270

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block