execute if score @s pepsiSplashCD matches ..0 run scoreboard players reset @s pepsiSplashCD

execute if score @s pepsiCD matches ..0 run scoreboard players reset @s pepsiCD

execute if score @s pepsiCreationCD matches ..0 run scoreboard players reset @s pepsiCreationCD
execute if score @s pepsiCreationAmmo < .maxAmmo pepsiCreationStats unless score @s pepsiCreationCD matches 1.. run scoreboard players operation @s pepsiCreationAmmo += .ammoCooldown pepsiCreationStats
execute if score @s pepsiCreationAmmo < .maxAmmo pepsiCreationStats unless score @s pepsiCreationCD matches 1.. run scoreboard players operation @s pepsiCreationCD += .cooldown20t pepsiCreationStats