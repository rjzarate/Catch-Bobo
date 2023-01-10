#adds grayscale and remove glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["recall"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory

kill @e[type=minecraft:armor_stand,tag=recall]
stopsound @a player minecraft:block.beacon.power_select
scoreboard players reset @s recallChargeUp