#adds grayscale and removes glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["updraft"]}}].Slot
	execute unless score @s updraftAmmo matches 1.. run function general:animate/add/directory
	function general:glint/remove/directory
scoreboard players reset @s updraftDuration