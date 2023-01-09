#removes grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["updraft"]}}].Slot
	function general:animate/remove/directory

scoreboard players reset @s updraftCD
