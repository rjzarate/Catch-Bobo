#gets the custom model data of the slot
	execute if score #slot temp matches 15 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:15b}].tag.CustomModelData 1
	execute if score #slot temp matches 16 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:16b}].tag.CustomModelData 1
	execute if score #slot temp matches 17 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:17b}].tag.CustomModelData 1

#inverts the custom model data of the slot
	execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
	execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0
	execute if score #wasReady temp matches 1 run scoreboard players add #CustomModelData temp 1000000
	execute if score #wasReady temp matches 0 run scoreboard players remove #CustomModelData temp 1000000
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 15 run item modify entity @s inventory.6 kit:animate/storage
	execute if score #slot temp matches 16 run item modify entity @s inventory.7 kit:animate/storage
	execute if score #slot temp matches 17 run item modify entity @s inventory.8 kit:animate/storage

