scoreboard players remove @s respawnTimer 1

#checks whether they are near a orangutan
	execute unless entity @a[tag=orangutan,gamemode=!spectator,distance=..6] run tp @s @p[tag=orangutan,gamemode=!spectator]
#check whether they are in a block
	execute anchored eyes unless block ^ ^ ^ #general:wallbangables run scoreboard players set @s blindness 2


execute unless score @s respawnTimer matches 1.. run function game:respawn/orangutan

#actionbar
	scoreboard players operation #int respawnTimer = @s respawnTimer
	scoreboard players operation #dec respawnTimer = @s respawnTimer
	scoreboard players operation #int respawnTimer /= #20 constant
	scoreboard players operation #dec respawnTimer %= #20 constant
	scoreboard players operation #dec respawnTimer /= #2 constant

	title @s actionbar ["",{"text":"Respawning: ","bold":true,"color":"red"},{"text":" (","italic":true,"color":"red"},{"score":{"name":"#int","objective":"respawnTimer"},"italic":true,"color":"red"},{"text":".","italic":true,"color":"red"},{"score":{"name":"#dec","objective":"respawnTimer"},"italic":true,"color":"red"},{"text":")","italic":true,"color":"red"}]