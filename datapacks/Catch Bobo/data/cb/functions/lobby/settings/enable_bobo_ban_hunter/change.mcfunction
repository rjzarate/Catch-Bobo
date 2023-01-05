playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sEnableBBH]
scoreboard players add constant sEnableBBH 1
execute if score constant sEnableBBH matches 2.. run scoreboard players set constant sEnableBBH 0

execute if score constant sEnableBBH matches 0 run summon area_effect_cloud ^ ^1.75 ^1 {Tags:["settings","noDamage","noTimeStop","sEnableBBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Bobo Ban","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableBBH matches 0 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sEnableBBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"a Hunter","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableBBH matches 0 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sEnableBBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No","color":"red","bold":false,"italic":true}'}

execute if score constant sEnableBBH matches 1 run summon area_effect_cloud ^ ^1.75 ^1 {Tags:["settings","noDamage","noTimeStop","sEnableBBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Bobo Ban","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableBBH matches 1 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sEnableBBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"a Hunter","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableBBH matches 1 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sEnableBBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}