scoreboard players set O4 objectiveHList 0
scoreboard players remove @s objectiveHC 1

tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"You hear a fireworks at the temple...","color":"gray","italic":true}]
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5

schedule function cb:game/during/player/objectives/hard/4/firework/1 1t
schedule function cb:game/during/player/objectives/hard/4/firework/2 4t
schedule function cb:game/during/player/objectives/hard/4/firework/3 8t
schedule function cb:game/during/player/objectives/hard/4/firework/4 12t
schedule function cb:game/during/player/objectives/hard/4/firework/5 16t
schedule function cb:game/during/player/objectives/hard/4/firework/6 20t

execute if score @s objectiveH1 matches 4 run scoreboard players reset @s objectiveH1
execute if score @s objectiveH2 matches 4 run scoreboard players reset @s objectiveH2
execute if score @s objectiveH3 matches 4 run scoreboard players reset @s objectiveH3
execute if score @s objectiveH4 matches 4 run scoreboard players reset @s objectiveH4
execute if score @s objectiveH5 matches 4 run scoreboard players reset @s objectiveH5

execute if score constant sNotifyHO matches 1 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 1 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed a ","color":"aqua"},{"text":"Hard Objective","bold":true,"color":"red"},{"text":".","color":"aqua"}]
execute if score constant sNotifyHO matches 3 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 3 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed a ","color":"aqua"},{"text":"Hard Objective","bold":true,"color":"red"},{"text":".","color":"aqua"}]

tellraw @s ["",{"text":"\n "},{"text":"Objective Complete:","bold":true,"color":"aqua"},{"text":"\n"},{"text":"- Light the Fireworks","strikethrough":true,"color":"red"}]
execute if score @s objectiveHC matches 1.. run function cb:game/pre/player/objectives/notify/hard