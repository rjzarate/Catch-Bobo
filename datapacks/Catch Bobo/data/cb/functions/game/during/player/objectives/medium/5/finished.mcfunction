scoreboard players set O5 objectiveMList 0
scoreboard players remove @s objectiveMC 1

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5

execute if score @s objectiveM1 matches 5 run scoreboard players reset @s objectiveM1
execute if score @s objectiveM2 matches 5 run scoreboard players reset @s objectiveM2
execute if score @s objectiveM3 matches 5 run scoreboard players reset @s objectiveM3
execute if score @s objectiveM4 matches 5 run scoreboard players reset @s objectiveM4
execute if score @s objectiveM5 matches 5 run scoreboard players reset @s objectiveM5
execute if score @s objectiveM6 matches 5 run scoreboard players reset @s objectiveM6
execute if score @s objectiveM7 matches 5 run scoreboard players reset @s objectiveM7
execute if score @s objectiveM8 matches 5 run scoreboard players reset @s objectiveM8
execute if score @s objectiveM9 matches 5 run scoreboard players reset @s objectiveM9
execute if score @s objectiveM10 matches 5 run scoreboard players reset @s objectiveM10

execute if score constant sNotifyHO matches 1 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 1 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed a ","color":"aqua"},{"text":"Medium Objective","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]
execute if score constant sNotifyHO matches 3 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 3 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed a ","color":"aqua"},{"text":"Medium Objective","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]

tellraw @s ["",{"text":"\n "},{"text":"Objective Complete:","bold":true,"color":"aqua"},{"text":"\n"},{"text":"- Catch a Fish","strikethrough":true,"color":"yellow"}]
execute if score @s objectiveMC matches 1.. run function cb:game/pre/player/objectives/notify/medium