function general:get_stats

scoreboard players operation .successfulHitDuration stats *= #20 constant
scoreboard players operation @s dragonslayerDuration = .successfulHitDuration stats

attribute @s minecraft:generic.attack_speed modifier add 1-0-1-0-1 dragonslayer_hit 0.85 add

execute at @s run playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 0

advancement revoke @s only hunter:guts/damage_dragonslayer