particle minecraft:landing_obsidian_tear ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~ ~ #general:dashables positioned ^ ^ ^-0.5 run function hunter:hacker/rootkit/hit
#execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!shotStarFinger,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @e[type=#general:everything,tag=!shotStarFinger,dx=0] run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
#execute as @e[type=#general:everything,tag=!shotStarFinger,dy=1.5] run function cb:game/during/player/skills/hunters/jotaro/star_finger/damage


scoreboard players remove #range temp 1

execute if block ~ ~ ~ #general:dashables positioned ^ ^ ^0.5 if score #range temp matches 0.. run function hunter:hacker/rootkit/raycast