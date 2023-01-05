team join Hunters
tag @s remove bobo
tag @s remove teemo

attribute @s minecraft:generic.max_health base set 50
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Hacker\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-314835871,1658470406,-1261035364,-1899808833],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjk4ZDQ1MTk2NTZhOWI3ZWJlM2VjZjMxYzIwMDc4MzljMTY0YTM0Yzk5YzhmZDJkMTc4MDJiZmU4YWMyMjBmYyJ9fX0="}]}},hacker:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"dark_red","bold":true,"italic":false}',color:11316396},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}',color:11316396},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"dark_red","bold":true,"italic":false}',color:11316396},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Laptop","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Has battery. ","color":"gray"},{"text":"Max 100%","color":"dark_purple"}]','[{"text":"Recharges faster the more ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"there are in a 25-block radius.","color":"gray"}]','[{"text":"No ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"near: ","color":"gray"},{"text":"+1% every 4s","color":"dark_purple"}]','[{"text":"50% ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"near: ","color":"gray"},{"text":"+1% every 2s","color":"dark_purple"}]','[{"text":"All ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"near: ","color":"gray"},{"text":"+1% every 1s","color":"dark_purple"}]','{"text":""}','{"text":"Electric Ricochet","color":"dark_red","bold":true,"italic":false}','{"text":"Shoot an electric line that travels up to 100 blocks and bounces 10 times.","color":"gray"}','{"text":"Damage is dealt only after the 2nd bounce.","color":"gray"}','{"text":"Damage causes the target to look at you.","color":"gray"}','{"text":"Notifies you if someone was hit.","color":"gray"}','{"text":"Only bounces off blocks.","color":"gray"}','{"text":"-11%"}']},HideFlags:2,Enchantments:[{}],laptop:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Get Data","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Shows you ","color":"gray"},{"text":"Bobo\'s","color":"gold","bold":true,"italic":false},{"text":" health if they\'re 25 blocks away from you."}]','[{"text":"Affects ","color":"gray"},{"text":"Bobo ","color":"gold","bold":true,"italic":false},{"text":"with glowing for 1 second if they\'re 25 blocks near you."}]','{"text":"-31%"}']},HideFlags:2,Enchantments:[{}],getData:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Rewire Location","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"At deactivation, you will teleport where you were when you activated this.","color":"gray"}','{"text":"Deactivates after 45 seconds.","color":"gray"}','{"text":"-29%"}']},HideFlags:2,Enchantments:[{}],rewireLocation:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Players Overcharge","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"-10s CD "},{"text":"to all ","color":"gray"},{"text":"Hunters","color":"dark_red","bold":true,"italic":false},{"text":".","color":"gray"}]','[{"text":"Affects all ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"25 blocks away from you."}]','{"text":"-37%"}']},HideFlags:2,Enchantments:[{}],playersOvercharge:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Hearts Transfer","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Instant Damage 2 (-6 Hearts) to self.","color":"gray"}','[{"text":"Instant Health 1 (+3 Hearts) to all ","color":"gray"},{"text":"Hunters","color":"dark_red","bold":true,"italic":false},{"text":" less than 15 hearts.","color":"gray"}]','[{"text":"Affects all ","color":"gray"},{"text":"Hunters ","color":"dark_red","bold":true,"italic":false},{"text":"25 blocks away from you."}]','{"text":"-26%"}']},HideFlags:2,Enchantments:[{}],heartsTransfer:1,noDrop:1} 1

execute at @e[type=slime,tag=rewireLocation] if score @s UUID0 = @e[type=slime,tag=rewireLocation,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=slime,tag=rewireLocation,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=slime,tag=rewireLocation,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=slime,tag=rewireLocation,sort=nearest,limit=1] Owner3 as @e[type=slime,tag=rewireLocation,sort=nearest,limit=1] run kill @s

scoreboard players set @s battery 100
scoreboard players set @s batteryCD 4
scoreboard players reset @s rewireLocationCD