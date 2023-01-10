function general:get_stats

scoreboard players operation .chargeUp stats *= #20 constant
scoreboard players operation @s timeStopChargeUp = .chargeUp stats
scoreboard players operation @s timeStopCD = .chargeUp stats
scoreboard players operation @s timeStopCD += .chargeUp stats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

advancement revoke @s only hunter:jotaro/damage_taken