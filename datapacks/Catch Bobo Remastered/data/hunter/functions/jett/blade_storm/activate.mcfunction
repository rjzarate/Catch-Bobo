function general:get_stats
scoreboard players remove @s bladeStormAmmo 1
execute if score @s bladeStormAmmo < .maxAmmo bladeStormStats unless score @s bladeStormCD matches 1.. run scoreboard players operation @s bladeStormCD += .cooldown20t bladeStormStats
scoreboard players operation .range stats *= #2 constant
scoreboard players operation #range bladeStormStats = .range stats
scoreboard players set #damage temp 0
function general:apply/damage/scoreboard

execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 3 2
tag @s add shot
execute at @s anchored eyes positioned ^ ^ ^1 run function hunter:jett/blade_storm/raycast
tag @s remove shot
tag @e[type=#general:everything] remove hit

