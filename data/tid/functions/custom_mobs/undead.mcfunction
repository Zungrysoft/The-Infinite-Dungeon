summon minecraft:skeleton ~ ~ ~ {CustomName:'[{"text":"Undead Guardian"}]',Health:6,HandItems:[{id:bow,Count:1}],ArmorDropChances:[0.01f,0.01f,0.01f,0.01f],HandDropChances:[0F],Attributes:[{Name:"generic.max_health",Base:6F}],PersistenceRequired:1b,Tags:["new"]}
execute as @e[tag=new] run function tid:custom_mobs/equip/armor_chainmail
tag @e[tag=new] remove new
