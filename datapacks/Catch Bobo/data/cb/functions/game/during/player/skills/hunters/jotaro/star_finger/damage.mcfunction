#damages the person who got shot
execute at @p[tag=shotStarFinger] run summon bat ~ 400 ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1f,Tags:["temp"],CustomName:'{"text":"Filler"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:22s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}]}

execute at @p[tag=shotStarFinger] run summon arrow ~ 401.3 ~ {Owner:[I;0,0,0,0],Tags:["temp","starFinger"]}

execute at @s as @e[type=arrow,tag=temp,tag=starFinger] run data modify entity @s Owner set from entity @e[distance=0..1,limit=1,sort=nearest] UUID





#damages the shooter if the person who got shot has thorns

summon bat ~ 450 ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1f,Tags:["temp","player"],CustomName:'{"text":"Filler"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}]}

execute at @s as @e[type=bat,tag=temp,tag=player] run item replace entity @s armor.head from entity @e[distance=0..1,limit=1,sort=nearest] armor.head
execute at @s as @e[type=bat,tag=temp,tag=player] run item replace entity @s armor.chest from entity @e[distance=0..1,limit=1,sort=nearest] armor.chest
execute at @s as @e[type=bat,tag=temp,tag=player] run item replace entity @s armor.legs from entity @e[distance=0..1,limit=1,sort=nearest] armor.legs
execute at @s as @e[type=bat,tag=temp,tag=player] run item replace entity @s armor.feet from entity @e[distance=0..1,limit=1,sort=nearest] armor.feet

summon arrow ~ 451.3 ~ {Owner:[I;0,0,0,0],Tags:["temp","player"]}

execute as @e[type=arrow,tag=temp,tag=player] run data modify entity @s Owner set from entity @p[tag=shotStarFinger] UUID