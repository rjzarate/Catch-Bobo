#joined, game has not started
	execute if score .gameStart game matches 0 run function game:leave_game/lobby
#joined during team phase
	execute if score .gameStart game matches 1 if score .teamPhase game matches 1 run function game:leave_game/pick_team
#joined during class phase
	execute if score .gameStart game matches 1 if score .classPhase game matches 1 run function game:leave_game/spectator_lobby
#joined mid game; was still picking class
	#not in their game but game has not started
		execute if score .gameStart game matches 1 if entity @s[tag=displayOnly] unless score @s gameCounter = .game gameCounter if score .teamPhase game matches 1 run function game:leave_game/spectator_lobby
		execute if score .gameStart game matches 1 if entity @s[tag=choosingClass] unless score @s gameCounter = .game gameCounter if score .teamPhase game matches 1 run function game:leave_game/spectator_lobby
		execute if score .gameStart game matches 1 if entity @s[tag=displayOnly] unless score @s gameCounter = .game gameCounter if score .classPhase game matches 1 run function game:leave_game/spectator_lobby
		execute if score .gameStart game matches 1 if entity @s[tag=choosingClass] unless score @s gameCounter = .game gameCounter if score .classPhase game matches 1 run function game:leave_game/spectator_lobby
	#not in their game but game has started
		execute if score .gameStart game matches 1 if entity @s[tag=displayOnly] if score .teamPhase game matches 0 if score .classPhase game matches 0 run function game:leave_game/spectator
		execute if score .gameStart game matches 1 if entity @s[tag=choosingClass] if score .teamPhase game matches 0 if score .classPhase game matches 0 run function game:leave_game/spectator
#joined mid game; left when had a class
	execute if score .gameStart game matches 1 unless score @s gameCounter = .game gameCounter run function game:leave_game/spectator
#rejoined game; got dc'd
	execute if score .gameStart game matches 1 if score @s gameCounter = .game gameCounter if score .teamPhase game matches 0 if score .classPhase game matches 0 run kill @s

scoreboard players reset @s leaveGame