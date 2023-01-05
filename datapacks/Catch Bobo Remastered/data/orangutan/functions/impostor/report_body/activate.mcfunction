function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation .chargeUp stats *= #20 constant
#scoreboard players operation @s reportBodyCD = .cooldown stats
#scoreboard players operation @s reportBodyCD += .chargeUp stats
#scoreboard players operation @s reportBodyCD += .duration stats
scoreboard players operation @s reportBodyChargeUp = .chargeUp stats

advancement revoke @s only orangutan:impostor/damage_taken