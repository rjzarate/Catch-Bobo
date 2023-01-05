execute as @a[tag=!timeStop,team=Hunters] if score @s tTCD matches 1.. as @a[team=Bobo,tag=bobo] unless score @s tT matches 1.. run tellraw @s ["",{"text":"Tangerine Teleporter ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute as @a[tag=!timeStop,team=Hunters] if score @s tTCD matches 1.. as @a[team=Bobo,tag=bobo] unless score @s tT matches 1.. at @s run execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

execute as @a[tag=!timeStop,team=Hunters] if score @s tTCD matches 1.. run scoreboard players set @a[team=Bobo,tag=bobo] tT 1
execute as @a[tag=!timeStop,team=Hunters] if score @s tTCD matches 1.. run scoreboard players reset @a tTCD

