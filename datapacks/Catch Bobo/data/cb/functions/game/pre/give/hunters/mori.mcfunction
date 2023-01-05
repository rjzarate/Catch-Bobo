team join Hunters
tag @s remove bobo
tag @s remove teemo

attribute @s minecraft:generic.max_health base set 50
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 30 0 true

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Mori Jin\'s Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;178207086,1938311177,-2028337728,1696161455],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY4NzM4ODIyNGNmY2VmNjhlNmJlYmFlNjc2NzhkZDg2ZjJiNjI4NjNiZTVmYzE1M2JiMzUyZjVhOWM2NWZiZSJ9fX0="}]}},mori:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}',color:160444},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"dark_red","bold":true,"italic":false}',color:12991826},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Yeoui","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Mainhand weapon.","color":"gray"}','{"text":"4 melee attack damage, 1.25 attack speed.","color":"gray"}','[{"text":"4 range attack damage, 7-block range, ","color":"gray"},{"text":"15s CD","color":"dark_purple"},{"text":"."}]']},HideFlags:2,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;466701147,780551195,-2125874679,504454309],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.75,Operation:0,UUID:[I;1280991582,1458323653,-2083327653,-906345462],Slot:"mainhand"}],yeoui:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Geundoowun","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Cast a lightning storm wherever on the map (raycasted).","color":"gray"}','{"text":"Lightning storm takes 2 seconds to form.","color":"gray"}','{"text":"Lightning storm lasts for 8 seconds.","color":"gray"}','{"text":"120s CD"}']},Enchantments:[{}],geundoowun:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Jeahbongchim","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Lasts for 30 seconds.","color":"gray"}','{"text":"+1 melee attack damage","color":"gray"}','{"text":"+0.25 attack speed","color":"gray"}','{"text":"+10% movement speed","color":"gray"}','[{"text":"60s CD"}]']},Enchantments:[{}],jeahbongchim:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Yongpyo","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Lasts for 60 seconds.","color":"gray"}','[{"text":"Switch techniques using ","color":"gray"},{"text":"Switch Mode","color":"dark_red","bold":true,"italic":false},{"text":"."}]','{"text":""}','{"text":"+5 Max Hearts AND:","color":"gray"}','{"text":""}','{"text":"Acceleration Mode -","color":"dark_red","bold":true,"italic":false}','{"text":"+0.25 attack speed","color":"gray"}','{"text":"+20% movement speed","color":"gray"}','[{"text":"-5s CD "},{"text":"to ","color":"gray"},{"text":"Yeoui (Ranged)","color":"dark_red","bold":true,"italic":false}]','{"text":""}','{"text":"Power Mode -","color":"dark_red","bold":true,"italic":false}','{"text":"+2 melee attack damage","color":"gray"}','{"text":"+1 range attack damage","color":"gray"}','{"text":"+3-block range attack","color":"gray"}','{"text":""}','{"text":"120s CD"}']},Enchantments:[{}],yongpyo:1,noDrop:1} 1

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Switch Mode","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Switch to ","color":"gray"},{"text":"Acceleration Mode ","color":"dark_red","bold":true,"italic":false},{"text":"or "},{"text":"Power Mode","color":"dark_red","bold":true,"italic":false},{"text":"."}]','[{"text":"15s CD"}]']},Enchantments:[{}],switchMode:1,noDrop:1} 1

scoreboard players set @s yeoui 1
scoreboard players set @s yeouiCD 15
scoreboard players set @s geundoowun 1
scoreboard players set @s geundoowunCD 130
scoreboard players set @s jeahbongchim 1
scoreboard players set @s jeahbongchimCD 90
scoreboard players set @s yongpyo 1
scoreboard players set @s yongpyoCD 180
scoreboard players set @s switchMode 0