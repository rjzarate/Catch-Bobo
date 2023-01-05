playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sDaylightT]
scoreboard players add constant sDaylightT 1
execute if score constant sDaylightT matches 5 run scoreboard players set constant sDaylightT 0
execute if score constant sDaylightT matches 0 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDaylightT matches 0 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No Cycle","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDaylightT matches 1 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDaylightT matches 1 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"5 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDaylightT matches 2 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDaylightT matches 2 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"10 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDaylightT matches 3 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDaylightT matches 3 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"15 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDaylightT matches 4 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDaylightT matches 4 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"20 Minutes","color":"aqua","bold":false,"italic":true}'}