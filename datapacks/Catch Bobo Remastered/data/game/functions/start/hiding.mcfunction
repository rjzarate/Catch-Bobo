#reset game scores
	scoreboard players set .gameStart game 1
	scoreboard players set .teamPhase game 0
	scoreboard players set .classPhase game 0
	scoreboard players set .hidingPhase game 1
	scoreboard players set .gamePhase game 0
	scoreboard players set .endPhase game 0
	scoreboard players set .winPhase game 0

#teleports players
	spreadplayers -72 -120 1 2 under 40 true @a[team=Hunters]
	spreadplayers 96 -288 1 3 under 120 true @a[team=Orangutans]

	gamemode spectator @a[team=Spectators]
	execute as @a[team=Spectators] run tp @s @r[team=!Spectators]

#initiate world border
	worldborder set 350

#tellraw and sound
	playsound minecraft:item.chorus_fruit.teleport player @a -78 37 -115 10 1
	scoreboard players operation #hidingTimer gameStats = .hidingTimer gameStats
	scoreboard players operation #hidingTimer gameStats /= #20 constant
	tellraw @a ["",{"score":{"name":"#hidingTimer","objective":"gameStats"},"bold":true,"color":"aqua"},{"text":" seconds","bold":true,"color":"aqua"},{"text":" until the ","color":"yellow"},{"text":"Hunters ","bold":true,"color":"dark_red"},{"text":"are released!","color":"yellow"}]

#kills display stands and area effect clouds
	kill @e[type=minecraft:armor_stand,tag=display]
	kill @e[type=minecraft:area_effect_cloud,tag=chooseClassInfo]

#removes display tag
	tag @a remove displayOnly

#bossbar
	bossbar set minecraft:timer name {"text":"Time Until Release","color":"green","bold":true,"italic":false}
	execute store result bossbar minecraft:timer max run scoreboard players get .hidingTimer gameStats
	bossbar set minecraft:timer color green
	bossbar set minecraft:timer style progress
	bossbar set minecraft:timer players @a
	bossbar set minecraft:timer visible true

#enables friendly fire
	team modify Hunters friendlyFire true

#map
	function map:all

