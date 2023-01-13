#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage custom_potion_color CustomPotionColor int 1 run scoreboard players get #CustomPotionColor temp

#replaces the custom model data
	execute if score #slot temp matches 9 run item modify entity @s inventory.0 kit:custom_potion_color/storage
	execute if score #slot temp matches 10 run item modify entity @s inventory.1 kit:custom_potion_color/storage
	execute if score #slot temp matches 11 run item modify entity @s inventory.2 kit:custom_potion_color/storage

