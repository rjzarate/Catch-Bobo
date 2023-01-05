function general:get_stats
scoreboard players remove @s[scores={phoneIAlwaysComeBackAmmo=1..}] phoneIAlwaysComeBackAmmo 1
execute if score @s phoneIAlwaysComeBackAmmo < .maxAmmo phoneIAlwaysComeBackStats unless score @s phoneIAlwaysComeBackCD matches 1.. run scoreboard players operation @s phoneIAlwaysComeBackCD += .cooldown20t phoneIAlwaysComeBackStats

#if no more ammo, remove fire aspect
execute unless score @s phoneIAlwaysComeBackAmmo matches 1.. run function orangutan:purple_guy/melee/fire_aspect/remove

advancement revoke @s only orangutan:purple_guy/damage_melee