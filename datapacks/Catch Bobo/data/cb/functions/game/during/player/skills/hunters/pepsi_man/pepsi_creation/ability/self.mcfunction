scoreboard players remove @s pepsiCreation 1

execute unless score @s pepsiNoCan matches 1.. if entity @a[team=Hunters,gamemode=!spectator,limit=1,sort=nearest,scores={pepsiNoCan=1..}] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2
execute unless score @s pepsiNoCan matches 1.. at @a[team=Hunters,gamemode=!spectator,limit=1,sort=nearest,scores={pepsiNoCan=1..}] run tellraw @s ["",{"text":"You gave ","bold":true},{"selector":"@p","bold":true,"color":"dark_red"},{"text":" a ","bold":true},{"text":"Pepsi Can","bold":true,"color":"dark_red"},{"text":"!","bold":true}]
execute unless score @s pepsiNoCan matches 1.. as @a[team=Hunters,gamemode=!spectator,limit=1,sort=nearest,scores={pepsiNoCan=1..}] run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_creation/ability/others

execute if score @s pepsiNoCan matches 1.. at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2
execute if score @s pepsiNoCan matches 1.. run tellraw @s ["",{"text":"You gave yourself a ","bold":true},{"text":"Pepsi Can","bold":true,"color":"dark_red"},{"text":"!","bold":true}]
execute if score @s pepsiNoCan matches 1.. run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Pepsi Can","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Gives speed 1 and regeneration 1 for 10 seconds.","color":"gray"}','{"text":"Single Use"}']},HideFlags:2,Enchantments:[{}],pepsiCan:1,noDrop:1} 1
execute if score @s pepsiNoCan matches 1.. run scoreboard players set @s pepsiNoCan 0