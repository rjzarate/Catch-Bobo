#gets the custom model data of the slot
	execute if score #slot temp matches 3 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:3b}].tag.CustomModelData 1
	execute if score #slot temp matches 4 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:4b}].tag.CustomModelData 1
	execute if score #slot temp matches 5 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:5b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0
	execute if score #wasReady temp matches 1 run scoreboard players add #CustomModelData 1000000
	execute if score #wasReady temp matches 0 run scoreboard players remove #CustomModelData 1000000

#replaces the custom model data
	execute if score #slot temp matches 3 run item modify entity @s hotbar.3 kit:animate/storage
	execute if score #slot temp matches 4 run item modify entity @s hotbar.4 kit:animate/storage
	execute if score #slot temp matches 5 run item modify entity @s hotbar.5 kit:animate/storage

