#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["ora"]}}].Slot
	function general:animate/add/directory
scoreboard players reset @s oraDuration