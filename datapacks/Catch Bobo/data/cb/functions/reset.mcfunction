gamerule showDeathMessages false
time set noon
kill @a
gamerule showDeathMessages true
scoreboard players set @a died 0
scoreboard players reset constant gameStarted
scoreboard players reset constant gamePickingC
scoreboard players reset constant gameInProgress
scoreboard players reset @a chooseC
scoreboard players reset @a chooseCB
scoreboard players reset number chooseCBanned
scoreboard players reset number initialT
scoreboard players reset number gameT
execute unless score number gameTP matches 11 run scoreboard players set number gameTP 10
scoreboard players reset boolean objectiveSLT
scoreboard players reset number hint
kill @e[type=husk,tag=starPlatinum]
kill @e[type=wolf,tag=dog]
kill @e[type=slime,tag=vent]
kill @e[type=slime,tag=noxiousTrap]
kill @e[type=slime,tag=rewireLocation]
kill @e[type=area_effect_cloud,tag=geundoowun]
kill @e[type=arrow]
kill @e[type=item,nbt={Item:{id:"minecraft:baked_potato"}}]
kill @e[type=wandering_trader,tag=sans]
kill @e[type=armor_stand,tag=sans]
kill @e[type=armor_stand,tag=hint]
kill @e[type=marker,tag=hint]
tag @a remove stun
tag @a remove invincible
tag @a remove teemo
tag @a remove bobo
tag @a remove winner
tag @a remove timeStop

execute as @a run attribute @s minecraft:generic.max_health base set 20
execute as @a run attribute @s minecraft:generic.armor base set 0
execute as @a run attribute @s minecraft:generic.attack_damage base set 1
execute as @a run attribute @s minecraft:generic.attack_speed base set 4
execute as @a run attribute @s minecraft:generic.movement_speed base set 0.10000000149011612

fill -67 37 -131 -67 46 -130 minecraft:light_blue_stained_glass
fill -66 37 -130 -66 46 -129 minecraft:light_blue_stained_glass
fill -65 37 -129 -65 46 -128 minecraft:light_blue_stained_glass
fill -64 37 -128 -64 46 -127 minecraft:light_blue_stained_glass
fill -63 37 -127 -63 46 -126 minecraft:light_blue_stained_glass
fill -62 37 -126 -62 46 -126 minecraft:light_blue_stained_glass

fill -12 53 1 -12 55 -1 air
spawnpoint @a 0 53 0
worldborder set 10000
bossbar set minecraft:initial_timer visible false
bossbar set minecraft:timer visible false
bossbar set minecraft:last_timer visible false
bossbar set minecraft:post_timer visible false
bossbar set minecraft:bobo visible false
clear @a
effect clear @a
gamemode adventure @a
team join Lobby @a
tp @a 0 54 0