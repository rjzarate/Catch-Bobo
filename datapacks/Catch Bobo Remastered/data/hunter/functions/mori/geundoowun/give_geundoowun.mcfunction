#replaces items
	data modify storage minecraft:inventory Inventory set from entity @s Inventory
	execute store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["noeseon"]}}].Slot
	clear @s minecraft:ender_eye{Tags:["noeseon"]}
	setblock 0 0 0 yellow_shulker_box{}
	data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:mori Geundoowun
	function general:item_replace/directory