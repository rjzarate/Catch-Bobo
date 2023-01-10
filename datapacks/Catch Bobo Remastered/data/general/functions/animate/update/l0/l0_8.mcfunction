#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

#replaces the custom model data
	execute if score #slot temp matches 24 run item modify entity @s inventory.15 kit:animate/storage
	execute if score #slot temp matches 25 run item modify entity @s inventory.16 kit:animate/storage
	execute if score #slot temp matches 26 run item modify entity @s inventory.17 kit:animate/storage

