#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["pepsi"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory

scoreboard players reset @s pepsiChargeUp
attribute @s minecraft:generic.knockback_resistance modifier remove 1-0-2-2-1

execute at @s run playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 2 0