team join Hunters
tag @s remove bobo
tag @s remove teemo

attribute @s minecraft:generic.max_health base set 50
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Jotaro\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;2068211646,1582647829,-2079927472,2054612067],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjZjMmFiMDcwNTY1YzQyYzdlMTFkY2I5YjkyZjlmNDc4YTI0ZjFkYmNkOTdkZWQ3ZWZmZjA0YzY3MWRjMjYyOSJ9fX0="}]}},jotaro:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:0},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:0},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"School Uniform","color":"dark_red","bold":true,"italic":false}',color:0},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

give @s diamond_boots{display:{Name:'{"text":"Star Platinum","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}','{"text":"5 melee attack damage, 2 attack speed.","color":"gray"}']},HideFlags:6,Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;941097204,1416514812,-1781051719,310661318],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;-1481760752,1585925069,-1376131617,-1860209074],Slot:"mainhand"}],noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Time Stop","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Everyone but you freezes for 5 seconds.","color":"gray","italic":true}','{"text":"-1 melee attack damage when active.","color":"gray","italic":true}','{"text":"When deactivated, you take 3 hearts of damage, weakness 1 and blindness for 5 seconds.","color":"gray","italic":true}','{"text":"120s CD"}']},Enchantments:[{}],timeStop:1,noDrop:1} 1


give @s warped_fungus_on_a_stick{display:{Name:'{"text":"ORA ORA ORA ORA ORA ORA ORA ORA ORA ORA ORA ORA ORA ORA ORA ORA ORA ORA","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"+9001% increased attack speed for 10 seconds.","color":"gray","italic":true}','{"text":"90s CD"}']},Enchantments:[{}],ora:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Star Finger","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Hyper-accurate poke that reaches up to 9 blocks.","color":"gray","italic":true}','{"text":"Blinds and wither\'s target for 4 seconds.","color":"gray","italic":true}','{"text":"90s CD"}']},Enchantments:[{}],starFinger:1,noDrop:1} 1

scoreboard players set @s timeStop 1
scoreboard players set @s ora 1
scoreboard players set @s starFinger 1
scoreboard players set @s timeStopCD 125
scoreboard players set @s oraCD 100
scoreboard players set @s starFingerCD 90

execute store result score @s UUID0 run data get entity @s UUID[0]
execute store result score @s UUID1 run data get entity @s UUID[1]
execute store result score @s UUID2 run data get entity @s UUID[2]
execute store result score @s UUID3 run data get entity @s UUID[3]
execute at @e[type=husk,tag=starPlatinum] if score @s UUID0 = @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] Owner3 as @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] run kill @s
execute at @s run summon husk ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Team:"noCollide",PersistenceRequired:1b,NoAI:1b,Tags:["starPlatinum","noDamage","noTimeStop"],CustomName:'{"text":"Star Platinum","color":"dark_red","bold":true,"italic":false}'}

execute at @s store result score @e[type=minecraft:husk,limit=1,sort=nearest,tag=starPlatinum] Owner0 run scoreboard players get @s UUID0
execute at @s store result score @e[type=minecraft:husk,limit=1,sort=nearest,tag=starPlatinum] Owner1 run scoreboard players get @s UUID1
execute at @s store result score @e[type=minecraft:husk,limit=1,sort=nearest,tag=starPlatinum] Owner2 run scoreboard players get @s UUID2
execute at @s store result score @e[type=minecraft:husk,limit=1,sort=nearest,tag=starPlatinum] Owner3 run scoreboard players get @s UUID3