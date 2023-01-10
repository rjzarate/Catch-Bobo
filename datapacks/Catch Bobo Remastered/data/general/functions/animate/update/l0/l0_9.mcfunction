#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 27 run item modify entity @s inventory.18 kit:animate/storage
	execute if score #slot temp matches 28 run item modify entity @s inventory.19 kit:animate/storage
	execute if score #slot temp matches 29 run item modify entity @s inventory.20 kit:animate/storage

