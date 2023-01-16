#gets slot of items
	data modify storage minecraft:inventory Inventory set from entity @s Inventory
	execute store result score @s phoneIAlwaysComeBackSlot run data get storage minecraft:inventory Inventory[{tag:{Tags:["phone"]}}].Slot
	execute store result score @s quirkyAnimatronicsFlamingCorruptionSlot run data get storage minecraft:inventory Inventory[{tag:{Tags:["quirkyAnimatronics"]}}].Slot
	execute store result score @s 12am5amSlot run data get storage minecraft:inventory Inventory[{tag:{Tags:["12am"]}}].Slot
	execute store result score @s purpleGuyTransformSlot run data get storage minecraft:inventory Inventory[{tag:{Tags:["transform"]}}].Slot

#clears all items
	clear @s ender_eye{Tags:["phone"]}
	clear @s ender_eye{Tags:["quirkyAnimatronics"]}
	clear @s ender_eye{Tags:["12am"]}
	clear @s ender_eye{Tags:["transform"]}

#replaces items
	scoreboard players operation #slot temp = @s phoneIAlwaysComeBackSlot
	setblock 0 0 0 yellow_shulker_box{}
	data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:purple_guy IAlwaysComeBack
	function general:item_replace/directory

	scoreboard players operation #slot temp = @s quirkyAnimatronicsFlamingCorruptionSlot
	data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:purple_guy FlamingCorruption
	function general:item_replace/directory

	scoreboard players operation #slot temp = @s 12am5amSlot
	data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:purple_guy 5AM
	function general:item_replace/directory

	scoreboard players operation #slot temp = @s purpleGuyTransformSlot
	data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:purple_guy TransformPurpleGuy
	function general:item_replace/directory

#armor
	item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Springtrap\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-304140315,173950771,-1692193734,1546731912],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjJmNjU2ZGVjYWQ1ZTNjNGZkMDllMzIyZGY3NjhlN2JkMTdhZWIzNTM3YjU4ZWNlYTI5OTBiZGU2ZWNmOSJ9fX0="}]}},HideFlags:1,purpleGuy:1} 1
	item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Springlock Suit","color":"gold","bold":true,"italic":false}',color:3354646},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-123456789]}],HideFlags:71,Unbreakable:1b,purpleGuy:1} 1
	item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Springlock Suit","color":"gold","bold":true,"italic":false}',color:3354646},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-123456789]}],HideFlags:71,Unbreakable:1b,purpleGuy:1} 1
	item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Springlock Suit","color":"gold","bold":true,"italic":false}',color:3354646},Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-123456789]}],HideFlags:71,Unbreakable:1b,purpleGuy:1} 1

#tag
	tag @s add springtrap


scoreboard players operation @s purpleGuyTransformChargeUp = .chargeUp purpleGuyTransformStats