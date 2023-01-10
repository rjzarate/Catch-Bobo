scoreboard players add @s overloadedBrewing 1
execute if score @s syringeLauncherAmmo <= @s overloadedBrewing run clear @s minecraft:tipped_arrow{Tags:["syringe"]}


execute if score @s overloadedBrewing matches 4 at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.5 2
execute if score @s overloadedBrewing matches 3 at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.5 1.6
execute if score @s overloadedBrewing matches 2 at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.5 1.3
execute if score @s overloadedBrewing matches 1 at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.5 1
execute at @s anchored eyes run particle minecraft:snowflake ^ ^-0.2 ^0.2 0.1 0.1 0.1 0 5


#change model
	data modify storage minecraft:inventory Inventory set from entity @s Inventory
	#overloaded brewing
		execute store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["overloadedBrewing"]}}].tag.CustomModelData 1
		#makes sure custom model data doesn't go over
			execute if score #CustomModelData temp matches 1510..1514 run scoreboard players add #CustomModelData temp 1
			execute if score #CustomModelData temp matches 1510..1514 run function general:animate/update/selected_item
	#self diagnose
		execute store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["selfDiagnose"]}}].tag.CustomModelData 1
		execute store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["selfDiagnose"]}}].Slot 1
		#makes sure custom model data doesn't go over
			#regular
				execute if score #CustomModelData temp matches 1520..1524 run scoreboard players add #CustomModelData temp 1
				execute if score #CustomModelData temp matches 1520..1524 run function general:animate/update/directory
			#inactive
				execute if score #CustomModelData temp matches 1001520..1001524 run scoreboard players add #CustomModelData temp 1
				execute if score #CustomModelData temp matches 1001520..1001524 run function general:animate/update/directory
	#unstable concoction
		execute store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["unstableConcoction"]}}].tag.CustomModelData 1
		execute store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["unstableConcoction"]}}].Slot 1
		#makes sure custom model data doesn't go over
			#regular
				execute if score #CustomModelData temp matches 1530..1534 run scoreboard players add #CustomModelData temp 1
				execute if score #CustomModelData temp matches 1530..1534 run function general:animate/update/directory
			#inactive
				execute if score #CustomModelData temp matches 1001530..1001534 run scoreboard players add #CustomModelData temp 1
				execute if score #CustomModelData temp matches 1001530..1001534 run function general:animate/update/directory
	#syringe
		execute store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["syringe"]}}].tag.CustomModelData 1
		execute store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["syringe"]}}].Slot 1
		#makes sure custom model data doesn't go over
			execute if score #CustomModelData temp matches 1540..1544 run scoreboard players add #CustomModelData temp 1
			execute if score #CustomModelData temp matches 1540..1544 run function general:animate/update/directory