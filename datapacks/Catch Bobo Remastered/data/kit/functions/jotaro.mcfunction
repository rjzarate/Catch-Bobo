function general:clear_modifiers
function general:clear_tags
tag @s add hunter
tag @s add jotaro
team join Hunters @s
clear @s

#base attributes
attribute @s minecraft:generic.max_health base set 38
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability resets
function general:clear_abilities

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Jotaro\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;2068211646,1582647829,-2079927472,2054612067],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjZjMmFiMDcwNTY1YzQyYzdlMTFkY2I5YjkyZjlmNDc4YTI0ZjFkYmNkOTdkZWQ3ZWZmZjA0YzY3MWRjMjYyOSJ9fX0="}]}},HideFlags:77,jotaro:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Star Platinum Punch","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;941097204,1416514812,-1781051719,310661318],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.5,Operation:0,UUID:[I;-1481760752,1585925069,-1376131617,-1860209074],Slot:"mainhand"}],Tags:["jotaro","starPlatinumPunch","meleeDamage","attackSpeed","successfulHitRequirement","damageDealt","successfulHit","successfulHitDuration","successfulHitAttackSpeed","starPlatinum","actionbarSpecial"],CustomModelData:1001,HideFlags:2,starPlatinumPunch:1,meleeDamage:2,attackSpeed:150,damageDealt:3,successfulHitDuration:5,successfulHitAttackSpeed:100,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Star Platinum Uppercut","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;941097204,1416514812,-1781051719,310661318],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.7,Operation:0,UUID:[I;-1481760752,1585925069,-1376131617,-1860209074],Slot:"mainhand"}],Tags:["jotaro","starPlatinumUppercut","meleeDamage","attackSpeed","successfulHitRequirement","damageDealt","successfulHit","successfulHitDuration","successfulHitDamage","starPlatinum","actionbarSpecial"],CustomModelData:1002,HideFlags:2,starPlatinumPunch:1,meleeDamage:6,attackSpeed:30,damageDealt:6,successfulHitDuration:5,successfulHitDamage:2,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Star Finger","color":"dark_red","bold":true,"italic":false}'},Tags:["jotaro","starFinger","rangeDamage","range","wither1","hitsHead","hitsHeadBlindness","cooldown","actionbarRegular"],CustomModelData:1003,starFinger:1,rangeDamage:2,range:9,wither1:4,hitsHeadBlindness:2,cooldown:10,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"ORA!","color":"dark_red","bold":true,"italic":false}'},Tags:["jotaro","ora","duration","damage","fireRate","range","cooldown","actionbarDuration"],CustomModelData:1004,ora:1,duration:5,damage:3,fireRate:500,range:5,cooldown:20,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .damage oraStats = .damage stats
scoreboard players operation .range oraStats = .range stats
scoreboard players operation .range oraStats *= #2 constant

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Time Stop","color":"dark_red","bold":true,"italic":false}'},Tags:["jotaro","timeStop","allDamage","duration","whileChargeUp","whileChargeUpSlowness1","chargeUp","chargeUpRequirement","takeNoDamage","cooldown","actionbarChargeUpDuration"],CustomModelData:1005,timeStop:1,allDamage:-1,duration:5,chargeUp:5,cooldown:50,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.4 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .cooldown20t timeStopStats = .cooldown stats
scoreboard players operation .duration20t timeStopStats = .duration stats
scoreboard players operation .cooldown20t timeStopStats *= #20 constant
scoreboard players operation .duration20t timeStopStats *= #20 constant


item replace entity @s weapon.mainhand with minecraft:air
#replace offhand with left arm item
item replace entity @s weapon.offhand from block 0 0 0 container.1 
item replace block 0 0 0 container.1 with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}




execute at @s as @e[type=minecraft:husk,tag=starPlatinum] if score @s uuidLink = @p[tag=jotaro,gamemode=!spectator] uuid run kill @s
execute at @s run summon minecraft:husk ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Team:"noCollide",PersistenceRequired:1b,NoAI:1b,Tags:["starPlatinum","noDamage","noTimeStop"],HandItems:[{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1002,Enchantments:[{}]}},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1002,Enchantments:[{}]}}],CustomName:'{"text":"Star Platinum","color":"dark_red","bold":true,"italic":false}'}
scoreboard players operation @e[type=minecraft:husk,tag=starPlatinum,tag=!finished] uuidLink = @s uuid
tag @e[type=minecraft:husk,tag=starPlatinum,tag=!finished] add finished

