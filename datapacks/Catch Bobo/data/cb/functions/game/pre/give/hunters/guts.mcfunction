team join Hunters
tag @s remove bobo
tag @s remove teemo

attribute @s minecraft:generic.max_health base set 50
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Gut\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-200688065,-724679753,-1905987168,1320176033],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjU3ZmFkM2Y0MmZkMTMwZWUxM2U1NDlkNDlmODIyZDViMDFmNjE5MTE4YjNhMDU5ZGU4ZDQzODc4MWU0ZTRkZSJ9fX0="}]}},guts:1} 1

item replace entity @s armor.chest with iron_chestplate{display:{Name:'{"text":"Iron Chestplate","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with iron_boots{display:{Name:'{"text":"Iron Boots","color":"dark_red","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

give @s netherite_sword{CustomModelData:69,display:{Name:'{"text":"Dragonslayer","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"6 melee attack damage, 1.6 attack speed.","color":"gray"}']},HideFlags:6,Unbreakable:1b,dragonslayer:1,Enchantments:[{id:"minecraft:sweeping",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-581170679,1528515858,-1693798796,1004648571],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1932846192,-1409859432,-2006948179,-349684386],Slot:"mainhand"}],noDrop:1} 1

item replace entity @s weapon.offhand with crossbow{display:{Name:'{"text":"Repeater Crossbow","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Shoots 1 arrow a second.","color":"gray"}','{"text":"Arrow Damage: 0.5","color":"gray"}','{"text":"20 Max Ammo | 60s (+5 Ammo) CD"}']},HideFlags:5,Unbreakable:1b,repeaterCrossbow:1,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:27b,Amplifier:0b,Duration:1}],CustomPotionColor:0}},{},{}],Charged:1b,noDrop:1} 1

give @s crossbow{display:{Name:'{"text":"Cannon Arm","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"A rocket that deals X damage.","color":"gray"}','{"text":"120s CD"}']},HideFlags:37,Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]}]}}},{},{}],Charged:1b,cannonArm:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Berserker Armor","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"+17 armor, +9 armor toughness, and +3 knockback resistance for 30 seconds.","color":"gray","italic":true}','{"text":"Resistance 5 (take no damage) for 30 seconds.","color":"gray","italic":true}','{"text":"After 30 seconds, you take the damage you have took 30 seconds ago.","color":"gray","italic":true}','{"text":"90s CD"}']},berserkerArmor:1,Enchantments:[{}],noDrop:1} 1

give @s paper{display:{Name:'{"text":"Note","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"When you\'re the last player alive, +2 melee damage.","color":"gray"}']},Enchantments:[{}],noDrop:1} 1

scoreboard players set @s berserkerArmor 1
scoreboard players set @s berserkerArmorCD 120
scoreboard players set @s rCrossbow 19
scoreboard players set @s rCrossbowCD 60
scoreboard players set @s cannonArm 1
scoreboard players set @s cannonArmCD 120
scoreboard players reset @s lastPlayer