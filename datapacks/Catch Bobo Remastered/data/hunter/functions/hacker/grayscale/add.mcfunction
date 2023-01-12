data modify storage minecraft:inventory Inventory set from entity @s Inventory
scoreboard players operation #battery temp = @s battery

#trojan horse
	execute if score #battery temp <= .trojanHorseBatteryUsage hackerStats store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["trojanHorse"]}}].Slot
	execute if score #battery temp <= .trojanHorseBatteryUsage hackerStats run scoreboard players set #hasItem temp 0
	execute if score #hasItem matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["trojanHorse"]}}].Slot
	execute if score #hasItem matches 1 run function general:animate/add/directory

#rootkit
	execute if score #battery temp <= .trojanHorseBatteryUsage hackerStats store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["rootkit"]}}].Slot
	execute if score #battery temp <= .rootkitBatteryUsage hackerStats run scoreboard players set #hasItem temp 0
	execute if score #hasItem matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["rootkit"]}}].Slot
	execute if score #hasItem matches 1 run function general:animate/add/directory

#ransomware
	execute if score #battery temp <= .trojanHorseBatteryUsage hackerStats store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["ransomware"]}}].Slot
	execute if score #battery temp <= .ransomwareBatteryUsage hackerStats run scoreboard players set #hasItem temp 0
	execute if score #hasItem matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["ransomware"]}}].Slot
	execute if score #hasItem matches 1 run function general:animate/add/directory

#adware
	execute if score #battery temp <= .trojanHorseBatteryUsage hackerStats store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["adware"]}}].Slot
	execute if score #battery temp <= .adwareBatteryUsage hackerStats run scoreboard players set #hasItem temp 0
	execute if score #hasItem matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["adware"]}}].Slot
	execute if score #hasItem matches 1 run function general:animate/add/directory

#spyware
	execute if score #battery temp <= .trojanHorseBatteryUsage hackerStats store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["spyware"]}}].Slot
	execute if score #battery temp <= .spywareBatteryUsage hackerStats run scoreboard players set #hasItem temp 0
	execute if score #hasItem matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["spyware"]}}].Slot
	execute if score #hasItem matches 1 run function general:animate/add/directory