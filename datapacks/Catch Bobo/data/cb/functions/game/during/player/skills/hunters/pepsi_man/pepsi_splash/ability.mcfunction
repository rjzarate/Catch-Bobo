scoreboard players remove @s pepsiSplash 1

execute at @s run effect give @a[distance=..8] minecraft:instant_damage 1 0
execute at @s run effect give @a[distance=0.01..8] minecraft:weakness 5 1

execute at @s run summon potion ~ ~ ~ {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}

execute at @s run summon potion ~7 ~ ~ {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}

execute at @s run summon potion ~-7 ~ ~ {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}

execute at @s run summon potion ~ ~ ~7 {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}

execute at @s run summon potion ~ ~ ~-7 {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}

execute at @s run summon potion ~7 ~ ~7 {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}

execute at @s run summon potion ~-7 ~ ~7 {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}

execute at @s run summon potion ~7 ~ ~-7 {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}

execute at @s run summon potion ~-7 ~ ~-7 {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}