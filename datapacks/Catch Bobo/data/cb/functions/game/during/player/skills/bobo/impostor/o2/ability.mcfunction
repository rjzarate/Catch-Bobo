scoreboard players remove @s o2 1

execute at @s run summon ocelot ~ ~ ~ {Glowing:1b,Team:"red",Health:1f,Tags:["o2"],Attributes:[{Name:generic.max_health,Base:1}],CustomName:'{"text":"O2","bold":true}'}
execute at @s run summon ocelot ~ ~ ~ {Glowing:1b,Team:"red",Health:1f,Tags:["o2"],Attributes:[{Name:generic.max_health,Base:1}],CustomName:'{"text":"O2","bold":true}'}


execute at @s store result score @e[type=ocelot,tag=o2,tag=!finished] Owner0 run scoreboard players get @s UUID0
execute at @s store result score @e[type=ocelot,tag=o2,tag=!finished] Owner1 run scoreboard players get @s UUID1
execute at @s store result score @e[type=ocelot,tag=o2,tag=!finished] Owner2 run scoreboard players get @s UUID2
execute at @s store result score @e[type=ocelot,tag=o2,tag=!finished] Owner3 run scoreboard players get @s UUID3


spreadplayers 96 -288 50 176 false @e[type=ocelot,tag=o2,tag=!finished]

tag @e[type=ocelot,tag=o2,tag=!finished] add finished

execute at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0
execute as @a[team=Hunters] at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0
tellraw @a[team=Hunters] ["",{"text":"O2","bold":true,"color":"gold"},{"text":" has been "},{"text":"sabotaged","bold":true,"color":"gold"},{"text":"!\nKill all 2 "},{"text":"red ocelots","bold":true,"color":"red"},{"text":" before 120 seconds, or you'll be inflicted with "},{"text":"poison","bold":true,"color":"green"},{"text":" for 60 seconds!"}]