playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sMediumOC]
scoreboard players add constant sMediumOC 2
execute if score constant sMediumOC matches 12.. run scoreboard players set constant sMediumOC 0

execute if score constant sMediumOC matches 0 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Medium Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sMediumOC matches 0 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"0 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sMediumOC matches 2 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Medium Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sMediumOC matches 2 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"2 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sMediumOC matches 4 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Medium Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sMediumOC matches 4 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"4 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sMediumOC matches 6 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Medium Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sMediumOC matches 6 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"6 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sMediumOC matches 8 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Medium Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sMediumOC matches 8 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"8 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sMediumOC matches 10 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Medium Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sMediumOC matches 10 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"10 Objectives","color":"aqua","bold":false,"italic":true}'}
