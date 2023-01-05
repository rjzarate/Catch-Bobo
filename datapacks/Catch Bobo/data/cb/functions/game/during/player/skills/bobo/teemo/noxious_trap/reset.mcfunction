scoreboard players add @s noxiousTrap 1
scoreboard players add @s noxiousTrapCD 20

tellraw @s ["",{"text":"Noxious Trap ","bold":true,"color":"gold"},{"text":"+1 Ammo","bold":true,"color":"yellow"},{"text":".","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2