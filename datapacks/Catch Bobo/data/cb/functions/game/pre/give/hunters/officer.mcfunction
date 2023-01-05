team join Hunters
tag @s remove bobo
tag @s remove teemo

attribute @s minecraft:generic.max_health base set 40
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Officer\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1106695392,-1843900452,-2124044537,1768199769],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTExNzg2N2I5ZDhhYmRkYTZkM2FhZDcyNmI1MDQ3YWY0OWQ4NTQ3MmQ0YWNhMTBjZDk2NjFmMGZhY2ExMjFmZCJ9fX0="}]}},officer:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"dark_red","bold":true,"italic":false}',color:1520455},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}',color:3555398},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"dark_red","bold":true,"italic":false}',color:2565927},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

give @s stick{display:{Name:'{"text":"Nightstick","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"4 melee damage, 1.5 attack speed.","color":"gray"}]','[{"text":"-0.5 attack speed if your ","color":"gray"},{"text":"Dog ","color":"dark_red","bold":true,"italic":false},{"text":"is died."}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;466701147,780551195,-2125874679,504454309],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.5,Operation:0,UUID:[I;1280991582,1458323653,-2083327653,-906345462],Slot:"mainhand"}],HideFlags:2,Enchantments:[{}],noDrop:1} 1

give @s spyglass{display:{Name:'{"text":"Spyglass","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"0.5s aim speed.","color":"gray"}]','[{"text":"Gives glowing for 3 seconds to ","color":"gray"},{"text":"Bobo ","color":"gold","bold":true,"italic":false},{"text":"when seen."}]','[{"text":"Spyglass ","color":"dark_red","bold":true,"italic":false},{"text":"must be pointed on ","color":"gray","bold":false,"italic":true},{"text":"Bobo ","color":"gold","bold":true,"italic":false},{"text":"for 2 seconds to give the effect.","color":"gray","bold":false,"italic":true}]']},HideFlags:2,spyglass:1,Enchantments:[{}],noDrop:1} 1

#give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Command: Stand/Sit","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Makes your ","color":"gray"},{"text":"Dog ","color":"dark_red","bold":true,"italic":false},{"text":"sit and stand wherever."}]','{"text":"No CD"}']},HideFlags:2,Enchantments:[{}],sit:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Command: Good Dog","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"+1 melee damage to your ","color":"gray"},{"text":"Dog","color":"dark_red","bold":true,"italic":false},{"text":"."}]','[{"text":"Damage resets when your ","color":"gray"},{"text":"Dog ","color":"dark_red","bold":true,"italic":false},{"text":"dies."}]','{"text":"6 Max/60s CD"}']},HideFlags:2,Enchantments:[{}],goodDog:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Command: Smell","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Tells you the distance between your ","color":"gray"},{"text":"Dog ","color":"dark_red","bold":true,"italic":false},{"text":"and "},{"text":"Bobo ","color":"gold","bold":true,"italic":false},{"text":"from 0 to 200 blocks."}]','{"text":"Rounds the 2nd digit.","color":"gray"}','{"text":"90s CD"}']},HideFlags:2,Enchantments:[{}],smell:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Command: Sonic Howl","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"All players get slowness 4 and weakness 1 for 10 seconds.","color":"gray"}]','{"text":"120s CD"}']},HideFlags:2,Enchantments:[{}],sonicHowl:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Touch Stone","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Revives your ","color":"gray"},{"text":"Dog ","color":"dark_red","bold":true,"italic":false},{"text":"if it died."}]','{"text":"150s CD"}']},Enchantments:[{}],touchStone:1,noDrop:1} 1

give @s paper{display:{Name:'{"text":"Note","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Dog - ","color":"dark_red","bold":true,"italic":false}','{"text":"10 Hearts","color":"gray"}','{"text":"10 Armor","color":"gray"}','{"text":"5 attack damage","color":"gray"}','{"text":"Regenerates half a heart a second when sitting.","color":"gray"}']},Enchantments:[{}],noDrop:1} 1

scoreboard players set @s dogAlive 1
scoreboard players set @s spyglass1 0
scoreboard players set @s spyglass2 0
scoreboard players set @s spyglass3 0
scoreboard players set @s sit 0
scoreboard players set @s goodDog 1
scoreboard players set @s goodDogCD 60
scoreboard players set @s smell 1
scoreboard players set @s smellCD 90
scoreboard players set @s sonicHowl 1
scoreboard players set @s sonicHowlCD 130
scoreboard players set @s touchStone 0
scoreboard players set @s touchStoneCD 150
advancement revoke @s from cb:spyglass

execute store result score @s UUID0 run data get entity @s UUID[0]
execute store result score @s UUID1 run data get entity @s UUID[1]
execute store result score @s UUID2 run data get entity @s UUID[2]
execute store result score @s UUID3 run data get entity @s UUID[3]


execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run kill @s
execute at @s run summon wolf ~ ~ ~ {Team:"Hunters",Health:20f,Owner:[I;0,0,0,0],Tags:["dog"],CustomName:'{"text":"Dog","color":"dark_red","bold":true,"italic":false}',Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.45},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:10}]}

execute at @s store result score @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner0 run scoreboard players get @s UUID0
execute at @s store result score @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner1 run scoreboard players get @s UUID1
execute at @s store result score @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner2 run scoreboard players get @s UUID2
execute at @s store result score @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner3 run scoreboard players get @s UUID3




execute at @s run data modify entity @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner set from entity @s UUID
