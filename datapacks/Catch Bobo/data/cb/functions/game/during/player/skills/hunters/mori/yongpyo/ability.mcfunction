scoreboard players remove @s yongpyo 1

attribute @s minecraft:generic.max_health base set 60

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Mori Jin\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;948581651,700926092,-1522528496,505735745],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzJhYmZjMWFhNjQ0MzFlNmQ2ZjZmMDk0YzJiNGU1Y2U2MTJhN2JlYTNlNWYwY2M3Nzg2MjJkNzIyZTI4NzU2ZCJ9fX0="}]}},mori:1} 1

item replace entity @s armor.chest with golden_chestplate{display:{Name:'{"text":"Yongpyo Robe","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with golden_leggings{display:{Name:'{"text":"Yongpyo Robe","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with golden_boots{display:{Name:'{"text":"Yongpyo Boots","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

execute at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.5 0.2 0.02 7
execute at @s run playsound minecraft:entity.generic.extinguish_fire player @a ~ ~ ~ 1 0