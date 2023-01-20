#adds grayscale and removes glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["noeseon"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory

scoreboard players reset @s noeseonChargeUp
scoreboard players operation #uuid temp = @s uuid
execute as @e[type=minecraft:ghast,tag=geundoowun] if score @s uuidLink = #uuid temp run team join noCollide @s
execute as @e[type=minecraft:marker,tag=geundoowun,tag=noeseon] if score @s uuidLink = #uuid temp at @s run playsound minecraft:item.trident.throw weather @a ~-40 150 ~-40 9 0
execute as @e[type=minecraft:marker,tag=geundoowun,tag=noeseon] if score @s uuidLink = #uuid temp run tag @s remove noeseon