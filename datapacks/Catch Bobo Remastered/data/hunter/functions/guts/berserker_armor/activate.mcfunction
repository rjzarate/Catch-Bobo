function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s berserkerArmorCD = .cooldown stats
scoreboard players operation @s berserkerArmorCD += .duration stats
scoreboard players operation @s berserkerArmorDuration = .duration stats
#resistance
scoreboard players operation .resistance5 stats *= #20 constant
scoreboard players operation @s resistance5 = @s resistance5
execute if score @s resistance5 < .resistance5 stats run scoreboard players operation @s resistance5 = .resistance5 stats
#attribute
attribute @s minecraft:generic.attack_damage modifier add 1-0-1-3-1 guts_berserker_armor 1 add
#audio
execute at @s run playsound minecraft:entity.ravager.roar player @a ~ ~ ~ 2 0.75
#armor
item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Gut\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-369193491,1402094923,-1628469874,1047443807],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWRiMWI0NTU5YmRkNDEyNzA0OTAzNzRkZmEzYzYwMmFhNDRhYjRkNTczNTgyMGYyYjQ1M2U0MjkyN2FiNjRlMSJ9fX0="}]}},HideFlags:77,guts:1} 1
item replace entity @s armor.chest with netherite_chestplate{display:{Name:'{"text":"Berserker Chestplate","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.legs with netherite_leggings{display:{Name:'{"text":"Berserker Leggings","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.feet with netherite_boots{display:{Name:'{"text":"Berserker Boots","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1

#reset damage resisted
scoreboard players reset @s berserkerArmorDamageResisted
#invincible for impostor
tag @s add invincible