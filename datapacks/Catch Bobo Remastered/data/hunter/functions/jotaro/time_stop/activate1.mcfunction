scoreboard players operation @s timeStopCD = .cooldown20t timeStopStats
scoreboard players operation @s timeStopCD += .duration20t timeStopStats
scoreboard players operation number timeStopDuration = .duration20t timeStopStats

tag @s add timeStopper
execute as @e[type=#general:everything,tag=!timeStopper,tag=!hunterTeamImmunity] run tag @s add timeStoppee
execute as @e[type=#general:everything/objects,tag=timeStoppable,tag=!hunterTeamImmunity] run tag @s add timeStoppee

execute as @e[type=#general:everything/all,tag=timeStoppee] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["timeStop"],Duration:20000}
execute as @e[type=#general:everything/all,tag=timeStoppee] at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=timeStop,sort=nearest,limit=1] Rotation set from entity @s Rotation

attribute @s minecraft:generic.attack_damage modifier add 1-0-0-0-5 jotaro_time_stop -1 add