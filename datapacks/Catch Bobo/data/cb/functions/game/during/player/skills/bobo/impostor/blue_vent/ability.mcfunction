scoreboard players remove @s blueVent 1
scoreboard players set @s vent 0
scoreboard players set @s ventCD 90

execute at @s run setblock ~ 1 ~ oak_sign{Text1:'[{"selector":"@p","color":"gold","bold":true,"italic":false},{"text":"\'s "},{"text":"Blue Vent","color":"blue"}]'} replace

execute at @s run summon slime ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Team:"Bobo",NoAI:1b,Size:0,Tags:["blueVent","vent","noDamage"],CustomName:'[{"text":"Filler"}]',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
data modify entity @e[type=slime,tag=blueVent,limit=1,sort=nearest,tag=!finished] Rotation[0] set from entity @s Rotation[0]

execute at @s store result score @e[type=slime,tag=blueVent,limit=1,sort=nearest,tag=!finished] Owner0 run scoreboard players get @s UUID0
execute at @s store result score @e[type=slime,tag=blueVent,limit=1,sort=nearest,tag=!finished] Owner1 run scoreboard players get @s UUID1
execute at @s store result score @e[type=slime,tag=blueVent,limit=1,sort=nearest,tag=!finished] Owner2 run scoreboard players get @s UUID2
execute at @s store result score @e[type=slime,tag=blueVent,limit=1,sort=nearest,tag=!finished] Owner3 run scoreboard players get @s UUID3

execute at @s run data modify entity @e[type=slime,limit=1,sort=nearest,tag=blueVent,tag=!finished] CustomName set from block ~ 1 ~ Text1

execute at @s run fill ~ 1 ~ ~ 1 ~ air replace oak_sign

execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0 5
execute as @e[type=slime,tag=blueVent,tag=!finished] run tag @s add finished
execute at @s run playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 1