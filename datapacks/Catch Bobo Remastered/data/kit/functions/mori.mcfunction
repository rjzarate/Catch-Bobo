function general:clear_modifiers
function general:clear_tags
tag @s add hunter
tag @s add mori
team join Hunters @s
clear @s

#base attributes
attribute @s minecraft:generic.max_health base set 36
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability resets
function general:clear_abilities
scoreboard players set @s yongpyoPowerOrAcceleration 0

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Mori Jin\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;178207086,1938311177,-2028337728,1696161455],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY4NzM4ODIyNGNmY2VmNjhlNmJlYmFlNjc2NzhkZDg2ZjJiNjI4NjNiZTVmYzE1M2JiMzUyZjVhOWM2NWZiZSJ9fX0="}]}},HideFlags:77,mori:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:160444},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:12991826},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Yeoui","color":"dark_red","bold":true,"italic":false}'},HideFlags:7,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;466701147,780551195,-2125874679,504454309],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.8,Operation:0,UUID:[I;1280991582,1458323653,-2083327653,-906345462],Slot:"mainhand"}],Tags:["mori","yeoui","meleeDamage","attackSpeed","range","rangeDamage","successfulMeleeHit","meleeDamageDealt","successfulMeleeHitRequirement","successfulMeleeHitCooldown","successfulRangeHit","successfulRangeHitDuration","successfulRangeHitAttackSpeed","cooldown","actionbarSpecial"],meleeDamage:5,attackSpeed:120,range:9,rangeDamage:4,meleeDamageDealt:5,successfulMeleeHitCooldown:-1,successfulRangeHitDuration:4,successfulRangeHitAttackSpeed:60,cooldown:4,noDrop:1,CustomModelData:1800} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .successfulMeleeHitCooldown yeouiStats = .successfulMeleeHitCooldown stats
scoreboard players operation .successfulMeleeHitCooldown yeouiStats *= #20 constant

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Geundoowun","color":"dark_red","bold":true,"italic":false}'},Tags:["mori","geundoowun","duration","size","underTheCloud","othersUnderTheCloud","othersLeavingTheCloud","cooldown","actionbarDuration"],duration:60,size:80,underTheCloudRangeDamage:2,underTheCloudMovementSpeed:25,othersLeavingTheCloudDamage:3,cooldown:25,noDrop:1,CustomModelData:1810} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Thunder Breaker","color":"dark_red","bold":true,"italic":false}'},Tags:["mori","thunderBreaker","duration","maxHeight","speed2","cooldown","actionbarDuration"],noDrop:1,duration:15,maxHeight:60,speed2:15,cooldown:20,CustomModelData:1812} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxHeight thunderBreakerStats = .maxHeight stats

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Noeseon","color":"dark_red","bold":true,"italic":false}'},Tags:["mori","noeseon","chargeUp","duration","chargeUpRequirement","lightning","cooldown","actionbarSpecial"],chargeUp:10,duration:5,lightningAmount:4,lightningLastGlowing:5,cooldown:25,noDrop:1,CustomModelData:1811} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .cooldown20t noeseonStats = .cooldown stats
scoreboard players operation .chargeUp20t noeseonStats = .chargeUp stats
scoreboard players operation .duration20t noeseonStats = .duration stats
scoreboard players operation .glowing20t noeseonStats = .lightningLastGlowing stats
scoreboard players operation .cooldown20t noeseonStats *= #20 constant
scoreboard players operation .duration20t noeseonStats *= #20 constant
scoreboard players operation .chargeUp20t noeseonStats *= #20 constant
scoreboard players operation .glowing20t noeseonStats *= #2 constant

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Yongpyo: Power","color":"dark_red","bold":true,"italic":false}'},Tags:["mori","yongpyo","yongpyoPower","duration","meleeDamageIncrease","rangeDamageIncrease","rangeIncrease","cooldown","uponDrop","actionbarDuration"],duration:25,meleeDamageIncrease:2,rangeDamageIncrease:1,rangeIncrease:2,cooldown:25,uponDrop:1,CustomModelData:1813} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.4 from entity @s weapon.mainhand

#item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Yongpyo: Acceleration","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["mori","yongpyo","yongpyoAcceleration","duration","attackSpeedIncrease","movementSpeedIncrease","CooldownReductionRateDecimal","cooldown","uponDrop"],duration:25,attackSpeedIncrease:20,movementSpeedIncrease:20,CooldownReductionRateDecimal:25,cooldown:75,uponDrop:1} 1
#item modify entity @s weapon.mainhand kit:description
#item modify entity @s weapon.mainhand kit:stats
#item replace block 0 0 0 container.5 from entity @s weapon.mainhand

#stores items in storage for geundoowun
	data modify storage minecraft:mori Geundoowun set from block 0 0 0 Items[{Slot:1b}]
	data modify storage minecraft:mori Noeseon set from block 0 0 0 Items[{Slot:3b}]

	data modify storage minecraft:mori Geundoowun.Slot set value 0b
	data modify storage minecraft:mori Noeseon.Slot set value 0b

#clears noeseon's items
	item replace block 0 0 0 container.3 with minecraft:air


item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}