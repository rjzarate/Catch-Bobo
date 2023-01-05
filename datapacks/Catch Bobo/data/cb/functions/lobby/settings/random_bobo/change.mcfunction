playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sRandomB]
scoreboard players add constant sRandomB 1
execute if score constant sRandomB matches 2.. run scoreboard players set constant sRandomB 0

execute if score constant sRandomB matches 0 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sRandomB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Random Bobo","color":"yellow","bold":true,"italic":false}'}
execute if score constant sRandomB matches 0 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sRandomB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No","color":"red","bold":false,"italic":true}'}

execute if score constant sRandomB matches 1 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sRandomB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Random Bobo","color":"yellow","bold":true,"italic":false}'}
execute if score constant sRandomB matches 1 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sRandomB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}