execute as @e[type=minecraft:armor_stand,tag=dash4] run tp @p[tag=dashing] @s

execute if entity @e[type=minecraft:armor_stand,tag=dash5] run schedule function cb:game/during/player/skills/hunters/jett/dash/dashing/5 1t