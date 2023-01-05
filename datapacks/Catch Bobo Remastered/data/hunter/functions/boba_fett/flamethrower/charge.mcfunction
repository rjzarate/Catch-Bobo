function general:get_stats

##charge delay
scoreboard players operation #chargeDelay stats = .chargeDelayDecimal stats
	#mining fatigue
	scoreboard players set #chargeDelayChange stats 10
	execute if score #chargeDelayChange stats matches 10 if score @s miningFatigue5 matches 1.. run scoreboard players set #chargeDelayChange stats 20
	execute if score #chargeDelayChange stats matches 10 if score @s miningFatigue4 matches 1.. run scoreboard players set #chargeDelayChange stats 18
	execute if score #chargeDelayChange stats matches 10 if score @s miningFatigue3 matches 1.. run scoreboard players set #chargeDelayChange stats 16
	execute if score #chargeDelayChange stats matches 10 if score @s miningFatigue2 matches 1.. run scoreboard players set #chargeDelayChange stats 14
	execute if score #chargeDelayChange stats matches 10 if score @s miningFatigue1 matches 1.. run scoreboard players set #chargeDelayChange stats 12
	scoreboard players operation #chargeDelay stats *= #chargeDelayChange stats
	#haste
	scoreboard players set #chargeDelayChange stats 10
	execute if score #chargeDelayChange stats matches 10 if score @s haste5 matches 1.. run scoreboard players set #chargeDelayChange stats 15
	execute if score #chargeDelayChange stats matches 10 if score @s haste4 matches 1.. run scoreboard players set #chargeDelayChange stats 14
	execute if score #chargeDelayChange stats matches 10 if score @s haste3 matches 1.. run scoreboard players set #chargeDelayChange stats 13
	execute if score #chargeDelayChange stats matches 10 if score @s haste2 matches 1.. run scoreboard players set #chargeDelayChange stats 12
	execute if score #chargeDelayChange stats matches 10 if score @s haste1 matches 1.. run scoreboard players set #chargeDelayChange stats 11
	scoreboard players operation #chargeDelay stats /= #chargeDelayChange stats


execute if score #chargeDelay stats <= @s flamethrowerChargeDelay if score @s flamethrowerAmmo matches 1.. unless score @s flamethrowerFireRate matches 1.. at @s run function hunter:boba_fett/flamethrower/fire
execute if score #chargeDelay stats <= @s flamethrowerChargeDelay unless score @s flamethrowerAmmo matches 1.. unless score @s flamethrowerFireRate matches 1.. at @s run function hunter:boba_fett/flamethrower/empty
scoreboard players add @s flamethrowerChargeDelay 1