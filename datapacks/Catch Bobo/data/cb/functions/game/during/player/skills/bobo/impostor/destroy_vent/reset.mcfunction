scoreboard players add @s destroyVent 1
scoreboard players add @s destroyVentCD 60

tellraw @s ["",{"text":"Destroy Vent ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2