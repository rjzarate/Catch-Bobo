playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=walkingRegen]
scoreboard players add constant walkingRegen 1
execute if score constant walkingRegen matches 21.. run scoreboard players set constant walkingRegen 1

execute if score constant walkingRegen matches 1 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 1 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every ½ Second","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 2 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 2 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 1 Second","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 3 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 3 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 1½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 4 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 4 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 2 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 5 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 5 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 2½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 6 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 6 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 3 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 7 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 7 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 3½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 8 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 8 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 4 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 9 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 9 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 4½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 10 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 10 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 5 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 11 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 11 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 5½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 12 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 12 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 6 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 13 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 13 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 6½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 14 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 14 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 7 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 15 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 15 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 7½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 16 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 16 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 8 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 17 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 17 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 8½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 18 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 18 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 9 Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 19 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 19 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 9½ Seconds","color":"aqua","bold":false,"italic":true}'}

execute if score constant walkingRegen matches 20 run summon area_effect_cloud ^1 ^1.5 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
execute if score constant walkingRegen matches 20 run summon area_effect_cloud ^1 ^1.25 ^ {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 10 Seconds","color":"aqua","bold":false,"italic":true}'}