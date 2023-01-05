execute store result bossbar minecraft:bobo max run attribute @s minecraft:generic.max_health get

execute store result bossbar minecraft:bobo value run data get entity @s Health

bossbar set minecraft:bobo visible false
bossbar set minecraft:bobo players @a[team=Bobo,tag=!bobo]
execute unless entity @s[gamemode=!spectator] run bossbar set minecraft:bobo visible true