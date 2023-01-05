execute as @e[type=minecraft:arrow,tag=!noPickUp] run data modify entity @s pickup set value 2b
execute as @e[type=minecraft:spectral_arrow,tag=!noPickUp] run data modify entity @s pickup set value 2b
execute as @e[type=minecraft:arrow,tag=!noPickUp] run tag @s add noPickUp
execute as @e[type=minecraft:spectral_arrow,tag=!noPickUp] run tag @s add noPickUp