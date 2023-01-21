function general:clear_modifiers
function general:clear_tags
tag @s add hunter
tag @s add officer
team join Hunters @s
clear @s

attribute @s minecraft:generic.max_health base set 36
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability reset
function general:clear_abilities

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Officer\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1106695392,-1843900452,-2124044537,1768199769],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTExNzg2N2I5ZDhhYmRkYTZkM2FhZDcyNmI1MDQ3YWY0OWQ4NTQ3MmQ0YWNhMTBjZDk2NjFmMGZhY2ExMjFmZCJ9fX0="}]}},HideFlags:7,officer:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Bulletproof Vest","color":"dark_red","bold":true,"italic":false}',color:1520455},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Suit Pants","color":"dark_red","bold":true,"italic":false}',color:3555398},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Black Boots","color":"dark_red","bold":true,"italic":false}',color:2565927},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Swapstick","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;941097204,1416514812,-1781051719,310661318],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;-1481760752,1585925069,-1376131617,-1860209074],Slot:"mainhand"}],HideFlags:7,Tags:["officer","swapstick","meleeDamage","attackSpeed","successfulHitRequirement","damageDealt","successfulHit","successfulHitDuration","successfulHitAttackSpeed","activationRequirement","dogIsAlive","cooldown","actionbarSpecial"],swapstick:1,meleeDamage:4,attackSpeed:100,damageDealt:4,successfulHitDuration:2,successfulHitAttackSpeed:80,cooldown:5,noDrop:1,CustomModelData:1300} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Clicker","color":"dark_red","bold":true,"italic":false}'},Tags:["officer","clicker","activationRequirement","dogIsAlive","cooldown","actionbarRegular"],cooldown:15,noDrop:1,CustomModelData:1301} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Orangutan Cloth","color":"dark_red","bold":true,"italic":false}'},Tags:["officer","orangutanCloth","duration","dogStrength1","activationRequirement","dogIsAlive","nearDog","cooldown","actionbarDuration"],duration:20,dogStrength1:20,cooldown:30,noDrop:1,CustomModelData:1302} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Dog Whistle","color":"dark_red","bold":true,"italic":false}'},Tags:["officer","dogWhistle","duration","weakness1","slowness5","dogSpeed","range","activationRequirement","dogIsAlive","cooldown","actionbarDuration"],duration:8,weakness1:8,slowness5:8,dogSpeed:8,range:50,cooldown:50,noDrop:1,CustomModelData:1303} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Canine Embryo","color":"dark_red","bold":true,"italic":false}'},Tags:["officer","canineEmbryo","dog","activationRequirement","dogIsDead","cooldownRequirement","cooldown","actionbarRegular"],dogHealth:20,dogArmor:10,dogMeleeDamage:5,dogMovementSpeed:150,cooldown:100,noDrop:1,CustomModelData:1304} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.8 from entity @s weapon.mainhand

item replace block 0 0 0 container.4 with minecraft:paper{Tags:["filler"],filler:1}
item replace block 0 0 0 container.5 with minecraft:paper{Tags:["filler"],filler:2}
item replace block 0 0 0 container.6 with minecraft:paper{Tags:["filler"],filler:3}
item replace block 0 0 0 container.7 with minecraft:paper{Tags:["filler"],filler:4}

item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}