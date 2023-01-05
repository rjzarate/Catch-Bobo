playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sHealthBH]
scoreboard players add constant sHealthBH 20
execute if score constant sHealthBH matches 140.. run scoreboard players set constant sHealthBH 60

execute if score constant sHealthBH matches 60 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sHealthBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers\' Health","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHealthBH matches 60 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sHealthBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"30 Hearts","color":"aqua","bold":false,"italic":true}'}


execute if score constant sHealthBH matches 80 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sHealthBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers\' Health","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHealthBH matches 80 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sHealthBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"40 Hearts","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHealthBH matches 100 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sHealthBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers\' Health","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHealthBH matches 100 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sHealthBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"50 Hearts","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHealthBH matches 120 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sHealthBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers\' Health","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHealthBH matches 120 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sHealthBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"60 Hearts","color":"aqua","bold":false,"italic":true}'}
