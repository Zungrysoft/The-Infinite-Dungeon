#Grant the advancement to everyone
advancement grant @a only tid:monument/cyan_wool

#If this is the first time this has been called, spawn fireworks
execute unless score placed_cyan_wool value matches 1 positioned -10 59 -38 positioned ~9 ~ ~ run function tid:general/monument/sound
execute unless score placed_cyan_wool value matches 1 positioned -10 59.8 -38 positioned ~9 ~ ~ run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{Count:1,id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Colors:[I;564896]}]}}}}

#Set the scoreboard
scoreboard players set placed_cyan_wool value 1
