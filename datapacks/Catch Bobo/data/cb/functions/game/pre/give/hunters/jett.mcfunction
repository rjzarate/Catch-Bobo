team join Hunters
tag @s remove bobo
tag @s remove teemo

attribute @s minecraft:generic.max_health base set 40
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Jett\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;953686283,-654495105,-1193797365,-654462337],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTIwYjkwYWE5N2Q0NDBjMDY2MzNjODNlNTI5NTYzMmU2ODVhMDVlYTQyOTRiMjY1NGEzZWZiNGFjNjUyN2Y3MiJ9fX0="}]}},jett:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"dark_red","bold":true,"italic":false}',color:6790568},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}',color:855309},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"dark_red","bold":true,"italic":false}',color:9820349},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

give @s spyglass{display:{Name:'{"text":"Marshal","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}]','[{"text":"0.5s aim speed. -25% movement speed.","color":"gray"}]','[{"text":"Can wallbang most transparent blocks and shoot through players.","color":"gray"}]','[{"text":"Increased damage to the head.","color":"gray"}]','[{"text":"Switch to ","color":"gray"},{"text":"Knife ","color":"dark_red","bold":true,"italic":false},{"text":"to shoot."}]','{"text":"15 Max Ammo | 90s (+5 Ammo) CD"}']},HideFlags:2,marshal:1,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.25,Operation:1,UUID:[I;-975728269,-806139794,-1674052178,1199486698],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.25,Operation:1,UUID:[I;-1111668909,214584763,-2110549876,-2063234987],Slot:"offhand"}],noDrop:1} 1

give @s crossbow{display:{Name:'{"text":"Blade Storm","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}]','{"text":"Shoot up to 4 arrows a second.","color":"gray","italic":true}','{"text":"Arrow Damage: 2","color":"gray"}','{"text":"5 Max Ammo | 60s (+5 Ammo) CD"}']},HideFlags:5,Unbreakable:1b,bladeStorm:1,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b,noDrop:1} 1

give @s end_rod{display:{Name:'{"text":"Knife","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}','{"text":"+10% movement speed.","color":"gray"}','[{"text":"Used to shoot the ","color":"gray"},{"text":"Marshal","color":"dark_red","bold":true,"italic":false},{"text":"."}]']},HideFlags:2,knife:1,noDrop:1,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.1,Operation:1,UUID:[I;1564536785,-2056958301,-1310062890,-1359268673],Slot:"mainhand"}]} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Tailwind","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Dash around 11 blocks foward.","color":"gray","italic":true}','{"text":"1 Max Charge | 30s CD"}']},dash:1,Enchantments:[{}],noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Updraft","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Launch 10 blocks in the air.","color":"gray","italic":true}','{"text":"2 Max Charges | 30s CD"}']},updraft:1,Enchantments:[{}],noDrop:1} 1

give @s paper{display:{Name:'{"text":"Note","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Hold crouch to glide.","color":"gray"}']},Enchantments:[{}],noDrop:1} 1

scoreboard players set @s marshal1 0
scoreboard players set @s marshal2 0
scoreboard players set @s marshal3 0
scoreboard players set @s marshal 15
scoreboard players set @s bladeStorm 5
scoreboard players set @s dash 1
scoreboard players set @s updraft 2
scoreboard players set @s marshalCD 90
scoreboard players set @s bladeStormCD 60
scoreboard players set @s dashCD 30
scoreboard players set @s updraftCD 30
scoreboard players reset @s marshalMessage
advancement revoke @s from cb:marshal