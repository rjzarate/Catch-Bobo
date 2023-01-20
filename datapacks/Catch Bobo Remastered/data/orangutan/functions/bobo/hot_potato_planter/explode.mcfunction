execute as @a[team=Hunters,gamemode=!spectator,tag=!adwared] at @s unless score @s hotPotatoDropped matches 1.. run summon minecraft:creeper ~ ~ ~ {Team:"OrangutansAlt",ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Hot Potato","color":"gold","bold":true,"italic":false}'}

execute as @e[type=minecraft:item,nbt={Item:{tag:{hotPotato:1}}}] run tag @s add hotPotato1


execute at @e[type=minecraft:item,tag=hotPotato] run summon minecraft:creeper ~ ~ ~ {Team:"OrangutansAlt",ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Hot Potato","color":"gold","bold":true,"italic":false}'}
execute at @e[type=minecraft:item,tag=hotPotato1] run summon minecraft:creeper ~ ~ ~ {Team:"OrangutansAlt",ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Hot Potato","color":"gold","bold":true,"italic":false}'}

clear @a baked_potato
kill @e[type=minecraft:item,tag=hotPotato]
kill @e[type=minecraft:item,tag=hotPotato1]