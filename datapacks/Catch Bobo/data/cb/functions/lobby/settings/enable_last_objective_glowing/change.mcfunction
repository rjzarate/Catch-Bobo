playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sEnableLOG]
scoreboard players add constant sEnableLOG 1
execute if score constant sEnableLOG matches 2.. run scoreboard players set constant sEnableLOG 0

execute if score constant sEnableLOG matches 0 run summon area_effect_cloud ^ ^1.75 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableLOG"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Last","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableLOG matches 0 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableLOG"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Objective Glowing","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableLOG matches 0 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableLOG"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No","color":"red","bold":false,"italic":true}'}


execute if score constant sEnableLOG matches 1 run summon area_effect_cloud ^ ^1.75 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableLOG"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Last","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableLOG matches 1 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableLOG"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Objective Glowing","color":"yellow","bold":true,"italic":false}'}
execute if score constant sEnableLOG matches 1 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sEnableLOG"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}