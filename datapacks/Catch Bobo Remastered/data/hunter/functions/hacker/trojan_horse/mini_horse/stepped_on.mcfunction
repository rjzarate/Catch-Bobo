scoreboard players operation @s slowness10 = @s slowness10
scoreboard players set @s[scores={slowness10=..10}] slowness10 10


#damages the entity
execute facing entity @e[type=minecraft:horse,tag=trojanMiniHorse,tag=finished,limit=1,sort=nearest] eyes positioned ^ ^ ^10 run summon minecraft:bat ~ 400 ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1f,Tags:["temp"],CustomName:'{"text":"Mini Horse","color":"dark_red","bold":true,"italic":false}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:11s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:20000000,show_particles:0b},{id:20,amplifier:0b,duration:60,show_particles:0b}]}

execute facing entity @e[type=minecraft:horse,tag=trojanMiniHorse,tag=finished,limit=1,sort=nearest] eyes positioned ^ ^ ^10 run summon minecraft:arrow ~ 401.3 ~ {Owner:[I;0,0,0,0],Tags:["temp","damage"]}

execute at @s as @e[type=minecraft:arrow,tag=temp,tag=damage,tag=!finished] run data modify entity @s Owner set from entity @e[type=#general:everything,distance=0..1,limit=1,sort=nearest] UUID
tag @e[type=minecraft:arrow,tag=temp,tag=damage,tag=!finished] add finished



playsound minecraft:entity.horse.eat player @a ~ ~ ~ 0.75 2
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 normal
data modify entity @e[type=minecraft:horse,tag=trojanMiniHorse,tag=finished,limit=1,sort=nearest] Silent set value 1b
kill @e[type=minecraft:horse,tag=trojanMiniHorse,tag=finished,limit=1,sort=nearest]