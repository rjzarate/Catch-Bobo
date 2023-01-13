scoreboard players remove @s overloadedBrewing 1

execute if score @s overloadedBrewing matches 3 at @s run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.5 2
execute if score @s overloadedBrewing matches 2 at @s run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.5 1.6
execute if score @s overloadedBrewing matches 1 at @s run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.5 1.3
execute if score @s overloadedBrewing matches 0 at @s run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.5 1

execute at @s anchored eyes run particle minecraft:smoke ^ ^-0.2 ^0.2 0.1 0.1 0.1 0 5


#change model
	data modify storage minecraft:inventory Inventory set from entity @s Inventory
	#syringe launcher
		execute store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["syringeLauncher"]}}].tag.CustomModelData 1
		execute store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["syringeLauncher"]}}].Slot 1
		#makes sure custom model data doesn't go under
			execute if score #CustomModelData temp matches 1500..1504 run scoreboard players remove #CustomModelData temp 1
			execute if score #CustomModelData temp matches 1500..1504 run function general:animate/update/directory
	#overloaded brewing
		execute store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["overloadedBrewing"]}}].tag.CustomModelData 1
		#makes sure custom model data doesn't go under
			execute if score #CustomModelData temp matches 1510..1514 run scoreboard players remove #CustomModelData temp 1
			execute if score #CustomModelData temp matches 1510..1514 run function general:animate/update/selected_item
	#self diagnose
		execute store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["selfDiagnose"]}}].tag.CustomModelData 1
		execute store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["selfDiagnose"]}}].Slot 1
		#makes sure custom model data doesn't go under
			#regular
				execute if score #CustomModelData temp matches 1520..1524 run scoreboard players remove #CustomModelData temp 1
				execute if score #CustomModelData temp matches 1520..1524 run function general:animate/update/directory
			#inactive
				execute if score #CustomModelData temp matches 1001520..1001524 run scoreboard players remove #CustomModelData temp 1
				execute if score #CustomModelData temp matches 1001520..1001524 run function general:animate/update/directory
	#unstable concoction
		execute store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["unstableConcoction"]}}].tag.CustomModelData 1
		execute store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["unstableConcoction"]}}].Slot 1
		#makes sure custom model data doesn't go under
			#regular
				execute if score #CustomModelData temp matches 1530..1534 run scoreboard players remove #CustomModelData temp 1
				execute if score #CustomModelData temp matches 1530..1534 run function general:animate/update/directory
			#inactive
				execute if score #CustomModelData temp matches 1001530..1001534 run scoreboard players remove #CustomModelData temp 1
				execute if score #CustomModelData temp matches 1001530..1001534 run function general:animate/update/directory
	#syringe
		execute store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["syringe"]}}].tag.CustomModelData 1
		execute store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["syringe"]}}].Slot 1
		#makes sure custom model data doesn't go under
			execute if score #CustomModelData temp matches 1540..1544 run scoreboard players remove #CustomModelData temp 1
			execute if score #CustomModelData temp matches 1540..1544 run function general:animate/update/directory
		#changes custom potion color
			execute if score #CustomModelData temp matches 1540 run scoreboard players set #CustomPotionColor temp 16777169
			execute if score #CustomModelData temp matches 1541 run scoreboard players set #CustomPotionColor temp 16775581
			execute if score #CustomModelData temp matches 1542 run scoreboard players set #CustomPotionColor temp 16773737
			execute if score #CustomModelData temp matches 1543 run scoreboard players set #CustomPotionColor temp 16772148
			execute if score #CustomModelData temp matches 1544 run scoreboard players set #CustomPotionColor temp 16770304
			function general:custom_potion_color/update/directory