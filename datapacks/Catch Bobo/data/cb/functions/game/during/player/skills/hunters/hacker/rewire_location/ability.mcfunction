scoreboard players remove @s battery 29
scoreboard players set @s rewireLocationCD 45

execute at @s run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2

execute at @s run setblock ~ 1 ~ oak_sign{Text1:'[{"selector":"@p","color":"dark_red","bold":true,"italic":false},{"text":"\'s "},{"text":"Rewire Location","color":"yellow"}]'} replace
execute at @s run summon slime ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Team:"Hunters",NoAI:1b,Size:0,Tags:["rewireLocation","noDamage"],CustomName:'[{"text":"Filler"}]',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
data modify entity @e[type=slime,tag=rewireLocation,sort=nearest,limit=1,tag=!finished] Rotation set from entity @s Rotation

execute at @s store result score @e[type=slime,tag=rewireLocation,limit=1,sort=nearest,tag=!finished] Owner0 run scoreboard players get @s UUID0
execute at @s store result score @e[type=slime,tag=rewireLocation,limit=1,sort=nearest,tag=!finished] Owner1 run scoreboard players get @s UUID1
execute at @s store result score @e[type=slime,tag=rewireLocation,limit=1,sort=nearest,tag=!finished] Owner2 run scoreboard players get @s UUID2
execute at @s store result score @e[type=slime,tag=rewireLocation,limit=1,sort=nearest,tag=!finished] Owner3 run scoreboard players get @s UUID3

execute at @s run data modify entity @e[type=slime,limit=1,sort=nearest,tag=rewireLocation,tag=!finished] CustomName set from block ~ 1 ~ Text1

execute at @s run fill ~ 1 ~ ~ 1 ~ air replace oak_sign

execute as @e[type=slime,tag=rewireLocation,tag=!finished] run tag @s add finished