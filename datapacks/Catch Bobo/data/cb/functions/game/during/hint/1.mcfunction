scoreboard players set number hint 1
tellraw @a[team=Hunters] ["",{"text":"\n"},{"text":"Hint -","bold":true,"color":"green"},{"text":"\n"},{"text":"A glowing marker was created where ","color":"yellow"},{"text":"Bobo ","color":"yellow","bold":true},{"text":"was a hint prior.\nMarker will disappear after the next hint.","color":"yellow"}]
execute as @a[team=Hunters] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

kill @e[type=armor_stand,tag=hint]

execute at @e[type=marker,tag=hint] run summon armor_stand ~ ~ ~ {Team:"BoboAlt",Glowing:1b,NoGravity:1b,Marker:1b,Pose:{Head:[180f,90f,0f]},Tags:["hint","noDamage","noTimeStop"],Small:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}]}

kill @e[type=marker,tag=hint]
execute at @p[team=Bobo,tag=bobo] run summon marker ~ ~ ~ {Tags:["noDamage","noTimeStop","hint"]}