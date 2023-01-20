#teleports to bobo
	execute if score #teleport temp matches 0 run teleport @s @r[tag=orangutan,tag=Bobo,gamemode=!spectator]

#teleports to you
	execute if score #teleport temp matches 1 run teleport @s ~ ~ ~


scoreboard players add #teleport temp 1
execute if score #teleport temp matches 2.. run scoreboard players set #teleport temp 0