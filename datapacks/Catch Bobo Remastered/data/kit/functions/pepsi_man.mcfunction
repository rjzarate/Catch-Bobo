function general:clear_modifiers
function general:clear_tags
tag @s add hunter
tag @s add pepsiMan
team join Hunters @s
clear @s

attribute @s minecraft:generic.max_health base set 36
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.12500000186264515
effect give @s minecraft:instant_health 1 100 true

#ability reset
function general:clear_abilities
scoreboard players set @s pepsiPunchKnockback 2
scoreboard players set @s pepsiCreationAmmo 2

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Pepsi\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-1640295986,-1942802331,-1640295986,-1942765467],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQxYjkyNzViMDRiYTg0ZjM5ZmVmODMzNzE3MWQ4M2NjYmY5OWM0ZDc3NzViMDc5MmYwNGZjZWUyMTg5ZWJjNSJ9fX0="}]}},HideFlags:7,pepsiMan:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Pepsi Suit","color":"dark_red","bold":true,"italic":false}',color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Pepsi Suit","color":"dark_red","bold":true,"italic":false}',color:4218},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Pepsi Suit","color":"dark_red","bold":true,"italic":false}',color:4218},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Pepsi Punch","color":"dark_red","bold":true,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;466701147,780551195,-2125874679,504454309],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;1280991582,1458323653,-2083327653,-906345462],Slot:"mainhand"}],Enchantments:[{id:"minecraft:knockback",lvl:2s}],Tags:["pepsiMan","pepsiPunch","meleeDamage","attackSpeed","knockback","successfulHitHunter","successfulHitHunterDuration","successfulHitHunterMeleeDamageDecrease","successfulHitHunterKnockback","successfulHitHunterAttackSpeed","successfulHitOrangutan","successfulHitOrangutanDuration","successfulHitOrangutanMeleeDamage","successfulHitOrangutanKnockbackDecrease","successfulHitOrangutanAttackSpeed","actionbarSpecial"],HideFlags:7,pepsiPunch:1,meleeDamage:2,knockback:2,attackSpeed:100,damageDealt:1,successfulHitHunterDuration:60,successfulHitHunterMeleeDamageDecrease:-2,successfulHitHunterKnockback:1,successfulHitHunterAttackSpeed:25,successfulHitOrangutanDuration:20,successfulHitOrangutanMeleeDamage:2,successfulHitOrangutanKnockbackDecrease:-2,successfulHitOrangutanAttackSpeed:25,noDrop:1,CustomModelData:1700} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Pepsi Splash","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["pepsiMan","pepsiSplash","duration","range","toHunters","toHuntersInstantHealth","toHuntersSpeed1","toOrangutans","toOrangutansInstantDamage","toOrangutansSlowness1","cooldown","actionbarDuration"],pepsiSplash:1,duration:5,range:6,toHuntersInstantHealth:1,toHuntersSpeed1:5,toOrangutansInstantDamage:1,toOrangutansSlowness1:5,cooldown:30,noDrop:1,CustomModelData:1710} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"PEPSI","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["pepsiMan","pepsi","duration","chargeUp","speed3","jumpBoost5","resistance1","knockbackResistance","disablesHealing","cooldown","actionbarChargeUpDuration"],pepsi:1,duration:20,chargeUp:10,speed3:20,jumpBoost5:20,resistance1:20,knockbackResistance:100,cooldown:75,noDrop:1,CustomModelData:1711} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .cooldown20t pepsiStats = .cooldown stats
scoreboard players operation .duration20t pepsiStats = .duration stats
scoreboard players operation .speed320t pepsiStats = .speed3 stats
scoreboard players operation .jumpBoost520t pepsiStats = .jumpBoost5 stats
scoreboard players operation .resistance120t pepsiStats = .resistance1 stats
scoreboard players operation .cooldown20t pepsiStats *= #20 constant
scoreboard players operation .duration20t pepsiStats *= #20 constant
scoreboard players operation .speed320t pepsiStats *= #20 constant
scoreboard players operation .jumpBoost520t pepsiStats *= #20 constant
scoreboard players operation .resistance120t pepsiStats *= #20 constant


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Pepsi Creation","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["pepsiMan","pepsiCreation","range","ammo","maxAmmo","ammoCooldown","cooldown","actionbarAmmo1"],pepsiCreation:1,range:20,maxAmmo:2,ammoCooldown:1,cooldown:50,noDrop:1,CustomModelData:1712} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo pepsiCreationStats = .maxAmmo stats
scoreboard players operation .cooldown20t pepsiCreationStats = .cooldown stats
scoreboard players operation .cooldown20t pepsiCreationStats *= #20 constant
scoreboard players operation .ammoCooldown pepsiCreationStats = .ammoCooldown stats
scoreboard players operation @s pepsiCreationAmmo = @s pepsiCreationAmmo

item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}