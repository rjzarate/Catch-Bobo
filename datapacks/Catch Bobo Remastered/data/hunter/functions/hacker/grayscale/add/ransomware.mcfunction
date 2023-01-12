#in case of multiple checks
	execute if score #setInventory temp matches 0 run data modify storage minecraft:inventory Inventory set from entity @s Inventory

#ransomware
	execute store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["ransomware"]}}].Slot
	execute if score #hasItem temp matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["ransomware"]}}].Slot
	execute if score #hasItem temp matches 1 run function general:animate/add/directory

#to not do a data modify again
	scoreboard players set #setInventory temp 1