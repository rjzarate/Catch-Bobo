item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Mori Jin\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;178207086,1938311177,-2028337728,1696161455],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY4NzM4ODIyNGNmY2VmNjhlNmJlYmFlNjc2NzhkZDg2ZjJiNjI4NjNiZTVmYzE1M2JiMzUyZjVhOWM2NWZiZSJ9fX0="}]}},HideFlags:77,mori:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:160444},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:12991826},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

attribute @s minecraft:generic.attack_damage modifier remove 1-0-3-1-1
attribute @s minecraft:generic.attack_speed modifier remove 1-0-3-1-2
attribute @s minecraft:generic.movement_speed modifier remove 1-0-3-1-3

execute at @s run playsound minecraft:item.armor.equip_gold player @a ~ ~ ~ 1 0