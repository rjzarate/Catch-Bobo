#dogSpeed to dog
	execute store result score #entities temp if entity @a[tag=!spectator,distance=..50]
	execute if score #entities temp matches 0..2 run scoreboard players operation @s dogSpeed1 = @s dogSpeed1
	execute if score #entities temp matches 0..2 if score @s dogSpeed1 < .dogSpeed stats run scoreboard players operation @s dogSpeed1 = .dogSpeed stats
	execute if score #entities temp matches 3..4 run scoreboard players operation @s dogSpeed2 = @s dogSpeed2
	execute if score #entities temp matches 3..4 if score @s dogSpeed2 < .dogSpeed stats run scoreboard players operation @s dogSpeed2 = .dogSpeed stats
	execute if score #entities temp matches 5..6 run scoreboard players operation @s dogSpeed3 = @s dogSpeed3
	execute if score #entities temp matches 5..6 if score @s dogSpeed3 < .dogSpeed stats run scoreboard players operation @s dogSpeed3 = .dogSpeed stats
	execute if score #entities temp matches 7..8 run scoreboard players operation @s dogSpeed4 = @s dogSpeed4
	execute if score #entities temp matches 7..8 if score @s dogSpeed4 < .dogSpeed stats run scoreboard players operation @s dogSpeed4 = .dogSpeed stats
	execute if score #entities temp matches 9.. run scoreboard players operation @s dogSpeed5 = @s dogSpeed5
	execute if score #entities temp matches 9.. if score @s dogSpeed5 < .dogSpeed stats run scoreboard players operation @s dogSpeed5 = .dogSpeed stats

#effects
	execute as @e[type=#general:everything,tag=!spectator,distance=0.1..50] run scoreboard players operation @s slowness5 = @s slowness5
	execute as @e[type=#general:everything,tag=!spectator,distance=0.1..50] run scoreboard players operation @s jumpBoost128 = @s jumpBoost128
	execute as @e[type=#general:everything,tag=!spectator,distance=0.1..50] run scoreboard players operation @s weakness1 = @s weakness1
	execute as @e[type=#general:everything,tag=!spectator,distance=0.1..50] if score @s slowness5 < .slowness5 stats run scoreboard players operation @s slowness5 = .slowness5 stats
	execute as @e[type=#general:everything,tag=!spectator,distance=0.1..50] if score @s jumpBoost128 < .slowness5 stats run scoreboard players operation @s jumpBoost128 = .slowness5 stats
	execute as @e[type=#general:everything,tag=!spectator,distance=0.1..50] if score @s weakness1 < .weakness1 stats run scoreboard players operation @s weakness1 = .weakness1 stats

#sound
	playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 3 1

