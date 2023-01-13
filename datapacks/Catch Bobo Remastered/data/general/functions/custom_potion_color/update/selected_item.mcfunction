#updates the custom model data of the slot
	execute store result storage custom_potion_color CustomPotionColor int 1 run scoreboard players get #CustomPotionColor temp

item modify entity @s weapon.mainhand kit:custom_potion_color/storage