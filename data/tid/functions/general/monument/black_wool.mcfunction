#Grant the advancement to everyone
advancement grant @a only tid:monument/black_wool

#If this is the first time this has been called, spawn fireworks
execute unless score placed_black_wool value matches 1 positioned -10 59 -38 positioned ~15 ~ ~ run function tid:general/monument/sound
execute unless score placed_black_wool value matches 1 positioned -10 59.8 -38 positioned ~15 ~ ~ run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{Count:1,id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Colors:[I;0]}]}}}}

#Set the scoreboard
scoreboard players set placed_black_wool value 1
