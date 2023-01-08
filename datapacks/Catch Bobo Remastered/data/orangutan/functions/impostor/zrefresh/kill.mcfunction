#removes grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["kill"]}}].Slot
	function general:animate/remove/directory

scoreboard players reset @s killCD