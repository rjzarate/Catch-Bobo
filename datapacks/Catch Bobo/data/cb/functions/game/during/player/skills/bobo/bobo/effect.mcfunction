scoreboard players reset @s hunterCountNear

execute if score constant sBoboER matches 0 at @s at @e[type=wolf,tag=dog,team=Hunters,distance=..5] run scoreboard players add @s hunterCountNear 1
execute if score constant sBoboER matches 0 at @s at @a[team=Hunters,gamemode=!spectator,distance=..5] run scoreboard players add @s hunterCountNear 1
execute if score constant sBoboER matches 1 at @s at @e[type=wolf,tag=dog,team=Hunters,distance=..7] run scoreboard players add @s hunterCountNear 1
execute if score constant sBoboER matches 1 at @s at @a[team=Hunters,gamemode=!spectator,distance=..7] run scoreboard players add @s hunterCountNear 1
execute if score constant sBoboER matches 2 at @s at @e[type=wolf,tag=dog,team=Hunters,distance=..9] run scoreboard players add @s hunterCountNear 1
execute if score constant sBoboER matches 2 at @s at @a[team=Hunters,gamemode=!spectator,distance=..9] run scoreboard players add @s hunterCountNear 1
execute if score constant sBoboER matches 3 at @s at @e[type=wolf,tag=dog,team=Hunters,distance=..11] run scoreboard players add @s hunterCountNear 1
execute if score constant sBoboER matches 3 at @s at @a[team=Hunters,gamemode=!spectator,distance=..11] run scoreboard players add @s hunterCountNear 1
execute if score constant sBoboER matches 4 at @s at @e[type=wolf,tag=dog,team=Hunters,distance=..13] run scoreboard players add @s hunterCountNear 1
execute if score constant sBoboER matches 4 at @s at @a[team=Hunters,gamemode=!spectator,distance=..13] run scoreboard players add @s hunterCountNear 1

execute if score constant sEnableBR matches 1 unless score @s hunterCountNear matches 2.. run effect give @s minecraft:resistance 1 0 true

execute if score constant sEnableBS matches 1 if score @s hunterCountNear matches 4.. run effect give @s minecraft:speed 1 0 true
execute if score constant sEnableBS matches 1 if score constant sEnableBSI matches 1 if score @s hunterCountNear matches 6.. run effect give @s minecraft:speed 1 1 true
execute if score constant sEnableBS matches 1 if score constant sEnableBSI matches 1 if score @s hunterCountNear matches 8.. run effect give @s minecraft:speed 1 2 true
execute if score constant sEnableBS matches 1 if score constant sEnableBSI matches 1 if score @s hunterCountNear matches 10.. run effect give @s minecraft:speed 1 3 true