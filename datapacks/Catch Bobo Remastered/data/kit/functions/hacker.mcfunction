function general:clear_modifiers
function general:clear_tags
tag @s add hunter
tag @s add hacker
team join Hunters @s
clear @s

attribute @s minecraft:generic.max_health base set 30
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability reset
function general:clear_abilities
scoreboard players set @s battery 2000

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Hacker\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-314835871,1658470406,-1261035364,-1899808833],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjk4ZDQ1MTk2NTZhOWI3ZWJlM2VjZjMxYzIwMDc4MzljMTY0YTM0Yzk5YzhmZDJkMTc4MDJiZmU4YWMyMjBmYyJ9fX0="}]}},HideFlags:7,hacker:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Metal Suit","color":"dark_red","bold":true,"italic":false}',color:11316396},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Robotic Legs","color":"dark_red","bold":true,"italic":false}',color:11316396},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Iron Planters","color":"dark_red","bold":true,"italic":false}',color:11316396},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1


item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Trojan Horse","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],Tags:["hacker","trojanHorse","rangeDamage","range","miniHorse","miniHorseLifespan","miniHorseDamage","miniHorseSlowness10Decimal","batteryUsage","actionbarSpecial"],ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Unbreakable:1b,HideFlags:47,noDrop:1,rangeDamage:3,range:17,miniHorseLifespan:3,miniHorseHealth:1,miniHorseDamage:1,miniHorseSlowness10Decimal:5,batteryUsage:15,CustomModelData:1600} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .batteryUsage stats *= #20 constant
scoreboard players operation .trojanHorseBatteryUsage hackerStats = .batteryUsage stats

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Rootkit","color":"dark_red","bold":true,"italic":false}'},Tags:["hacker","rootkit","duration","slowness10Decimal","radius","batteryUsage","uponDrop","actionbarSpecial"],duration:5,slowness10Decimal:15,radius:8,batteryUsage:20,CustomModelData:1601} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .duration20t rootkitStats = .duration stats
scoreboard players operation .slowness1020t rootkitStats = .slowness10Decimal stats
scoreboard players operation .batteryUsage stats *= #20 constant
scoreboard players operation .rootkitBatteryUsage hackerStats = .batteryUsage stats

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Ransomware","color":"dark_red","bold":true,"italic":false}'},Tags:["hacker","ransomware","range","blastSize","toHunters","toHuntersCooldowns","toOrangutans","toOrangutansCooldownsIncrease","batteryUsage","uponDrop","actionbarSpecial"],range:25,blastSize:4,toHuntersCooldowns:-15,toOrangutansCooldownsIncrease:8,batteryUsage:20,CustomModelData:1601} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
function general:get_stats
scoreboard players operation .batteryUsage stats *= #20 constant
scoreboard players operation .ransomwareBatteryUsage hackerStats = .batteryUsage stats

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Adware","color":"dark_red","bold":true,"italic":false}'},Tags:["hacker","adware","range","playerWithAds","batteryUsage","uponDrop","actionbarSpecial"],range:20,batteryUsage:40,CustomModelData:1603} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .batteryUsage stats *= #20 constant
scoreboard players operation .adwareBatteryUsage hackerStats = .batteryUsage stats

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Spyware","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["hacker","spyware","duration","range","batteryUsage","uponDrop","actionbarSpecial"],duration:3,range:100,batteryUsage:40,CustomModelData:1604} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
function general:get_stats
scoreboard players operation .batteryUsage stats *= #20 constant
scoreboard players operation .spywareBatteryUsage hackerStats = .batteryUsage stats

item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}