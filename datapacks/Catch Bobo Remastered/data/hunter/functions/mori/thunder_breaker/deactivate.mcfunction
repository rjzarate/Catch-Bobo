#adds grayscale and removes glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["thunderBreaker"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory