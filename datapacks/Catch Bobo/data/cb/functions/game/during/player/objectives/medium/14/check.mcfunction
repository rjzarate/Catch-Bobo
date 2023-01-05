execute as @e[type=marker,tag=fire] at @s if block ~ ~ ~ minecraft:air run kill @s
scoreboard players reset @s objectiveFire
scoreboard players reset @s objectiveSFire
execute unless entity @e[type=marker,tag=fire] run function cb:game/during/player/objectives/medium/14/finished