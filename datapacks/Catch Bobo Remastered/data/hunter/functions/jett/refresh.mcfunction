execute if score @s marshalCD matches ..0 run scoreboard players reset @s marshalCD
execute if score @s marshalAmmo < .maxAmmo marshalStats unless score @s marshalCD matches 1.. run scoreboard players operation @s marshalAmmo += .ammoCooldown marshalStats
execute if score @s marshalAmmo < .maxAmmo marshalStats unless score @s marshalCD matches 1.. run scoreboard players operation @s marshalCD += .cooldown20t marshalStats
execute if score @s marshalAmmo > .maxAmmo marshalStats run scoreboard players operation @s marshalAmmo = .maxAmmo marshalStats

execute if score @s bladeStormCD matches ..0 run scoreboard players reset @s bladeStormCD
execute if score @s bladeStormAmmo < .maxAmmo bladeStormStats unless score @s bladeStormCD matches 1.. run scoreboard players operation @s bladeStormAmmo += .ammoCooldown bladeStormStats
execute if score @s bladeStormAmmo < .maxAmmo bladeStormStats unless score @s bladeStormCD matches 1.. run scoreboard players operation @s bladeStormCD += .cooldown20t bladeStormStats
execute if score @s bladeStormAmmo > .maxAmmo bladeStormStats run scoreboard players operation @s bladeStormAmmo = .maxAmmo bladeStormStats


execute if score @s tailwindCD matches ..0 run scoreboard players reset @s tailwindCD
execute if score @s tailwindAmmo < .maxAmmo tailwindStats unless score @s tailwindCD matches 1.. run scoreboard players operation @s tailwindAmmo += .ammoCooldown tailwindStats
execute if score @s tailwindAmmo < .maxAmmo tailwindStats unless score @s tailwindCD matches 1.. run scoreboard players operation @s tailwindCD += .cooldown20t tailwindStats
execute if score @s tailwindAmmo > .maxAmmo tailwindStats run scoreboard players operation @s tailwindAmmo = .maxAmmo tailwindStats


execute if score @s updraftCD matches ..0 run scoreboard players reset @s updraftCD
execute if score @s updraftAmmo < .maxAmmo updraftStats unless score @s updraftCD matches 1.. run scoreboard players operation @s updraftAmmo += .ammoCooldown updraftStats
execute if score @s updraftAmmo < .maxAmmo updraftStats unless score @s updraftCD matches 1.. run scoreboard players operation @s updraftCD += .cooldown20t updraftStats
execute if score @s updraftAmmo > .maxAmmo updraftStats run scoreboard players operation @s updraftAmmo = .maxAmmo updraftStats