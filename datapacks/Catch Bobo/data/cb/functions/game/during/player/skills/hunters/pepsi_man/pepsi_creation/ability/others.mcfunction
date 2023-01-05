execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2
tellraw @s ["",{"text":"Pepsi Man ","bold":true,"color":"dark_red"},{"text":"gave you a ","bold":true},{"text":"Pepsi Can","bold":true,"color":"dark_red"},{"text":"!","bold":true}]

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Pepsi Can","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Gives speed 1 and regeneration 1 for 10 seconds.","color":"gray"}','{"text":"Single Use"}']},HideFlags:2,Enchantments:[{}],pepsiCan:1,noDrop:1} 1

scoreboard players set @s pepsiNoCan 0