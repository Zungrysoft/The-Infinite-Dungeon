#Delete the Command Block
setblock ~ ~ ~ air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace redstone_block

#Bury it in sand
execute if block ~ ~1 ~ air run setblock ~ ~1 ~ red_sand

#Pick a random monster spawner
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:creeper"}, Weight: 1}]}
