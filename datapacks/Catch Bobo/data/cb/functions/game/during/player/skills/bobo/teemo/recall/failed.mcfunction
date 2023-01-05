scoreboard players set @s recall 1
scoreboard players set @s recallCD 128

tellraw @s ["",{"text":"Recall ","bold":true,"color":"gold"},{"text":"failed.","bold":true,"color":"red"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0