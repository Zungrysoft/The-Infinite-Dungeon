#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:infernal/factory/bigcross_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~6 ~134 ~6 blue_wool

#We're done here
kill @s

