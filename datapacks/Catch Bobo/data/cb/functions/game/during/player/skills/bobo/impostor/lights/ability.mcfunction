scoreboard players remove @s lights 1

execute at @s run summon ocelot ~ ~ ~ {Glowing:1b,Team:"yellow",Health:1f,Tags:["lights"],Attributes:[{Name:generic.max_health,Base:1}],CustomName:'{"text":"Lights","bold":true}'}


execute at @s store result score @e[type=ocelot,tag=lights,tag=!finished] Owner0 run scoreboard players get @s UUID0
execute at @s store result score @e[type=ocelot,tag=lights,tag=!finished] Owner1 run scoreboard players get @s UUID1
execute at @s store result score @e[type=ocelot,tag=lights,tag=!finished] Owner2 run scoreboard players get @s UUID2
execute at @s store result score @e[type=ocelot,tag=lights,tag=!finished] Owner3 run scoreboard players get @s UUID3


spreadplayers 96 -288 50 176 false @e[type=ocelot,tag=lights,tag=!finished]

tag @e[type=ocelot,tag=lights,tag=!finished] add finished

execute at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0
execute as @a[team=Hunters] at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0
tellraw @a[team=Hunters] ["",{"text":"Lights","bold":true,"color":"gold"},{"text":" has been "},{"text":"sabotaged","bold":true,"color":"gold"},{"text":"!\nKill the "},{"text":"yellow ocelot","bold":true,"color":"yellow"},{"text":"!"},{"text":"\nYou cannot see each other\'s nametags if the ocelot is alive."}]