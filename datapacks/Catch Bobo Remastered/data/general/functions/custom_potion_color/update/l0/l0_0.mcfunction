#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage custom_potion_color CustomPotionColor int 1 run scoreboard players get #CustomPotionColor temp

#replaces the custom model data
	execute if score #slot temp matches 0 run item modify entity @s hotbar.0 kit:custom_potion_color/storage
	execute if score #slot temp matches 1 run item modify entity @s hotbar.1 kit:custom_potion_color/storage
	execute if score #slot temp matches 2 run item modify entity @s hotbar.2 kit:custom_potion_color/storage

