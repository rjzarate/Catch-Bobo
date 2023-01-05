particle minecraft:block_marker minecraft:water ~ ~ ~ 0.1 0.1 0.1 1 1 force

scoreboard players remove #range temp 1
execute positioned ^ ^ ^0.5 if score #range temp matches 0.. run function hunter:hacker/spyware/raycast