scoreboard players reset @s reportBodyChargeUp
#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["reportBody"]}}].Slot
	function general:animate/add/directory

advancement revoke @s only orangutan:impostor/damage_taken