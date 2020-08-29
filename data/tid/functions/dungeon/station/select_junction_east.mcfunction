#Pick a structure from this list
setblock ~1 ~-3 ~-2 minecraft:structure_block{name: "tid:station/junction_cross", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~1 ~-3 ~-2 minecraft:structure_block{name: "tid:station/junction_tee_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~1 ~-3 ~-2 minecraft:structure_block{name: "tid:station/junction_tee_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~1 ~-3 ~-2 minecraft:structure_block{name: "tid:station/junction_tee_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~-3 ~-2 minecraft:structure_block{name: "tid:station/junction_turn_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~-3 ~-2 minecraft:structure_block{name: "tid:station/junction_turn_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~1 ~-3 ~-2 minecraft:structure_block{name: "tid:station/junction_straight_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~-2 ~-2 minecraft:redstone_block

#Mark this area as generated
fill ~1 ~125 ~-2 ~5 ~133 ~2 minecraft:blue_wool

#Count the room in the total
scoreboard players add @e[name="station_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

