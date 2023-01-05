#regeneration effect 20hp = 2000000 score
	#regen1 1hp / 2.5s | 20hp / 50s | 2000000 score / 50s | 40000 / 1s | 2000 / 1t
		#2000 / 2 | 1000 dogHealth per regeneration
	scoreboard players set #regeneration dogHealth 0
	execute if score @s regeneration1 matches 1.. run scoreboard players add #regeneration dogHealth 2
	execute if score @s regeneration2 matches 1.. run scoreboard players add #regeneration dogHealth 3
	execute if score @s regeneration3 matches 1.. run scoreboard players add #regeneration dogHealth 5
	execute if score @s regeneration4 matches 1.. run scoreboard players add #regeneration dogHealth 8

	#natural regeneration 1hp / 5s
		scoreboard players add #regeneration dogHealth 1
	#when sitting
		execute if predicate hunter:officer/dog_sitting run scoreboard players add #regeneration dogHealth 1



	scoreboard players operation #regeneration dogHealth *= #1000 constant
	scoreboard players operation @s dogHealth += #regeneration dogHealth



scoreboard players set @s[scores={dogHealth=2000001..}] dogHealth 2000000