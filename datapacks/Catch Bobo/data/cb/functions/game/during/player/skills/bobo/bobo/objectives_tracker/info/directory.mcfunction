execute store result score @s y run data get entity @s Pos[1]

execute if score @s y matches ..23 if score @s objectiveS matches 1 run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/info/easy/tunnel
execute if score @s y matches 24.. if score @s objectiveS matches 1 run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/info/easy/surface

execute if score @s y matches ..23 if score @s objectiveS matches 2 run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/info/medium/tunnel
execute if score @s y matches 24.. if score @s objectiveS matches 2 run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/info/medium/surface

execute if score @s y matches ..23 if score @s objectiveS matches 4 run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/info/hard/tunnel
execute if score @s y matches 24.. if score @s objectiveS matches 4 run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/info/hard/surface