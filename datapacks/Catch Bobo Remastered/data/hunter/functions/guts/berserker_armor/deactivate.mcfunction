item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Gut\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-200688065,-724679753,-1905987168,1320176033],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjU3ZmFkM2Y0MmZkMTMwZWUxM2U1NDlkNDlmODIyZDViMDFmNjE5MTE4YjNhMDU5ZGU4ZDQzODc4MWU0ZTRkZSJ9fX0="}]}},HideFlags:77,guts:1} 1
item replace entity @s armor.chest with iron_chestplate{display:{Name:'{"text":"Iron Chestplate","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.feet with iron_boots{display:{Name:'{"text":"Iron Boots","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1

#remove attribute
attribute @s minecraft:generic.attack_damage modifier remove 1-0-1-3-1
#give weakness
scoreboard players operation @s weakness1 = @s weakness1
execute if score @s weakness1 < .afterWeakness1 berserkerArmorStats run scoreboard players operation @s weakness1 = .afterWeakness1 berserkerArmorStats

#take damage, say kill by magic rather than fell off the world
scoreboard players operation @s berserkerArmorDamageResisted *= .afterTakePreviousDamageAmount berserkerArmorStats
scoreboard players operation @s berserkerArmorDamageResisted /= #100 constant
scoreboard players operation @s berserkerArmorDamageResisted /= #20 constant
scoreboard players operation @s hp_dmg = @s berserkerArmorDamageResisted
scoreboard players remove @s[scores={hp_dmg=6..}] hp_dmg 6
execute if score @s health < @s hp_dmg run scoreboard players operation @s hp_dmg = @s health
execute if score @s health = @s hp_dmg run scoreboard players remove @s hp_dmg 1
effect clear @s minecraft:resistance
effect give @s minecraft:instant_damage 1 0

execute at @s run playsound minecraft:entity.enderman.death player @a ~ ~ ~ 2 0.75

#invincible for impostor
tag @s remove invincible