function general:clear_modifiers
function general:clear_tags
tag @s add orangutan
tag @s add bobo
team join Orangutans @s
clear @s

#base attributes
attribute @s minecraft:generic.max_health base set 80
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability resets
function general:clear_abilities
scoreboard players reset @s jackfruitJumper
scoreboard players set @s blindingBlueberryDurianDecoyCD 0
scoreboard players set @s guavaGrenadeHotPotatoPlanterAmmo 3
scoreboard players reset @s guavaGrenadeHotPotatoPlanterCD
scoreboard players set @s starfruitSwapperTangerineTeleporter 1

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Bobo\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1571403990,1660439100,-2108560740,2139713089],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTEyYzQzNzI2NTMwMGYzMjRkZDBlZWNhNzM0ODQ5MWVjYzc4ZmY3MTJkNTcyNDFlOTg3ZmFlNjMzMjAzYmU1ZSJ9fX0="}]}},HideFlags:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Bobo\'s Fur","color":"gold","bold":true,"italic":false}',color:16755760},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Bobo\'s Hair","color":"gold","bold":true,"italic":false}',color:16755760},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Bobo\'s Toes","color":"gold","bold":true,"italic":false}',color:16755760},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71} 1

item replace entity @s weapon.mainhand with golden_sword{display:{Name:'{"text":"Banana Blade","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;190130304,230834513,-1574329895,1858188887],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-806640084,2140751192,-1552421101,1526961838],Slot:"mainhand"}],Tags:["bobo","bananaBlade","meleeDamage","attackSpeed","attackSpeedOnKill","maxAttackSpeed"],CustomModelData:1,HideFlags:6,Unbreakable:1b,meleeDamage:6,attackSpeed:160,attackSpeedOnKill:30,maxAttackSpeed:250,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Honeydew Hopper","color":"gold","bold":true,"italic":false}'},Tags:["bobo","jackfruitJumper","jumpBoostX","cooldown","actionbarActive"],CustomModelData:11,cooldown:5,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Blinding Blueberry","color":"gold","bold":true,"italic":false}'},Tags:["bobo","blindingBlueberry","duration","blindness","slowness1","range","uponDrop","cooldown","actionbarDuration"],CustomModelData:2,blindingBlueberry:1,duration:5,blindness:5,slowness1:5,range:10,cooldown:100} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Guava Grenade","color":"gold","bold":true,"italic":false}'},Tags:["bobo","guavaGrenade","explosion","fuse","ammo","maxAmmo","fireRate","range","uponDrop","cooldown","ammoCooldown","actionbarAmmo"],CustomModelData:4,guavaGrenade:1,explosion:3,fuse:25,fireRate:100,range:15,maxAmmo:3,cooldown:50,ammoCooldown:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo guavaGrenadeHotPotatoPlanterStats = .maxAmmo stats
scoreboard players operation .cooldown20t guavaGrenadeHotPotatoPlanterStats = .cooldown stats
scoreboard players operation .cooldown20t guavaGrenadeHotPotatoPlanterStats *= #20 constant
scoreboard players operation .ammoCooldown guavaGrenadeHotPotatoPlanterStats = .ammoCooldown stats
scoreboard players operation @s guavaGrenadeHotPotatoPlanterAmmo = @s guavaGrenadeHotPotatoPlanterAmmo
scoreboard players set .fuse hotPotatoPlanterFuse 100
scoreboard players operation .number hotPotatoPlanterFuse = .number hotPotatoPlanterFuse

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Starfruit Swapper","color":"gold","bold":true,"italic":false}'},Tags:["bobo","starfruitSwapper","hunterEffects","resistance2","fireResistance","activationRequirement","onGround","onNoLava","uponDrop","killCooldown","actionbarOnDeath"],CustomModelData:6,starfruitSwapper:1,resistance2:4,fireResistance:8} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.4 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with enchanted_golden_apple{display:{Name:'{"text":"Notch Apple","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;190130304,230834513,-1574329895,1858188887],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.0,Operation:0,UUID:[I;-806640084,2140751192,-1552421101,1526961838],Slot:"mainhand"}],Tags:["bobo","enchantedGoldenApple","noActionbar","meleeDamage","attackSpeed","knockback","onConsumptionStrength1","onConsumptionRegeneration2","onConsumption","onConsumptionAbsorption4","onConsumptionSpeed2","onConsumptionResistance1","onConsumptionFireResistance"],HideFlags:3,meleeDamage:2,knockback:3,attackSpeed:200,onConsumptionStrength1:30,onConsumptionRegeneration2:30,onConsumptionAbsorption4:120,onConsumptionSpeed2:30,onConsumptionResistance1:120,onConsumptionFireResistance:60,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.8 from entity @s weapon.mainhand

item replace block 0 0 0 container.5 with minecraft:paper{Tags:["filler"],filler:1}
item replace block 0 0 0 container.6 with minecraft:paper{Tags:["filler"],filler:2}
item replace block 0 0 0 container.7 with minecraft:paper{Tags:["filler"],filler:3}

item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}