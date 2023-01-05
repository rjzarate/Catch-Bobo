

scoreboard players add @s batteryCD 1
execute if score @s hunterCountNear >= constant hunterCount.5 unless score @s hunterCountNear = constant hunterCount run scoreboard players add @s batteryCD 1
execute if score @s hunterCountNear < constant hunterCount.5 run scoreboard players add @s batteryCD 3

scoreboard players add @s battery 1