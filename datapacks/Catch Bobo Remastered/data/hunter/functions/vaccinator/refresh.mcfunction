execute if score @s syringeLauncherCD matches ..0 run scoreboard players reset @s syringeLauncherCD
execute if score @s syringeLauncherAmmo < .maxAmmo syringeLauncherStats unless score @s syringeLauncherCD matches 1.. run scoreboard players operation @s syringeLauncherAmmo += .ammoCooldown syringeLauncherStats
execute if score @s syringeLauncherAmmo < .maxAmmo syringeLauncherStats unless score @s syringeLauncherCD matches 1.. run scoreboard players operation @s syringeLauncherCD += .cooldown20t syringeLauncherStats
execute if score @s syringeLauncherAmmo > .maxAmmo syringeLauncherStats run scoreboard players operation @s syringeLauncherAmmo = .maxAmmo syringeLauncherStats

execute if score @s selfDiagnoseCD matches ..0 run scoreboard players reset @s selfDiagnoseCD

execute if score @s unstableConcoctionCD matches ..0 run scoreboard players reset @s unstableConcoctionCD