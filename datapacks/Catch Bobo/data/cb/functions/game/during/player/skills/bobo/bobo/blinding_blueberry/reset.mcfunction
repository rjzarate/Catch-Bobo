scoreboard players set @s bB 1
scoreboard players add @s bBCD 153

tellraw @s ["",{"text":"Blinding Blueberry ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2