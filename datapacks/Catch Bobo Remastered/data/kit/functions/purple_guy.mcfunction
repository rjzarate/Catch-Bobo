function general:clear_modifiers
function general:clear_tags
tag @s add orangutan
tag @s add purpleGuy
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
scoreboard players set @s remnantMachineAmmo 2

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Purple Guy\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1008750935,995904503,-1494871008,523943185],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjcxZTI4MzU0NWFiZTQ3YzFhMzBhMzAyYWIyODkwNmYxODgxMTVkZGZlZWIwN2ZiOTY2YjEyNmQ1ZjM0MDAxMiJ9fX0="}]}},HideFlags:1,purpleGuy:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Purple Suit","color":"gold","bold":true,"italic":false}',color:6306408},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71,Unbreakable:1b,purpleGuy:1} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Purple Suit Pants","color":"gold","bold":true,"italic":false}',color:6306408},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71,Unbreakable:1b,purpleGuy:1} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Purple Shoes","color":"gold","bold":true,"italic":false}',color:6306408},Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71,Unbreakable:1b,purpleGuy:1} 1


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Phone","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;466701147,780051195,-2128874679,504454309],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;128091582,145823653,-208332753,-90634462],Slot:"mainhand"}],HideFlags:7,Tags:["purpleGuy","phone","purpleGuyMelee","meleeDamage","attackSpeed","fireAspect","maxAmmo","cooldown","ammoCooldown","actionbarAmmo1"],phone:1,meleeDamage:3,fireAspect:1,attackSpeed:200,maxAmmo:5,cooldown:5,ammoCooldown:1,noDrop:1,CustomModelData:300} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
scoreboard players set @s phoneIAlwaysComeBackSlot 0
function general:get_stats
scoreboard players operation .maxAmmo phoneIAlwaysComeBackStats = .maxAmmo stats
scoreboard players operation .cooldown20t phoneIAlwaysComeBackStats = .cooldown stats
scoreboard players operation .cooldown20t phoneIAlwaysComeBackStats *= #20 constant
scoreboard players operation .ammoCooldown phoneIAlwaysComeBackStats = .ammoCooldown stats
scoreboard players operation @s phoneIAlwaysComeBackAmmo = @s phoneIAlwaysComeBackAmmo
scoreboard players operation .fireAspect phoneIAlwaysComeBackStats = .fireAspect stats


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Build: Remnant Machine","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["purpleGuy","remnantMachine","remnantMachineHealth","remnantMachineLifespan","remnantMachineMaxAnimatronics","remnantMachineAnimatronicGenerationSpeed","animatronic","animatronicHealth","animatronicMeleeDamage","animatronicMovementSpeed","activationRequirement","onGround","maxAmmo","cooldown","ammoCooldown","actionbarAmmo1"],remnantMachine:1,remnantMachineHealth:25,remnantMachineLifespan:500,remnantMachineMaxAnimatronics:5,remnantMachineAnimatronicGenerationSpeed:20,animatronicHealth:10,animatronicMeleeDamage:1,animatronicMovementSpeed:150,maxAmmo:2,cooldown:200,ammoCooldown:1,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo remnantMachineStats = .maxAmmo stats
scoreboard players operation .cooldown20t remnantMachineStats = .cooldown stats
scoreboard players operation .cooldown20t remnantMachineStats *= #20 constant
scoreboard players operation .ammoCooldown remnantMachineStats = .ammoCooldown stats
scoreboard players operation @s remnantMachineAmmo = @s remnantMachineAmmo
execute store result score .animatronicGenerationSpeed remnantMachineStats run data get storage minecraft:stats tag.remnantMachineAnimatronicGenerationSpeed 20
execute store result score .maxAnimatronics remnantMachineStats run data get storage minecraft:stats tag.remnantMachineMaxAnimatronics 1
	execute store result score .health animatronicStats run data get storage minecraft:stats tag.animatronicHealth 1
	execute store result score .meleeDamage animatronicStats run data get storage minecraft:stats tag.animatronicMeleeDamage 1
	execute store result score .movementSpeed animatronicStats run data get storage minecraft:stats tag.animatronicMovementSpeed 1


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Quirky Animatronics","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["purpleGuy","quirkyAnimatronics","duration","cooldown","actionbarDuration"],quirkyAnimatronics:1,duration:10,cooldown:75,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand
scoreboard players set @s quirkyAnimatronicsFlamingCorruptionSlot 2


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"12 AM","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["purpleGuy","12am","cooldown","actionbarRegular"],12am:1,cooldown:100,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
scoreboard players set @s 12am5amSlot 3


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Transform: Springtrap","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["purpleGuy","transform","transformSpringtrap","chargeUp","actionbarChargeUp"],transform:1,chargeUp:100,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.4 from entity @s weapon.mainhand
scoreboard players set @s purpleGuyTransformSlot 4
function general:get_stats
scoreboard players operation .chargeUp purpleGuyTransformStats = .chargeUp stats
scoreboard players operation .chargeUp purpleGuyTransformStats *= #20 constant
scoreboard players operation @s purpleGuyTransformChargeUp = .chargeUp purpleGuyTransformStats

