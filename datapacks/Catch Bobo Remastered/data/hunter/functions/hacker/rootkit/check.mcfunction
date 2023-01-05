tag @s add linked
scoreboard players operation .search uuidLink = @s uuidLink
execute as @e[type=minecraft:armor_stand,tag=rootkit,tag=finished,predicate=general:uuid_link_search] run tag @s add linked
execute at @s run function hunter:hacker/rootkit/move

tag @e[type=minecraft:area_effect_cloud,tag=rootkit,tag=finished] remove linked
tag @e[type=minecraft:armor_stand,tag=rootkit,tag=finished] remove linked