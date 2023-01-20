#game scores
	scoreboard players set .winTimer game 200
	scoreboard players set .teamPhase game 0
	scoreboard players set .classPhase game 0
	scoreboard players set .hidingPhase game 0
	scoreboard players set .gamePhase game 0
	scoreboard players set .endPhase game 0
	scoreboard players set .winPhase game 1

#tag for fireworks
	tag @a[tag=orangutan] add winner

#sound effect
	execute as @a[tag=orangutan,gamemode=!spectator] at @s run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 2 50 normal

#orangutan team clear
	execute as @a[tag=hunter] run function game:win/losers
#removes players who are stunned
	tag @a remove impostorStun
#heals everyone; makes hunters invulnerable
	effect give @a minecraft:instant_health 1 100 true
	scoreboard players set @a[tag=orangutan] resistance5 1000

#teleports all hunters to a random hunter; teleports all orangutans to the hunter
	tp @a[tag=hunter] @r[tag=orangutan,tag=bobo,gamemode=!spectator]
	tp @a[tag=orangutan] @r[tag=orangutan,tag=bobo,gamemode=!spectator]

#plays sound
	execute at @r[tag=orangutan,gamemode=!spectator] run playsound minecraft:entity.ender_dragon.death player @a ~ ~ ~ 1 1.5
	execute as @a[tag=orangutan] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 10 1

#title
	title @a times 0 100 20
	#subtitle condition
		execute run title @a subtitle {"text":"Bobo has completed all objectives!","color":"gray"}
		execute if score .hunterForfeit ff >= .hunterCount ff unless score .hunterForfeit ff matches 0 run title @a subtitle {"text":"Hunters forfeited.","color":"gray"}
	title @a[team=Spectators] title {"text":"GAME ENDED","bold":true,"color":"gold"}
	title @a[tag=orangutan] title {"text":"VICTORY!","bold":true,"color":"gold"}
	title @a[tag=hunter] title {"text":"DEFEAT","bold":true,"color":"red"}

#tellraw
	tellraw @a ["",{"text":"\n"},{"text":"Team Orangutans ","bold":true,"color":"gold"},{"text":"has won the game!\n----------------------------------------","color":"green"},{"text":"\n                   "},{"text":"Catch Bobo","bold":true,"color":"white"},{"text":"\n\n                   "},{"text":"Winning Team","color":"yellow"},{"text":"\n                  "},{"text":"Team Orangutans","bold":true,"color":"gold"},{"text":"\n\n                   "},{"text":"Losing Team","color":"red"},{"text":"\n                   "},{"text":"Team Hunters","bold":true,"color":"dark_red"},{"text":"\n\n"},{"text":"----------------------------------------\n","color":"green"}]

#bossbar
	bossbar set minecraft:timer name {"text":"Game Ended","color":"yellow","bold":true,"italic":false}
	bossbar set minecraft:timer max 200
	bossbar set minecraft:timer color yellow
	bossbar set minecraft:timer style notched_10