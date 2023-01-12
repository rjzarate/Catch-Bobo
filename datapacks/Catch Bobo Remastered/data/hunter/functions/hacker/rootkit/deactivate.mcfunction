#removes glint, makes sure the ability is not swapped out
	execute store success score #hasItem temp run data get entity @s Inventory[{tag:{Tags:["rootkit"]}}].Slot
	execute if score #hasItem matches 1 store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["rootkit"]}}].Slot
	execute if score #hasItem matches 1 run function general:glint/remove/directory
scoreboard players reset @s rootkitDuration