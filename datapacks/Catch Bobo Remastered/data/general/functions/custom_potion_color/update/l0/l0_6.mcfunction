#assumed that custom model data already found before this function
#updates the custom model data of the slot
	execute store result storage custom_potion_color CustomPotionColor int 1 run scoreboard players get #CustomPotionColor temp

#replaces the custom model data
	execute if score #slot temp matches 18 run item modify entity @s inventory.9 kit:custom_potion_color/storage
	execute if score #slot temp matches 19 run item modify entity @s inventory.10 kit:custom_potion_color/storage
	execute if score #slot temp matches 20 run item modify entity @s inventory.11 kit:custom_potion_color/storage

