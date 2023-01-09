#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["tailwind"]}}].Slot
	function general:animate/add/directory
kill @e[type=minecraft:armor_stand,tag=tailwind,tag=finished,predicate=general:uuid_link_search]
scoreboard players reset @s tailwindDuration