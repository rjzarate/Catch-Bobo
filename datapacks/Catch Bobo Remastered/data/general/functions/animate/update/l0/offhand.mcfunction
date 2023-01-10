#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp

execute if score #slot temp matches -106 run item modify entity @s weapon.offhand kit:animate/storage
