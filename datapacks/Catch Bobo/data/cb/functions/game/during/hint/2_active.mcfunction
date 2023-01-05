execute as @e[type=area_effect_cloud,tag=hint] store result entity @s Pos[2] double 1 run scoreboard players get number hintZ
execute at @e[type=area_effect_cloud,tag=hint] run particle minecraft:barrier ~ ~ ~ 0 0 0 1 1 force
execute as @e[type=area_effect_cloud,tag=hint] at @s run tp @s ~1 ~ ~
execute as @e[type=area_effect_cloud,tag=hint] run scoreboard players add @s hintTemp 1
execute as @e[type=area_effect_cloud,tag=hint] if score @s hintTemp matches ..351 at @s run function cb:game/during/hint/2_active