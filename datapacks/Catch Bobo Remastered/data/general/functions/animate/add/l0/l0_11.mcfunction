#gets the custom model data of the slot
	execute if score #slot temp matches 33 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:33b}].tag.CustomModelData 1
	execute if score #slot temp matches 34 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:34b}].tag.CustomModelData 1
	execute if score #slot temp matches 35 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:35b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0

	execute if score #wasReady temp matches 0 run scoreboard players remove #CustomModelData 1000000

#replaces the custom model data
	execute if score #slot temp matches 33 run item modify entity @s inventory.24 kit:animate/storage
	execute if score #slot temp matches 34 run item modify entity @s inventory.25 kit:animate/storage
	execute if score #slot temp matches 35 run item modify entity @s inventory.26 kit:animate/storage
