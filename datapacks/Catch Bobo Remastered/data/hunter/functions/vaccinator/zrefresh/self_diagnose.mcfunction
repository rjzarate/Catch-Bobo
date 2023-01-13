#removes grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["selfDiagnose"]}}].Slot
	function general:animate/remove/directory
scoreboard players reset @s selfDiagnoseCD