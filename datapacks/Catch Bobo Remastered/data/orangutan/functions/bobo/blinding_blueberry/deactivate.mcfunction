scoreboard players reset @s blindingBlueberryDuration
#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["blindingBlueberry"]}}].Slot
	function general:animate/add/directory