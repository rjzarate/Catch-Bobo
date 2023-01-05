kill @e[type=area_effect_cloud,tag=chooseTeamInfo]
kill @e[type=area_effect_cloud,tag=chooseClassInfo]
summon area_effect_cloud -94 60 19 {Tags:["chooseTeamInfo","noDamage","noTimeStop"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Team Bobo","color":"gold","bold":true,"italic":false}'}

summon area_effect_cloud -94 60 27 {Tags:["chooseTeamInfo","noDamage","noTimeStop"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Team Hunters","color":"dark_red","bold":true,"italic":false}'}

summon area_effect_cloud -90 60 23 {Tags:["chooseTeamInfo","noDamage","noTimeStop"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Spectate","color":"gray","bold":true,"italic":false}'}

title @a times 0 60 20
title @a title {"text":"Choose your teams!","bold":true,"color":"yellow"}
tellraw @a ["",{"text":"\nChoose your teams!","bold":true,"color":"yellow"},{"text":"\n\nCriteria - ","bold":true,"color":"yellow"},{"text":"\n- Must be at least ","color":"light_purple"},{"text":"1 player ","bold":true,"color":"aqua"},{"text":"in ","color":"light_purple"},{"text":"Team Hunters","bold":true,"color":"dark_red"},{"text":".\n- Must be exactly ","color":"light_purple"},{"score":{"name":"constant","objective":"chooseTBCount"},"bold":true,"color":"aqua"},{"text":" player(s) ","bold":true,"color":"aqua"},{"text":"in ","color":"light_purple"},{"text":"Team Bobo","bold":true,"color":"gold"},{"text":".","color":"light_purple"}]

playsound minecraft:block.note_block.pling record @a -101 58 23 1 1

scoreboard players reset constant chooseTBCount
scoreboard players operation constant chooseTBCount = constant sCountBH
scoreboard players add constant chooseTBCount 1