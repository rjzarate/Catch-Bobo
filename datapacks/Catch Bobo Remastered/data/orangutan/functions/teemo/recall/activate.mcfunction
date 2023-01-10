function general:get_stats

scoreboard players operation .chargeUp stats *= #20 constant
scoreboard players operation @s recallChargeUp = .chargeUp stats
scoreboard players operation @s recallCD = .chargeUp stats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

scoreboard players reset @s recallCrossbow
scoreboard players reset @s recallCrouch
scoreboard players reset @s recallClimb
scoreboard players reset @s recallFall
scoreboard players reset @s recallDamage
scoreboard players reset @s recallSprint
scoreboard players reset @s recallSwim
scoreboard players reset @s recallWalk
scoreboard players reset @s recallWater1
scoreboard players reset @s recallWater2


summon minecraft:armor_stand ~ ~128 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~64 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~32 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~16 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~8 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~4 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~2.5 ~ {Tags:["recall"],Team:"color_dark_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~1.3 ~ {Tags:["recall"],Team:"color_dark_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Tags:["recall"],Team:"color_dark_aqua",Glowing:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~0.3 ~ {Tags:["recall"],Team:"color_dark_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~-0.9 ~ {Tags:["recall"],Team:"color_dark_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~-2 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~-6 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~-14 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~-30 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~-62 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~-126 ~ {Tags:["recall"],Team:"color_aqua",Glowing:1b,Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}