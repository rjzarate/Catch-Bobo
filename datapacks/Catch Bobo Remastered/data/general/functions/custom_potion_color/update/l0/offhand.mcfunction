#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage custom_potion_color CustomPotionColor int 1 run scoreboard players get #CustomPotionColor temp

execute if score #slot temp matches -106 run item modify entity @s weapon.offhand kit:custom_potion_color/storage
