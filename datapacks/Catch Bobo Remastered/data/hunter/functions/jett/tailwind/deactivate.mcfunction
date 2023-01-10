#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["tailwind"]}}].Slot
	execute unless score @s tailwindAmmo matches 1.. run function general:animate/add/directory
	function general:glint/remove/directory
kill @e[type=minecraft:armor_stand,tag=tailwind,tag=finished,predicate=general:uuid_link_search]
scoreboard players reset @s tailwindDuration