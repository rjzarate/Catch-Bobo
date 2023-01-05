scoreboard players remove @s gG 1
scoreboard players add @s objectiveAbility 1

scoreboard players set @s gGTimer 3
execute at @s run playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 0
execute store result score @s Pos0 run data get entity @s Pos[0] 10000
execute store result score @s Pos1 run data get entity @s Pos[1] 10000
execute store result score @s Pos2 run data get entity @s Pos[2] 10000

execute at @s run summon armor_stand ^ ^0.3 ^1.2 {Pose:{Head:[180f,90f,0f]},Tags:["gG","noDamage"],Small:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:melon",Count:1b,tag:{Enchantments:[{}]}}]}




execute as @e[type=armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] store result score @s Pos0 run data get entity @s Pos[0] 10000
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] store result score @s Pos1 run data get entity @s Pos[1] 10000
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] store result score @s Pos2 run data get entity @s Pos[2] 10000


scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] Pos0 -= @s Pos0
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] Pos1 -= @s Pos1
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] Pos2 -= @s Pos2

execute as @e[type=armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] at @s run tp @s ~ ~1 ~

execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] Motion[0] double 0.0002 run scoreboard players get @e[type=armor_stand,limit=1,sort=nearest,tag=gG] Pos0
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] Motion[1] double 0.0002 run scoreboard players get @e[type=armor_stand,limit=1,sort=nearest,tag=gG] Pos1
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=gG,tag=!finished] Motion[2] double 0.0002 run scoreboard players get @e[type=armor_stand,limit=1,sort=nearest,tag=gG] Pos2

execute as @e[type=minecraft:armor_stand,tag=gG,tag=!finished] run tag @s add finished