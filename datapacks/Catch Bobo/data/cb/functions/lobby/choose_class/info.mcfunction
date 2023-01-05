kill @e[type=area_effect_cloud,tag=chooseTeamInfo]
kill @e[type=area_effect_cloud,tag=chooseClassInfo]
summon area_effect_cloud -100 60 38.0 {Tags:["chooseClassInfo","noDamage","noTimeStop"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Ready","color":"dark_red","bold":true,"italic":false}'}

summon area_effect_cloud -99 60 -5 {Tags:["chooseClassInfo","noDamage","noTimeStop"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo Ready","color":"gold","bold":true,"italic":false}'}

summon area_effect_cloud -89 60 -5 {Tags:["chooseClassInfo","noDamage","noTimeStop"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers Ready","color":"gold","bold":true,"italic":false}'}

scoreboard players reset @a chooseC
scoreboard players reset @a chooseCB

title @a times 0 60 20
title @a title {"text":"Choose your class!","bold":true,"color":"yellow"}
title @a subtitle ["",{"text":"Interact (","color":"gray"},{"keybind":"key.use","color":"gray"},{"text":") a sign to choose a class.","color":"gray"}]
tellraw @a ["",{"text":"\nChoose a class!","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Interact (","color":"gray"},{"keybind":"key.use","color":"gray"},{"text":") a sign to choose a class.","color":"gray"},{"text":"\nSomeone has to be ","color":"gray"},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"before you can choose a class.","color":"gray"}]
execute if score constant sEnableBBH matches 1 run tellraw @a ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"has to ban a class before you can choose a class.","color":"gray"}]


playsound minecraft:block.note_block.pling player @a -94 59 -3 1 1
playsound minecraft:block.note_block.pling player @a -91 59 37 1 1