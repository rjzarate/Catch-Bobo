#gets the custom model data of the slot
	execute if score #slot temp matches 12 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:12b}].tag.CustomModelData 1
	execute if score #slot temp matches 13 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:13b}].tag.CustomModelData 1
	execute if score #slot temp matches 14 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:14b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0

	execute if score #wasReady temp matches 1 run scoreboard players add #CustomModelData temp 1000000
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 12 run item modify entity @s inventory.3 kit:animate/storage
	execute if score #slot temp matches 13 run item modify entity @s inventory.4 kit:animate/storage
	execute if score #slot temp matches 14 run item modify entity @s inventory.5 kit:animate/storage

