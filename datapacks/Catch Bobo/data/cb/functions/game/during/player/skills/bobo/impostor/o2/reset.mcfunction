scoreboard players add @s o2 1
scoreboard players add @s o2CD 360

tellraw @s ["",{"text":"Sabotage: O2 ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2