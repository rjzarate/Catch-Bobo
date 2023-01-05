#if phoneIAlwaysComeBackAmmo is 0, gives back fire aspect
	execute if score @s phoneIAlwaysComeBackCD matches ..0 if score @s phoneIAlwaysComeBackAmmo matches ..0 run function orangutan:purple_guy/melee/fire_aspect/add
execute if score @s phoneIAlwaysComeBackCD matches ..0 run scoreboard players reset @s phoneIAlwaysComeBackCD
execute if score @s phoneIAlwaysComeBackAmmo < .maxAmmo phoneIAlwaysComeBackStats unless score @s phoneIAlwaysComeBackCD matches 1.. run scoreboard players operation @s phoneIAlwaysComeBackAmmo += .ammoCooldown phoneIAlwaysComeBackStats
execute if score @s phoneIAlwaysComeBackAmmo < .maxAmmo phoneIAlwaysComeBackStats unless score @s phoneIAlwaysComeBackCD matches 1.. run scoreboard players operation @s phoneIAlwaysComeBackCD += .cooldown20t phoneIAlwaysComeBackStats
execute if score @s phoneIAlwaysComeBackAmmo > .maxAmmo phoneIAlwaysComeBackStats run scoreboard players operation @s phoneIAlwaysComeBackAmmo = .maxAmmo phoneIAlwaysComeBackStats

execute if score @s remnantMachineCD matches ..0 run scoreboard players reset @s remnantMachineCD
execute if score @s remnantMachineAmmo < .maxAmmo remnantMachineStats unless score @s remnantMachineCD matches 1.. run scoreboard players operation @s remnantMachineAmmo += .ammoCooldown remnantMachineStats
execute if score @s remnantMachineAmmo < .maxAmmo remnantMachineStats unless score @s remnantMachineCD matches 1.. run scoreboard players operation @s remnantMachineCD += .cooldown20t remnantMachineStats
execute if score @s remnantMachineAmmo > .maxAmmo remnantMachineStats run scoreboard players operation @s remnantMachineAmmo = .maxAmmo remnantMachineStats

execute if score @s quirkyAnimatronicsFlamingCorruptionCD matches ..0 run scoreboard players reset @s quirkyAnimatronicsFlamingCorruptionCD
execute if score @s 12am5amCD matches ..0 run scoreboard players reset @s 12am5amCD