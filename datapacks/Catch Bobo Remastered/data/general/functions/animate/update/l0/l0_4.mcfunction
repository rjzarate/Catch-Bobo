#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 12 run item modify entity @s inventory.3 kit:animate/storage
	execute if score #slot temp matches 13 run item modify entity @s inventory.4 kit:animate/storage
	execute if score #slot temp matches 14 run item modify entity @s inventory.5 kit:animate/storage

