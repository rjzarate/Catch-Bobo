particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force

execute positioned ~-0.1 ~-0.15 ~-0.1 as @e[type=#general:everything,tag=!shot,tag=!hit,tag=!spectator,tag=!hunterTeamImmunity,dx=0.5,dy=0,dz=0.5] positioned ~-1.3 ~-0.7 ~-1.3 if entity @s[dx=0.5,dy=0,dz=0.5] positioned ~1.4 ~0.85 ~1.4 run function hunter:jett/blade_storm/hit

scoreboard players remove #range bladeStormStats 1

execute if block ~ ~ ~ #general:dashables unless entity @e[type=#general:everything,tag=!shot,tag=hit,tag=!spectator] positioned ^ ^ ^0.5 if score #range bladeStormStats matches 0.. run function hunter:jett/blade_storm/raycast

