#adds grayscale and removes glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["geundoowun"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory

scoreboard players operation #uuid temp = @s uuid
execute as @e[type=minecraft:marker,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s
execute as @e[type=minecraft:ghast,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s

scoreboard players reset @s geundoowunDuration