execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water run scoreboard players add @s objectiveShower 1

execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 1 at @s run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 1 1
execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 1 run tellraw @s ["",{"text":"\n"},{"text":"Showering... ","bold":true,"italic":true,"color":"aqua"},{"text":"["},{"text":"0%","bold":true,"italic":true,"color":"yellow"},{"text":"]"}]

execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 21 at @s run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 1 1
execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 21 run tellraw @s ["",{"text":"\n"},{"text":"Showering... ","bold":true,"italic":true,"color":"aqua"},{"text":"["},{"text":"20%","bold":true,"italic":true,"color":"yellow"},{"text":"]"}]


execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 41 at @s run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 1 1
execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 41 run tellraw @s ["",{"text":"\n"},{"text":"Showering... ","bold":true,"italic":true,"color":"aqua"},{"text":"["},{"text":"40%","bold":true,"italic":true,"color":"yellow"},{"text":"]"}]


execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 61 at @s run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 1 1
execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 61 run tellraw @s ["",{"text":"\n"},{"text":"Showering... ","bold":true,"italic":true,"color":"aqua"},{"text":"["},{"text":"60%","bold":true,"italic":true,"color":"yellow"},{"text":"]"}]


execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 81 at @s run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 1 1
execute at @e[type=marker,tag=MO11] if entity @s[distance=..6,tag=!timeStop] at @s if block ~ ~ ~ water if block ~ ~1 ~ water if score @s objectiveShower matches 81 run tellraw @s ["",{"text":"\n"},{"text":"Showering... ","bold":true,"italic":true,"color":"aqua"},{"text":"["},{"text":"80%","bold":true,"italic":true,"color":"yellow"},{"text":"]"}]


execute if score @s objectiveShower matches 100.. if entity @s[tag=!timeStop] run function cb:game/during/player/objectives/medium/11/finished