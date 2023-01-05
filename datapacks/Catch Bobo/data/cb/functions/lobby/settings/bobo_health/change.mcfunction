playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sHealthB]
scoreboard players add constant sHealthB 20
execute if score constant sHealthB matches 140.. run scoreboard players set constant sHealthB 60

execute if score constant sHealthB matches 60 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sHealthB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Health","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHealthB matches 60 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sHealthB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"30 Hearts","color":"aqua","bold":false,"italic":true}'}


execute if score constant sHealthB matches 80 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sHealthB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Health","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHealthB matches 80 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sHealthB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"40 Hearts","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHealthB matches 100 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sHealthB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Health","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHealthB matches 100 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sHealthB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"50 Hearts","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHealthB matches 120 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sHealthB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Health","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHealthB matches 120 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sHealthB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"60 Hearts","color":"aqua","bold":false,"italic":true}'}
