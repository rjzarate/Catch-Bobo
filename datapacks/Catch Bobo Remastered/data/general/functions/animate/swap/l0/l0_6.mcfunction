#gets the custom model data of the slot
	execute if score #slot temp matches 18 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:18b}].tag.CustomModelData 1
	execute if score #slot temp matches 19 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:19b}].tag.CustomModelData 1
	execute if score #slot temp matches 20 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:20b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0
	execute if score #wasReady temp matches 1 run scoreboard players add #CustomModelData 1000000
	execute if score #wasReady temp matches 0 run scoreboard players remove #CustomModelData 1000000

#replaces the custom model data
	execute if score #slot temp matches 18 run item modify entity @s inventory.9 kit:animate/storage
	execute if score #slot temp matches 19 run item modify entity @s inventory.10 kit:animate/storage
	execute if score #slot temp matches 20 run item modify entity @s inventory.11 kit:animate/storage

