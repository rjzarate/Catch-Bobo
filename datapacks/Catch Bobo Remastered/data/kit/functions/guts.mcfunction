function general:clear_modifiers
function general:clear_tags
tag @s add hunter
tag @s add guts
team join Hunters @s
clear @s

#base attributes
attribute @s minecraft:generic.max_health base set 50
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability resets
function general:clear_abilities
scoreboard players set @s repeaterCrossbowAmmo 25
scoreboard players set @s leftArmModel 1100

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Gut\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-200688065,-724679753,-1905987168,1320176033],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjU3ZmFkM2Y0MmZkMTMwZWUxM2U1NDlkNDlmODIyZDViMDFmNjE5MTE4YjNhMDU5ZGU4ZDQzODc4MWU0ZTRkZSJ9fX0="}]}},HideFlags:77,guts:1} 1
item replace entity @s armor.chest with iron_chestplate{display:{Name:'{"text":"Iron Chestplate","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.feet with iron_boots{display:{Name:'{"text":"Iron Boots","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1


item replace entity @s weapon.mainhand with netherite_sword{CustomModelData:1,display:{Name:'{"text":"Dragonslayer","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sweeping",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-581170679,1528515858,-1693798796,1004648571],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.40,Operation:0,UUID:[I;1932846192,-1409859432,-2006948179,-349684386],Slot:"mainhand"}],Tags:["guts","dragonslayer","meleeDamage","sweepingEdge","attackSpeed","successfulHitRequirement","damageDealt","successfulHit","successfulHitDuration","successfulHitAttackSpeed"],HideFlags:7,dragonslayer:1,meleeDamage:5,attackSpeed:60,sweepingEdge:10,damageDealt:4,successfulHitDuration:1,successfulHitAttackSpeed:85,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand


item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Left Arm —","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],Tags:["guts","leftArm","repeaterCrossbow","cannonArm","damage","fireRate","range","ammo","maxAmmo","cooldown","ammoCooldown","cannonArmExplosion","cannonArmRange","cannonArmCooldown"],leftArm:1,repeaterCrossbow:1,cannonArm:1,damage:2,fireRate:400,range:13,maxAmmo:25,cooldown:8,ammoCooldown:1,cannonArmExplosion:1,cannonArmRange:10,cannonArmCooldown:40,CustomModelData:1100,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b,Unbreakable:1b,HideFlags:47,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo repeaterCrossbowStats = .maxAmmo stats
scoreboard players operation .cooldown20t repeaterCrossbowStats = .cooldown stats
scoreboard players operation .cooldown20t repeaterCrossbowStats *= #20 constant
scoreboard players operation .ammoCooldown repeaterCrossbowStats = .ammoCooldown stats
scoreboard players operation #fireRate repeaterCrossbowStats = #2000 constant 
scoreboard players operation #fireRate repeaterCrossbowStats /= .fireRate stats
scoreboard players operation .fireRate repeaterCrossbowStats = #fireRate repeaterCrossbowStats
scoreboard players operation @s repeaterCrossbowAmmo = @s repeaterCrossbowAmmo

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Indomitable Will","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["guts","indomitableWill","missingHealth","missingHealthDuration","missingHealthAttackSpeed","missingHealthTemporaryHealth","missingHealthMovementSpeed","activationRequirement","cooldown","actionbarDuration"],indomitableWill:1,missingHealthDuration:1,missingHealthAttackSpeed:10,missingHealthTemporaryHealth:4,missingHealthMovementSpeed:5,cooldown:75,noDrop:1,CustomModelData:1100} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Berserker Armor","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["guts","berserkerArmor","duration","increasedMeleeDamage","resistance5","after","afterTakePreviousDamageAmount","afterWeakness1","cooldown","actionbarDuration"],berserkerArmor:1,duration:25,increasedMeleeDamage:1,resistance5:25,afterTakePreviousDamageAmount:75,afterWeakness1:5,cooldown:100,noDrop:1,CustomModelData:1105} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .afterTakePreviousDamageAmount berserkerArmorStats = .afterTakePreviousDamageAmount stats
scoreboard players operation .afterWeakness1 berserkerArmorStats = .afterWeakness1 stats
scoreboard players operation .afterWeakness1 berserkerArmorStats *= #20 constant

item replace entity @s weapon.mainhand with minecraft:air
#replace offhand with left arm item
item replace entity @s weapon.offhand from block 0 0 0 container.1 
item replace block 0 0 0 container.1 with minecraft:air

loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}
