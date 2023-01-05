tag @s add linked
scoreboard players operation .search uuidLink = @s uuidLink
execute as @e[type=minecraft:horse,tag=trojanHorse,tag=finished,predicate=general:uuid_link_search] run tag @s add linked
execute at @s run function hunter:hacker/trojan_horse/move

tag @e[type=minecraft:area_effect_cloud,tag=trojanHorse,tag=finished] remove linked
tag @e[type=minecraft:horse,tag=trojanHorse,tag=finished] remove linked