execute if score @s toxicShotCD matches ..0 run scoreboard players reset @s toxicShotCD
execute if score @s toxicShotAmmo < .maxAmmo toxicShotStats unless score @s toxicShotCD matches 1.. run scoreboard players operation @s toxicShotAmmo += .ammoCooldown toxicShotStats
execute if score @s toxicShotAmmo < .maxAmmo toxicShotStats unless score @s toxicShotCD matches 1.. run scoreboard players operation @s toxicShotCD += .cooldown20t toxicShotStats
execute if score @s toxicShotAmmo > .maxAmmo toxicShotStats run scoreboard players operation @s toxicShotAmmo = .maxAmmo toxicShotStats

execute if score @s blindingDartCD matches ..0 run scoreboard players reset @s blindingDartCD

execute if score @s moveQuickCD matches ..0 run scoreboard players reset @s moveQuickCD

execute if score @s noxiousTrapCD matches ..0 run scoreboard players reset @s noxiousTrapCD
execute if score @s noxiousTrapAmmo < .maxAmmo noxiousTrapStats unless score @s noxiousTrapCD matches 1.. run scoreboard players operation @s noxiousTrapAmmo += .ammoCooldown noxiousTrapStats
execute if score @s noxiousTrapAmmo < .maxAmmo noxiousTrapStats unless score @s noxiousTrapCD matches 1.. run scoreboard players operation @s noxiousTrapCD += .cooldown20t noxiousTrapStats

execute if score @s recallCD matches ..0 run scoreboard players reset @s recallCD