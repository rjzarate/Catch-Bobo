function general:get_stats

scoreboard players operation .successfulHitDuration stats *= #20 constant
scoreboard players operation @s starPlatinumUppercutDuration = .successfulHitDuration stats

attribute @s minecraft:generic.attack_damage modifier add 1-0-0-0-2 jotaro_uppercut 2 add

#visual&audio to show that you successfully hit them
execute store result score .rotation Pos run data get entity @s Rotation[0] 10
scoreboard players set in math 1
scoreboard players set in1 math 2
function math:rng/range
execute if score out math matches 1 if score .rotation Pos matches 1575..1800 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 1 if score .rotation Pos matches -1800..-1575 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 1 if score .rotation Pos matches -1574..-1126 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[225F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 1 if score .rotation Pos matches -1125..-675 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[270F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 1 if score .rotation Pos matches -674..-226 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[315F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 1 if score .rotation Pos matches -225..225 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[0F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 1 if score .rotation Pos matches 226..674 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[45F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 1 if score .rotation Pos matches 675..1125 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[90F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 1 if score .rotation Pos matches 1126..1574 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[135F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 2 if score .rotation Pos matches 1575..1800 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 2 if score .rotation Pos matches -1800..-1575 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 2 if score .rotation Pos matches -1574..-1126 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[225F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 2 if score .rotation Pos matches -1125..-675 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[270F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 2 if score .rotation Pos matches -674..-226 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[315F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 2 if score .rotation Pos matches -225..225 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[0F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 2 if score .rotation Pos matches 226..674 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[45F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 2 if score .rotation Pos matches 675..1125 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[90F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
execute if score out math matches 2 if score .rotation Pos matches 1126..1574 run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[135F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["starPlatinum"],Marker:1b,Invisible:1b}
scoreboard players set @e[type=minecraft:armor_stand,tag=starPlatinum,tag=!finished] starPlatinumPunchDuration 8
execute store result score .rotation Pos run data get entity @s Rotation[1] 1000
execute as @e[type=minecraft:armor_stand,tag=starPlatinum,tag=!finished] store result entity @s Pose.Head[0] float 0.001 run scoreboard players get .rotation Pos
execute anchored eyes as @e[type=minecraft:armor_stand,tag=starPlatinum,tag=!finished] run tp @s @e[type=#general:everything,tag=jotaroHit,limit=1,sort=nearest]
tag @e[type=#general:everything,tag=jotaroHit] remove jotaroHit
execute store result score .rotation Pos run data get entity @s Rotation[0] 1000
scoreboard players add .rotationPos 180000
execute as @e[type=minecraft:armor_stand,tag=starPlatinum,tag=!finished] store result entity @s Rotation[0] float 0.001 run scoreboard players get .rotation Pos
execute as @e[type=minecraft:armor_stand,tag=starPlatinum,tag=!finished] run tag @s add finished
execute run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 1.5

advancement revoke @s only hunter:jotaro/damage_uppercut