#changes health and inserts it into scoreboard
	execute store result score health dogHealth run data get entity @s Health 100000
	scoreboard players set healthLost dogHealth 2000000
	scoreboard players operation healthLost dogHealth -= health dogHealth
	scoreboard players operation @s dogHealth -= healthLost dogHealth
	data modify entity @s Health set value 20f