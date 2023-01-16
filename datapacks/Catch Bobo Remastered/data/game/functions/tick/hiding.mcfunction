scoreboard players remove .hidingTimer game 1


#starts game phase
	execute unless score .hidingTimer game matches 1.. run function game:start/game

#bossbar
	execute store result bossbar minecraft:timer value run scoreboard players get .hidingTimer game
	#when 10 seconds left, switches bossbar to notches
		execute if score .hidingTimer game matches 200 run bossbar set minecraft:timer max 200
		execute if score .hidingTimer game matches 200 run bossbar set minecraft:timer style notched_10