execute unless score @s weakness100 matches 2.. run scoreboard players set @s weakness100 2
execute unless score @s resistance5 matches 2.. run scoreboard players set @s resistance5 2

scoreboard players remove @s reportBodyDuration 1
execute if score @s reportBodyDuration matches ..0 run function orangutan:impostor/report_body/activate2
#adds grayscale and remove glint
	execute if score @s reportBodyDuration matches ..0 store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["reportBody"]}}].Slot
	execute if score @s reportBodyDuration matches ..0 run function general:animate/add/directory
	execute if score @s reportBodyDuration matches ..0 run function general:glint/remove/directory
execute if score @s reportBodyDuration matches ..0 run scoreboard players reset @s reportBodyDuration