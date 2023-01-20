scoreboard players remove .gameTimer game 1

#checks for people who ff
	execute as @a[team=!Spectators] if score @s ff matches 1..2147483647 run function game:forfeit/add

#if bobo is near a fruit
	execute as @a[tag=orangutan,tag=bobo,gamemode=!spectator] at @s if entity @e[type=minecraft:item,tag=fruit,distance=..2] run function game:fruit/collect

#percaution if there are no fruits
	execute if score %20t universalTimer matches 0 unless entity @e[type=minecraft:item,tag=fruit] run function game:fruit/resummon

#if game time is 0, hunters win
	execute unless score .gameTimer game matches 1.. run function game:win/hunters

#bossbar
	execute store result bossbar minecraft:timer value run scoreboard players get .gameTimer game
	#when 20 seconds left, switches bossbar to notches
		execute if score .gameTimer game matches 400 run bossbar set minecraft:timer max 400
		execute if score .gameTimer game matches 400 run bossbar set minecraft:timer style notched_20
		execute if score .gameTimer game matches ..200 run scoreboard players operation #gameTimer game = .gameTimer game
		execute if score .gameTimer game matches ..200 run scoreboard players operation #gameTimer game %= #20 constant
		execute if score .gameTimer game matches ..200 if score #gameTimer game matches 0 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1