clear @a minecraft:warped_fungus_on_a_stick{insult:1}

scoreboard players set O0 objectiveEList 0
scoreboard players remove @a[team=Bobo,tag=bobo] objectiveEC 1

execute as @a[team=Bobo,tag=bobo] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5

execute as @a[team=Bobo,tag=bobo] if score @s objectiveE1 matches 0 run scoreboard players reset @s objectiveE1
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE2 matches 0 run scoreboard players reset @s objectiveE2
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE3 matches 0 run scoreboard players reset @s objectiveE3
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE4 matches 0 run scoreboard players reset @s objectiveE4
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE5 matches 0 run scoreboard players reset @s objectiveE5
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE6 matches 0 run scoreboard players reset @s objectiveE6
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE7 matches 0 run scoreboard players reset @s objectiveE7
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE8 matches 0 run scoreboard players reset @s objectiveE8
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE9 matches 0 run scoreboard players reset @s objectiveE9
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE10 matches 0 run scoreboard players reset @s objectiveE10
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE11 matches 0 run scoreboard players reset @s objectiveE11
execute as @a[team=Bobo,tag=bobo] if score @s objectiveE12 matches 0 run scoreboard players reset @s objectiveE12

execute if score constant sNotifyHO matches 1 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 1 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed an ","color":"aqua"},{"text":"Easy Objective","bold":true,"color":"green"},{"text":".","color":"aqua"}]
execute if score constant sNotifyHO matches 3 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 3 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed an ","color":"aqua"},{"text":"Easy Objective","bold":true,"color":"green"},{"text":".","color":"aqua"}]

tellraw @a[team=Bobo,tag=bobo] ["",{"text":"\n "},{"text":"Objective Complete:","bold":true,"color":"aqua"},{"text":"\n"},{"text":"- Insult a Friend","strikethrough":true,"color":"green"}]
execute as @a[team=Bobo,tag=bobo] if score @s objectiveEC matches 1.. run function cb:game/pre/player/objectives/notify/easy