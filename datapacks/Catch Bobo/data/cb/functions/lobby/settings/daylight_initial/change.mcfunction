playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sDaylightI]
scoreboard players add constant sDaylightI 1
execute if score constant sDaylightI matches 4.. run scoreboard players set constant sDaylightI 0

execute if score constant sDaylightI matches 0 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Initial","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDaylightI matches 0 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Day","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDaylightI matches 1 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Initial","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDaylightI matches 1 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Noon","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDaylightI matches 2 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Initial","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDaylightI matches 2 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Night","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDaylightI matches 3 run summon area_effect_cloud ^ ^1.5 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Initial","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDaylightI matches 3 run summon area_effect_cloud ^ ^1.25 ^1 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Midnight","color":"aqua","bold":false,"italic":true}'}