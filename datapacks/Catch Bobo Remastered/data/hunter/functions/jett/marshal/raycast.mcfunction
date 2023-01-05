particle minecraft:mycelium ~ ~ ~ 0 0 0 0 1 force

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!shot,tag=!hit,tag=!spectator,tag=!hunterTeamImmunity,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run function hunter:jett/marshal/hit
#execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!shotStarFinger,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @e[type=#general:everything,tag=!shotStarFinger,dx=0] run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
#execute as @e[type=#general:everything,tag=!shotStarFinger,dy=1.5] run function cb:game/during/player/skills/hunters/jotaro/star_finger/damage


scoreboard players remove #range marshalStats 1
execute unless block ~ ~ ~ #general:wallbangables run scoreboard players remove #range marshalStats 5
execute unless block ~ ~ ~ #general:wallbangables if score .rangeDamage stats matches 2.. run scoreboard players remove .rangeDamage stats 1

execute positioned ^ ^ ^0.5 if score #range marshalStats matches 0.. run function hunter:jett/marshal/raycast

