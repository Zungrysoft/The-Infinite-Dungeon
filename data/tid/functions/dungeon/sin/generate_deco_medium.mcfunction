#Determine what district type we're in
execute store result score @s counter1 run data get entity @e[tag=sin_district,limit=1,sort=nearest] Color

#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_1", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_2", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_3", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_4", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_5", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_6", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_7", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_8", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_9", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_09 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_10", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_11", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_12", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_13", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_14", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_15", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_16", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_17", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_18", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_19", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Generate some buildings more often based on the district
#Gilded Tower in Black
execute if score @s counter1 matches 15 if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_3", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Cross Monolith in Black
execute if score @s counter1 matches 15 if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_5", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Cross Monolith in White
execute if score @s counter1 matches 0 if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_5", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Birch Tree in Lime
execute if score @s counter1 matches 5 if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_lime_1", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Jungle Tree in Brown
execute if score @s counter1 matches 12 if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_brown_1", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Fire Patch in Orange
execute if score @s counter1 matches 1 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_8", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Lava Well in Orange
execute if score @s counter1 matches 1 if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_2", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Mythic Tower in Orange
execute if score @s counter1 matches 1 if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_orange_1", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Fountain in Blue
execute if score @s counter1 matches 11 if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_11", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Rocky Fountain in Blue
execute if score @s counter1 matches 11 if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_blue_1", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Spiral Fountain in Blue
execute if score @s counter1 matches 11 if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_blue_2", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Four-Way Path in Magenta
execute if score @s counter1 matches 2 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_12", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Pyramid in Magenta
execute if score @s counter1 matches 2 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_13", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Fire pit in Green
execute if score @s counter1 matches 13 if predicate tid:random_66 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_14", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Glided Pit in Gray
execute if score @s counter1 matches 7 if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_16", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Glazed Monolith in Purple
execute if score @s counter1 matches 10 if predicate tid:random_66 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_purple_1", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Crimson Planters in Red
execute if score @s counter1 matches 14 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_red_1", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Crimson Pillars in Red
execute if score @s counter1 matches 14 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_red_2", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Warped Planters in Cyan
execute if score @s counter1 matches 9 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_cyan_1", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Warped Pillars in Cyan
execute if score @s counter1 matches 9 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_cyan_2", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Caged Block in Gray
execute if score @s counter1 matches 7 if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/deco_medium_19", posX: -2, posY: -1, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}


#Count the room in the total
scoreboard players add @e[name="sin_roomcount",type=area_effect_cloud,limit=1] counter1 1

#Mark this area as generated
fill ~-2 ~-128 ~-2 ~2 ~-119 ~2 minecraft:blue_wool

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Set the color based on the district it's in
execute if score @s counter1 matches 0 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 white_concrete replace light_blue_concrete
execute if score @s counter1 matches 1 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 orange_concrete replace light_blue_concrete
execute if score @s counter1 matches 2 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 magenta_concrete replace light_blue_concrete
execute if score @s counter1 matches 4 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 yellow_concrete replace light_blue_concrete
execute if score @s counter1 matches 5 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 lime_concrete replace light_blue_concrete
execute if score @s counter1 matches 6 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 pink_concrete replace light_blue_concrete
execute if score @s counter1 matches 7 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 gray_concrete replace light_blue_concrete
execute if score @s counter1 matches 8 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 light_gray_concrete replace light_blue_concrete
execute if score @s counter1 matches 9 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 cyan_concrete replace light_blue_concrete
execute if score @s counter1 matches 10 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 purple_concrete replace light_blue_concrete
execute if score @s counter1 matches 11 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 blue_concrete replace light_blue_concrete
execute if score @s counter1 matches 12 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 brown_concrete replace light_blue_concrete
execute if score @s counter1 matches 13 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 green_concrete replace light_blue_concrete
execute if score @s counter1 matches 14 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 red_concrete replace light_blue_concrete
execute if score @s counter1 matches 15 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 black_concrete replace light_blue_concrete
execute if score @s counter1 matches 16 run fill ~-2 ~-1 ~-2 ~2 ~11 ~2 tnt replace light_blue_concrete

#We're done here
kill @s

