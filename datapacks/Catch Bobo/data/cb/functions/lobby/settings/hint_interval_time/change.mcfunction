playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sHintBT]
execute if score constant sHintBT matches 120.. run scoreboard players add constant sHintBT 30
scoreboard players add constant sHintBT 30
execute if score constant sHintBT matches 360.. run scoreboard players set constant sHintBT 30


execute if score constant sHintBT matches 30 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Interval Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintBT matches 30 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"30 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHintBT matches 60 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Interval Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintBT matches 60 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"60 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHintBT matches 90 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Interval Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintBT matches 90 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"90 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHintBT matches 120 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Interval Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintBT matches 120 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"120 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHintBT matches 180 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Interval Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintBT matches 180 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"180 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHintBT matches 240 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Interval Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintBT matches 240 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"240 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHintBT matches 300 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Interval Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHintBT matches 300 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"300 Seconds","color":"aqua","bold":false,"italic":true}'}