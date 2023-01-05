execute positioned -3 53 -17 as @a unless entity @s[dx=6,dy=4,dz=5] run scoreboard players reset @s playerReady

execute unless score constant gameStarted matches 1 positioned -3 53 -17 as @a[dx=6,dy=4,dz=5] unless score @s playerReady matches 1 run tellraw @a ["",{"text":"\n"},{"selector":"@s","bold":true,"color":"yellow"},{"text":" is ready!","bold":true,"color":"green"}]
execute unless score constant gameStarted matches 1 positioned -3 53 -17 as @a[dx=6,dy=4,dz=5] unless score @s playerReady matches 1 as @a at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

execute if score constant gameStarted matches 1 positioned -3 53 -17 as @a[dx=6,dy=4,dz=5] unless score @s playerReady matches 1 run tellraw @s ["",{"text":"\n"},{"text":"Game in already in progress.","bold":true,"color":"red"}]
execute if score constant gameStarted matches 1 positioned -3 53 -17 as @a[dx=6,dy=4,dz=5] unless score @s playerReady matches 1 at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0

execute positioned -3 53 -17 as @a[dx=6,dy=4,dz=5] unless score @s playerReady matches 1 run scoreboard players set @s playerReady 1
