execute positioned ^ ^ ^ run particle minecraft:sweep_attack ~ ~-0.3 ~ 0 0 0 0 1 normal

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!shot,tag=!hit,tag=!spectator,tag=!hunterTeamImmunity,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run function hunter:mori/yeoui/hit


scoreboard players remove #range temp 1

execute if block ~ ~ ~ #general:dashables unless entity @e[type=#general:everything,tag=!shot,tag=hit,tag=!spectator] positioned ^ ^ ^0.5 if score #range temp matches 0.. run function hunter:mori/yeoui/raycast