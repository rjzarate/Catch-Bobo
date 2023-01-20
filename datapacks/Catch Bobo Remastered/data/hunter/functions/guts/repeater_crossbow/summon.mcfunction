function general:get_stats_offhand
scoreboard players remove @s repeaterCrossbowAmmo 1
execute if score @s repeaterCrossbowAmmo < .maxAmmo repeaterCrossbowStats unless score @s repeaterCrossbowCD matches 1.. run scoreboard players operation @s repeaterCrossbowCD += .cooldown20t repeaterCrossbowStats

#fire rate
scoreboard players set #fireRate stats 2000
scoreboard players operation #fireRate stats /= .fireRate stats
function general:fire_rate_change
scoreboard players operation @s repeaterCrossbowFireRate = #fireRate stats

#range
scoreboard players operation .range stats *= #2 constant

#summon minecraft:armorstand visual to be at the correct orientation
execute store result score .rotation Pos run data get entity @s Rotation[0] 10
execute if score .rotation Pos matches 1575..1800 at @s anchored eyes positioned ~ ~0.85 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Tags:["repeaterCrossbow","timeStoppable"],Marker:1b,Invisible:1b,Small:1b}
execute if score .rotation Pos matches -1800..-1575 at @s anchored eyes positioned ~ ~0.85 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Tags:["repeaterCrossbow","timeStoppable"],Marker:1b,Invisible:1b,Small:1b}
execute if score .rotation Pos matches -1574..-1126 at @s anchored eyes positioned ~ ~0.85 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[225F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Tags:["repeaterCrossbow","timeStoppable"],Marker:1b,Invisible:1b,Small:1b}
execute if score .rotation Pos matches -1125..-675 at @s anchored eyes positioned ~ ~0.85 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[270F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Tags:["repeaterCrossbow","timeStoppable"],Marker:1b,Invisible:1b,Small:1b}
execute if score .rotation Pos matches -674..-226 at @s anchored eyes positioned ~ ~0.85 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[315F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Tags:["repeaterCrossbow","timeStoppable"],Marker:1b,Invisible:1b,Small:1b}
execute if score .rotation Pos matches -225..225 at @s anchored eyes positioned ~ ~0.85 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[0F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Tags:["repeaterCrossbow","timeStoppable"],Marker:1b,Invisible:1b,Small:1b}
execute if score .rotation Pos matches 226..674 at @s anchored eyes positioned ~ ~0.85 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[45F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Tags:["repeaterCrossbow","timeStoppable"],Marker:1b,Invisible:1b,Small:1b}
execute if score .rotation Pos matches 675..1125 at @s anchored eyes positioned ~ ~0.85 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[90F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Tags:["repeaterCrossbow","timeStoppable"],Marker:1b,Invisible:1b,Small:1b}
execute if score .rotation Pos matches 1126..1574 at @s anchored eyes positioned ~ ~0.85 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[135F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Tags:["repeaterCrossbow","timeStoppable"],Marker:1b,Invisible:1b,Small:1b}




scoreboard players operation @e[type=minecraft:armor_stand,tag=repeaterCrossbow,tag=!finished,limit=1,sort=nearest] uuidLink = @s uuid

execute at @s anchored eyes positioned ~ ~0.85 ~ facing ^ ^2 ^5 run tp @e[type=minecraft:armor_stand,tag=repeaterCrossbow,tag=!finished,limit=1,sort=nearest] ^ ^ ^0.5 ~ ~

data modify entity @e[type=minecraft:armor_stand,tag=repeaterCrossbow,tag=!finished,limit=1,sort=nearest] Rotation set from entity @s Rotation
scoreboard players operation @e[type=minecraft:armor_stand,tag=repeaterCrossbow,tag=!finished,limit=1,sort=nearest] repeaterCrossbowRange = .range stats

#damage
scoreboard players operation #damage temp = .damage stats
function general:apply/damage/scoreboard
execute at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=minecraft:armor_stand,tag=repeaterCrossbow,tag=!finished,limit=1,sort=nearest] repeaterCrossbowDamage = #damage temp

execute at @s run playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 1.5

tag @e[type=minecraft:armor_stand,tag=repeaterCrossbow,tag=!finished] add finished