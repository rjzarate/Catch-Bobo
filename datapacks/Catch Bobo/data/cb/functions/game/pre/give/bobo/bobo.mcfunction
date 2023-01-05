team join Bobo
tag @s add bobo
tag @s remove teemo
execute if score constant sHealthB matches 60 run attribute @s minecraft:generic.max_health base set 60
execute if score constant sHealthB matches 80 run attribute @s minecraft:generic.max_health base set 80
execute if score constant sHealthB matches 100 run attribute @s minecraft:generic.max_health base set 100
execute if score constant sHealthB matches 120 run attribute @s minecraft:generic.max_health base set 120
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612

effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Bobo\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1571403990,1660439100,-2108560740,2139713089],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTEyYzQzNzI2NTMwMGYzMjRkZDBlZWNhNzM0ODQ5MWVjYzc4ZmY3MTJkNTcyNDFlOTg3ZmFlNjMzMjAzYmU1ZSJ9fX0="}]}},bobo:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"gold","bold":true,"italic":false}',color:16755760},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"gold","bold":true,"italic":false}',color:16755760},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"gold","bold":true,"italic":false}',color:16755760},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

give @s golden_sword{display:{Name:'{"text":"Banana Blade","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}','{"text":"6 melee attack damage, 1.6 attack speed.","color":"gray"}']},HideFlags:6,Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;190130304,230834513,-1574329895,1858188887],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-806640084,2140751192,-1552421101,1526961838],Slot:"mainhand"}],noDrop:1} 1

give @s enchanted_golden_apple{display:{Name:'{"text":"Enchanted Golden Apple","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:3s}],noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Jackfruit Jumper","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Gives jump boost 5, allowing you to jump 5 blocks high.","color":"gray"}','{"text":"Can be activated and deactivated.","color":"gray"}','{"text":"No CD"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{}],jackfruitJumper:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Blinding Blueberry","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Blinds all ","color":"gray"},{"text":"Hunters","color":"dark_red","bold":true,"italic":false},{"text":" in a 9-block radius for 5 seconds.","color":"gray"}]','{"text":"150s CD"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{}],HideFlags:4,Unbreakable:1b,blindingBlueberry:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Durian Decoy","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Creates a decoy where you are.","color":"gray"}','{"text":"If you are glowing, it gives the decoy the glowing effect.","color":"gray"}','{"text":"Removes the glowing effect.","color":"gray"}','{"text":"Turns you invisible and get speed 5 for 5 seconds.","color":"gray"}','{"text":"You cannot deal melee damage for 5 seconds.","color":"gray"}','{"text":"Decoy despawns after 10 seconds.","color":"gray"}','{"text":"150s CD"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{}],durianDecoy:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Guava Grenade","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Lob a guava that explodes after 3 seconds.","color":"gray"}','[{"text":"Explosion Size: 3","color":"gray"}]','{"text":"3 Max Ammo/150s (+3 Ammo) CD"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{}],guavaGrenade:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Hot Potato Planter","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Plants a ","color":"gray"},{"text":"Hot Potato ","color":"gold","bold":true,"italic":false},{"text":"on the ground."}]','[{"text":"If a ","color":"gray"},{"text":"Hunter ","color":"dark_red","bold":true,"italic":false},{"text":"picks it up, all other "},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"gets a "},{"text":"Hot Potato","color":"gold","bold":true,"italic":false},{"text":"."}]','[{"text":"Then, all ","color":"gray"},{"text":"Hot Potatos ","color":"gold","bold":true,"italic":false},{"text":"explode after 7 seconds."}]','[{"text":"Explosion Size: 2","color":"gray"}]','{"text":"60s CD"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{}],hotPotato:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Starfruit Swapper","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Swaps you and another ","color":"gray"},{"text":"Hunter","color":"dark_red","bold":true,"italic":false},{"text":"\'s position.","color":"gray"}]','[{"text":"The swapped ","color":"gray"},{"text":"Hunter ","color":"dark_red","bold":true,"italic":false},{"text":"is affected with resistance 3 for 4 seconds.","color":"gray"}]','[{"text":"The swapped ","color":"gray"},{"text":"Hunter ","color":"dark_red","bold":true,"italic":false},{"text":"is affected with fire resistance for 10 seconds.","color":"gray"}]','{"text":"Can only swap when on the ground.","color":"gray"}','{"text":"Cannot swap when in lava.","color":"gray"}','{"text":"150s CD"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{}],starfruitSwapper:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Tangerine Teleporter","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Instantly teleports you randomly in the map.","color":"gray"}','{"text":"Get blindness for 1 second.","color":"gray"}','{"text":"Kill recharges its ability"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{}],tangerineTeleporter:1,noDrop:1} 1



scoreboard players set @s jJ 0
scoreboard players set @s sS 1
scoreboard players set @s sSCD 150
scoreboard players set @s bB 1
scoreboard players set @s bBCD 150
scoreboard players set @s dD 1
scoreboard players set @s dDCD 155
scoreboard players set @s gG 3
scoreboard players set @s gGCD 153
scoreboard players set @s hP 1
scoreboard players set @s hPCD 60
scoreboard players set @s tT 1