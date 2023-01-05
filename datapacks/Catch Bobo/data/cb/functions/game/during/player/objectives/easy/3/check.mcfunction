execute store result score @s Rotation1 run data get entity @s Rotation[1]
execute if score @s Rotation1 matches -90 run function cb:game/during/player/objectives/easy/3/finished