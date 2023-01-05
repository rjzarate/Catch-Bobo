playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sGameTW]
scoreboard players add constant sGameTW 1
execute if score constant sGameTW matches 4.. run scoreboard players set constant sGameTW 0

execute if score constant sGameTW matches 0 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time Winner","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameTW matches 0 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Default","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameTW matches 1 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time Winner","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameTW matches 1 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Tie","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameTW matches 2 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time Winner","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameTW matches 2 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Team Bobo","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameTW matches 3 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time Winner","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameTW matches 3 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Team Hunters","color":"aqua","bold":false,"italic":true}'}

