scoreboard players reset constant pepsiCanCount
execute as @a[team=Hunters,gamemode=!spectator] unless score @s pepsiNoCan matches 1.. run scoreboard players add constant pepsiCanCount 1

execute unless score constant pepsiCanCount = constant hunterNoDogCount run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_creation/ability/self
execute if score constant pepsiCanCount = constant hunterNoDogCount at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0
execute if score constant pepsiCanCount = constant hunterNoDogCount run tellraw @s ["",{"text":"Every ","bold":true},{"text":"Hunter ","bold":true,"color":"dark_red"},{"text":"has a ","bold":true},{"text":"Pepsi Can","bold":true,"color":"dark_red"},{"text":".","bold":true}]
