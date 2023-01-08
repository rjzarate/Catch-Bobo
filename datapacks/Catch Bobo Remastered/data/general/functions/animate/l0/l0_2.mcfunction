#gets the custom model data of the slot
	execute if score #slot temp matches 6 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:6b}].tag.CustomModelData 1
	execute if score #slot temp matches 7 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:7b}].tag.CustomModelData 1
	execute if score #slot temp matches 8 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:8b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0
	execute if score #wasReady temp matches 1 run scoreboard players add #CustomModelData 1000000
	execute if score #wasReady temp matches 0 run scoreboard players remove #CustomModelData 1000000

#replaces the custom model data
	execute if score #slot temp matches 6 run item modify entity @s hotbar.6 kit:animate/storage
	execute if score #slot temp matches 7 run item modify entity @s hotbar.7 kit:animate/storage
	execute if score #slot temp matches 8 run item modify entity @s hotbar.8 kit:animate/storage

