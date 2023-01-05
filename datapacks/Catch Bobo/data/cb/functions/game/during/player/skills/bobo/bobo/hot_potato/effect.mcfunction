execute as @a[team=Hunters,gamemode=!spectator] at @s unless score @s hPDropped matches 1.. run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Hot Potato","color":"gold","bold":true,"italic":false}'}

execute as @e[type=item,nbt={Item:{tag:{hP:1}}}] run tag @s add hP1


execute at @e[type=item,tag=hP] run summon creeper ~ ~ ~ {Team:"BoboAlt",ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Hot Potato","color":"gold","bold":true,"italic":false}'}
execute at @e[type=item,tag=hP1] run summon creeper ~ ~ ~ {Team:"BoboAlt",ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Hot Potato","color":"gold","bold":true,"italic":false}'}

clear @a baked_potato
kill @e[type=item,tag=hP]
kill @e[type=item,tag=hP1]