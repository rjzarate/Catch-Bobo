scoreboard players reset @s berserkerArmorDR
scoreboard players remove @s berserkerArmor 1
tag @s add invincible

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Gut\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-369193491,1402094923,-1628469874,1047443807],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWRiMWI0NTU5YmRkNDEyNzA0OTAzNzRkZmEzYzYwMmFhNDRhYjRkNTczNTgyMGYyYjQ1M2U0MjkyN2FiNjRlMSJ9fX0="}]}},guts:1} 1


item replace entity @s armor.chest with netherite_chestplate{display:{Name:'{"text":"Berserker Chestplate","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.legs with netherite_leggings{display:{Name:'{"text":"Berserker Leggings","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.feet with netherite_boots{display:{Name:'{"text":"Berserker Boots","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}]} 1

execute at @s run playsound minecraft:entity.ravager.roar player @a ~ ~ ~ 2 0.75