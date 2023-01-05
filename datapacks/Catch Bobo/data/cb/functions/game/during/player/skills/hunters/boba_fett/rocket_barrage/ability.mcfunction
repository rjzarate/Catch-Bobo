scoreboard players remove @s rBarrage 1
scoreboard players set @s rBarrageBurst 0
tag @s add shotRocketBarrage
execute at @s anchored feet run summon armor_stand ^ ^ ^1 {Tags:["rocketBarrage"],NoGravity:1b,Small:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{}]}}]}
data modify entity @e[type=armor_stand,tag=rocketBarrage,sort=nearest,limit=1,tag=!finished] Rotation set from entity @s Rotation
execute as @e[type=armor_stand,tag=rocketBarrage,sort=nearest,limit=1,tag=!finished] at @s run tp ~ ~1 ~
execute at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 2 0

tag @e[type=armor_stand,tag=rocketBarrage,sort=nearest,limit=1,tag=!finished] add finished