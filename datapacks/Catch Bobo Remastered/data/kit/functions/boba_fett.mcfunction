function general:clear_modifiers
function general:clear_tags
tag @s add hunter
tag @s add bobaFett
team join Hunters @s
clear @s

attribute @s minecraft:generic.max_health base set 26
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability reset
function general:clear_abilities
scoreboard players set @s ee-3Ammo 30
scoreboard players set @s flamethrowerAmmo 50
scoreboard players set @s jetpackFuelAmmo 2
scoreboard players set @s jetpackFuel 200
scoreboard players set @s jetpackFuelSlot 4

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Boba Fett\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-129991706,-433108740,-1159077856,-1067427257],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWMxMzM5ZWY4NWMwNDVlZTQ1MjA0NDkwMTE3Yzk0MjU1YmVlZTkwNWU3MmEzYWUzMjZiMWMxOTEzYWY1ZmNhOCJ9fX0="}]}},HideFlags:71,bobaFett:1} 1
item replace entity @s armor.chest with elytra{display:{Name:'{"text":"Jetpack","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Mandalorian Armor","color":"dark_red","bold":true,"italic":false}',color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Mandalorian Armor","color":"dark_red","bold":true,"italic":false}',color:3617329},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71} 1



item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"EE-3","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["bobaFett","ee-3","auto","rangeDamage","burstFire","range","fireRate","ammo","maxAmmo","cooldown","ammoCooldown","actionbarSpecial","actionbarBobaFettAmmo"],rangeDamage:2,burstFire:3,fireRate:100,range:24,maxAmmo:30,cooldown:25,ammoCooldown:9,noDrop:1,CustomModelData:1400} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo ee-3Stats = .maxAmmo stats
scoreboard players operation .cooldown20t ee-3Stats = .cooldown stats
scoreboard players operation .cooldown20t ee-3Stats *= #20 constant
scoreboard players operation .ammoCooldown ee-3Stats = .ammoCooldown stats
scoreboard players operation #fireRate ee-3Stats = #2000 constant 
scoreboard players operation #fireRate ee-3Stats /= .fireRate stats
scoreboard players operation .fireRate ee-3Stats = #fireRate ee-3Stats
scoreboard players operation @s ee-3Ammo = @s ee-3Ammo


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Flamethrower","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["bobaFett","flamethrower","altDamage","auto","flame","range","chargeDelayDecimal","fireRate","activationRequirement","noFlying","ammo","maxAmmo","cooldown","ammoCooldown","actionbarSpecial","actionbarBobaFettAmmo"],altDamage:5,flame:5,range:3,chargeDelayDecimal:5,fireRate:1000,maxAmmo:50,cooldown:10,ammoCooldown:5,noDrop:1,CustomModelData:1401} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo flamethrowerStats = .maxAmmo stats
scoreboard players operation .cooldown20t flamethrowerStats = .cooldown stats
scoreboard players operation .cooldown20t flamethrowerStats *= #20 constant
scoreboard players operation .ammoCooldown flamethrowerStats = .ammoCooldown stats
scoreboard players operation .chargeDelay flamethrowerStats = .chargeDelayDecimal stats
scoreboard players operation .chargeDelay flamethrowerStats *= #2 constant
scoreboard players operation #fireRate flamethrowerStats = #2000 constant 
scoreboard players operation #fireRate flamethrowerStats /= .fireRate stats
scoreboard players operation .fireRate flamethrowerStats = #fireRate flamethrowerStats
scoreboard players operation @s flamethrowerAmmo = @s flamethrowerAmmo

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Concussion Rocket","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["bobaFett","concussionRocket","blindness","darkness","slowness3","radius","range","cooldown","actionbarSpecial","actionbarBobaFettRegular"],blindness:6,darkness:3,slowness3:3,burstFire:4,radius:3,range:40,cooldown:75,noDrop:1,CustomModelData:1402} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .radius concussionRocketStats = .radius stats
scoreboard players operation .blindness20t concussionRocketStats = .blindness stats
scoreboard players operation .darkness20t concussionRocketStats = .darkness stats
scoreboard players operation .slowness320t concussionRocketStats = .slowness3 stats
scoreboard players operation .blindness20t concussionRocketStats *= #20 constant
scoreboard players operation .darkness20t concussionRocketStats *= #20 constant
scoreboard players operation .slowness320t concussionRocketStats *= #20 constant

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["bobaFett","rocketBarrage","damage","burstFire","radius","explosion","range","cooldown","actionbarSpecial","actionbarBobaFettRegular"],damage:3,burstFire:4,radius:2,explosion:1,range:40,cooldown:100,noDrop:1,CustomModelData:1403} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .radius rocketBarrageStats = .radius stats

