#Next direction
scoreboard players set zcount value 0
function tid:dungeon/jungle/rng/rng_z

#Recurse
scoreboard players add xcount value 1
execute unless score xcount value > xmax value positioned ~1 ~ ~ run function tid:dungeon/jungle/rng/rng_x

