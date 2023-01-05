scoreboard players add @s toxicShot 10
execute if score @s toxicShot matches 30.. run scoreboard players set @s toxicShot 29
scoreboard players add @s toxicShotCD 20

tellraw @s ["",{"text":"Toxic Shot ","bold":true,"color":"gold"},{"text":"+10 Ammo","bold":true,"color":"yellow"},{"text":".","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2