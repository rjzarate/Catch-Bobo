scoreboard players remove #recursion temp 1

particle minecraft:white_ash ~ ~1 ~ 0 0 0 0 1 force

tag @s add moving

#range
scoreboard players remove @s repeaterCrossbowRange 1
execute unless score @s repeaterCrossbowRange matches 1.. run function hunter:guts/repeater_crossbow/break

#check whether it hits a block
execute positioned ~ ~0.75 ~ unless block ~ ~ ~ #general:dashables run function hunter:guts/repeater_crossbow/break

#check if it hit an entity
execute positioned ~ ~0.75 ~ positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!spectator,tag=!hunterTeamImmunity,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] unless score @s uuid = @e[type=minecraft:armor_stand,tag=repeaterCrossbow,limit=1,sort=nearest,tag=moving] uuidLink run function hunter:guts/repeater_crossbow/hit


#move and change rotation
execute facing ^ ^-0.01 ^5 run tp ^ ^ ^0.5
execute store result score .rotation Pos run data get entity @s Rotation[1] 1000
scoreboard players add .rotation Pos 20000
execute store result entity @s Pose.Head[0] float 0.001 run scoreboard players get .rotation Pos

tag @s remove moving

#activates again
	execute if score #recursion temp matches 1.. at @s run function hunter:guts/repeater_crossbow/recursion