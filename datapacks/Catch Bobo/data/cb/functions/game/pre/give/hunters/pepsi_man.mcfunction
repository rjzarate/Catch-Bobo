team join Hunters
tag @s remove bobo
tag @s remove teemo

attribute @s minecraft:generic.max_health base set 50
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.110000001639127732
effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Pepsi\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-1640295986,-1942802331,-1640295986,-1942765467],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQxYjkyNzViMDRiYTg0ZjM5ZmVmODMzNzE3MWQ4M2NjYmY5OWM0ZDc3NzViMDc5MmYwNGZjZWUyMTg5ZWJjNSJ9fX0="}]}},pepsiMan:1} 1


item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}',color:4218},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"dark_red","bold":true,"italic":false}',color:4218},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Pepsi Punch","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}','{"text":"3 melee attack damage, 1.75 attack speed.","color":"gray"}','{"text":"Knockback 2.","color":"gray"}','{"text":""}','{"text":"Pepsi Smash","color":"dark_red","bold":true,"italic":false}','{"text":"+2 melee damage, +2 Knockback for your next punch.","color":"gray"}','{"text":"Lasts for 5 seconds or when you deal damage.","color":"gray"}','{"text":"60s CD"}']},HideFlags:7,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;466701147,780551195,-2125874679,504454309],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.25,Operation:0,UUID:[I;1280991582,1458323653,-2083327653,-906345462],Slot:"mainhand"}],Enchantments:[{id:"minecraft:knockback",lvl:2s}],pepsiSmash:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Pepsi Splash","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"All players in a 7-block range are affected with instant damage 1 (3 Hearts).","color":"gray"}','{"text":"All other players in range get weakness 2 for 5 seconds.","color":"gray"}','{"text":"90s CD"}']},HideFlags:2,Enchantments:[{}],pepsiSplash:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"PEPSI","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"For 20 seconds:","color":"gray"}','{"text":"Speed 5","color":"gray"}','{"text":"Jump boost 5","color":"gray"}','{"text":"Resistance 5 (take no damage)","color":"gray"}','{"text":"Weakness 5 (deal no damage)","color":"gray"}','{"text":"No natural regeneration.","color":"gray"}','{"text":"150s CD"}']},HideFlags:2,Enchantments:[{}],pepsi:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Pepsi Creation","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Give yourself a ","color":"gray"},{"text":"Pepsi Can ","color":"dark_red","bold":true,"italic":false},{"text":"if you do not have one in your inventory."}]','[{"text":"If you already have a ","color":"gray"},{"text":"Pepsi Can","color":"dark_red","bold":true,"italic":false},{"text":", it will give it to the nearest "},{"text":"Hunter ","color":"dark_red","bold":true,"italic":false},{"text":"who does not have one."}]','[{"text":"Pepsi Can ","color":"dark_red","bold":true,"italic":false},{"text":"gives speed 1 and regeneration 1 for 15 seconds.","color":"gray","bold":false,"italic":true}]','{"text":"2 Max Ammo | 90s (+1 Ammo) CD"}']},HideFlags:2,Enchantments:[{}],pepsiCreation:1,noDrop:1} 1

give @s paper{display:{Name:'{"text":"Note","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"+10% movement speed.","color":"gray"}']},Enchantments:[{}],noDrop:1} 1

scoreboard players set @s pepsiSmash 1
scoreboard players set @s pepsiSmashCD 65
scoreboard players reset @s pepsiSmashD
scoreboard players set @s pepsiSplash 1
scoreboard players set @s pepsiSplashCD 95
scoreboard players set @s pepsi 1
scoreboard players set @s pepsiCD 170
scoreboard players set @s pepsiCreation 2
scoreboard players set @s pepsiCreationCD 90
scoreboard players set @a pepsiNoCan 1
clear @a minecraft:warped_fungus_on_a_stick{pepsiCan:1}

