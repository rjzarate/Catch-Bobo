playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sInitialT]
execute if score constant sInitialT matches 30.. run scoreboard players add constant sInitialT 30
execute unless score constant sInitialT matches 30.. run scoreboard players set constant sInitialT 30
execute if score constant sInitialT matches 210.. run scoreboard players set constant sInitialT 1

execute if score constant sInitialT matches 1 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sInitialT matches 1 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"1 Second","color":"aqua","bold":false,"italic":true}'}

execute if score constant sInitialT matches 30 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sInitialT matches 30 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"30 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sInitialT matches 60 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sInitialT matches 60 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"60 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sInitialT matches 90 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sInitialT matches 90 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"90 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sInitialT matches 120 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sInitialT matches 120 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"120 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sInitialT matches 150 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sInitialT matches 150 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"150 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant sInitialT matches 180 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Initial Time","color":"yellow","bold":true,"italic":false}'}
execute if score constant sInitialT matches 180 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"180 Seconds","color":"aqua","bold":false,"italic":true}'}