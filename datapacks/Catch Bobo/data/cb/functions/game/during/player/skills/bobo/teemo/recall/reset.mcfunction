scoreboard players add @s recall 1
scoreboard players add @s recallCD 128

tellraw @s ["",{"text":"Recall ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2