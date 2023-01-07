#checks if all players are ready
	execute store result score .players game if entity @a
	execute store result score .playersReady game if entity @a[tag=ready]
	execute if score .players game = .playersReady game run function game:start/team