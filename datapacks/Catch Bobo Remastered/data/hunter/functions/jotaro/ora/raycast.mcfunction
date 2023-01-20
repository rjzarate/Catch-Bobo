execute if score #double oraDuration matches 4 run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0 1 normal
particle ambient_entity_effect ~ ~ ~ 1.000 1.000 1.000 1 0 normal

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!shot,tag=!hit,tag=!spectator,tag=!hunterTeamImmunity,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function hunter:jotaro/ora/hit

scoreboard players remove #range temp 1
execute if block ~ ~ ~ #general:dashables positioned ^ ^ ^0.5 if score #range temp matches 0.. run function hunter:jotaro/ora/raycast