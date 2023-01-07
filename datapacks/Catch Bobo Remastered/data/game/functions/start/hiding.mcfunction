#reset game scores
	scoreboard players set .fruitRequirement game 0
	scoreboard players operation .hidingTimer game = .hidingTimer gameStats
	scoreboard players operation .timer game = .timer gameStats
	scoreboard players operation .endTimer game = .endTimer gameStats

	scoreboard players set .teamPhase game 0
	scoreboard players set .classPhase game 0
	scoreboard players set .hidingPhase game 1
	scoreboard players set .gamePhase game 0
	scoreboard players set .endPhase game 0
	scoreboard players set .winPhase game 0

#teleports players
	#spreadplayers/tp @a[team=Hunters] ~ ~ ~
	#spreadplayers/tp @a[team=Orangutans] ~ ~ ~
	#spreadplayers/tp @a[team=Lobby]

#initiate world border
	worldborder set 350

#tellraw and sound
	playsound minecraft:item.chorus_fruit.teleport player @a -78 37 -115 10 1
	tellraw @a ["",{"score":{"name":"constant","objective":"sInitialT"},"bold":true,"color":"aqua"},{"text":" seconds","bold":true,"color":"aqua"},{"text":" until the ","color":"yellow"},{"text":"Hunters ","bold":true,"color":"dark_red"},{"text":"are released!","color":"yellow"}]