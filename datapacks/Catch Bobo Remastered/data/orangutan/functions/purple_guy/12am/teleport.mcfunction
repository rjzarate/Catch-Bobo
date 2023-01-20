execute store result score #Rotation1 temp run data get entity @s Rotation[1] 1000000

#teleports to bobo
	execute if score #Rotation1 temp matches 0 if score #teleport temp matches 0 run teleport @s @r[tag=orangutan,tag=Bobo,gamemode=!spectator]

#teleports to you
	execute if score #Rotation1 temp matches 0 if score #teleport temp matches 1 run teleport @s ~ ~ ~


execute if score #Rotation1 temp matches 0 run scoreboard players add #teleport temp 1
execute if score #Rotation1 temp matches 0 if score #teleport temp matches 2.. run scoreboard players set #teleport temp 0