playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sHintIT]
scoreboard players add constant sHintIT 300
execute if score constant sHintIT matches 1200.. run scoreboard players set constant sHintIT 0

execute if score constant sHintIT matches 0 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintIT matches 0 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"0 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHintIT matches 300 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintIT matches 300 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"5 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHintIT matches 600 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintIT matches 600 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"10 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHintIT matches 900 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintIT matches 900 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"15 Minutes","color":"aqua","bold":false,"italic":true}'}