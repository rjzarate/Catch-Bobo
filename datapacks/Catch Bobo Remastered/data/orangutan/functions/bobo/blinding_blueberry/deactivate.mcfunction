scoreboard players reset @s blindingBlueberryDuration
#adds grayscale and remove glint
	execute store success score #hasItem temp run data get entity @s Inventory[{tag:{Tags:["blindingBlueberry"]}}].Slot
	execute if score #hasItem temp matches 1 store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["blindingBlueberry"]}}].Slot
	execute if score #hasItem temp matches 1 run function general:animate/add/directory
	execute if score #hasItem temp matches 1 run function general:glint/remove/directory