#Kills any cave segments that managed to generate after the master has moved on
execute unless score @s phase matches 1.. if score station_handler_phase value matches 1.. run scoreboard players set @s phase 666
execute unless score @s phase matches 1.. if score station_handler_phase value matches 1.. run kill @s

#Phase 0: Try to generate cave segments.
execute unless score @s phase matches 1.. run function tid:dungeon/station/cave_segment_handler_p0

#Phase 1: Randomly generate the pockets of air within the yellow wool zone
execute if score @s phase matches 1 run function tid:dungeon/station/cave_segment_handler_p1

#Phase 2: Wait for response from the master handler
#Do nothing

#Phase 3: Finish generating the interior of the cave, then kill self
execute if score @s phase matches 3 run function tid:dungeon/station/cave_segment_handler_p3
