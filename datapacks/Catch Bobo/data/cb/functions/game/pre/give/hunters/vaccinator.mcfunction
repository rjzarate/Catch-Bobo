team join Hunters
tag @s remove bobo
tag @s remove teemo

attribute @s minecraft:generic.max_health base set 40
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Vaccinator\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-309427113,1527466179,-1092460856,110075039],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDhkNDU1ZDU4MDJlZDBhNTNiYWRmNjI1OGY1YzM0Zjc3YTkyYjViNDUyZWE2YjQ5NjIzZTc4ZTJiOGMzZjE3NyJ9fX0="}]}},vaccinator:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"dark_red","bold":true,"italic":false}',color:14605868},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}',color:14605868},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"dark_red","bold":true,"italic":false}',color:14605868},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1


item replace entity @s weapon.offhand with bow{display:{Name:'{"text":"Syringe Launcher","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Positive status effects (blue) ","color":"gray"},{"text":"Vaccines ","color":"dark_red","bold":true,"italic":false},{"text":"deal 0 Arrow Damage."}]']},HideFlags:5,Unbreakable:1b,Enchantments:[{}],noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Vaccine Identifier","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Identifies all ","color":"gray"},{"text":"Vaccines ","color":"dark_red","bold":true,"italic":false},{"text":"in your inventory."}]','{"text":"90s CD"}']},vaccineIdentifier:1,Enchantments:[{}],noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Unstable Concoction","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"For 20 seconds, your ","color":"gray"},{"text":"Vaccines ","color":"dark_red","bold":true,"italic":false},{"text":"leaves a lingering potion when it hits the ground."}]','[{"text":"The lingering potion is a 3-block radius and lasts for 5 seconds before dissipating.","color":"gray"}]','[{"text":"The lingering potion\'s effect duration is half of the regular ","color":"gray"},{"text":"Vaccine","color":"dark_red","bold":true,"italic":false},{"text":"."}]','{"text":"120s CD"}']},unstableConcoction:1,Enchantments:[{}],noDrop:1} 1

give @s fishing_rod{display:{Name:'{"text":"Butterfly Needle","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Hook ","color":"gray"},{"text":"Bobo ","color":"gold","bold":true,"italic":false},{"text":"to fill up "},{"text":"Blood Canister","color":"dark_red","bold":true,"italic":false},{"text":"."}]','{"text":"Hook disappears in the water.","color":"gray"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{}],butterflyNeedle:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Blood Canister","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Fills up by using ","color":"gray"},{"text":"Butterfly Needle","color":"dark_red","bold":true,"italic":false},{"text":"."}]','[{"text":"Requires 3 blood samples to activate ","color":"gray"},{"text":"Tracker","color":"dark_red","bold":true,"italic":false},{"text":"."}]','{"text":"3 Max Blood Samples"}']},bloodCanister:1,Enchantments:[{}],noDrop:1} 1

give @s compass{display:{Name:'{"text":"Voodoo Tracker","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Used to track ","color":"gray"},{"text":"Bobo","color":"gold","bold":true,"italic":false},{"text":"."}]','[{"text":"Can track ","color":"gray"},{"text":"Bobo ","color":"gold","bold":true,"italic":false},{"text":"for up to 10 seconds."}]','[{"text":"Activate by using ","color":"gray"},{"text":"Blood Canister","color":"dark_red","bold":true,"italic":false},{"text":"."}]']},LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:0,Y:0,Z:0},tracker:1,noDrop:1} 1

give @s paper{display:{Name:'{"text":"Note","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Immune to all negative status effects besides slowness.","color":"gray"}]']},Enchantments:[{}],noDrop:1} 1

scoreboard players set @s fabricationCD 15
scoreboard players set @s vIdentifier 1
scoreboard players set @s vIdentifierCD 90
scoreboard players set @s uConcoction 1
scoreboard players set @s uConcoctionCD 140
scoreboard players set @s bCanister 0
scoreboard players reset @s bNeedle

execute store result score @s UUID0 run data get entity @s UUID[0]
execute store result score @s UUID1 run data get entity @s UUID[1]
execute store result score @s UUID2 run data get entity @s UUID[2]
execute store result score @s UUID3 run data get entity @s UUID[3]