#Always generate at least one
execute if score nature_rooms value matches ..200 unless score nature_hellion_portals value matches 2.. run function tid:dungeon/nature/event1_generate

#Others can also generate at random
execute if predicate tid:random_02 run function tid:dungeon/nature/event1_generate