tp @p[team=Bobo,tag=bobo,gamemode=adventure,tag=sS2] @e[type=armor_stand,limit=1,sort=nearest,tag=sS2]
tp @p[team=Hunters,gamemode=adventure,tag=sS1] @e[type=armor_stand,limit=1,sort=nearest,tag=sS1]

execute at @a[tag=sS1] run particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
execute at @a[tag=sS1] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5
execute at @a[tag=sS2] run particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
execute at @a[tag=sS2] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5


tag @a remove sS1
tag @a remove sS2

kill @e[type=armor_stand,tag=sS]