scoreboard players operation .range stats *= #2 constant
scoreboard players operation #range temp = .range stats

scoreboard players operation @s battery -= .batteryUsage stats

execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 2



tag @s add shot
execute at @s anchored eyes positioned ^ ^ ^1 run function hunter:hacker/adware/raycast
tag @s remove shot


tag @e[type=#general:everything] remove hit