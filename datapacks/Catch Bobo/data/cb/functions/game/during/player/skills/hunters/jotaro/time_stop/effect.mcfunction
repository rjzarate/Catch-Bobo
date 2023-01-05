effect give @s minecraft:weakness 1 10 true

execute unless score @s timeStopTimer matches 100.. run scoreboard players add @s timeStopTimer 1

execute if score @s timeStopTimer matches 1 at @s run summon armor_stand ~ ~ ~ {Tags:["timeStop","noTimeStop"],NoGravity:1b,Marker:1b,Invisible:1b}
data modify entity @e[type=armor_stand,tag=timeStop,sort=nearest,limit=1,tag=!finished] Rotation set from entity @s Rotation

tag @e[type=armor_stand,tag=timeStop,sort=nearest,limit=1,tag=!finished] add finished

tp @s @e[type=armor_stand,tag=timeStop,sort=nearest,limit=1]



execute if score @s timeStopTimer matches 100.. run tag @s remove timeStop
execute if score @s timeStopTimer matches 100.. run scoreboard players reset @s timeStopTimer
