#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage custom_potion_color CustomPotionColor int 1 run scoreboard players get #CustomPotionColor temp

#replaces the custom model data
	execute if score #slot temp matches 15 run item modify entity @s inventory.6 kit:custom_potion_color/storage
	execute if score #slot temp matches 16 run item modify entity @s inventory.7 kit:custom_potion_color/storage
	execute if score #slot temp matches 17 run item modify entity @s inventory.8 kit:custom_potion_color/storage
