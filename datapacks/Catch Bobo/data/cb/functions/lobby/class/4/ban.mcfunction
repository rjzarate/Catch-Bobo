tellraw @a ["",{"text":"\nGuts ","bold":true,"color":"dark_red"},{"text":"has been banned.","bold":true,"color":"yellow"},{"text":"\nYou can now choose a class.","color":"gray"}]
tp @s -100 59 -5 -90 0
execute as @a at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 1
scoreboard players set number chooseCBanned 4
