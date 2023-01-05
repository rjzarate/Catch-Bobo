playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sGameT]
scoreboard players add constant sGameT 300
execute if score constant sGameT matches 3000.. run scoreboard players set constant sGameT 0

execute if score constant sGameT matches 0 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 0 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No Limit","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameT matches 300 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 300 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"5 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameT matches 600 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 600 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"10 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameT matches 900 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 900 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"15 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameT matches 1200 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 1200 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"20 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameT matches 1500 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 1500 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"25 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameT matches 1800 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 1800 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"30 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameT matches 2100 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 2100 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"35 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameT matches 2400 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 2400 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"40 Minutes","color":"aqua","bold":false,"italic":true}'}

execute if score constant sGameT matches 2700 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sGameT matches 2700 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"45 Minutes","color":"aqua","bold":false,"italic":true}'}