#gets max health, stores max health & health in another scoreboard, divides by 6
	execute store result score @s maxHealth run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 1
	scoreboard players operation #maxHealth maxHealth = @s maxHealth
	scoreboard players operation #maxHealth maxHealth /= #5 constant
	scoreboard players operation #health maxHealth = @s health
	scoreboard players operation #health maxHealth /= #5 constant

#max health - health = stacks
	scoreboard players operation #maxHealth maxHealth -= #health maxHealth

#changes storage model
	execute if score #maxHealth maxHealth matches ..2 run scoreboard players set #CustomModelData temp 1100
	execute if score #maxHealth maxHealth matches 3..5 run scoreboard players set #CustomModelData temp 1101
	execute if score #maxHealth maxHealth matches 6.. run scoreboard players set #CustomModelData temp 1102

#changes model
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["indomitableWill"]}}].Slot
	function general:animate/update/directory