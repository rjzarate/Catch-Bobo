#adds grayscale and remove glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["unstableConcoction"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory

execute at @s run playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 2
scoreboard players reset @s unstableConcoction
scoreboard players reset @s unstableConcoctionDuration