#removes grayscale
	execute if data entity @s Inventory[{tag:{Tags:["geundoowun"]}}] store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["geundoowun"]}}].Slot
	function general:animate/remove/directory
scoreboard players reset @s geundoowunCD