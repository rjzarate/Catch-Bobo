execute at @a[team=Hunters,gamemode=!spectator] run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 2 100 normal
tag @a[team=Hunters] add winner

clear @a[team=Bobo,tag=!bobo]
effect clear @a[team=Bobo]
tag @a[team=Bobo,tag=!bobo] remove teemo
tag @a remove stun
execute as @a[team=Bobo,tag=!bobo] run attribute @s minecraft:generic.max_health base set 2
execute as @a[team=Bobo,tag=bobo] run attribute @s minecraft:generic.max_health base set 10
execute as @a[team=Bobo,tag=!bobo] run attribute @s minecraft:generic.armor base set 0
execute as @a[team=Bobo,tag=!bobo] run attribute @s minecraft:generic.attack_damage base set 0
execute as @a[team=Bobo,tag=!bobo] run attribute @s minecraft:generic.attack_speed base set 4
execute as @a[team=Bobo] run attribute @s minecraft:generic.movement_speed base set 0.05000000074505806
tag @a[team=Bobo,tag=bobo] remove bobo
effect give @a[team=Bobo] minecraft:instant_health 1 0 true
effect give @a[team=Bobo] minecraft:glowing 10 0 true
effect give @a[team=Hunters] minecraft:resistance 10 4 true
effect give @a[team=Hunters] minecraft:instant_health 200 4 true

item replace entity @a[team=Bobo,tag=!bobo] armor.head with minecraft:player_head{display:{Name:'{"text":"Chicken Head","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;2100988622,-532328774,-1418628645,-182068495],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTYzODQ2OWE1OTljZWVmNzIwNzUzNzYwMzI0OGE5YWIxMWZmNTkxZmQzNzhiZWE0NzM1YjM0NmE3ZmFlODkzIn19fQ=="}]}}} 1

item replace entity @a[team=Bobo,tag=!bobo] armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @a[team=Bobo,tag=!bobo] armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1
item replace entity @a[team=Bobo,tag=!bobo] armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"dark_red","bold":true,"italic":false}',color:16777215},HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}]} 1

tp @a[team=Hunters] @r[team=Hunters,gamemode=!spectator]
tp @a[team=Bobo] @r[team=Hunters,gamemode=!spectator]
execute at @a[team=Bobo,tag=bobo] run playsound minecraft:entity.ender_dragon.death player @a ~ ~ ~ 1 1.5
execute as @a[team=Hunters] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 10 1

title @a times 0 100 20
title @a subtitle {"text":"Time ran out.","color":"gray"}
title @a[team=Lobby] title {"text":"GAME ENDED","bold":true,"color":"gold"}
title @a[team=Hunters] title {"text":"VICTORY!","bold":true,"color":"gold"}
title @a[team=Bobo] title {"text":"DEFEAT","bold":true,"color":"gold"}
tellraw @a ["",{"text":"\n"},{"text":"Team Hunters ","bold":true,"color":"dark_red"},{"text":"has won the game!\n----------------------------------------","color":"green"},{"text":"\n                   "},{"text":"Catch Bobo","bold":true,"color":"white"},{"text":"\n\n                   "},{"text":"Winning Team","color":"yellow"},{"text":"\n                  "},{"text":"Team Hunters","bold":true,"color":"dark_red"},{"text":"\n\n                   "},{"text":"Losing Team","color":"red"},{"text":"\n                   "},{"text":"Team Bobo","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"----------------------------------------\n","color":"green"},{"text":"Win Condition: ","bold":true,"color":"green"},{"text":"time ran out.","color":"yellow"}]