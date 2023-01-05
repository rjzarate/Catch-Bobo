playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sEnableHWO]
scoreboard players add constant sEnableHWO 1
execute if score constant sEnableHWO matches 2.. run scoreboard players set constant sEnableHWO 0

execute if score constant sEnableHWO matches 0 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableHWO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Halfway Objective","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableHWO matches 0 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableHWO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No","color":"red","bold":false,"italic":true}'}

execute if score constant sEnableHWO matches 1 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableHWO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Halfway Objective","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableHWO matches 1 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableHWO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}