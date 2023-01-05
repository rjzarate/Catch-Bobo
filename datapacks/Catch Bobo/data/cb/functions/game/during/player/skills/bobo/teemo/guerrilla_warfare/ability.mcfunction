scoreboard players add @s gWarfare 1
execute if score @s crossbowTeemo matches 1.. run scoreboard players reset @s gWarfare
execute if score @s damageTeemo matches 1.. run scoreboard players reset @s gWarfare
execute if entity @s[nbt={OnGround:0b}] run scoreboard players reset @s gWarfare
execute if score @s crouchTeemo matches 1.. run scoreboard players reset @s gWarfare
execute if score @s sprintTeemo matches 1.. run scoreboard players reset @s gWarfare
execute if score @s swimTeemo matches 1.. run scoreboard players reset @s gWarfare
execute if score @s walkTeemo matches 1.. run scoreboard players reset @s gWarfare
execute if score @s water1Teemo matches 1.. run scoreboard players reset @s gWarfare
execute if score @s water2Teemo matches 1.. run scoreboard players reset @s gWarfare


execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{teemo:1}}]}] unless score @s gWarfare matches 3.. run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Teemo\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-1117307397,-2059843084,-1451692502,-775514149],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2ZmQ5NzcyMjkwMGRhY2RmYTc3ZGMwODZhMGJhOTQ5MWRjM2ZjMjY4ZmZmZDAwZGJmY2JkYmQyOTRjN2VmOSJ9fX0="}]}},teemo:1} 1
execute unless entity @s[nbt={Inventory:[{Slot:102b,tag:{teemo:1}}]}] unless score @s gWarfare matches 3.. run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"gold","bold":true,"italic":false}',color:16566643},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],teemo:1} 1
execute unless entity @s[nbt={Inventory:[{Slot:101b,tag:{teemo:1}}]}] unless score @s gWarfare matches 3.. run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"gold","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],teemo:1} 1
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{teemo:1}}]}] unless score @s gWarfare matches 3.. run item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"gold","bold":true,"italic":false}',color:6192150},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],teemo:1} 1

execute if score @s gWarfare matches 3.. run item replace entity @s armor.head with minecraft:air
execute if score @s gWarfare matches 3.. run item replace entity @s armor.chest with minecraft:air
execute if score @s gWarfare matches 3.. run item replace entity @s armor.legs with minecraft:air
execute if score @s gWarfare matches 3.. run item replace entity @s armor.feet with minecraft:air



execute if score @s gWarfare matches 3.. run effect give @s invisibility 2 0 true


scoreboard players reset @s crossbowTeemo
scoreboard players reset @s crouchTeemo
scoreboard players reset @s damageTeemo
scoreboard players reset @s sprintTeemo
scoreboard players reset @s swimTeemo
scoreboard players reset @s walkTeemo
scoreboard players reset @s water1Teemo
scoreboard players reset @s water2Teemo