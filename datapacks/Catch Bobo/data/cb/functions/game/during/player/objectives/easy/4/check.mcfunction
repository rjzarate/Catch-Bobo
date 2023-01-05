execute at @e[type=marker,tag=EO4] if entity @s[distance=..6,tag=!timeStop] run scoreboard players add @s objectiveHarambe 1

execute at @e[type=marker,tag=EO4] if entity @s[distance=..6,tag=!timeStop] if score @s objectiveHarambe matches 1 at @s run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 1 1
execute at @e[type=marker,tag=EO4] if entity @s[distance=..6,tag=!timeStop] if score @s objectiveHarambe matches 1 run tellraw @s ["",{"text":"\n"},{"text":"Praying...","bold":true,"italic":true,"color":"aqua"}]

execute if score @s objectiveHarambe matches 20.. if entity @s[tag=!timeStop] run function cb:game/during/player/objectives/easy/4/finished