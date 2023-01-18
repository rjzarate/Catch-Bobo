#summons exact number of fruits * 1.5
scoreboard players operation #fruitsOnField game = .fruitsOnField gameStats
scoreboard players operation #fruitsOnField game -= .fruitsCollected game
scoreboard players operation #fruitsOnField game *= #3 constant
scoreboard players operation #fruitsOnField game /= #2 constant

execute if score #fruitsOnField game matches 1.. run function game:fruit/summon


#teleports fruits
	execute if score .fruitsOnField gameStats matches 31.. run spreadplayers 96 -288 5 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches 26..30 run spreadplayers 96 -288 10 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches 20..25 run spreadplayers 96 -288 15 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches 15..19 run spreadplayers 96 -288 20 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches 10..14 run spreadplayers 96 -288 25 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches ..9 run spreadplayers 96 -288 30 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]

	tag @e[type=item,tag=fruit] add teleported