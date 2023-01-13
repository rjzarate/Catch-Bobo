#sets models to normal
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["yeoui"]}}].Slot
	scoreboard players set #CustomModelData temp 1700
	function general:animate/update/directory

execute if score @s yeouiCD matches ..0 run scoreboard players reset @s yeouiCD