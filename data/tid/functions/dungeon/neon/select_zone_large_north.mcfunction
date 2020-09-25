#Build the zone
fill ~ ~ ~ ~19 ~24 ~31 purpur_block replace stone
fill ~1 ~2 ~1 ~18 ~23 ~30 air replace lava
fill ~1 ~2 ~1 ~18 ~23 ~30 air replace purpur_block
fill ~1 ~1 ~1 ~18 ~1 ~30 lava replace purpur_block

#Mark this area as generated
fill ~ ~128 ~ ~19 ~143 ~31 minecraft:green_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~19 255 ~31 minecraft:purpur_block replace minecraft:black_concrete

#Summon a starting piece
summon minecraft:area_effect_cloud ~10 ~7 ~15 {Duration:99999999,CustomName:"\"neon_west\""}

#Summon doorways
summon minecraft:area_effect_cloud ~2 ~1 ~15 {Duration:99999999,CustomName:"\"neon_zone_west\""}
summon minecraft:area_effect_cloud ~17 ~1 ~15 {Duration:99999999,CustomName:"\"neon_zone_east\""}
summon minecraft:area_effect_cloud ~9 ~1 ~29 {Duration:99999999,CustomName:"\"neon_zone_south\""}
summon minecraft:area_effect_cloud ~9 ~1 ~2 {Duration:99999999,CustomName:"\"neon_zone_north\""}

#Count the room in the total
scoreboard players remove neon_rooms value 1