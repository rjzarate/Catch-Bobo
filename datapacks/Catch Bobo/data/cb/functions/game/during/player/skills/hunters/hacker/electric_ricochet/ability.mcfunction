scoreboard players remove @s battery 11


execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 2
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["eRicochet"],Duration:10}
scoreboard players operation @e[type=area_effect_cloud,tag=eRicochet,limit=1,sort=nearest] eRicochetB = constant eRicochetB
scoreboard players operation @e[type=area_effect_cloud,tag=eRicochet,limit=1,sort=nearest] eRicochetD = constant eRicochetD
execute at @s run tp @e[type=area_effect_cloud,tag=eRicochet,limit=1,sort=nearest] ~ ~ ~ ~ ~
tag @s add shotERicochet
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=area_effect_cloud,tag=eRicochet,limit=1,sort=nearest] run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/raycast/loop
execute at @s run kill @e[type=area_effect_cloud,tag=eRicochet,limit=1,sort=nearest]
tag @s remove shotERicochet