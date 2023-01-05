scoreboard players add @s jJ 1
execute if score @s jJ matches 1 at @s run playsound minecraft:block.piston.extend player @s ~ ~ ~ 1 2
execute if score @s jJ matches 2.. at @s run playsound minecraft:block.piston.contract player @s ~ ~ ~ 1 2
execute if score @s jJ matches 2.. run scoreboard players set @s jJ 0