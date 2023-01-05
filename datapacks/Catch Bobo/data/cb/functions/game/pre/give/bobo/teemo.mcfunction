team join Bobo
tag @s remove bobo
tag @s add teemo

execute if score constant sHealthBH matches 60 run attribute @s minecraft:generic.max_health base set 60
execute if score constant sHealthBH matches 80 run attribute @s minecraft:generic.max_health base set 80
execute if score constant sHealthBH matches 100 run attribute @s minecraft:generic.max_health base set 100
execute if score constant sHealthBH matches 120 run attribute @s minecraft:generic.max_health base set 120
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612

effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Teemo\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-1117307397,-2059843084,-1451692502,-775514149],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2ZmQ5NzcyMjkwMGRhY2RmYTc3ZGMwODZhMGJhOTQ5MWRjM2ZjMjY4ZmZmZDAwZGJmY2JkYmQyOTRjN2VmOSJ9fX0="}]}},teemo:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"gold","bold":true,"italic":false}',color:16566643},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],teemo:1} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"gold","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],teemo:1} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"gold","bold":true,"italic":false}',color:6192150},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],teemo:1} 1

give @s crossbow{display:{Name:'{"text":"Toxic Shot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Shoots 1 poisonous arrow a second.","color":"gray"}','{"text":"Poison lasts for 3 seconds.","color":"gray"}','[{"text":"Deactivates ","color":"gray"},{"text":"Guerrilla Warfare ","color":"gold","bold":true,"italic":false},{"text":"and "},{"text":"Recall","color":"gold","bold":true,"italic":false},{"text":"."}]','{"text":"Arrow Damage: 0","color":"gray"}','{"text":"30 Max Ammo | 20s (+10 Ammo) CD"}']},HideFlags:5,Unbreakable:1b,toxicShot:1,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:19b,Amplifier:0b,Duration:60}],CustomPotionColor:8200123}},{},{}],Charged:1b,noDrop:1} 1

give @s crossbow{display:{Name:'{"text":"Blinding Dart","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Shoot a blinding arrow.","color":"gray"}','{"text":"Blindness lasts for 3 seconds.","color":"gray"}','[{"text":"Deactivates ","color":"gray"},{"text":"Guerrilla Warfare ","color":"gold","bold":true,"italic":false},{"text":"and "},{"text":"Recall","color":"gold","bold":true,"italic":false},{"text":"."}]','{"text":"Arrow Damage: 0.5","color":"gray"}','{"text":"10s CD"}']},HideFlags:5,Unbreakable:1b,blindingDart:1,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:80}],CustomPotionColor:0}},{},{}],Charged:1b,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Move Quick","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Gives speed 4 for 3 seconds.","color":"gray"}','{"text":"15s CD"}']},Enchantments:[{}],moveQuick:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Noxious Trap","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Plant a trap where you are standing.","color":"gray"}','{"text":"Must be on the ground to plant the trap.","color":"gray"}','[{"text":"Gives slowness 2 for 5 seconds and poison 1 for 3 seconds to ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"who go near it.","color":"gray"}]','[{"text":"Deactivates ","color":"gray"},{"text":"Guerrilla Warfare ","color":"gold","bold":true,"italic":false},{"text":"and "},{"text":"Recall","color":"gold","bold":true,"italic":false},{"text":"."}]','{"text":"Despawns after 60 seconds.","color":"gray"}','{"text":"6 Max | 20s CD"}']},Enchantments:[{}],noxiousTrap:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Recall","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Teleport to ","color":"gray"},{"text":"Bobo ","color":"gold","bold":true,"italic":false},{"text":"after standing still for 8 seconds.","color":"gray"}]','{"text":"Must be on the ground to teleport.","color":"gray"}','[{"text":"Deactivates ","color":"gray"},{"text":"Recall","color":"gold","bold":true,"italic":false},{"text":"."}]','{"text":"120s CD"}']},Enchantments:[{}],recall:1,noDrop:1} 1

give @s paper{display:{Name:'{"text":"Note","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Guerrilla Warfare - ","color":"gold","bold":true,"italic":false}','{"text":"Become invisible after standing still for 2 seconds.","color":"gray"}','{"text":"Must be on the ground to activate.","color":"gray"}']},Enchantments:[{}],noDrop:1} 1


scoreboard players set @s toxicShot 29
scoreboard players set @s toxicShotCD 20
scoreboard players set @s blindingDart 1
scoreboard players set @s blindingDartCD 10
scoreboard players set @s moveQuick 1
scoreboard players set @s moveQuickCD 18
scoreboard players set @s noxiousTrap 6
scoreboard players set @s noxiousTrapCD 20
scoreboard players set @s recall 1
scoreboard players set @s recallCD 128