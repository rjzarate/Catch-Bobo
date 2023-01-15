scoreboard players remove .endTimer game 1

#makes bobo glow if he isn't glowing already and is not in decoy mode
	execute if score .endGlowing gameStats matches 1 as @a[team=Orangutans,tag=bobo,gamemode=!spectator] unless score @s glowing matches 2.. unless score @s durianDecoyDuration matches 1.. run scoreboard players set @s glowing 2

#if end time is 0, hunters win
	execute unless score .endTimer game matches 1.. run function game:win/orangutans
