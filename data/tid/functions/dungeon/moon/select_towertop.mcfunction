#Determine modulus of y position
execute store result score temp value run data get entity @s Pos[1] 1
scoreboard players set calc value 7
scoreboard players operation temp value %= calc value

#Pick a structure from this list based on y position
setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:moon/towertop_1", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 1 run setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:moon/towertop_2", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 2 run setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:moon/towertop_3", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 3 run setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:moon/towertop_4", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 4 run setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:moon/towertop_5", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 5 run setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:moon/towertop_6", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 6 run setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:moon/towertop_7", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~2 ~1 ~2 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~7 ~133 ~7 minecraft:blue_wool

#Fill moon stone around the edge
fill ~-1 ~-1 ~-1 ~8 ~6 ~8 end_stone replace stone

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s
