function general:get_stats
scoreboard players remove @s guavaGrenadeHotPotatoPlanterAmmo 1
execute if score @s guavaGrenadeHotPotatoPlanterAmmo < .maxAmmo guavaGrenadeHotPotatoPlanterStats unless score @s guavaGrenadeHotPotatoPlanterCD matches 1.. run scoreboard players operation @s guavaGrenadeHotPotatoPlanterCD += .cooldown20t guavaGrenadeHotPotatoPlanterStats
#change model to inactive
	execute unless score @s guavaGrenadeHotPotatoPlanterAmmo matches 1.. run function general:animate/add/selected_item



execute at @s run playsound minecraft:entity.chicken.egg player @a ~ ~1 ~ 1 0
execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.05 3
execute at @s run summon minecraft:item ~ ~1 ~ {Tags:["hotPotato"],Health:1000,PickupDelay:32767,Age:-32768,Item:{id:"minecraft:baked_potato",Count:1b,tag:{Enchantments:[{}]}}}

execute as @e[type=minecraft:item,tag=hotPotato,tag=!finished] store result entity @s Age int -20 run scoreboard players get .lifespan stats
tag @e[type=minecraft:item,tag=hotPotato,tag=!finished] add finished