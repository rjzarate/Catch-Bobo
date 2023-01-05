scoreboard players operation @s jetpackFuelAmmo -= @s jetpackFuelUsed
execute if score @s jetpackFuelAmmo < .maxAmmo jetpackFuelStats unless score @s jetpackFuelCD matches 1.. run scoreboard players operation @s jetpackFuelCD += .cooldown20t jetpackFuelStats
scoreboard players reset @s jetpackFuelUsed


execute store result score @s jetpackFuelSlot run data get entity @s SelectedItemSlot 1