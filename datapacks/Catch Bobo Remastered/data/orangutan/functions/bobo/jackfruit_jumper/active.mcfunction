#removes grayscale
	execute store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["jackfruitJumper"]}}].Slot
	function general:animate/swap/directory

scoreboard players reset @s jackfruitJumperCD