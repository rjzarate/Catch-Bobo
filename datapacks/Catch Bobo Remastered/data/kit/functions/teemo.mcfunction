function general:clear_modifiers
function general:clear_tags
tag @s add orangutan
tag @s add teemo
team join Orangutans @s
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
scoreboard players set @s toxicShotAmmo 30
scoreboard players set @s noxiousTrapAmmo 5

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Teemo\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-1117307397,-2059843084,-1451692502,-775514149],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2ZmQ5NzcyMjkwMGRhY2RmYTc3ZGMwODZhMGJhOTQ5MWRjM2ZjMjY4ZmZmZDAwZGJmY2JkYmQyOTRjN2VmOSJ9fX0="}]}},HideFlags:77,teemo:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Teemo\'s Fur","color":"gold","bold":true,"italic":false}',color:16566643},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7,teemo:1} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Teemo\'s Pants","color":"gold","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7,teemo:1} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Teemo\'s Boots","color":"gold","bold":true,"italic":false}',color:6192150},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7,teemo:1} 1


item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Toxic Shot","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:27b,Amplifier:49b,Duration:100}],CustomPotionColor:8200123}},{},{}],Tags:["teemo","toxicShot","arrowDamage","poison1","fireRate","range","ammo","maxAmmo","cooldown","ammoCooldown","actionbarAmmo"],HideFlags:47,Unbreakable:1b,Charged:1b,toxicShot:1,arrowDamage:0,poison1:3,fireRate:250,range:20,maxAmmo:30,ammoCooldown:10,cooldown:25,CustomModelData:100,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo toxicShotStats = .maxAmmo stats
scoreboard players operation .cooldown20t toxicShotStats = .cooldown stats
scoreboard players operation .cooldown20t toxicShotStats *= #20 constant
scoreboard players operation .ammoCooldown toxicShotStats = .ammoCooldown stats
scoreboard players operation #fireRate toxicShotStats = #2000 constant 
scoreboard players operation #fireRate toxicShotStats /= .fireRate stats
scoreboard players operation .fireRate toxicShotStats = #fireRate toxicShotStats
scoreboard players operation @s toxicShotAmmo = @s toxicShotAmmo

item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Blinding Dart","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:27b,Amplifier:50b,Duration:100}],CustomPotionColor:0}},{},{}],Tags:["teemo","blindingDart","arrowDamage","blindness","range","cooldown","actionbarRegular"],HideFlags:47,Unbreakable:1b,Charged:1b,blindingDart:1,arrowDamage:1,blindness:5,range:25,cooldown:10,CustomModelData:101,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Move Quick","color":"gold","bold":true,"italic":false}'},Tags:["teemo","moveQuick","duration","speed5","cooldown","actionbarDuration"],CustomModelData:200,moveQuick:1,duration:3,speed5:3,cooldown:15,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Noxious Trap","color":"gold","bold":true,"italic":false}'},Tags:["teemo","noxiousTrap","explosionRange","slowness2","poison1","health","armTime","lifespan","ammo","maxAmmo","chargeUpRequirement","onGround","cooldown","ammoCooldown","actionbarAmmo1"],CustomModelData:201,noxiousTrap:1,explosionRange:3,slowness2:5,poison1:3,health:1,armTime:2,lifespan:300,maxAmmo:5,cooldown:20,ammoCooldown:1,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo noxiousTrapStats = .maxAmmo stats
scoreboard players operation .cooldown20t noxiousTrapStats = .cooldown stats
scoreboard players operation .cooldown20t noxiousTrapStats *= #20 constant
scoreboard players operation .ammoCooldown noxiousTrapStats = .ammoCooldown stats
scoreboard players operation @s noxiousTrapAmmo = @s noxiousTrapAmmo
scoreboard players operation .armTime noxiousTrapStats = .lifespan stats
scoreboard players operation .armTime noxiousTrapStats -= .armTime stats
scoreboard players operation .armTime noxiousTrapStats *= #20 constant



item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Recall","color":"gold","bold":true,"italic":false}'},Tags:["teemo","recall","chargeUp","chargeUpRequirement","standingStill","notUsingAbilities","onGround","takeNoDamage","cooldown","actionbarChargeUp"],CustomModelData:202,recall:1,chargeUp:8,cooldown:120,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.4 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .cooldown20t recallStats = .cooldown stats
scoreboard players operation .cooldown20t recallStats *= #20 constant

item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}
