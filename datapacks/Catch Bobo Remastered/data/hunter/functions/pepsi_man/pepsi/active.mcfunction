execute at @s run particle minecraft:glow ~ ~1 ~ 0.2 0.5 0.2 1 1
scoreboard players remove @s pepsiDuration 1
execute if score @s pepsiDuration matches ..0 at @s run playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 2.5 2
execute if score @s pepsiDuration matches ..0 run scoreboard players reset @s pepsiDuration