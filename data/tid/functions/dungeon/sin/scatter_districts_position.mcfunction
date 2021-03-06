#First, make sure there are markers left to scatter on
execute unless entity @e[type=area_effect_cloud,name="scatter_marker",limit=1] run kill @s
#execute unless entity @e[type=area_effect_cloud,name="scatter_marker",limit=1] run say OUT OF MARKERS

#Decide which mode to use
scoreboard players set temp4 value 0
execute if predicate tid:random_20 run scoreboard players set temp4 value 1

#Place the district entity
execute if score temp4 value matches 0 at @e[type=area_effect_cloud,name="scatter_marker",limit=1,sort=furthest] run tp @s ~ ~ ~
execute unless score temp4 value matches 0 at @e[type=area_effect_cloud,name="scatter_marker",limit=1,sort=random] run tp @s ~ ~ ~

#Kill all other nearby scatter markers so another district capitol doesn't generate too close
#I will die a happy man if I can just understand why the FUCK this line of code sometimes hangs for two entire minutes
execute at @s run kill @e[type=area_effect_cloud,name="scatter_marker",distance=..75]

#Count up the districts
scoreboard players add s_district_count value 1

#Remove the new tag
tag @s remove new
