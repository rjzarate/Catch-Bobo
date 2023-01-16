scoreboard players remove .endTimer game 1

#makes bobo glow if he isn't glowing already and is not in decoy mode
	execute if score .endGlowing gameStats matches 1 as @a[team=Orangutans,tag=bobo,gamemode=!spectator] unless score @s glowing matches 2.. unless score @s durianDecoyDuration matches 1.. run scoreboard players set @s glowing 2

#if end time is 0, hunters win
	execute unless score .endTimer game matches 1.. run function game:win/orangutans

#bossbar
	execute store result bossbar minecraft:timer value run scoreboard players get .endTimer game
	#when 10 seconds left, switches bossbar to notches
		execute if score .endTimer game matches 200 run bossbar set minecraft:timer max 200
		execute if score .endTimer game matches 200 run bossbar set minecraft:timer style notched_10
		execute if score .endTimer game matches ..200 run scoreboard players operation #endTimer game = .endTimer game
		execute if score .endTimer game matches ..200 run scoreboard players operation #endTimer game %= #20 constant
		execute if score .endTimer game matches ..200 if score #endTimer game matches 0 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1