#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["dogWhistle"]}}].Slot
	function general:animate/add/directory
scoreboard players reset @s dogWhistleDuration