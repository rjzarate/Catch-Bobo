scoreboard players add @s lights 1
scoreboard players add @s lightsCD 360

tellraw @s ["",{"text":"Sabotage: Lights ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2