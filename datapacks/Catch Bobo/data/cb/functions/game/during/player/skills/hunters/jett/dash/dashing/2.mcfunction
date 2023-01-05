execute as @e[type=minecraft:armor_stand,tag=dash2] run tp @p[tag=dashing] @s

execute if entity @e[type=minecraft:armor_stand,tag=dash3] run schedule function cb:game/during/player/skills/hunters/jett/dash/dashing/3 1t