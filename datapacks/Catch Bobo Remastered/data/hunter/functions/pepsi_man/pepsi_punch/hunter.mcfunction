function general:get_stats

#change models
	execute unless score @s pepsiPunchHunterDuration matches 1.. run function hunter:pepsi_man/pepsi_punch/change_model

scoreboard players operation .successfulHitHunterDuration stats *= #20 constant
scoreboard players operation @s pepsiPunchHunterDuration = .successfulHitHunterDuration stats

attribute @s minecraft:generic.attack_speed modifier add 1-0-2-0-1 pepsi_punch_damage_hunter .25 add
attribute @s minecraft:generic.attack_damage modifier add 1-0-2-0-2 pepsi_punch_damage_hunter -1.99 add
scoreboard players set @s pepsiPunchKnockback 3
execute if score @s pepsiPunchOrangutanDuration matches 1.. run scoreboard players set @s pepsiPunchKnockback 1

advancement revoke @s only hunter:pepsi_man/damage_hunter