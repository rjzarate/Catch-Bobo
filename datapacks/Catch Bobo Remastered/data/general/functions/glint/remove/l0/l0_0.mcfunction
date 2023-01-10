#removes glint of the slot

#replaces the custom model data
	execute if score #slot temp matches 0 run item modify entity @s hotbar.0 kit:enchantment/no_glint
	execute if score #slot temp matches 1 run item modify entity @s hotbar.1 kit:enchantment/no_glint
	execute if score #slot temp matches 2 run item modify entity @s hotbar.2 kit:enchantment/no_glint

