playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sDuplication]
scoreboard players add constant sDuplication 1
execute if score constant sDuplication matches 4.. run scoreboard players set constant sDuplication 0
execute if score constant sDuplication matches 0 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Duplication","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDuplication matches 0 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No teams","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDuplication matches 1 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Duplication","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDuplication matches 1 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hunters","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDuplication matches 2 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Duplication","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDuplication matches 2 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo\'s Helpers","color":"aqua","bold":false,"italic":true}'}

execute if score constant sDuplication matches 3 run summon area_effect_cloud ^-1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Duplication","color":"yellow","bold":true,"italic":false}'}
execute if score constant sDuplication matches 3 run summon area_effect_cloud ^-1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Both","color":"aqua","bold":false,"italic":true}'}