##Springtrap's items that are stored in the storage
	item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"I Always Come Back","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;466701147,780051195,-2128874679,504454309],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.2,Operation:0,UUID:[I;128091582,145823653,-208332753,-90634462],Slot:"mainhand"}],HideFlags:7,Tags:["purpleGuy","purpleGuyMelee","iAlwaysComeBack","meleeDamage","attackSpeed","fireAspect","maxAmmo","cooldown","ammoCooldown","actionbarAmmo1"],iAlwaysComeBack:1,meleeDamage:4,fireAspect:1,attackSpeed:180,maxAmmo:5,cooldown:5,ammoCooldown:1,noDrop:1,CustomModelData:310} 1
	item modify entity @s weapon.mainhand kit:description
	item modify entity @s weapon.mainhand kit:stats
	item replace block 0 0 0 container.5 from entity @s weapon.mainhand

	item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Flaming Corruption","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["purpleGuy","flamingCorruption","duration","cooldown","actionbarDuration"],flamingCorruption:1,duration:10,cooldown:75,animatronicFireResistance:10,animatronicsSpeed2:10,noDrop:1} 1
	item modify entity @s weapon.mainhand kit:description
	item modify entity @s weapon.mainhand kit:stats
	item replace block 0 0 0 container.6 from entity @s weapon.mainhand

	item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"5 AM","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["purpleGuy","5am","cooldown","actionbarRegular"],5am:1,cooldown:100,noDrop:1} 1
	item modify entity @s weapon.mainhand kit:description
	item modify entity @s weapon.mainhand kit:stats
	item replace block 0 0 0 container.7 from entity @s weapon.mainhand

	item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Transform: Purple Guy","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["purpleGuy","transform","transformPurpleGuy","chargeUp","actionbarChargeUp"],transform:1,chargeUp:100,noDrop:1} 1
	item modify entity @s weapon.mainhand kit:description
	item modify entity @s weapon.mainhand kit:stats
	item replace block 0 0 0 container.8 from entity @s weapon.mainhand

#stores items in storage for transformation
	data modify storage minecraft:purple_guy Phone set from block 0 0 0 Items[{Slot:0b}]
	data modify storage minecraft:purple_guy RemnantMachine set from block 0 0 0 Items[{Slot:1b}]
	data modify storage minecraft:purple_guy QuirkyAnimatronics set from block 0 0 0 Items[{Slot:2b}]
	data modify storage minecraft:purple_guy 12AM set from block 0 0 0 Items[{Slot:3b}]
	data modify storage minecraft:purple_guy TransformSpringtrap set from block 0 0 0 Items[{Slot:4b}]
	data modify storage minecraft:purple_guy IAlwaysComeBack set from block 0 0 0 Items[{Slot:5b}]
	data modify storage minecraft:purple_guy FlamingCorruption set from block 0 0 0 Items[{Slot:6b}]
	data modify storage minecraft:purple_guy 5AM set from block 0 0 0 Items[{Slot:7b}]
	data modify storage minecraft:purple_guy TransformPurpleGuy set from block 0 0 0 Items[{Slot:8b}]

	data modify storage minecraft:purple_guy RemnantMachine.Slot set value 0b
	data modify storage minecraft:purple_guy QuirkyAnimatronics.Slot set value 0b
	data modify storage minecraft:purple_guy 12AM.Slot set value 0b
	data modify storage minecraft:purple_guy TransformSpringtrap.Slot set value 0b
	data modify storage minecraft:purple_guy IAlwaysComeBack.Slot set value 0b
	data modify storage minecraft:purple_guy FlamingCorruption.Slot set value 0b
	data modify storage minecraft:purple_guy 5AM.Slot set value 0b
	data modify storage minecraft:purple_guy TransformPurpleGuy.Slot set value 0b
#clears springtrap's items
	item replace block 0 0 0 container.5 with minecraft:air
	item replace block 0 0 0 container.6 with minecraft:air
	item replace block 0 0 0 container.7 with minecraft:air
	item replace block 0 0 0 container.8 with minecraft:air

#bobo finder
item replace entity @s weapon.mainhand with compass{display:{Name:'{"text":"Bobo Finder","color":"gold","bold":true,"italic":false}'},Tags:["teemo","boboFinder"],boboFinder:1,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:0,Y:0,Z:0},noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item replace block 0 0 0 container.8 from entity @s weapon.mainhand

item replace block 0 0 0 container.5 with minecraft:paper{Tags:["filler"],filler:1}
item replace block 0 0 0 container.6 with minecraft:paper{Tags:["filler"],filler:2}
item replace block 0 0 0 container.7 with minecraft:paper{Tags:["filler"],filler:3}


item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}