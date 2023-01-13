#change model
	scoreboard players set #CustomModelData temp 1700
	execute if score @s pepsiPunchOrangutanDuration matches 1.. run scoreboard players set #CustomModelData temp 1702
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["pepsiPunch"]}}].Slot
	function general:animate/update/directory

attribute @s minecraft:generic.attack_speed modifier remove 1-0-2-0-1
attribute @s minecraft:generic.attack_damage modifier remove 1-0-2-0-2

scoreboard players set @s pepsiPunchKnockback 2
execute if score @s pepsiPunchOrangutanDuration matches 1.. run scoreboard players set @s pepsiPunchKnockback 1

execute at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.75

scoreboard players reset @s pepsiPunchHunterDuration