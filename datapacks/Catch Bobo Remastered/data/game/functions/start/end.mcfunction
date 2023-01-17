#game scores
	scoreboard players set .gameStart game 1
	scoreboard players set .teamPhase game 0
	scoreboard players set .classPhase game 0
	scoreboard players set .hidingPhase game 0
	scoreboard players set .gamePhase game 0
	scoreboard players set .endPhase game 1
	scoreboard players set .winPhase game 0


#bossbar
	bossbar set minecraft:timer name {"text":"Time Left","color":"red","bold":true,"italic":false}
	execute store result bossbar minecraft:timer max run scoreboard players get .endTimer gameStats
	bossbar set minecraft:timer color red
	bossbar set minecraft:timer style progress
	bossbar set minecraft:timer players @a
	bossbar set minecraft:timer visible true

#clears notch apple
	execute as @a[team=Orangutans,tag=bobo] run clear @s minecraft:enchanted_golden_apple

#sound effect
	execute as @a[team=Orangutans,tag=bobo] at @s run playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 200 1
	title @a title ["",{"text":"xx","obfuscated":true,"color":"yellow"},{"text":"","color":"yellow"},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"collected all fruits!","color":"yellow"},{"text":"xx","obfuscated":true,"color":"yellow"}]
	tellraw @a ["",{"text":"xx","obfuscated":true,"color":"yellow"},{"text":"","color":"yellow"},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"collected all fruits!","color":"yellow"},{"text":"xx","obfuscated":true,"color":"yellow"}]