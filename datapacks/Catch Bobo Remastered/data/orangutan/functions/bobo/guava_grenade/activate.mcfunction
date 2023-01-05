function general:get_stats
scoreboard players remove @s guavaGrenadeHotPotatoPlanterAmmo 1
execute if score @s guavaGrenadeHotPotatoPlanterAmmo < .maxAmmo guavaGrenadeHotPotatoPlanterStats unless score @s guavaGrenadeHotPotatoPlanterCD matches 1.. run scoreboard players operation @s guavaGrenadeHotPotatoPlanterCD += .cooldown20t guavaGrenadeHotPotatoPlanterStats
scoreboard players set #fireRate stats 2000
scoreboard players operation #fireRate stats /= .fireRate stats
function general:fire_rate_change
scoreboard players operation @s guavaGrenadeFireRate = #fireRate stats

execute at @s run playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 0
execute store result score .pos0 Pos run data get entity @s Pos[0] 10000
execute store result score .pos1 Pos run data get entity @s Pos[1] 10000
execute store result score .pos2 Pos run data get entity @s Pos[2] 10000

execute at @s run summon minecraft:armor_stand ^ ^0.3 ^1.2 {Pose:{Head:[180f,90f,0f]},Tags:["guavaGrenade","timeStoppable"],Small:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:melon",Count:1b,tag:{Enchantments:[{}]}}]}




execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guavaGrenade,tag=!finished] store result score #pos0 Pos run data get entity @s Pos[0] 10000
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guavaGrenade,tag=!finished] store result score #pos1 Pos run data get entity @s Pos[1] 10000
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guavaGrenade,tag=!finished] store result score #pos2 Pos run data get entity @s Pos[2] 10000

scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guavaGrenade,tag=!finished] guavaGrenadeFuse = .fuse stats
scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guavaGrenade,tag=!finished] guavaGrenadeFuse *= #2 constant

scoreboard players operation #pos0 Pos -= .pos0 Pos
scoreboard players operation #pos1 Pos -= .pos1 Pos
scoreboard players operation #pos2 Pos -= .pos2 Pos

execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guavaGrenade,tag=!finished] at @s run tp @s ~ ~1 ~

execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guavaGrenade,tag=!finished] Motion[0] double 0.0002 run scoreboard players get #pos0 Pos
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guavaGrenade,tag=!finished] Motion[1] double 0.0002 run scoreboard players get #pos1 Pos
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guavaGrenade,tag=!finished] Motion[2] double 0.0002 run scoreboard players get #pos2 Pos

execute as @e[type=minecraft:armor_stand,tag=guavaGrenade,tag=!finished] run tag @s add finished