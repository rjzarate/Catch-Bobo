scoreboard players remove @s geundoowunBuff 1999
execute if score @s geundoowunBuff matches 1 at @s run playsound minecraft:item.trident.hit_ground player @a ~ ~ ~ 0.75 2
execute if score @s geundoowunBuff matches 1 at @s run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.5 0.2 3 20 normal
execute if score @s geundoowunBuff matches 1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-3-0-1 mori_geundoowun_movement_speed 0.02500000037252903 add

execute at @s run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.5 0.2 1 1 normal

execute if score @s geundoowunBuff matches ..0 run attribute @s minecraft:generic.movement_speed modifier remove 1-0-3-0-1
execute if score @s geundoowunBuff matches ..0 at @s run playsound minecraft:item.trident.hit player @a ~ ~ ~ 0.75 2
execute if score @s geundoowunBuff matches ..0 run scoreboard players reset @s geundoowunBuff