function general:clear_modifiers
function general:clear_tags
tag @s add hunter
tag @s add jett
team join Hunters @s
clear @s

#base attributes
attribute @s minecraft:generic.max_health base set 26
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability resets
function general:clear_abilities
scoreboard players set @s marshalAmmo 15
scoreboard players set @s bladeStormAmmo 5
scoreboard players set @s tailwindAmmo 2
scoreboard players set @s updraftAmmo 4

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Jett\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;953686283,-654495105,-1193797365,-654462337],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTIwYjkwYWE5N2Q0NDBjMDY2MzNjODNlNTI5NTYzMmU2ODVhMDVlYTQyOTRiMjY1NGEzZWZiNGFjNjUyN2Y3MiJ9fX0="}]}},HideFlags:77,jett:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Plated Shirt","color":"dark_red","bold":true,"italic":false}',color:6790568},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Pants","color":"dark_red","bold":true,"italic":false}',color:855309},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Shoes","color":"dark_red","bold":true,"italic":false}',color:9820349},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1


item replace entity @s weapon.mainhand with spyglass{display:{Name:'{"text":"Marshal","color":"dark_red","bold":true,"italic":false}'},HideFlags:2,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.30,Operation:1,UUID:[I;-975728269,-806139794,-1674052178,1199486698],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.5,Operation:0,UUID:[I;-148160752,158592069,-137611617,-186029074],Slot:"mainhand"}],Tags:["jett","marshal","rangeDamage","range","equipTime","scopeTimeDecimal","hitsHead","hitsHeadRangeDamageMultiplier","hitsLeg","hitsLegRangeDamageMultiplierDecimal","whenHeld","whenHeldMovementSpeed","whenMoving","whenMovingRangeDamage","ammo","maxAmmo","cooldown","ammoCooldown"],rangeDamage:4,range:75,equipTime:2,scopeTimeDecimal:4,hitsHeadRangeDamageMultiplier:2,hitsLegRangeDamageMultiplierDecimal:5,whenHeldMovementSpeed:-30,whenMovingRangeDamage:-2,maxAmmo:15,cooldown:10,ammoCooldown:5,noDrop:1,CustomModelData:1200} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo marshalStats = .maxAmmo stats
scoreboard players operation .cooldown20t marshalStats = .cooldown stats
scoreboard players operation .cooldown20t marshalStats *= #20 constant
scoreboard players operation .equipTime20t marshalStats = .equipTime stats
scoreboard players operation .equipTime20t marshalStats *= #20 constant
scoreboard players operation .scopeTime20t marshalStats = .scopeTimeDecimal stats
scoreboard players operation .scopeTime20t marshalStats *= #2 constant
scoreboard players operation .ammoCooldown marshalStats = .ammoCooldown stats
scoreboard players operation @s marshalAmmo = @s marshalAmmo

item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Blade Storm","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.0,Operation:0,UUID:[I;-148160752,158592069,-137611617,-186029074],Slot:"mainhand"}],Tags:["jett","bladeStorm","rangeDamage","equipTimeDecimal","range","hitsHead","hitsHeadRangeDamageMultiplier","hitsHeadCooldown","hitsHeadTailwindCooldown","hitsLeg","hitsLegRangeDamageMultiplierDecimal","onKill","onKillAmmoGiven","ammo","maxAmmo","cooldown","ammoCooldown","actionbarAmmo"],rangeDamage:2,equipTimeDecimal:5,range:50,hitsHeadRangeDamageMultiplier:3,hitsHeadCooldown:-50,hitsHeadTailwindCooldown:-15,hitsLegRangeDamageMultiplierDecimal:5,onKillAmmoGiven:5,maxAmmo:5,cooldown:20,ammoCooldown:1,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b,Unbreakable:1b,HideFlags:47,noDrop:1,CustomModelData:1200} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo bladeStormStats = .maxAmmo stats
scoreboard players operation .cooldown20t bladeStormStats = .cooldown stats
scoreboard players operation .cooldown20t bladeStormStats *= #20 constant
scoreboard players operation .equipTime20t bladeStormStats = .equipTimeDecimal stats
scoreboard players operation .equipTime20t bladeStormStats *= #2 constant
scoreboard players operation .ammoCooldown bladeStormStats = .ammoCooldown stats
scoreboard players operation @s bladeStormAmmo = @s bladeStormAmmo


#item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Knife","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.1,Operation:1,UUID:[I;1564536785,-2056958301,-1310062890,-1359268673],Slot:"mainhand"}],Tags:["jett","knife","whenHeld","whenHeldMovementSpeedIncrease"],HideFlags:2,knife:1,whenHeldMovementSpeedIncrease:10,noDrop:1} 1
#item modify entity @s weapon.mainhand kit:description
#item modify entity @s weapon.mainhand kit:stats
#item replace block 0 0 0 container.2 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Tailwind","color":"dark_red","bold":true,"italic":false}'},Tags:["jett","tailwind","durationDecimal","distance","ammo","maxAmmo","cooldown","ammoCooldown","actionbarAmmo1Duration"],durationDecimal:25,distance:11,maxAmmo:2,cooldown:15,ammoCooldown:1,noDrop:1,CustomModelData:1206} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo tailwindStats = .maxAmmo stats
scoreboard players operation .cooldown20t tailwindStats = .cooldown stats
scoreboard players operation .cooldown20t tailwindStats *= #20 constant
scoreboard players operation .ammoCooldown tailwindStats = .ammoCooldown stats
scoreboard players operation @s tailwindAmmo = @s tailwindAmmo

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Updraft","color":"dark_red","bold":true,"italic":false}'},Tags:["jett","updraft","durationDecimal","levitation15Decimal","ammo","maxAmmo","cooldown","ammoCooldown","actionbarAmmo1Duration"],durationDecimal:85,levitation15Decimal:85,maxAmmo:3,cooldown:15,ammoCooldown:1,noDrop:1,CustomModelData:1207} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo updraftStats = .maxAmmo stats
scoreboard players operation .cooldown20t updraftStats = .cooldown stats
scoreboard players operation .cooldown20t updraftStats *= #20 constant
scoreboard players operation .ammoCooldown updraftStats = .ammoCooldown stats
scoreboard players operation @s updraftAmmo = @s updraftAmmo


item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}

