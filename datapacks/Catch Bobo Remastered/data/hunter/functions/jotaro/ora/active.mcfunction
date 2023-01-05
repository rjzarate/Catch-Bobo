tag @s add shot


execute store result score .rotation Pos run data get entity @s Rotation[0] 10

scoreboard players set in math 1
scoreboard players set in1 math 7
function math:rng/range
scoreboard players operation #out math = out math

scoreboard players set in math 1
scoreboard players set in1 math 2
function math:rng/range

execute if score #out math matches 1 if score out math matches 1 if score .rotation Pos matches 1575..1800 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 1 if score .rotation Pos matches -1800..-1575 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 1 if score .rotation Pos matches -1574..-1126 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[225F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 1 if score .rotation Pos matches -1125..-675 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[270F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 1 if score .rotation Pos matches -674..-226 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[315F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 1 if score .rotation Pos matches -225..225 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[0F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 1 if score .rotation Pos matches 226..674 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[45F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 1 if score .rotation Pos matches 675..1125 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[90F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 1 if score .rotation Pos matches 1126..1574 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[135F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 2 if score .rotation Pos matches 1575..1800 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 2 if score .rotation Pos matches -1800..-1575 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 2 if score .rotation Pos matches -1574..-1126 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[225F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 2 if score .rotation Pos matches -1125..-675 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[270F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 2 if score .rotation Pos matches -674..-226 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[315F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 2 if score .rotation Pos matches -225..225 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[0F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 2 if score .rotation Pos matches 226..674 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[45F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 2 if score .rotation Pos matches 675..1125 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[90F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 1 if score out math matches 2 if score .rotation Pos matches 1126..1574 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[135F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}

execute if score #out math matches 2..4 if score .rotation Pos matches 1575..1800 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 2..4 if score .rotation Pos matches -1800..-1575 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 2..4 if score .rotation Pos matches -1574..-1126 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[225F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 2..4 if score .rotation Pos matches -1125..-675 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[270F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 2..4 if score .rotation Pos matches -674..-226 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[315F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 2..4 if score .rotation Pos matches -225..225 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[0F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 2..4 if score .rotation Pos matches 226..674 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[45F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 2..4 if score .rotation Pos matches 675..1125 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[90F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 2..4 if score .rotation Pos matches 1126..1574 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[135F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1007}}],Tags:["ora"],Marker:1b,Invisible:1b}

execute if score #out math matches 5..7 if score .rotation Pos matches 1575..1800 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 5..7 if score .rotation Pos matches -1800..-1575 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[180F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 5..7 if score .rotation Pos matches -1574..-1126 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[225F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 5..7 if score .rotation Pos matches -1125..-675 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[270F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 5..7 if score .rotation Pos matches -674..-226 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[315F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 5..7 if score .rotation Pos matches -225..225 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[0F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 5..7 if score .rotation Pos matches 226..674 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[45F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 5..7 if score .rotation Pos matches 675..1125 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[90F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}
execute if score #out math matches 5..7 if score .rotation Pos matches 1126..1574 at @s run summon minecraft:armor_stand ^ ^1.5 ^-1 {Rotation:[135F,0F],Pose:{Head:[1f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1006}}],Tags:["ora"],Marker:1b,Invisible:1b}


scoreboard players set @e[type=minecraft:armor_stand,tag=ora,tag=!finished] oraDuration 8

execute store result score .rotation Pos run data get entity @s Rotation[1] 1000
execute as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] store result entity @s Pose.Head[0] float 0.001 run scoreboard players get .rotation Pos

execute if score #out math matches 1 at @s anchored eyes positioned ^ ^ ^5 as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] run tp @s ~ ~-2 ~
execute if score #out math matches 2 at @s anchored eyes facing ^-1 ^-2 ^10 positioned ^ ^ ^5 as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] run tp @s ~ ~-2 ~
execute if score #out math matches 3 at @s anchored eyes facing ^-2 ^ ^10 positioned ^ ^ ^5 as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] run tp @s ~ ~-2 ~
execute if score #out math matches 4 at @s anchored eyes facing ^-1 ^2 ^10 positioned ^ ^ ^5 as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] run tp @s ~ ~-2 ~
execute if score #out math matches 5 at @s anchored eyes facing ^1 ^-2 ^10 positioned ^ ^ ^5 as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] run tp @s ~ ~-2 ~
execute if score #out math matches 6 at @s anchored eyes facing ^2 ^ ^10 positioned ^ ^ ^5 as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] run tp @s ~ ~-2 ~
execute if score #out math matches 7 at @s anchored eyes facing ^1 ^2 ^10 positioned ^ ^ ^5 as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] run tp @s ~ ~-2 ~
execute store result score .rotation Pos run data get entity @s Rotation[0] 1000
scoreboard players add .rotationPos 180000
execute as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] store result entity @s Rotation[0] float 0.001 run scoreboard players get .rotation Pos
execute as @e[type=minecraft:armor_stand,tag=ora,tag=!finished] run tag @s add finished

#raycast damage
scoreboard players operation #double oraDuration = @s oraDuration
scoreboard players operation #activate oraDuration = @s oraDuration
scoreboard players operation #activate oraDuration %= #4 constant
scoreboard players operation #damage temp = .damage oraStats
execute if entity @a[tag=timeStopper] run scoreboard players remove #damage temp 1
execute if score #double oraDuration matches 4 run scoreboard players operation #damage temp *= #2 constant
function general:apply/damage/scoreboard

#raycast range
scoreboard players operation #range temp = .range oraStats

execute if score #activate oraDuration matches 0 if score #out math matches 1 at @s anchored eyes positioned ^ ^ ^0.5 run function hunter:jotaro/ora/raycast
execute if score #activate oraDuration matches 0 if score #out math matches 2 at @s anchored eyes facing ^-1 ^-2 ^10 positioned ^ ^ ^0.5 run function hunter:jotaro/ora/raycast
execute if score #activate oraDuration matches 0 if score #out math matches 3 at @s anchored eyes facing ^-2 ^ ^10 positioned ^ ^ ^0.5 run function hunter:jotaro/ora/raycast
execute if score #activate oraDuration matches 0 if score #out math matches 4 at @s anchored eyes facing ^-1 ^2 ^10 positioned ^ ^ ^0.5 run function hunter:jotaro/ora/raycast
execute if score #activate oraDuration matches 0 if score #out math matches 5 at @s anchored eyes facing ^1 ^-2 ^10 positioned ^ ^ ^0.5 run function hunter:jotaro/ora/raycast
execute if score #activate oraDuration matches 0 if score #out math matches 6 at @s anchored eyes facing ^2 ^ ^10 positioned ^ ^ ^0.5 run function hunter:jotaro/ora/raycast
execute if score #activate oraDuration matches 0 if score #out math matches 7 at @s anchored eyes facing ^1 ^2 ^10 positioned ^ ^ ^0.5 run function hunter:jotaro/ora/raycast

tag @e[type=#general:everything] remove hit
tag @s remove shot

execute at @s run playsound minecraft:entity.player.attack.nodamage player @a ~ ~ ~ 0.75 0.5
scoreboard players remove @s oraDuration 1
execute if score @s oraDuration matches ..0 run scoreboard players reset @s oraDuration