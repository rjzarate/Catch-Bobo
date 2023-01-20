particle minecraft:mycelium ~ ~ ~ 0 0 0 0 1 force

execute positioned ~-0.4 ~-0.15 ~-0.4 as @e[type=#general:everything,tag=!shot,tag=!hit,tag=!spectator,tag=!hunterTeamImmunity,dx=1,dy=0,dz=1] positioned ~-1.2 ~-0.7 ~-1.2 if entity @s[dx=1,dy=0,dz=1] positioned ~1.6 ~0.85 ~1.6 run function hunter:jett/marshal/hit


scoreboard players remove #range marshalStats 1
execute unless block ~ ~ ~ #general:wallbangables run scoreboard players remove #range marshalStats 5
execute unless block ~ ~ ~ #general:wallbangables if score .rangeDamage stats matches 2.. run scoreboard players remove .rangeDamage stats 1

execute positioned ^ ^ ^0.5 if score #range marshalStats matches 0.. run function hunter:jett/marshal/raycast