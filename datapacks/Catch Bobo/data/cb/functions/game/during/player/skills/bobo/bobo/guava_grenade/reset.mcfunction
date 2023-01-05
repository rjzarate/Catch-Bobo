scoreboard players set @s gG 3
scoreboard players add @s gGCD 153

tellraw @s ["",{"text":"Guava Grenade ","bold":true,"color":"gold"},{"text":"(+3 Ammo) ","bold":true,"color":"yellow"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2