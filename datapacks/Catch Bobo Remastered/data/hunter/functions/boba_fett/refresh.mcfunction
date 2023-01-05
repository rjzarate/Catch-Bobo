execute if score @s ee-3CD matches ..0 run scoreboard players reset @s ee-3CD
execute if score @s ee-3Ammo < .maxAmmo ee-3Stats unless score @s ee-3CD matches 1.. run scoreboard players operation @s ee-3Ammo += .ammoCooldown ee-3Stats
execute if score @s ee-3Ammo < .maxAmmo ee-3Stats unless score @s ee-3CD matches 1.. run scoreboard players operation @s ee-3CD += .cooldown20t ee-3Stats
execute if score @s ee-3Ammo > .maxAmmo ee-3Stats run scoreboard players operation @s ee-3Ammo = .maxAmmo ee-3Stats

execute if score @s flamethrowerCD matches ..0 run scoreboard players reset @s flamethrowerCD
execute if score @s flamethrowerAmmo < .maxAmmo flamethrowerStats unless score @s flamethrowerCD matches 1.. run scoreboard players operation @s flamethrowerAmmo += .ammoCooldown flamethrowerStats
execute if score @s flamethrowerAmmo < .maxAmmo flamethrowerStats unless score @s flamethrowerCD matches 1.. run scoreboard players operation @s flamethrowerCD += .cooldown20t flamethrowerStats
execute if score @s flamethrowerAmmo > .maxAmmo flamethrowerStats run scoreboard players operation @s flamethrowerAmmo = .maxAmmo flamethrowerStats

execute if score @s concussionRocketCD matches ..0 run scoreboard players reset @s concussionRocketCD

execute if score @s rocketBarrageCD matches ..0 run scoreboard players reset @s rocketBarrageCD

execute if score @s jetpackFuelCD matches ..0 run scoreboard players reset @s jetpackFuelCD
execute if score @s jetpackFuelAmmo < .maxAmmo jetpackFuelStats unless score @s jetpackFuelCD matches 1.. run scoreboard players operation @s jetpackFuelAmmo += .ammoCooldown jetpackFuelStats
execute if score @s jetpackFuelAmmo < .maxAmmo jetpackFuelStats unless score @s jetpackFuelCD matches 1.. run scoreboard players operation @s jetpackFuelCD += .cooldown20t jetpackFuelStats
execute if score @s jetpackFuelAmmo > .maxAmmo jetpackFuelStats run scoreboard players operation @s jetpackFuelAmmo = .maxAmmo jetpackFuelStats