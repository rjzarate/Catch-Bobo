particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 0 force

#removes one iteration and teleports the marker at the last iteration
scoreboard players remove #temp ee-3Iteration 1
execute if score #temp ee-3Iteration matches 0 run tp @s ~ ~ ~

#checks if there is an entity
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!shooter,tag=!hit,tag=!hunterTeamImmunity,tag=!spectator,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run function hunter:boba_fett/ee-3/slowcast/hit

execute unless block ~ ~ ~ #general:dashables run kill @s

execute if score #temp ee-3Iteration matches 1.. positioned ^ ^ ^0.5 run function hunter:boba_fett/ee-3/slowcast/move