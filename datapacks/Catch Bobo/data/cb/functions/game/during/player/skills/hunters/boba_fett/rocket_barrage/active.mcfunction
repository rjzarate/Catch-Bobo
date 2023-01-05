tp @s ^ ^ ^1
scoreboard players add @s tempTime 1
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0 1 force
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run summon creeper ~ ~3 ~ {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run summon creeper ~ ~-3 ~ {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run summon creeper ~3 ~ ~ {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run summon creeper ~-3 ~ ~ {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run summon creeper ~ ~ ~3 {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run summon creeper ~ ~ ~-3 {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run effect give @e[tag=!noDamage,distance=..4,type=!creeper] instant_damage 1 0
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.5 0.5
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotRocketBarrage,tag=!rocketBarrage] run kill @s

execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run summon creeper ~ ~1 ~ {ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run summon creeper ~ ~4 ~ {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run summon creeper ~ ~-2 ~ {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run summon creeper ~3 ~1 ~ {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run summon creeper ~-3 ~1 ~ {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run summon creeper ~ ~1 ~3 {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run summon creeper ~ ~1 ~-3 {ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run effect give @e[tag=!noDamage,distance=..4,type=!creeper] instant_damage 1 0
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.5 0.5
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run kill @s
execute if score @s tempTime matches 2400.. run kill @s