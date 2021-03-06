#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 55 3 {Duration:99999999,CustomName:"\"teleporter\"",Color:5b,Tags:["starts_open"]}

#Populate explosive drills
execute as @e[type=minecraft:area_effect_cloud,name="power_drill"] at @s run function tid:misc/power_drill_populate

#Scatter some chests around
function tid:misc/infernal_scatter_chests

#Kill markers
kill @e[type=minecraft:area_effect_cloud,name="dock_marker"]
kill @e[type=minecraft:area_effect_cloud,name="tower_marker"]
kill @e[type=minecraft:area_effect_cloud,name="glassbridge_cross_marker"]
kill @e[type=minecraft:area_effect_cloud,name="glassbridge_stairs_north_marker"]
kill @e[type=minecraft:area_effect_cloud,name="glassbridge_stairs_west_marker"]

#Add in the bonus chest
setblock 6 55 6 chest[facing=north]{Items: [{Slot: 11b, id: "minecraft:written_book", Count: 1b, tag: {pages: ['{"text":"Completely Incomprehensible, is it not? Miles of machinery, once pulsing and pounding, now reduced to an island of wreckage and scrap. What was this machinery for? Did it ever serve a purpose? Because now the only purpose it serves is as a home for the most vile "}','{"text":"creatures you have faced yet. Get busy salvaging, or get busy dying to the beasts that crawl all over this once-active facility."}'], title: "Welcome to the Machine", author: "ZungryWare", resolved: 1b}}, {Slot: 15b, id: "minecraft:netherite_ingot", Count :1b}]}

#These chunks are no longer needed
forceload remove -128 -128 0 128
forceload remove 0 -128 128 128
forceload remove 1000 1000 1064 1064

#We're finished
execute as @a at @s run function tid:general/complete_sound
say Done!

#Move to nonexistent phase
scoreboard players set infernal_handler_phase value 666