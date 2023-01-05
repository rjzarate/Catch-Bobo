attribute @s minecraft:generic.attack_damage base set 0

scoreboard players reset @a timeStopTimer
scoreboard players reset @a timeStopSound
scoreboard players remove @s timeStop 1

execute at @s as @e[distance=0.01..,tag=!noTimeStop] run tag @s add timeStop


