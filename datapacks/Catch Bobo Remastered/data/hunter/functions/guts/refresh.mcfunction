execute if score @s repeaterCrossbowCD matches ..0 run scoreboard players reset @s repeaterCrossbowCD
execute if score @s repeaterCrossbowAmmo < .maxAmmo repeaterCrossbowStats unless score @s repeaterCrossbowCD matches 1.. run scoreboard players operation @s repeaterCrossbowAmmo += .ammoCooldown repeaterCrossbowStats
execute if score @s repeaterCrossbowAmmo < .maxAmmo repeaterCrossbowStats unless score @s repeaterCrossbowCD matches 1.. run scoreboard players operation @s repeaterCrossbowCD += .cooldown20t repeaterCrossbowStats
execute if score @s repeaterCrossbowAmmo > .maxAmmo repeaterCrossbowStats run scoreboard players operation @s repeaterCrossbowAmmo = .maxAmmo repeaterCrossbowStats


execute if score @s cannonArmCD matches ..0 run scoreboard players reset @s cannonArmCD


execute if score @s indomitableWillCD matches ..0 run scoreboard players reset @s indomitableWillCD


execute if score @s berserkerArmorCD matches ..0 run scoreboard players reset @s berserkerArmorCD