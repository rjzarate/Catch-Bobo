gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
scoreboard players set @s died 0
scoreboard players reset @s chooseC
scoreboard players reset @s chooseCB
tag @s remove stun
tag @s remove invincible
tag @s remove teemo
tag @s remove bobo
tag @s remove winner
tag @s remove timeStop

execute as @s run attribute @s minecraft:generic.max_health base set 20
execute as @s run attribute @s minecraft:generic.armor base set 0
execute as @s run attribute @s minecraft:generic.attack_damage base set 1
execute as @s run attribute @s minecraft:generic.attack_speed base set 4
execute as @s run attribute @s minecraft:generic.movement_speed base set 0.10000000149011612

spawnpoint @s 0 53 0
clear @s
effect clear @s
gamemode adventure @s
team join Lobby @s
tp @s 0 54 0