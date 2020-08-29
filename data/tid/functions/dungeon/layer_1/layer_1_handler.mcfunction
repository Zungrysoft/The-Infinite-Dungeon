#Initialize the phase to zero
execute unless score layer_1_handler_phase value matches 0.. run say Waiting for chunks to load...
execute unless score layer_1_handler_phase value matches 0.. run scoreboard players set layer_1_handler_phase value 0

#Phase 00: Wait for chunks to load
execute if score layer_1_handler_phase value matches 0 run function tid:dungeon/layer_1/layer_1_handler_p00

#Phase 10: Initialize the world
execute if score layer_1_handler_phase value matches 10 run function tid:dungeon/layer_1/layer_1_handler_p10

#Phase 20: Generate the dungeons
execute if score layer_1_handler_phase value matches 20 run function tid:dungeon/layer_1/layer_1_handler_p20

#Phase 30: Make sure that a sufficient number of rooms got generated
execute if score layer_1_handler_phase value matches 30 run function tid:dungeon/layer_1/layer_1_handler_p30

#Phase 40: Final Steps
execute if score layer_1_handler_phase value matches 40 run function tid:dungeon/layer_1/layer_1_handler_p40