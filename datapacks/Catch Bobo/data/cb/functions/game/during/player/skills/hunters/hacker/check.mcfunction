scoreboard players reset @s hunterCountNear
scoreboard players reset @s batterySpeed

execute at @s at @e[type=wolf,tag=dog,team=Hunters,distance=..26] run scoreboard players add @s hunterCountNear 1
execute at @s at @a[team=Hunters,gamemode=!spectator,distance=..26] run scoreboard players add @s hunterCountNear 1

scoreboard players add @s batterySpeed 1
execute if score @s hunterCountNear >= constant hunterCount.5 unless score @s hunterCountNear = constant hunterCount run scoreboard players add @s batterySpeed 1
execute if score @s hunterCountNear < constant hunterCount.5 run scoreboard players add @s batterySpeed 2
