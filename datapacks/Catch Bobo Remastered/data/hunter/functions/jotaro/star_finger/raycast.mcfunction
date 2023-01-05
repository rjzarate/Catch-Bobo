#execute run particle witch ~ ~ ~ 0.1 0.1 0.1 0 3 force

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!shot,tag=!spectator,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @s[dx=0] run function hunter:jotaro/star_finger/hit
#execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!shotStarFinger,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @e[type=#general:everything,tag=!shotStarFinger,dx=0] run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
#execute as @e[type=#general:everything,tag=!shotStarFinger,dy=1.5] run function cb:game/during/player/skills/hunters/jotaro/star_finger/damage

scoreboard players remove #range temp 1

execute unless block ~ ~ ~ #general:dashables run function hunter:jotaro/star_finger/particles/activate
execute if block ~ ~ ~ #general:dashables positioned ^ ^ ^0.5 unless score #range temp matches 0.. run function hunter:jotaro/star_finger/particles/activate
execute if block ~ ~ ~ #general:dashables positioned ^ ^ ^0.5 if score #range temp matches 0.. if entity @e[type=#general:everything,tag=hit,tag=!spectator] run function hunter:jotaro/star_finger/particles/activate

execute if block ~ ~ ~ #general:dashables positioned ^ ^ ^0.5 if score #range temp matches 0.. unless entity @e[type=#general:everything,tag=hit,tag=!spectator] run function hunter:jotaro/star_finger/raycast