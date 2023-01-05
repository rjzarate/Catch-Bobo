kill @s
execute unless score constant hPTimer matches 0.. run scoreboard players set constant hPTimer 0
scoreboard players reset @a[team=Hunters,gamemode=!spectator] hPDropped

execute as @a[team=Bobo] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2
tellraw @a[team=Bobo] ["",{"text":"A ","color":"yellow"},{"text":"Hunter ","bold":true,"color":"dark_red"},{"text":"picked up a ","color":"yellow"},{"text":"Hot Potato","bold":true,"color":"gold"},{"text":"!","color":"yellow"}]

give @a[team=Hunters,gamemode=!spectator] baked_potato{hP:1,display:{Name:'{"text":"Hot Potato","color":"gold","bold":true,"italic":false}',Lore:['{"text":"I\'m going to explode!","color":"gray"}','{"text":"Hint: Throw me out of your inventory.","color":"gray"}']},Enchantments:[{}]} 1