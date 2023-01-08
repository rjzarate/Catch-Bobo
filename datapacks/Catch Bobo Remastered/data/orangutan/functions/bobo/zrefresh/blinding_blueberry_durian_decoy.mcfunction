#removes grayscale
	data modify storage minecraft:inventory Inventory set from entity @s Inventory
	execute store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["blindingBlueberry"]}}].Slot
	execute if score #hasItem temp matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["blindingBlueberry"]}}].Slot
	execute store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["durianDecoy"]}}].Slot
	execute if score #hasItem temp matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["durianDecoy"]}}].Slot
	function general:animate/remove/directory

scoreboard players reset @s blindingBlueberryDurianDecoyCD