execute at @s run tp @s @e[type=minecraft:area_effect_cloud,tag=timeStop,sort=nearest,limit=1]

execute unless score @s weakness100 matches 2.. run scoreboard players set @s weakness100 2
execute unless score @s fireResistance matches 2.. run scoreboard players set @s fireResistance 2

execute unless score number timeStopDuration matches 1.. run tag @s remove timeStopee