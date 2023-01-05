team join Bobo
tag @s remove bobo
tag @s remove teemo

execute if score constant sHealthBH matches 60 run attribute @s minecraft:generic.max_health base set 60
execute if score constant sHealthBH matches 80 run attribute @s minecraft:generic.max_health base set 80
execute if score constant sHealthBH matches 100 run attribute @s minecraft:generic.max_health base set 100
execute if score constant sHealthBH matches 120 run attribute @s minecraft:generic.max_health base set 120
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612

effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Imposter\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-1898841623,696667718,-1525750779,1174439044],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdkNWViMGFlYTVkNjFiYTNmZjQ5OTY0MTZhOTAwOTZhOWQ3NzYwOWViY2QzYjMwOGY5MDZhZTg4OGE0NWY2ZCJ9fX0="}]}},impostor:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"gold","bold":true,"italic":false}',color:16711680},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],teemo:1} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"gold","bold":true,"italic":false}',color:16711680},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],teemo:1} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"gold","bold":true,"italic":false}',color:16711680},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],teemo:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Kill","color":"gold","bold":true,"italic":false}',Lore:['{"text":"4-block range.","color":"gray"}','[{"text":"Teleport to a ","color":"gray"},{"text":"Hunter ","color":"dark_red","bold":true,"italic":false},{"text":"and stun them indefinitely.","color":"gray"}]','[{"text":"Cannot stun ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"with resistance 5.","color":"gray"}]','{"text":"Stun players cannot see, take damage, get potion effects, or deal damage.","color":"gray"}','{"text":"Stunned players can still move, but have slowness 5.","color":"gray"}','{"text":"Stunned players can get unstunned if another player crouches next to them.","color":"gray"}','{"text":"120s CD"}']},Enchantments:[{}],kill:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Report Body","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Teleport all ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"and yourself in the Emergency Meeting Room.","color":"gray"}]','{"text":"Players in the room are stuck for 10 seconds.","color":"gray"}','[{"text":"Sabotages ","color":"gold","bold":true,"italic":false},{"text":"will not be active during that time.","color":"gray","bold":false,"italic":true}]','{"text":"After 10 seconds, all players are released.","color":"gray"}','{"text":"After 10 seconds, you will teleport back to where you were.","color":"gray"}','{"text":"Requires a nearby stunned player to activate.","color":"gray"}','{"text":"300s CD"}']},Enchantments:[{}],emergencyMeeting:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Vent","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"When near your ","color":"gray"},{"text":"Blue/Red Vent","color":"gold","bold":true,"italic":false},{"text":", teleport to your other same color ","color":"gray"},{"text":"Vent ","color":"gold","bold":true,"italic":false},{"text":"on the map.","color":"gray"}]','[{"text":"Must be near your ","color":"gray"},{"text":"Blue/Red Vent ","color":"gold","bold":true,"italic":false},{"text":"to activate.","color":"gray"}]','{"text":"90s CD"}']},Enchantments:[{}],vent:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Create: Blue Vent","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Create a ","color":"gray"},{"text":"Blue Vent ","color":"gold","bold":true,"italic":false},{"text":"where you are standing.","color":"gray"}]','{"text":"Must be on the ground.","color":"gray"}','[{"text":"Must be 10 blocks away from another ","color":"gray"},{"text":"Blue/Red Vent","color":"gold","bold":true,"italic":false},{"text":".","color":"gray"}]','[{"text":"Resets ","color":"gray"},{"text":"Vent ","color":"gold","bold":true,"italic":false},{"text":"CD ","color":"dark_purple"},{"text":"on activation.","color":"gray"}]','[{"text":"2 Max ","color":"gray"},{"text":"Blue Vents ","color":"gold","bold":true,"italic":false},{"text":"on the map.","color":"gray"}]','{"text":"No CD"}']},Enchantments:[{}],blueVent:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Create: Red Vent","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Create a ","color":"gray"},{"text":"Red Vent ","color":"gold","bold":true,"italic":false},{"text":"where you are standing.","color":"gray"}]','{"text":"Must be on the ground.","color":"gray"}','[{"text":"Must be 10 blocks away from another ","color":"gray"},{"text":"Blue/Red Vent","color":"gold","bold":true,"italic":false},{"text":".","color":"gray"}]','[{"text":"Resets ","color":"gray"},{"text":"Vent ","color":"gold","bold":true,"italic":false},{"text":"CD ","color":"dark_purple"},{"text":"on activation.","color":"gray"}]','[{"text":"2 Max ","color":"gray"},{"text":"Red Vents ","color":"gold","bold":true,"italic":false},{"text":"on the map.","color":"gray"}]','{"text":"No CD"}']},Enchantments:[{}],redVent:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Destroy: Vent","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"When near your ","color":"gray"},{"text":"Blue/Red Vent","color":"gold","bold":true,"italic":false},{"text":", you can destroy it to create a new one.","color":"gray"}]','{"text":"60s CD"}']},Enchantments:[{}],destroyVent:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Sabotage: O2","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Spawn 2 red glowing ocelots randomly on the map.","color":"gray"}','[{"text":"If the two ocelots are not killed within 120 seconds, all ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"are affected with poison.","color":"gray"}]','{"text":"Ocelots die after 180 seconds.","color":"gray"}','{"text":"180s CD"}']},Enchantments:[{}],o2:1,noDrop:1} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Sabotage: Lights","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Spawn 1 yellow glowing ocelot randomly on the map.","color":"gray"}','[{"text":"All ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"cannot see their each other\'s nametag until the ocelot is killed.","color":"gray"}]','{"text":"Ocelot dies after 180 seconds.","color":"gray"}','{"text":"180s CD"}']},Enchantments:[{}],lights:1,noDrop:1} 1

execute store result score @s UUID0 run data get entity @s UUID[0]
execute store result score @s UUID1 run data get entity @s UUID[1]
execute store result score @s UUID2 run data get entity @s UUID[2]
execute store result score @s UUID3 run data get entity @s UUID[3]

execute at @e[type=slime,tag=vent] if score @s UUID0 = @e[type=slime,tag=vent,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=slime,tag=vent,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=slime,tag=vent,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=slime,tag=vent,sort=nearest,limit=1] Owner3 as @e[type=slime,tag=vent,sort=nearest,limit=1] run kill @s

scoreboard players set @s kill 1
scoreboard players set @s killCD 120
scoreboard players set @s eMeeting 1
scoreboard players set @s eMeetingCD 310
scoreboard players set @s vent 1
scoreboard players set @s ventCD 90
scoreboard players set @s blueVent 2
scoreboard players set @s redVent 2
scoreboard players set @s destroyVent 1
scoreboard players set @s destroyVentCD 60
scoreboard players set @s o2 1
scoreboard players set @s o2CD 360
scoreboard players set @s lights 1
scoreboard players set @s lightsCD 360

tag @s remove emergencyMeeting