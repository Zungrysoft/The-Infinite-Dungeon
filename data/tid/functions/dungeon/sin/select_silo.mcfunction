#Structure
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/silo", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~12 ~-107 ~12 air

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s
