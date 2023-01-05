playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sCountBH]
scoreboard players add constant sCountBH 1
execute if score constant sCountBH matches 5.. run scoreboard players set constant sCountBH 0

execute if score constant sCountBH matches 0 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sCountBH matches 0 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"0 Bobo\'s Helpers","color":"aqua","bold":false,"italic":true}'}

execute if score constant sCountBH matches 1 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sCountBH matches 1 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"1 Bobo\'s Helper","color":"aqua","bold":false,"italic":true}'}

execute if score constant sCountBH matches 2 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sCountBH matches 2 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"2 Bobo\'s Helpers","color":"aqua","bold":false,"italic":true}'}

execute if score constant sCountBH matches 3 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sCountBH matches 3 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"3 Bobo\'s Helpers","color":"aqua","bold":false,"italic":true}'}

execute if score constant sCountBH matches 4 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sCountBH matches 4 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sCountBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"4 Bobo\'s Helpers","color":"aqua","bold":false,"italic":true}'}