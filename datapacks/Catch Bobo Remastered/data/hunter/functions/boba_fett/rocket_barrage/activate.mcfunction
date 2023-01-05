function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s rocketBarrageCD = .cooldown stats

#range
scoreboard players operation .range stats *= #2 constant

#summon minecraft:armorstand visual to be at the correct orientation
execute store result score .rotation Pos run data get entity @s Rotation[0] 10
execute if score .rotation Pos matches 1575..1800 at @s anchored eyes positioned ~ ~0.55 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Tags:["rocketBarrage","timeStoppable","new"],Marker:1b,Invisible:1b,Small:1b,NoGravity:1b}
execute if score .rotation Pos matches -1800..-1575 at @s anchored eyes positioned ~ ~0.55 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Tags:["rocketBarrage","timeStoppable","new"],Marker:1b,Invisible:1b,Small:1b,NoGravity:1b}
execute if score .rotation Pos matches -1574..-1126 at @s anchored eyes positioned ~ ~0.55 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[225F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Tags:["rocketBarrage","timeStoppable","new"],Marker:1b,Invisible:1b,Small:1b,NoGravity:1b}
execute if score .rotation Pos matches -1125..-675 at @s anchored eyes positioned ~ ~0.55 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[270F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Tags:["rocketBarrage","timeStoppable","new"],Marker:1b,Invisible:1b,Small:1b,NoGravity:1b}
execute if score .rotation Pos matches -674..-226 at @s anchored eyes positioned ~ ~0.55 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[315F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Tags:["rocketBarrage","timeStoppable","new"],Marker:1b,Invisible:1b,Small:1b,NoGravity:1b}
execute if score .rotation Pos matches -225..225 at @s anchored eyes positioned ~ ~0.55 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[0F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Tags:["rocketBarrage","timeStoppable","new"],Marker:1b,Invisible:1b,Small:1b,NoGravity:1b}
execute if score .rotation Pos matches 226..674 at @s anchored eyes positioned ~ ~0.55 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[45F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Tags:["rocketBarrage","timeStoppable","new"],Marker:1b,Invisible:1b,Small:1b,NoGravity:1b}
execute if score .rotation Pos matches 675..1125 at @s anchored eyes positioned ~ ~0.55 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[90F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Tags:["rocketBarrage","timeStoppable","new"],Marker:1b,Invisible:1b,Small:1b,NoGravity:1b}
execute if score .rotation Pos matches 1126..1574 at @s anchored eyes positioned ~ ~0.55 ~ run summon minecraft:armor_stand ^ ^ ^ {Rotation:[135F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Tags:["rocketBarrage","timeStoppable","new"],Marker:1b,Invisible:1b,Small:1b,NoGravity:1b}

#burst fire
scoreboard players set @s rocketBarrageBurst 3
scoreboard players set @s rocketBarrageBurstFireRate 5

#damage
scoreboard players operation #damage temp = .damage stats
function general:apply/damage/scoreboard
scoreboard players operation @e[type=minecraft:armor_stand,tag=rocketBarrage,tag=new,limit=1,sort=nearest] rocketBarrageDamage = #damage temp

scoreboard players operation @e[type=minecraft:armor_stand,tag=rocketBarrage,tag=new,limit=1,sort=nearest] uuidLink = @s uuid

execute at @s anchored eyes positioned ~ ~0.55 ~ facing ^ ^ ^5 run tp @e[type=minecraft:armor_stand,tag=rocketBarrage,tag=new,limit=1,sort=nearest] ^ ^ ^0.5 ~ ~

data modify entity @e[type=minecraft:armor_stand,tag=rocketBarrage,tag=new,limit=1,sort=nearest] Rotation set from entity @s Rotation
scoreboard players operation @e[type=minecraft:armor_stand,tag=rocketBarrage,tag=new,limit=1,sort=nearest] rocketBarrageRange = .range stats

execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 1.5

tag @e[type=minecraft:armor_stand,tag=rocketBarrage,tag=new] remove new