tellraw @s ["",{"text":"You will now become ","bold":true,"color":"yellow"},{"text":"Boba Fett","bold":true,"color":"dark_red"},{"text":".","bold":true,"color":"yellow"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2
scoreboard players set @s chooseC 7