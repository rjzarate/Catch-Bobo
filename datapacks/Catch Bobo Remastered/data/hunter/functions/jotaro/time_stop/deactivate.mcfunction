#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["timeStop"]}}].Slot
	function general:animate/add/directory

attribute @s minecraft:generic.attack_damage modifier remove 1-0-0-0-5
scoreboard players reset @s timeStopChargeUp

execute at @s run playsound minecraft:entity.warden.attack_impact player @a ~ ~ ~ 4 1
advancement revoke @s only hunter:jotaro/damage_taken