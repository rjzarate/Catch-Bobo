#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage custom_potion_color CustomPotionColor int 1 run scoreboard players get #CustomPotionColor temp

#replaces the custom model data
	execute if score #slot temp matches 30 run item modify entity @s inventory.21 kit:custom_potion_color/storage
	execute if score #slot temp matches 31 run item modify entity @s inventory.22 kit:custom_potion_color/storage
	execute if score #slot temp matches 32 run item modify entity @s inventory.23 kit:custom_potion_color/storage

