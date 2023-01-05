playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sRandomC]
scoreboard players add constant sRandomC 1
execute if score constant sRandomC matches 4.. run scoreboard players set constant sRandomC 0

execute if score constant sRandomC matches 0 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Random Classes","color":"yellow","bold":true,"italic":false}'}
execute if score constant sRandomC matches 0 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No Teams","color":"aqua","bold":false,"italic":true}'}

execute if score constant sRandomC matches 1 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Random Classes","color":"yellow","bold":true,"italic":false}'}
execute if score constant sRandomC matches 1 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hunters Only","color":"aqua","bold":false,"italic":true}'}

execute if score constant sRandomC matches 2 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Random Classes","color":"yellow","bold":true,"italic":false}'}
execute if score constant sRandomC matches 2 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo Helpers Only","color":"aqua","bold":false,"italic":true}'}

execute if score constant sRandomC matches 3 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Random Classes","color":"yellow","bold":true,"italic":false}'}
execute if score constant sRandomC matches 3 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Both","color":"aqua","bold":false,"italic":true}'}