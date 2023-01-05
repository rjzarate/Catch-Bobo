scoreboard players set O8 objectiveEList 0
scoreboard players remove @s objectiveEC 1

fill 190 40 -433 192 42 -433 minecraft:polished_diorite
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5

execute if score @s objectiveE1 matches 8 run scoreboard players reset @s objectiveE1
execute if score @s objectiveE2 matches 8 run scoreboard players reset @s objectiveE2
execute if score @s objectiveE3 matches 8 run scoreboard players reset @s objectiveE3
execute if score @s objectiveE4 matches 8 run scoreboard players reset @s objectiveE4
execute if score @s objectiveE5 matches 8 run scoreboard players reset @s objectiveE5
execute if score @s objectiveE6 matches 8 run scoreboard players reset @s objectiveE6
execute if score @s objectiveE7 matches 8 run scoreboard players reset @s objectiveE7
execute if score @s objectiveE8 matches 8 run scoreboard players reset @s objectiveE8
execute if score @s objectiveE9 matches 8 run scoreboard players reset @s objectiveE9
execute if score @s objectiveE10 matches 8 run scoreboard players reset @s objectiveE10
execute if score @s objectiveE11 matches 8 run scoreboard players reset @s objectiveE11
execute if score @s objectiveE12 matches 8 run scoreboard players reset @s objectiveE12

execute if score constant sNotifyHO matches 1 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 1 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed an ","color":"aqua"},{"text":"Easy Objective","bold":true,"color":"green"},{"text":".","color":"aqua"}]
execute if score constant sNotifyHO matches 3 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 3 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed an ","color":"aqua"},{"text":"Easy Objective","bold":true,"color":"green"},{"text":".","color":"aqua"}]

tellraw @s ["",{"text":"\n "},{"text":"Objective Complete:","bold":true,"color":"aqua"},{"text":"\n"},{"text":"- Polish the Pillar","strikethrough":true,"color":"green"}]
execute if score @s objectiveEC matches 1.. run function cb:game/pre/player/objectives/notify/easy