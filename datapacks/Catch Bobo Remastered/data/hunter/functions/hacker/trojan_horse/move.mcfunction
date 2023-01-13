scoreboard players remove @s trojanHorseRange 1
scoreboard players operation #horseRange temp = @s trojanHorseRange
scoreboard players operation #horseRange temp %= #8 constant

execute if score #horseRange temp matches 0 run particle minecraft:sweep_attack ~ ~ ~ 0.5 0.5 0.5 1 10
execute if score #horseRange temp matches 0 run scoreboard players operation .search uuid = @s uuidLink
execute if score #horseRange temp matches 0 positioned ~ ~-1 ~ as @e[type=#general:everything,tag=!spectator,tag=!hunterTeamImmunity,distance=..2.5,predicate=!general:uuid_search,predicate=!general:uuid_link_search] run function hunter:hacker/trojan_horse/hit


execute if score @s trojanHorseRange matches ..58 if score #horseRange temp matches 4 positioned ~ ~-1 ~ unless entity @e[type=minecraft:horse,tag=trojanMiniHorse,distance=..2] run summon minecraft:horse ~ ~ ~ {Tags:["trojanMiniHorse"],Variant:3,NoAI:1b,Age:-2000000,ArmorItem:{},Health:1f,Attributes:[{Name:generic.max_health,Base:1}]}
execute if score #horseRange temp matches 4 run playsound minecraft:entity.horse.jump neutral @a ~ ~ ~ 1.5 1
execute if score #horseRange temp matches 4 run scoreboard players operation @e[type=minecraft:horse,tag=trojanMiniHorse,tag=!finished] uuidLink = @s uuidLink
execute if score #horseRange temp matches 4 run tp @e[type=minecraft:horse,tag=trojanMiniHorse,tag=!finished] ~ ~-1 ~ ~ ~
execute if score #horseRange temp matches 4 run tag @e[type=minecraft:horse,tag=trojanMiniHorse,tag=!finished] add finished
particle dust 0.400 0.400 0.400 1 ~ ~ ~ 0 0 0 1 0 force


tp ^ ^ ^0.5
execute unless block ^ ^ ^1.0 #general:dashables run function hunter:hacker/bounce/xy

execute positioned ~ ~-1 ~ run tp @e[type=minecraft:horse,tag=trojanHorse,tag=finished,tag=linked,sort=nearest,limit=1] ~ ~ ~

execute if score @s trojanHorseRange matches ..0 run kill @e[type=minecraft:horse,tag=trojanHorse,tag=finished,tag=linked,sort=nearest,limit=1]
execute if score @s trojanHorseRange matches ..0 run kill @s