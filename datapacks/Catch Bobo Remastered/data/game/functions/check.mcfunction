#checks if all players are ready
	#execute store result score .players game if entity @a
	#execute store result score .playersReady game if entity @a[tag=ready]
	#execute if score .players game = .playersReady game run function game:start/team

#checks if there is a players are in the ready zone
	execute positioned -3 53 -17 align xyz if entity @a[dx=6,dy=3,dz=5] run function game:start/team