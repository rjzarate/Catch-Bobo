#gets slot of items
	data modify storage minecraft:inventory Inventory set from entity @s Inventory
	execute store result score @s phoneIAlwaysComeBackSlot run data get storage minecraft:inventory Inventory[{tag:{Tags:["iAlwaysComeBack"]}}].Slot
	execute store result score @s quirkyAnimatronicsFlamingCorruptionSlot run data get storage minecraft:inventory Inventory[{tag:{Tags:["flamingCorruption"]}}].Slot
	execute store result score @s 12am5amSlot run data get storage minecraft:inventory Inventory[{tag:{Tags:["5am"]}}].Slot
	execute store result score @s purpleGuyTransformSlot run data get storage minecraft:inventory Inventory[{tag:{Tags:["transform"]}}].Slot

#clears all items
	clear @s ender_eye{Tags:["iAlwaysComeBack"]}
	clear @s ender_eye{Tags:["flamingCorruption"]}
	clear @s ender_eye{Tags:["5am"]}
	clear @s ender_eye{Tags:["transform"]}

#replaces items
	scoreboard players operation #slot temp = @s phoneIAlwaysComeBackSlot
	setblock 0 0 0 yellow_shulker_box{}
	data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:purple_guy Phone
	function general:item_replace/directory

	scoreboard players operation #slot temp = @s quirkyAnimatronicsFlamingCorruptionSlot
	data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:purple_guy QuirkyAnimatronics
	function general:item_replace/directory

	scoreboard players operation #slot temp = @s 12am5amSlot
	data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:purple_guy 12AM
	function general:item_replace/directory

	scoreboard players operation #slot temp = @s purpleGuyTransformSlot
	data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:purple_guy TransformSpringtrap
	function general:item_replace/directory

#armor
	item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Purple Guy\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1008750935,995904503,-1494871008,523943185],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjcxZTI4MzU0NWFiZTQ3YzFhMzBhMzAyYWIyODkwNmYxODgxMTVkZGZlZWIwN2ZiOTY2YjEyNmQ1ZjM0MDAxMiJ9fX0="}]}},HideFlags:1,purpleGuy:1} 1
	item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Purple Suit","color":"gold","bold":true,"italic":false}',color:6306408},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71,Unbreakable:1b,purpleGuy:1} 1
	item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Purple Suit Pants","color":"gold","bold":true,"italic":false}',color:6306408},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71,Unbreakable:1b,purpleGuy:1} 1
	item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Purple Shoes","color":"gold","bold":true,"italic":false}',color:6306408},Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71,Unbreakable:1b,purpleGuy:1} 1

#tag
	tag @s remove springtrap


scoreboard players operation @s purpleGuyTransformChargeUp = .chargeUp purpleGuyTransformStats