scoreboard players add @s kill 1
scoreboard players add @s killCD 120

tellraw @s ["",{"text":"Kill ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2