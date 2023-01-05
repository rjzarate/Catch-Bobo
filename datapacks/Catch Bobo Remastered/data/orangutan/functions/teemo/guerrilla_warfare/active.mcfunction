scoreboard players add @s[tag=!timeStoppee] guerrillaWarfare 1
execute if score @s recallCrossbow matches 1.. run scoreboard players reset @s guerrillaWarfare
execute if score @s recallDamage matches 1.. run scoreboard players reset @s guerrillaWarfare
execute if score @s moving matches 1.. run scoreboard players reset @s guerrillaWarfare
execute if score @s recallChargeUp matches 1.. run scoreboard players reset @s guerrillaWarfare
execute if score @s moveQuickDuration matches 1.. run scoreboard players reset @s guerrillaWarfare

execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{teemo:1}}]}] unless score @s guerrillaWarfare matches 60.. run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Teemo\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-1117307397,-2059843084,-1451692502,-775514149],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2ZmQ5NzcyMjkwMGRhY2RmYTc3ZGMwODZhMGJhOTQ5MWRjM2ZjMjY4ZmZmZDAwZGJmY2JkYmQyOTRjN2VmOSJ9fX0="}]}},HideFlags:77,teemo:1} 1
execute unless entity @s[nbt={Inventory:[{Slot:102b,tag:{teemo:1}}]}] unless score @s guerrillaWarfare matches 60.. run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Teemo\'s Fur","color":"gold","bold":true,"italic":false}',color:16566643},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7,teemo:1} 1
execute unless entity @s[nbt={Inventory:[{Slot:101b,tag:{teemo:1}}]}] unless score @s guerrillaWarfare matches 60.. run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Teemo\'s Pants","color":"gold","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7,teemo:1} 1
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{teemo:1}}]}] unless score @s guerrillaWarfare matches 60.. run item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Teemo\'s Boots","color":"gold","bold":true,"italic":false}',color:6192150},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7,teemo:1} 1

execute if score @s guerrillaWarfare matches 60.. run item replace entity @s armor.head with minecraft:air
execute if score @s guerrillaWarfare matches 60.. run item replace entity @s armor.chest with minecraft:air
execute if score @s guerrillaWarfare matches 60.. run item replace entity @s armor.legs with minecraft:air
execute if score @s guerrillaWarfare matches 60.. run item replace entity @s armor.feet with minecraft:air


execute if score @s guerrillaWarfare matches 60.. run scoreboard players add @s invisibility 1
execute if score @s guerrillaWarfare matches 60.. if score @s invisibility matches ..1 run scoreboard players add @s invisibility 1

scoreboard players reset @s recallCrossbow
scoreboard players reset @s recallDamage