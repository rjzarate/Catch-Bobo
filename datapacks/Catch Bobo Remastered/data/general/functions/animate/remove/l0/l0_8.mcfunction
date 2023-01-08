#gets the custom model data of the slot
	execute if score #slot temp matches 24 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:24b}].tag.CustomModelData 1
	execute if score #slot temp matches 25 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:25b}].tag.CustomModelData 1
	execute if score #slot temp matches 26 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:26b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0

	execute if score #wasReady temp matches 0 run scoreboard players remove #CustomModelData temp 1000000
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 24 run item modify entity @s inventory.15 kit:animate/storage
	execute if score #slot temp matches 25 run item modify entity @s inventory.16 kit:animate/storage
	execute if score #slot temp matches 26 run item modify entity @s inventory.17 kit:animate/storage

