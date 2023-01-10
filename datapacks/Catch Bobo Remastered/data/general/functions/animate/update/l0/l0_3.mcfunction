#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 9 run item modify entity @s inventory.0 kit:animate/storage
	execute if score #slot temp matches 10 run item modify entity @s inventory.1 kit:animate/storage
	execute if score #slot temp matches 11 run item modify entity @s inventory.2 kit:animate/storage

