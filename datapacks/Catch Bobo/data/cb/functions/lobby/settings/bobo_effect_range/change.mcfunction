playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sBoboER]
scoreboard players add constant sBoboER 1
execute if score constant sBoboER matches 5.. run scoreboard players set constant sBoboER 0

execute if score constant sBoboER matches 0 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo Effect Range","color":"yellow","bold":true,"italic":false}'}
execute if score constant sBoboER matches 0 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"4-Block Radius","color":"aqua","bold":false,"italic":true}'}

execute if score constant sBoboER matches 1 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo Effect Range","color":"yellow","bold":true,"italic":false}'}
execute if score constant sBoboER matches 1 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"6-Block Radius","color":"aqua","bold":false,"italic":true}'}

execute if score constant sBoboER matches 2 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo Effect Range","color":"yellow","bold":true,"italic":false}'}
execute if score constant sBoboER matches 2 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"8-Block Radius","color":"aqua","bold":false,"italic":true}'}

execute if score constant sBoboER matches 3 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo Effect Range","color":"yellow","bold":true,"italic":false}'}
execute if score constant sBoboER matches 3 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"10-Block Radius","color":"aqua","bold":false,"italic":true}'}

execute if score constant sBoboER matches 4 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo Effect Range","color":"yellow","bold":true,"italic":false}'}
execute if score constant sBoboER matches 4 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"12-Block Radius","color":"aqua","bold":false,"italic":true}'}