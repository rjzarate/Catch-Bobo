scoreboard players remove #distance temp 1

particle dust 1.000 0.500 0.000 1 ~ ~ ~ 0 0 0 1 0 normal @s

execute positioned ^ ^ ^1.5 unless score #distance temp matches ..0 if entity @p[tag=orangutan,tag=bobo,gamemode=!spectator] run function orangutan:general/bobo_finder/particles