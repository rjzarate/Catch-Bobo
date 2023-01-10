function general:get_stats
scoreboard players remove @s updraftAmmo 1
scoreboard players operation .durationDecimal stats /= #5 constant
scoreboard players operation @s updraftDuration = .durationDecimal stats
execute if score @s updraftAmmo < .maxAmmo updraftStats unless score @s updraftCD matches 1.. run scoreboard players operation @s updraftCD += .cooldown20t updraftStats
scoreboard players operation @s updraftCD += .durationDecimal stats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

scoreboard players operation .levitation15Decimal stats /= #5 constant
scoreboard players operation @s levitation15 = @s levitation15
execute if score @s levitation15 < .levitation15Decimal stats run scoreboard players operation @s levitation15 = .levitation15Decimal stats
execute at @s run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 0.75