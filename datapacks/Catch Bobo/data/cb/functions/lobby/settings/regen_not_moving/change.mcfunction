playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=notMovingRegen]
scoreboard players add constant notMovingRegen 1
execute if score constant notMovingRegen matches 21.. run scoreboard players set constant notMovingRegen 1

execute if score constant notMovingRegen matches 1 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 1 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every ½ Second","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 2 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 2 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 1 Second","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 3 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 3 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 1½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 4 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 4 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 2 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 5 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 5 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 2½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 6 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 6 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 3 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 7 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 7 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 3½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 8 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 8 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 4 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 9 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 9 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 4½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 10 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 10 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 5 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 11 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 11 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 5½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 12 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 12 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 6 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 13 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 13 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 6½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 14 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 14 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 7 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 15 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 15 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 7½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 16 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 16 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 8 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 17 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 17 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 8½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 18 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 18 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 9 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 19 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 19 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 9½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant notMovingRegen matches 20 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
execute if score constant notMovingRegen matches 20 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 10 Seconds","color":"aqua","bold":false,"italic":true}'}