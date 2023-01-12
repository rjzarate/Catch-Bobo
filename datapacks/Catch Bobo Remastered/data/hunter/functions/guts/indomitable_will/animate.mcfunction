#gets max health, stores max health & health in another scoreboard, divides by 6
	execute store result score @s maxHealth run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 1
	scoreboard players operation #maxHealth maxHealth = @s maxHealth
	scoreboard players operation #maxHealth maxHealth /= #6 constant
	scoreboard players operation #health maxHealth = @s health
	scoreboard players operation #health maxHealth /= #6 constant

#max health - health = stacks
	scoreboard players operation #maxHealth maxHealth -= #health maxHealth

#changes storage model
	execute if score #maxHealth maxHealth matches ..2 run data modify storage minecraft:animate CustomModelData set value 1100
	execute if score #maxHealth maxHealth matches 3..5 run data modify storage minecraft:animate CustomModelData set value 1101
	execute if score #maxHealth maxHealth matches 6.. run data modify storage minecraft:animate CustomModelData set value 1102

#changes model
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["indomitableWill"]}}].Slot
	function general:animate/update/directory
