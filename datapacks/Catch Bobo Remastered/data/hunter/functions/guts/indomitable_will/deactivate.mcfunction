scoreboard players reset @s indomitableWillDuration
#adds grayscale, removes glint, removes grayscale for berserker armor if ready
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["indomitableWill"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory
	execute unless score @s berserkerArmorCD matches 1.. store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["berserkerArmor"]}}].Slot
	execute unless score @s berserkerArmorCD matches 1.. run function general:animate/remove/directory

#guts indomitable will atk speed
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-1
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-2
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-3
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-4
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-5
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-6
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-7
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-8
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-9
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-10
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-11
attribute @s minecraft:generic.attack_speed modifier remove 1-0-1-1-12
#guts indomitable will movement speed
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-1
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-2
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-3
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-4
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-5
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-6
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-7
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-8
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-9
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-10
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-11
attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-2-12
execute run playsound minecraft:entity.player.breath player @a ~ ~ ~ 1 0.9