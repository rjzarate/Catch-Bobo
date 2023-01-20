#removes grayscale
	execute if data entity @s Inventory[{tag:{Tags:["noeseon"]}}] store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["noeseon"]}}].Slot
	function general:animate/remove/directory
scoreboard players reset @s noeseonCD