playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sHardOC]
scoreboard players add constant sHardOC 1
execute if score constant sHardOC matches 6.. run scoreboard players set constant sHardOC 0

execute if score constant sHardOC matches 0 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hard Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHardOC matches 0 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"0 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHardOC matches 1 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hard Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHardOC matches 1 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"1 Objective","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHardOC matches 2 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hard Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHardOC matches 2 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"2 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHardOC matches 3 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hard Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHardOC matches 3 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"3 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHardOC matches 4 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hard Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHardOC matches 4 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"4 Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sHardOC matches 5 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hard Objective Count","color":"yellow","bold":true,"italic":false}'}
execute if score constant sHardOC matches 5 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"5 Objectives","color":"aqua","bold":false,"italic":true}'}