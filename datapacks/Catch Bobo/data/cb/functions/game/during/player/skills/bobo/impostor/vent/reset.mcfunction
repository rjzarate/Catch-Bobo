scoreboard players add @s vent 1
scoreboard players add @s ventCD 90

tellraw @s ["",{"text":"Vent ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2