#Always generate at least one
execute if score station_rooms value matches ..200 unless score jungle_portals value matches 2.. unless entity @e[type=area_effect_cloud,distance=0..30,name="teleporter",nbt={Color:6}] run function tid:dungeon/station/event1_generate

#Others can also generate at random
execute if predicate tid:random_02 run function tid:dungeon/station/event1_generate