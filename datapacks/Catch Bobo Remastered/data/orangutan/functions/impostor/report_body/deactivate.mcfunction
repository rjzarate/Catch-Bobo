scoreboard players reset @s reportBodyChargeUp
#adds grayscale and remove glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["reportBody"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory

advancement revoke @s only orangutan:impostor/damage_taken