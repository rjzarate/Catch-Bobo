#updates compass
	execute as @p[team=Orangutans,tag=bobo,gamemode=!spectator] store result score #Pos0 temp run data get entity @s Pos[0] 1
	execute as @p[team=Orangutans,tag=bobo,gamemode=!spectator] store result score #Pos2 temp run data get entity @s Pos[2] 1
	execute store result storage minecraft:compass LoadstonePos.X int 1 run scoreboard players get #Pos0 temp
	execute store result storage minecraft:compass LoadstonePos.Z int 1 run scoreboard players get #Pos2 temp

	item modify entity @s weapon.mainhand kit:compass/loadstone

#actionbar
	title @s actionbar ["",{"text":"Tracking","bold":true,"color":"green"}]
	execute unless entity @e[type=minecraft:item,tag=fruit] run title @s actionbar ["",{"text":"No Bobo","bold":true,"color":"red"}]

#particles
	scoreboard players set #distance temp 30
	execute at @s anchored eyes positioned ^ ^-0.2 ^ if entity @p[team=Orangutans,tag=bobo,gamemode=!spectator] facing entity @p[team=Orangutans,tag=bobo,gamemode=!spectator] eyes positioned ^ ^ ^2 run function orangutan:general/bobo_finder/particles