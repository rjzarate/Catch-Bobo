function general:get_stats
scoreboard players remove @s marshalAmmo 1
execute if score @s marshalAmmo < .maxAmmo marshalStats unless score @s marshalCD matches 1.. run scoreboard players operation @s marshalCD += .cooldown20t marshalStats
scoreboard players operation .range stats *= #2 constant
scoreboard players operation #range marshalStats = .range stats
scoreboard players set #damage temp 0
function general:apply/damage/scoreboard

#play sound only when not moving
	execute unless score #consumeAmmo marshalRightClick matches 1 at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 2


tag @s add shot
execute at @s anchored eyes positioned ^ ^ ^1 run function hunter:jett/marshal/raycast
tag @s remove shot
tag @e[type=#general:everything] remove hit

scoreboard players set #success marshalRightClick 1