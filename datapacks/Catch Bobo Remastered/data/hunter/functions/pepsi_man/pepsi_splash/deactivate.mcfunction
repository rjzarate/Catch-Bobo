#adds grayscale and remove glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["pepsiSplash"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory

scoreboard players reset @s pepsiSplashDuration