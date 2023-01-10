#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 6 run item modify entity @s hotbar.6 kit:animate/storage
	execute if score #slot temp matches 7 run item modify entity @s hotbar.7 kit:animate/storage
	execute if score #slot temp matches 8 run item modify entity @s hotbar.8 kit:animate/storage

