scoreboard players remove @s guavaGrenadeFuse 1

execute if score @s guavaGrenadeFuse matches 20 at @s run playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 1 2
execute if score @s guavaGrenadeFuse matches 20 at @s run particle minecraft:smoke ~ ~0.5 ~ 0.1 0.1 0.1 0.1 10 normal
execute if score @s guavaGrenadeFuse matches ..0 at @s run summon minecraft:creeper ~ ~ ~ {Team:"OrangutansAlt",ExplosionRadius:3b,Fuse:0,CustomName:'{"text":"Guava Grenade","color":"gold","bold":true,"italic":false}'}

execute if score @s guavaGrenadeFuse matches ..0 run kill @s
