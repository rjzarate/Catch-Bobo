function general:get_stats

scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s blindingBlueberryDurianDecoyCD = .cooldown stats
scoreboard players operation @s blindingBlueberryDurianDecoyCD += .duration stats
scoreboard players operation @s durianDecoyDuration = .duration stats

scoreboard players operation .speed5 stats *= #20 constant
scoreboard players operation .invisibility stats *= #20 constant
scoreboard players operation .weakness100 stats *= #20 constant

scoreboard players operation @s speed5 = @s speed5
scoreboard players operation @s invisibility = @s invisibility
scoreboard players operation @s weakness100 = @s weakness100
execute if score @s speed5 < .speed5 stats run scoreboard players operation @s speed5 += .speed5 stats
execute if score @s invisibility < .invisibility stats run scoreboard players operation @s invisibility += .invisibility stats
execute if score @s weakness100 < .weakness100 stats run scoreboard players operation @s weakness100 += .weakness100 stats


#summons armor stand w/ or w/out glowing; also summons in general rotation
	execute store result score .rotation Pos run data get entity @s Rotation[0] 10
	#is glowing
		execute if score .rotation Pos matches 1575..1800 if score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[180F,0F],Team:"OrangutansAlt",Glowing:1b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -1800..-1575 if score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[180F,0F],Team:"OrangutansAlt",Glowing:1b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -1574..-1126 if score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[225F,0F],Team:"OrangutansAlt",Glowing:1b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -1125..-675 if score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[270F,0F],Team:"OrangutansAlt",Glowing:1b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -674..-226 if score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[315F,0F],Team:"OrangutansAlt",Glowing:1b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -225..225 if score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[0F,0F],Team:"OrangutansAlt",Glowing:1b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches 226..674 if score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[45F,0F],Team:"OrangutansAlt",Glowing:1b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches 675..1125 if score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[90F,0F],Team:"OrangutansAlt",Glowing:1b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches 1126..1574 if score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[135F,0F],Team:"OrangutansAlt",Glowing:1b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
	#is not glowing
		execute if score .rotation Pos matches 1575..1800 unless score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[180F,0F],Team:"OrangutansAlt",Glowing:0b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -1800..-1575 unless score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[180F,0F],Team:"OrangutansAlt",Glowing:0b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -1574..-1126 unless score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[225F,0F],Team:"OrangutansAlt",Glowing:0b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -1125..-675 unless score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[270F,0F],Team:"OrangutansAlt",Glowing:0b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -674..-226 unless score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[315F,0F],Team:"OrangutansAlt",Glowing:0b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches -225..225 unless score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[0F,0F],Team:"OrangutansAlt",Glowing:0b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches 226..674 unless score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[45F,0F],Team:"OrangutansAlt",Glowing:0b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches 675..1125 unless score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[90F,0F],Team:"OrangutansAlt",Glowing:0b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
		execute if score .rotation Pos matches 1126..1574 unless score @s glowing matches 1.. at @s run summon minecraft:armor_stand ~ ~.1 ~ {Rotation:[135F,0F],Team:"OrangutansAlt",Glowing:0b,Tags:["durianDecoy","timeStoppable"],NoBasePlate:1b,ShowArms:1b,Marker:0b,DisabledSlots:16128}
#summons villager for hit detection
	execute at @s run summon minecraft:villager ~ ~.1 ~ {Team:"OrangutansAlt",Tags:["durianDecoy","finished"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b}

#transfers glowing to armor stand
scoreboard players operation @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] durianDecoyGlowing = @s glowing
#removes glowing effect and duration
scoreboard players reset @s glowing
effect clear @s glowing

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
execute store result score @s SelectedItemSlotDurianDecoy run data get entity @s SelectedItemSlot 1
data modify storage minecraft:bobo durianDecoy set from entity @s SelectedItem
clear @s minecraft:ender_eye{Tags:["durianDecoy"]}

execute at @s as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] run data modify entity @s Rotation set from entity @p[team=Orangutans,tag=bobo] Rotation
execute at @s as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] run data modify entity @s Motion set from entity @p[team=Orangutans,tag=bobo] Motion
execute at @s as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orangutans\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1571403990,1660439100,-2108560740,2139713089],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTEyYzQzNzI2NTMwMGYzMjRkZDBlZWNhNzM0ODQ5MWVjYzc4ZmY3MTJkNTcyNDFlOTg3ZmFlNjMzMjAzYmU1ZSJ9fX0="}]}},bobo:1} 1
execute as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"gold","bold":true,"italic":false}',color:16755760},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"gold","bold":true,"italic":false}',color:16755760},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] run item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"gold","bold":true,"italic":false}',color:16755760},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute at @s as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] run item replace entity @s weapon.mainhand from entity @p[team=Orangutans,tag=bobo] weapon.mainhand
execute at @s as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] run item replace entity @s weapon.offhand from entity @p[team=Orangutans,tag=bobo] weapon.offhand

scoreboard players operation @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] durianDecoyDuration = .decoy stats
scoreboard players operation @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] durianDecoyDuration *= #20 constant

execute as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=!finished] run tag @s add finished