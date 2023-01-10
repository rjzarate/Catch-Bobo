#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 21 run item modify entity @s inventory.12 kit:animate/storage
	execute if score #slot temp matches 22 run item modify entity @s inventory.13 kit:animate/storage
	execute if score #slot temp matches 23 run item modify entity @s inventory.14 kit:animate/storage

