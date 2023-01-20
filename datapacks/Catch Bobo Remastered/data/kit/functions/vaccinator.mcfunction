function general:clear_modifiers
function general:clear_tags
tag @s add hunter
tag @s add vaccinator
team join Hunters @s
clear @s

attribute @s minecraft:generic.max_health base set 28
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability reset
function general:clear_abilities
scoreboard players set @s syringeLauncherAmmo 20
scoreboard players reset @s syringeLauncherUsed
scoreboard players set @s overloadedBrewing 0
scoreboard players reset @s unstableConcoction

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Vaccinator\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-309427113,1527466179,-1092460856,110075039],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDhkNDU1ZDU4MDJlZDBhNTNiYWRmNjI1OGY1YzM0Zjc3YTkyYjViNDUyZWE2YjQ5NjIzZTc4ZTJiOGMzZjE3NyJ9fX0="}]}},vaccinator:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"dark_red","bold":true,"italic":false}',color:14605868},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}',color:14605868},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"dark_red","bold":true,"italic":false}',color:14605868},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1


item replace entity @s weapon.mainhand with bow{display:{Name:'{"text":"Syringe Launcher","color":"dark_red","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,Enchantments:[{}],Tags:["vaccinator","syringeLauncher","arrowDamage","range","instantHealth","regeneration1","absorption3","speed1","resistance1","poison1","wither1","slowness1","blindness","glowing","successfulHit","successfulHitAmmoGiven","successfulHitRequirement","fullyCharged","ammo","maxAmmo","cooldown","ammoCooldown"],arrowDamage:0,range:20,instantHealth:1,regeneration1:12,absorption3:10,speed1:10,resistance1:10,poison1:5,wither1:5,glowing:5,slowness1:5,blindness:5,successfulHitAmmoGiven:1,maxAmmo:20,cooldown:25,ammoCooldown:5,noDrop:1,CustomModelData:1500} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .cooldown20t syringeLauncherStats = .cooldown stats
scoreboard players operation .duration20t syringeLauncherStats = .duration stats
scoreboard players operation .cooldown20t syringeLauncherStats *= #20 constant
scoreboard players operation .duration20t syringeLauncherStats *= #20 constant
scoreboard players operation .maxAmmo syringeLauncherStats = .maxAmmo stats
scoreboard players operation .ammoCooldown syringeLauncherStats = .ammoCooldown stats
scoreboard players operation @s syringeLauncherAmmo = @s syringeLauncherAmmo
scoreboard players operation .blindness syringeLauncherStats = .blindness stats
scoreboard players operation .poison1 syringeLauncherStats = .poison1 stats
scoreboard players operation .wither1 syringeLauncherStats = .wither1 stats
scoreboard players operation .slowness1 syringeLauncherStats = .slowness1 stats
scoreboard players operation .glowing syringeLauncherStats = .glowing stats
scoreboard players operation .speed1 syringeLauncherStats = .speed1 stats
scoreboard players operation .regeneration1 syringeLauncherStats = .regeneration1 stats
scoreboard players operation .absorption3 syringeLauncherStats = .absorption3 stats
scoreboard players operation .resistance1 syringeLauncherStats = .resistance1 stats


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Overloaded Brewing","color":"dark_red","bold":true,"italic":false}'},Tags:["vaccinator","overloadedBrewing","actionbarSpecial"],noDrop:1,CustomModelData:1510} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Self-Diagnose","color":"dark_red","bold":true,"italic":false}'},Tags:["vaccinator","selfDiagnose","durationVaries","activationRequirement","cooldown","actionbarSpecial"],durationVaries:10,cooldown:30,noDrop:1,CustomModelData:1520} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Unstable Concoction","color":"dark_red","bold":true,"italic":false}'},Tags:["vaccinator","unstableConcoction","duration","cooldown","actionbarSpecial"],duration:10,cooldown:40,noDrop:1,CustomModelData:1530} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .cooldown20t unstableConcoctionStats = .cooldown stats
scoreboard players operation .duration20t unstableConcoctionStats = .duration stats
scoreboard players operation .cooldown20t unstableConcoctionStats *= #20 constant
scoreboard players operation .duration20t unstableConcoctionStats *= #20 constant

item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}