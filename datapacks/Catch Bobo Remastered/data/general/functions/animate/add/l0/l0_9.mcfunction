#gets the custom model data of the slot
	execute if score #slot temp matches 27 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:27b}].tag.CustomModelData 1
	execute if score #slot temp matches 28 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:28b}].tag.CustomModelData 1
	execute if score #slot temp matches 29 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:29b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0

	execute if score #wasReady temp matches 0 run scoreboard players remove #CustomModelData 1000000

#replaces the custom model data
	execute if score #slot temp matches 27 run item modify entity @s inventory.18 kit:animate/storage
	execute if score #slot temp matches 28 run item modify entity @s inventory.19 kit:animate/storage
	execute if score #slot temp matches 29 run item modify entity @s inventory.20 kit:animate/storage

