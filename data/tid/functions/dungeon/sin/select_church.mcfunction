#Structure
setblock ~ ~10 ~ minecraft:structure_block{name: "tid:sin/church", posX: 0, posY: -10, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~11 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~18 ~-114 ~6 air

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s
