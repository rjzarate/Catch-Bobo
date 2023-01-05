playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=sNotifyHO]
scoreboard players add constant sNotifyHO 1
execute if score constant sNotifyHO matches 4 run scoreboard players set constant sNotifyHO 0

execute if score constant sNotifyHO matches 0 run summon area_effect_cloud ^ ^1.75 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Notify Hunters","color":"yellow","bold":true,"italic":false}'}
execute if score constant sNotifyHO matches 0 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"about Objectives","color":"yellow","bold":true,"italic":false}'}
execute if score constant sNotifyHO matches 0 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"None","color":"aqua","bold":false,"italic":true}'}

execute if score constant sNotifyHO matches 1 run summon area_effect_cloud ^ ^1.75 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Notify Hunters","color":"yellow","bold":true,"italic":false}'}
execute if score constant sNotifyHO matches 1 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"about Objectives","color":"yellow","bold":true,"italic":false}'}
execute if score constant sNotifyHO matches 1 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Every Objective","color":"aqua","bold":false,"italic":true}'}

execute if score constant sNotifyHO matches 2 run summon area_effect_cloud ^ ^1.75 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Notify Hunters","color":"yellow","bold":true,"italic":false}'}
execute if score constant sNotifyHO matches 2 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"about Objectives","color":"yellow","bold":true,"italic":false}'}
execute if score constant sNotifyHO matches 2 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Every Set of Objectives","color":"aqua","bold":false,"italic":true}'}

execute if score constant sNotifyHO matches 3 run summon area_effect_cloud ^ ^1.75 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Notify Hunters","color":"yellow","bold":true,"italic":false}'}
execute if score constant sNotifyHO matches 3 run summon area_effect_cloud ^ ^1.5 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"about Objectives","color":"yellow","bold":true,"italic":false}'}
execute if score constant sNotifyHO matches 3 run summon area_effect_cloud ^ ^1.25 ^-1 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Both","color":"aqua","bold":false,"italic":true}'}