item replace entity @s weapon.mainhand with firework_rocket{display:{Name:'{"text":"Jetpack Nitro","color":"dark_red","bold":true,"italic":false}'},Fireworks:{Flight:0.001b},Enchantments:[{}],Tags:["bobaFett","jetpackFuel","ammo","maxAmmo","cooldown","ammoCooldown"],maxAmmo:2,cooldown:50,ammoCooldown:1,killOnDrop:1,CustomModelData:1403} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.4 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .maxAmmo jetpackFuelStats = .maxAmmo stats
scoreboard players set .maxAmmo1 jetpackFuelStats 200
scoreboard players operation .cooldown20t jetpackFuelStats = .cooldown stats
scoreboard players operation .cooldown20t jetpackFuelStats *= #20 constant
scoreboard players operation .ammoCooldown jetpackFuelStats = .ammoCooldown stats
scoreboard players operation @s jetpackFuelAmmo = @s jetpackFuelAmmo
data modify storage minecraft:boba_fett jetpackFuel set from entity @s SelectedItem

item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}

#give @s warped_fungus_on_a_stick{display:{Name:'{"text":"EE-3","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}]','[{"text":"3-round arrow burst.","color":"gray"}]','{"text":"Arrow Damage: 0.75","color":"gray"}','{"text":"60 Max Ammo | 90s (+12 Ammo) CD"}']},HideFlags:2,ee-3:1,Enchantments:[{}],noDrop:1} 1

#give @s ender_eye{display:{Name:'{"text":"Flamethrower","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}]','[{"text":"0.5 charge speed.","color":"gray"}]','[{"text":"Deals damage and lights players on fire.","color":"gray"}]','[{"text":"Goes through players.","color":"gray"}]','[{"text":"4-block range.","color":"gray"}]','{"text":"150 Max Ammo | 90s (+30 Ammo) CD"}']},HideFlags:2,flamethrower:1,Enchantments:[{}],noDrop:1} 1

#give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Concussion Rocket","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Shoot a rocket that gives slowness 4 and blindness for 5 seconds after exploding.","color":"gray"}]','[{"text":"5-block explosion radius.","color":"gray"}]','[{"text":"Travels 20 block a second.","color":"gray"}]','{"text":"120s CD"}']},HideFlags:2,concussionRocket:1,Enchantments:[{}],noDrop:1} 1

#give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Shoots 9 rockets in 2 seconds.","color":"gray"}]','[{"text":"Explosion Size: 1 (6 explosions)","color":"gray"}]','[{"text":"Travels 20 block a second.","color":"gray"}]','{"text":"150s CD"}']},HideFlags:2,rocketBarrage:1,Enchantments:[{}],noDrop:1} 1

#give @s firework_rocket{display:{Name:'{"text":"Jetpack Fuel","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Cooldown recharges on when you are on the ground.","color":"gray"}]','{"text":"3 Max Fuel/60s CD"}']},noDrop:1,Enchantments:[{}],Fireworks:{Flight:0.001b}} 3

#give @s paper{display:{Name:'{"text":"Note","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"You have an elytra.","color":"gray"}']},Enchantments:[{}],noDrop:1} 1