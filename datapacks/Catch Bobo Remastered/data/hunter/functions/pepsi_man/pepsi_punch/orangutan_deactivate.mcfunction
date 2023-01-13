#change model
	scoreboard players set #CustomModelData temp 1700
	execute if score @s pepsiPunchHunterDuration matches 1.. run scoreboard players set #CustomModelData temp 1701
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["pepsiPunch"]}}].Slot
	function general:animate/update/directory

attribute @s minecraft:generic.attack_speed modifier remove 1-0-2-1-1
attribute @s minecraft:generic.attack_damage modifier remove 1-0-2-1-2

scoreboard players set @s pepsiPunchKnockback 2
execute if score @s pepsiPunchHunterDuration matches 1.. run scoreboard players set @s pepsiPunchKnockback 3

execute at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.75

scoreboard players reset @s pepsiPunchOrangutanDuration