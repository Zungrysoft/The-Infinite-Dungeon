#Take the item
execute unless entity @s[gamemode=creative] run clear @s rotten_flesh 10

#Summon the mob
summon minecraft:zombified_piglin ~ ~ ~ {IsBaby:0,Health:40,CanPickUpLoot:1,PersistenceRequired:1,Attributes:[{Name:"generic.max_health",Base:40F}],HandItems:[{id:golden_sword,Count:1}],HandDropChances:[0F],Tags:["summon"]}