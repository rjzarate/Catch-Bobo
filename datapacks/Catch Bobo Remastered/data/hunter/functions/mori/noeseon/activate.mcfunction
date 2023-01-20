function general:get_stats

scoreboard players operation .chargeUp stats *= #20 constant
scoreboard players operation @s noeseonChargeUp = .chargeUp stats
scoreboard players operation @s noeseonCD = .chargeUp stats
scoreboard players operation @s noeseonCD += .chargeUp stats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

scoreboard players operation #uuid temp = @s uuid
execute as @e[type=minecraft:ghast,tag=geundoowun] if score @s uuidLink = #uuid temp run team join noCollideYellow @s
execute as @e[type=minecraft:marker,tag=geundoowun] if score @s uuidLink = #uuid temp run tag @s add noeseon