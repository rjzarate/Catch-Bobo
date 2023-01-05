playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sEasyOC]
scoreboard players add constant sEasyOC 2
execute if score constant sEasyOC matches 14.. run scoreboard players set constant sEasyOC 0

execute if score constant sEasyOC matches 0 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Easy Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEasyOC matches 0 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"0 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sEasyOC matches 2 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Easy Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEasyOC matches 2 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"2 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sEasyOC matches 4 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Easy Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEasyOC matches 4 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"4 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sEasyOC matches 6 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Easy Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEasyOC matches 6 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"6 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sEasyOC matches 8 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Easy Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEasyOC matches 8 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"8 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sEasyOC matches 10 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Easy Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEasyOC matches 10 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"10 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sEasyOC matches 12 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Easy Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEasyOC matches 12 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"12 Objectives","color":"aqua","bold":false,"italic":true}'}


