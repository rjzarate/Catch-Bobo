scoreboard players remove @s cRocket 1
tag @s add shotConcussionRocket
execute at @s anchored feet run summon armor_stand ^ ^ ^1 {Tags:["concussionRocket"],NoGravity:1b,Small:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:coal_block",Count:1b,tag:{Enchantments:[{}]}}]}
data modify entity @e[type=armor_stand,tag=concussionRocket,sort=nearest,limit=1,tag=!finished] Rotation set from entity @s Rotation
execute as @e[type=armor_stand,tag=concussionRocket,sort=nearest,limit=1,tag=!finished] at @s run tp ~ ~1 ~
execute at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 2 0

tag @e[type=armor_stand,tag=concussionRocket,sort=nearest,limit=1,tag=!finished] add finished