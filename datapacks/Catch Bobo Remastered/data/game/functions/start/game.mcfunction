#game scores
	scoreboard players set .gameStart game 1
	scoreboard players set .teamPhase game 0
	scoreboard players set .classPhase game 0
	scoreboard players set .hidingPhase game 0
	scoreboard players set .gamePhase game 1
	scoreboard players set .endPhase game 0
	scoreboard players set .winPhase game 0

#summons fruits
	scoreboard players operation #fruitsOnField game = .fruitsOnField gameStats
	function game:fruit/summon

#teleports fruits
	execute if score .fruitsOnField gameStats matches 31.. run spreadplayers 96 -288 5 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches 26..30 run spreadplayers 96 -288 10 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches 20..25 run spreadplayers 96 -288 15 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches 15..19 run spreadplayers 96 -288 20 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches 10..14 run spreadplayers 96 -288 25 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches ..9 run spreadplayers 96 -288 30 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]

	tag @e[type=item,tag=fruit,tag=new] remove new