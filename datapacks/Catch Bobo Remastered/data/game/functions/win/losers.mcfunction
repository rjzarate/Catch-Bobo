#removes items and armor, clears effect
	function general:clear_effects

#attributes; bobo gets more health for more satisfying death
	attribute @s minecraft:generic.max_health base set 2
	attribute @s[tag=bobo] minecraft:generic.max_health base set 10
	attribute @s minecraft:generic.armor base set 0
	attribute @s minecraft:generic.attack_damage base set 0
	attribute @s minecraft:generic.attack_speed base set 4
	attribute @s minecraft:generic.movement_speed base set 0.05000000074505806
#makes them glow
	scoreboard players set @s glowing 200
#armor
	item replace entity @s[tag=!bobo] armor.head with minecraft:player_head{display:{Name:'{"text":"Chicken Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;2100988622,-532328774,-1418628645,-182068495],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTYzODQ2OWE1OTljZWVmNzIwNzUzNzYwMzI0OGE5YWIxMWZmNTkxZmQzNzhiZWE0NzM1YjM0NmE3ZmFlODkzIn19fQ=="}]}}} 1
	item replace entity @s[tag=!bobo] armor.chest with leather_chestplate{display:{Name:'{"text":"Chicken Body","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
	item replace entity @s[tag=!bobo] armor.legs with leather_leggings{display:{Name:'{"text":"Chicken Legs","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
	item replace entity @s[tag=!bobo] armor.feet with leather_boots{display:{Name:'{"text":"Chicken Feet","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1