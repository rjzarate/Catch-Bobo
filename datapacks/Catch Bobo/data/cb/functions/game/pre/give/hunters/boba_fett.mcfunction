team join Hunters
tag @s remove bobo
tag @s remove teemo

attribute @s minecraft:generic.max_health base set 40
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Boba Fett\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-129991706,-433108740,-1159077856,-1067427257],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWMxMzM5ZWY4NWMwNDVlZTQ1MjA0NDkwMTE3Yzk0MjU1YmVlZTkwNWU3MmEzYWUzMjZiMWMxOTEzYWY1ZmNhOCJ9fX0="}]}},bobaFett:1} 1

item replace entity @s armor.chest with elytra{display:{Name:'{"text":"Jetpack","color":"dark_red","bold":true,"italic":false}',color:3950130},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}',color:0},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"dark_red","bold":true,"italic":false}',color:3617329},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"EE-3","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}]','[{"text":"3-round arrow burst.","color":"gray"}]','{"text":"Arrow Damage: 0.75","color":"gray"}','{"text":"60 Max Ammo | 90s (+12 Ammo) CD"}']},HideFlags:2,ee-3:1,Enchantments:[{}],noDrop:1} 1

give @s ender_eye{display:{Name:'{"text":"Flamethrower","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}]','[{"text":"0.5 charge speed.","color":"gray"}]','[{"text":"Deals damage and lights players on fire.","color":"gray"}]','[{"text":"Goes through players.","color":"gray"}]','[{"text":"4-block range.","color":"gray"}]','{"text":"150 Max Ammo | 90s (+30 Ammo) CD"}']},HideFlags:2,flamethrower:1,Enchantments:[{}],noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Concussion Rocket","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Shoot a rocket that gives slowness 4 and blindness for 5 seconds after exploding.","color":"gray"}]','[{"text":"5-block explosion radius.","color":"gray"}]','[{"text":"Travels 20 block a second.","color":"gray"}]','{"text":"120s CD"}']},HideFlags:2,concussionRocket:1,Enchantments:[{}],noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Shoots 9 rockets in 2 seconds.","color":"gray"}]','[{"text":"Explosion Size: 1 (6 explosions)","color":"gray"}]','[{"text":"Travels 20 block a second.","color":"gray"}]','{"text":"150s CD"}']},HideFlags:2,rocketBarrage:1,Enchantments:[{}],noDrop:1} 1

give @s firework_rocket{display:{Name:'{"text":"Jetpack Fuel","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Cooldown recharges on when you are on the ground.","color":"gray"}]','{"text":"3 Max Fuel/60s CD"}']},noDrop:1,Enchantments:[{}],Fireworks:{Flight:0.001b}} 3

give @s paper{display:{Name:'{"text":"Note","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"You have an elytra.","color":"gray"}']},Enchantments:[{}],noDrop:1} 1

scoreboard players reset @s jetpackFuelUsed
scoreboard players set @s jetpackFuel 3
scoreboard players set @s jetpackFuelCD 60
scoreboard players set @s ee-3 60
scoreboard players set @s ee-3CD 90
scoreboard players set @s flamethrower 150
scoreboard players set @s flamethrowerCD 90
scoreboard players set @s flamethrower1 0
scoreboard players set @s flamethrower2 0
scoreboard players set @s flamethrower3 0
scoreboard players set @s cRocket 1
scoreboard players set @s cRocketCD 120
scoreboard players set @s rBarrage 1
scoreboard players set @s rBarrageCD 152
scoreboard players reset @s rBarrageBurst
advancement revoke @s from cb:flamethrower