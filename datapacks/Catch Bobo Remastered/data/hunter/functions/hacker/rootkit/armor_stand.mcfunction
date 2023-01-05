execute store result score #root temp run data get entity @s Pose.Head[1] 100000


scoreboard players add #root temp 1000000
execute store result entity @s Pose.Head[1] float 0.00001 run scoreboard players get #root temp
