#gets the custom model data of the slot
	execute if score #slot temp matches 21 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:21b}].tag.CustomModelData 1
	execute if score #slot temp matches 22 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:22b}].tag.CustomModelData 1
	execute if score #slot temp matches 23 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:23b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0

	execute if score #wasReady temp matches 0 run scoreboard players remove #CustomModelData temp 1000000
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 21 run item modify entity @s inventory.12 kit:animate/storage
	execute if score #slot temp matches 22 run item modify entity @s inventory.13 kit:animate/storage
	execute if score #slot temp matches 23 run item modify entity @s inventory.14 kit:animate/storage

