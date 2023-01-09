kill @e[type=minecraft:ocelot,tag=sabotage,predicate=general:uuid_link_search]
scoreboard players reset @s sabotageChargeUp
#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["sabotage"]}}].Slot
	function general:animate/add/directory