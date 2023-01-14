function general:get_stats

scoreboard players operation .chargeUp stats *= #20 constant
scoreboard players operation @s pepsiChargeUp = .chargeUp stats
scoreboard players operation @s pepsiCD = .chargeUp stats
scoreboard players operation @s pepsiCD += .chargeUp stats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint