execute if predicate orangutan:impostor/create_blue_vent run function orangutan:impostor/create_vent/blue
execute if predicate orangutan:impostor/create_red_vent run function orangutan:impostor/create_vent/red
execute if predicate orangutan:impostor/create_green_vent run function orangutan:impostor/create_vent/green
execute if predicate orangutan:impostor/create_yellow_vent run function orangutan:impostor/create_vent/yellow
#change model to inactive
	function general:animate/add/selected_item
#change vent model to inactive
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["vent"]}}].Slot
	function general:animate/add/directory