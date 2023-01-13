#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage custom_potion_color CustomPotionColor int 1 run scoreboard players get #CustomPotionColor temp

#replaces the custom model data
	execute if score #slot temp matches 33 run item modify entity @s inventory.24 kit:custom_potion_color/storage
	execute if score #slot temp matches 34 run item modify entity @s inventory.25 kit:custom_potion_color/storage
	execute if score #slot temp matches 35 run item modify entity @s inventory.26 kit:custom_potion_color/storage
