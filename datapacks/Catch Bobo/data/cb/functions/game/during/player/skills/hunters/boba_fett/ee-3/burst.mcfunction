scoreboard players remove @s ee-3 1

execute at @s run playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 2
execute store result score @s Pos0 run data get entity @s Pos[0] 10000
execute store result score @s Pos1 run data get entity @s Pos[1] 10000
execute store result score @s Pos2 run data get entity @s Pos[2] 10000

execute at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^1 {Tags:["ee-3"],damage:0.75d}


execute as @e[type=arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] store result score @s Pos0 run data get entity @s Pos[0] 10000
execute as @e[type=arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] store result score @s Pos1 run data get entity @s Pos[1] 10000
execute as @e[type=arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] store result score @s Pos2 run data get entity @s Pos[2] 10000


scoreboard players operation @e[type=arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] Pos0 -= @s Pos0
scoreboard players operation @e[type=arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] Pos1 -= constant 15000
scoreboard players operation @e[type=arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] Pos1 -= @s Pos1
scoreboard players operation @e[type=arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] Pos2 -= @s Pos2

execute store result entity @e[type=minecraft:arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] Motion[0] double 0.0002 run scoreboard players get @e[type=arrow,limit=1,sort=nearest,tag=ee-3] Pos0
execute store result entity @e[type=minecraft:arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] Motion[1] double 0.0002 run scoreboard players get @e[type=arrow,limit=1,sort=nearest,tag=ee-3] Pos1
execute store result entity @e[type=minecraft:arrow,limit=1,sort=nearest,tag=ee-3,tag=!finished] Motion[2] double 0.0002 run scoreboard players get @e[type=arrow,limit=1,sort=nearest,tag=ee-3] Pos2

execute as @e[type=minecraft:arrow,tag=ee-3,tag=!finished] run tag @s add finished