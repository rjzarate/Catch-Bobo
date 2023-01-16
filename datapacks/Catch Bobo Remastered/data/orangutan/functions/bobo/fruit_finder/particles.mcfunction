scoreboard players remove #distance temp 1

particle dust 1.000 1.000 0.000 1 ~ ~ ~ 0 0 0 1 0 normal @s

execute positioned ^ ^ ^1.5 unless score #distance temp matches ..0 if entity @e[type=minecraft:item,distance=2..,tag=fruit] run function orangutan:bobo/fruit_finder/particles