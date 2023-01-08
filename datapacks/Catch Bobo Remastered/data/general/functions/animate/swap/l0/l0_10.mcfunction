#gets the custom model data of the slot
	execute if score #slot temp matches 30 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:30b}].tag.CustomModelData 1
	execute if score #slot temp matches 31 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:31b}].tag.CustomModelData 1
	execute if score #slot temp matches 32 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:32b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0
	execute if score #wasReady temp matches 1 run scoreboard players add #CustomModelData 1000000
	execute if score #wasReady temp matches 0 run scoreboard players remove #CustomModelData 1000000

#replaces the custom model data
	execute if score #slot temp matches 30 run item modify entity @s inventory.21 kit:animate/storage
	execute if score #slot temp matches 31 run item modify entity @s inventory.22 kit:animate/storage
	execute if score #slot temp matches 32 run item modify entity @s inventory.23 kit:animate/storage

