playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sLastOT]
scoreboard players add constant sLastOT 30
execute if score constant sLastOT matches 210.. run scoreboard players set constant sLastOT 30


execute if score constant sLastOT matches 30 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Last Objective Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sLastOT matches 30 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"30 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sLastOT matches 60 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Last Objective Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sLastOT matches 60 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"60 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sLastOT matches 90 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Last Objective Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sLastOT matches 90 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"90 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sLastOT matches 120 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Last Objective Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sLastOT matches 120 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"120 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sLastOT matches 150 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Last Objective Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sLastOT matches 150 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"150 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sLastOT matches 180 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Last Objective Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sLastOT matches 180 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"180 Seconds","color":"aqua","bold":false,"italic":true}'}
