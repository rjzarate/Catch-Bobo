item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Gut\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-200688065,-724679753,-1905987168,1320176033],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjU3ZmFkM2Y0MmZkMTMwZWUxM2U1NDlkNDlmODIyZDViMDFmNjE5MTE4YjNhMDU5ZGU4ZDQzODc4MWU0ZTRkZSJ9fX0="}]}},guts:1} 1
item replace entity @s armor.chest with iron_chestplate{display:{Name:'{"text":"Iron Chestplate","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with iron_boots{display:{Name:'{"text":"Iron Boots","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

tag @s remove invincible
effect clear @s resistance
#execute unless score @s berserkerArmorDR matches 60.. run effect give @s instant_damage 1 0 true
#execute if score @s berserkerArmorDR matches 60..119 run effect give @s instant_damage 20 0 true
#execute if score @s berserkerArmorDR matches 120..179 run effect give @s instant_damage 30 0 true
#execute if score @s berserkerArmorDR matches 180..239 run effect give @s instant_damage 40 0 true
#execute if score @s berserkerArmorDR matches 240..299 run effect give @s instant_damage 50 0 true
#execute if score @s berserkerArmorDR matches 300..359 run effect give @s instant_damage 60 0 true
#execute if score @s berserkerArmorDR matches 360..439 run effect give @s instant_damage 70 0 true
#execute if score @s berserkerArmorDR matches 420..479 run effect give @s instant_damage 80 0 true
#execute if score @s berserkerArmorDR matches 480..539 run effect give @s instant_damage 90 0 true
#execute if score @s berserkerArmorDR matches 540..599 run effect give @s instant_damage 100 0 true
#execute if score @s berserkerArmorDR matches 600..659 run effect give @s instant_damage 110 0 true
#execute if score @s berserkerArmorDR matches 660..719 run effect give @s instant_damage 120 0 true
#execute if score @s berserkerArmorDR matches 720..779 run effect give @s instant_damage 130 0 true
#execute if score @s berserkerArmorDR matches 780..839 run effect give @s instant_damage 140 0 true

execute if score @s berserkerArmorDR matches 60..119 run effect give @s instant_damage 1 0 true
execute if score @s berserkerArmorDR matches 120..179 run effect give @s instant_damage 20 0 true
execute if score @s berserkerArmorDR matches 180..239 run effect give @s instant_damage 30 0 true
execute if score @s berserkerArmorDR matches 240..299 run effect give @s instant_damage 40 0 true
execute if score @s berserkerArmorDR matches 300..359 run effect give @s instant_damage 50 0 true
execute if score @s berserkerArmorDR matches 360..439 run effect give @s instant_damage 60 0 true
execute if score @s berserkerArmorDR matches 420..479 run effect give @s instant_damage 70 0 true
execute if score @s berserkerArmorDR matches 480..539 run effect give @s instant_damage 80 0 true
execute if score @s berserkerArmorDR matches 540..599 run effect give @s instant_damage 90 0 true
execute if score @s berserkerArmorDR matches 600..659 run effect give @s instant_damage 100 0 true
execute if score @s berserkerArmorDR matches 660..719 run effect give @s instant_damage 110 0 true
execute if score @s berserkerArmorDR matches 720..779 run effect give @s instant_damage 120 0 true
execute if score @s berserkerArmorDR matches 780.. run effect give @s instant_damage 130 0 true


execute at @s run playsound minecraft:block.anvil.use player @a ~ ~ ~ 2 2