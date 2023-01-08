#removes grayscale
	data modify storage minecraft:inventory Inventory set from entity @s Inventory
	execute store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["guavaGrenade"]}}].Slot
	execute if score #hasItem temp matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["guavaGrenade"]}}].Slot
	execute store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["hotPotatoPlanter"]}}].Slot
	execute if score #hasItem temp matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["hotPotatoPlanter"]}}].Slot
	function general:animate/remove/directory

scoreboard players reset @s guavaGrenadeHotPotatoPlanterCD