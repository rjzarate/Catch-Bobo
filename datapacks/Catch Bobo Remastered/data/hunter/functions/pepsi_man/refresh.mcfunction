execute if score @s pepsiSplashCD matches ..0 run function hunter:pepsi_man/zrefresh/pepsi_splash

execute if score @s pepsiCD matches ..0 run function hunter:pepsi_man/zrefresh/pepsi

execute if score @s pepsiCreationCD matches ..0 run function hunter:pepsi_man/zrefresh/pepsi_creation
execute if score @s pepsiCreationAmmo < .maxAmmo pepsiCreationStats unless score @s pepsiCreationCD matches 1.. run scoreboard players operation @s pepsiCreationAmmo += .ammoCooldown pepsiCreationStats
execute if score @s pepsiCreationAmmo < .maxAmmo pepsiCreationStats unless score @s pepsiCreationCD matches 1.. run scoreboard players operation @s pepsiCreationCD += .cooldown20t pepsiCreationStats