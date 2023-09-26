function general:get_stats
scoreboard players remove @s toxicShotAmmo 1
execute if score @s toxicShotAmmo < .maxAmmo toxicShotStats unless score @s toxicShotCD matches 1.. run scoreboard players operation @s toxicShotCD += .cooldown20t toxicShotStats

scoreboard players set #fireRate stats 2000
scoreboard players operation #fireRate stats /= .fireRate stats
function general:fire_rate_change
scoreboard players operation @s toxicShotFireRate = #fireRate stats

execute as @e[type=minecraft:arrow,tag=!toxicShot,nbt={custom_potion_effects:[{id:"minecraft:unluck",amplifier:49b,duration:100}]}] run scoreboard players operation @s uuidLink = @p[tag=teemo,limit=1,sort=nearest,gamemode=!spectator] uuid
execute as @e[type=minecraft:arrow,tag=!toxicShot,nbt={custom_potion_effects:[{id:"minecraft:unluck",amplifier:49b,duration:100}]}] run data modify entity @s damage set value 0.01d
execute as @e[type=minecraft:arrow,tag=!toxicShot,nbt={custom_potion_effects:[{id:"minecraft:unluck",amplifier:49b,duration:100}]}] run data modify entity @s pickup set value 2b
execute as @e[type=minecraft:arrow,tag=!toxicShot,nbt={custom_potion_effects:[{id:"minecraft:unluck",amplifier:49b,duration:100}]}] run data modify entity @s crit set value 0b
execute as @e[type=minecraft:arrow,tag=!toxicShot,nbt={custom_potion_effects:[{id:"minecraft:unluck",amplifier:49b,duration:100}]}] run tag @s add toxicShot