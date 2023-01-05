function general:get_stats

scoreboard players operation .successfulHitDuration stats *= #20 constant
scoreboard players operation @s swapstickDuration = .successfulHitDuration stats

attribute @s minecraft:generic.attack_speed modifier add 1-0-4-0-1 officer_swapstick 0.8 add

advancement revoke @s only hunter:officer/damage_swapstick