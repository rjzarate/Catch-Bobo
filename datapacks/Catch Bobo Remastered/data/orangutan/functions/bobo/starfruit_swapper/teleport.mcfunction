tp @p[tag=teleporter] @e[type=minecraft:armor_stand,limit=1,tag=teleportee]
tp @p[tag=teleportee] @e[type=minecraft:armor_stand,limit=1,tag=teleporter]

execute at @a[tag=teleporter] run particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
execute at @a[tag=teleporter] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5
execute at @a[tag=teleportee] run particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
execute at @a[tag=teleportee] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5


tag @a remove teleporter
tag @a remove teleportee
kill @e[type=minecraft:armor_stand,tag=teleporter]