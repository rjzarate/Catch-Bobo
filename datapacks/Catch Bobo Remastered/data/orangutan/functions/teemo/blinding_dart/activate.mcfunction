function general:get_stats

scoreboard players operation @s blindingDartCD = .cooldown stats
scoreboard players operation @s blindingDartCD *= #20 constant

execute as @e[type=minecraft:arrow,tag=!blindingDart,nbt={CustomPotionEffects:[{Id:27,Amplifier:50b,Duration:100}]}] run scoreboard players operation @s uuidLink = @p[tag=teemo,limit=1,sort=nearest,gamemode=!spectator] uuid
execute as @e[type=minecraft:arrow,tag=!blindingDart,nbt={CustomPotionEffects:[{Id:27,Amplifier:50b,Duration:100}]}] run data modify entity @s damage set value 0.5d
execute as @e[type=minecraft:arrow,tag=!blindingDart,nbt={CustomPotionEffects:[{Id:27,Amplifier:50b,Duration:100}]}] run data modify entity @s pickup set value 2b
execute as @e[type=minecraft:arrow,tag=!blindingDart,nbt={CustomPotionEffects:[{Id:27,Amplifier:50b,Duration:100}]}] run tag @s add blindingDart