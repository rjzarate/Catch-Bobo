particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 1

tag @s add moving

#range
scoreboard players remove @s rocketBarrageRange 1
execute unless score @s rocketBarrageRange matches 1.. run function hunter:boba_fett/rocket_barrage/hit

#check whether it hits a block
execute positioned ~ ~0.75 ~ unless block ~ ~ ~ #general:dashables run function hunter:boba_fett/rocket_barrage/hit

#check if it hit an entity
scoreboard players operation .search uuid = @s uuidLink
execute positioned ~ ~0.75 ~ positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#general:everything,tag=!spectator,tag=!hunterTeamImmunity,dx=0,predicate=!general:uuid_search] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[predicate=!general:uuid_search,dx=0] at @s run function hunter:boba_fett/rocket_barrage/hit


#move and change rotation
execute facing ^ ^ ^5 run tp ^ ^ ^0.5
execute store result score .rotation Pos run data get entity @s Rotation[1] 1000
scoreboard players add .rotation Pos 0
execute store result entity @s Pose.Head[0] float 0.001 run scoreboard players get .rotation Pos



tag @s remove moving