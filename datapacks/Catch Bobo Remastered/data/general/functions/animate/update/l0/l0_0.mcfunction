#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 0 run item modify entity @s hotbar.0 kit:animate/storage
	execute if score #slot temp matches 1 run item modify entity @s hotbar.1 kit:animate/storage
	execute if score #slot temp matches 2 run item modify entity @s hotbar.2 kit:animate/storage

