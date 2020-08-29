#Delete the command block
fill ~ ~ ~ ~ ~1 ~ air

execute if predicate tid:random_01 run setblock ~ ~ ~ jukebox
execute if predicate tid:random_02 run setblock ~ ~ ~ lodestone
execute if predicate tid:random_04 run setblock ~ ~ ~ smoker[facing=south]
execute if predicate tid:random_03 run setblock ~ ~ ~ cartography_table
execute if predicate tid:random_02 run setblock ~ ~ ~ basalt
execute if predicate tid:random_02 run setblock ~ ~ ~ brewing_stand
execute if predicate tid:random_02 run setblock ~ ~ ~ smithing_table
execute if predicate tid:random_02 run setblock ~ ~ ~ blast_furnace[facing=south]
execute if predicate tid:random_02 run setblock ~ ~ ~ loom[facing=south]
execute if predicate tid:random_02 run setblock ~ ~ ~ stonecutter[facing=south]
execute if predicate tid:random_03 run setblock ~ ~ ~ grindstone[face=floor,facing=south]
execute if predicate tid:random_02 run setblock ~ ~ ~ polished_blackstone
execute if predicate tid:random_03 run setblock ~ ~ ~ anvil[facing=south]
execute if predicate tid:random_03 run setblock ~ ~ ~ bookshelf
execute if predicate tid:random_06 run setblock ~ ~ ~ crafting_table
execute if predicate tid:random_05 run setblock ~ ~ ~ furnace[facing=south]
execute if predicate tid:random_02 run setblock ~ ~ ~ dropper[facing=south]{LootTable: "tid:chests/sin_dispenser"}
execute if predicate tid:random_06 unless block ~ ~ ~ dropper run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/sin"}

execute if block ~ ~ ~ dropper run setblock ~ ~1 ~ polished_basalt
execute if block ~ ~ ~ dropper run setblock ~ ~1 ~1 polished_blackstone_button[face=wall,facing=south]{LootTable: "tid:chests/sin_dispenser"}