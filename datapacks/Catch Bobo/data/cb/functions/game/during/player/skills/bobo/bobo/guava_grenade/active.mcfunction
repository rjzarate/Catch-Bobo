scoreboard players add @s gGTimer 1

execute if score @s gGTimer matches 3.. at @s run playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 1 2
execute if score @s gGTimer matches 4.. at @s run summon creeper ~ ~ ~ {Team:"BoboAlt",ExplosionRadius:3b,Fuse:0,CustomName:'{"text":"Guava Grenade","color":"gold","bold":true,"italic":false}'}

execute if score @s gGTimer matches 4.. run kill @s
