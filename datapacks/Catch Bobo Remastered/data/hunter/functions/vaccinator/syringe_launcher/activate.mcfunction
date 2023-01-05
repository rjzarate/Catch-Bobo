function general:get_stats
scoreboard players remove @s syringeLauncherAmmo 1
scoreboard players operation @s syringeLauncherAmmo -= @s overloadedBrewing
execute if score @s syringeLauncherAmmo < .maxAmmo syringeLauncherStats unless score @s syringeLauncherCD matches 1.. run scoreboard players operation @s syringeLauncherCD += .cooldown20t syringeLauncherStats

data modify storage minecraft:arrow CustomPotionEffects set value [{Id:27,Amplifier:100b,Duration:100,ShowParticles:0b}]
scoreboard players set #amplifier temp 100
scoreboard players set #duration temp 2000
scoreboard players operation #amplifier temp += @s overloadedBrewing
scoreboard players operation @s unstableConcoction /= #20 constant
scoreboard players operation #duration temp += @s unstableConcoction
scoreboard players operation @s unstableConcoction *= #20 constant
scoreboard players operation #duration temp /= #constant 20
execute store result storage minecraft:arrow CustomPotionEffects[{Id:27}].Amplifier byte 1 run scoreboard players get #amplifier temp
execute store result storage minecraft:arrow CustomPotionEffects[{Id:27}].Duration int 1 run scoreboard players get #duration temp

execute as @e[type=minecraft:arrow,tag=!vaccinator,nbt={CustomPotionEffects:[{Id:23,Amplifier:50b,Duration:1,ShowParticles:0b}]}] run scoreboard players operation @s uuidLink = @p[tag=vaccinator,limit=1,sort=nearest,gamemode=!spectator] uuid
execute as @e[type=minecraft:arrow,tag=!vaccinator,nbt={CustomPotionEffects:[{Id:23,Amplifier:50b,Duration:1,ShowParticles:0b}]}] run data modify entity @s damage set value 0.01d
#execute as @e[type=minecraft:arrow,tag=!vaccinator,nbt={CustomPotionEffects:[{Id:23,Amplifier:50b,Duration:1,ShowParticles:0b}],crit:1b}] at @s run data modify entity @s CustomPotionEffects set from storage minecraft:arrow CustomPotionEffects
execute as @e[type=minecraft:arrow,tag=!vaccinator,nbt={CustomPotionEffects:[{Id:23,Amplifier:50b,Duration:1,ShowParticles:0b}],crit:1b}] at @s run tag @s add success
execute as @e[type=minecraft:arrow,tag=!vaccinator,nbt={CustomPotionEffects:[{Id:23,Amplifier:50b,Duration:1,ShowParticles:0b}]}] run data modify entity @s pickup set value 2b
execute as @e[type=minecraft:arrow,tag=!vaccinator,nbt={CustomPotionEffects:[{Id:23,Amplifier:50b,Duration:1,ShowParticles:0b}]}] run data modify entity @s crit set value 0b
execute as @e[type=minecraft:arrow,tag=!vaccinator,nbt={CustomPotionEffects:[{Id:23,Amplifier:50b,Duration:1,ShowParticles:0b}]}] run tag @s add vaccinator

scoreboard players reset @s syringeLauncherUsed