execute if score .gameStart game matches 0 run function game:check

#spectators for teams respawn timer
	execute as @a[team=!Spectators,tag=spectator] run function game:spectator/non_spectator/directory

#what happens when a player dies
	execute as @a[scores={deathCount=1..}] run function game:death/directory

#what happens when a player left mid game and joins back
	execute as @a[scores={leaveGame=1..}] run function game:leave_game/directory

#different phases of the game
	execute if score .teamPhase game matches 1 run function game:tick/team
	execute if score .classPhase game matches 1 run function game:tick/class
	execute if score .hidingPhase game matches 1 run function game:tick/hiding
	execute if score .gamePhase game matches 1 run function game:tick/game
	execute if score .endPhase game matches 1 run function game:tick/end
	execute if score .winPhase game matches 1 run function game:tick/win

#map
	execute as @e[type=marker,tag=tree] at @s as @a[distance=..11,gamemode=!spectator] unless score @s jumpBoost10 matches 2.. run scoreboard players set @s jumpBoost10 2