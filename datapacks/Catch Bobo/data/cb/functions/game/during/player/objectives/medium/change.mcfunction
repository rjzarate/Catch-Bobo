scoreboard players set @s objectiveS 1
execute if score @s objectiveEC matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 if score @s objectiveHW matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 if score @s objectiveHW matches ..0 if score @s objectiveHC matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 if score @s objectiveHW matches ..0 if score @s objectiveHC matches ..0 if score @s objectiveS matches ..0 run scoreboard players add @s objectiveS 1

execute if score constant sNotifyHO matches 2 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.5
execute if score constant sNotifyHO matches 2 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed a set of ","color":"aqua"},{"text":"Medium Objectives","bold":true,"color":"yellow"},{"text":"!","color":"aqua"}]
execute if score constant sNotifyHO matches 3 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.5
execute if score constant sNotifyHO matches 3 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed a set of ","color":"aqua"},{"text":"Medium Objectives","bold":true,"color":"yellow"},{"text":"!","color":"aqua"}]


function cb:game/pre/player/objectives/notify
function cb:game/pre/player/objectives/items/clear
execute if score @s objectiveS matches 3 run function cb:game/pre/player/objectives/notify/halfway
execute if score @s objectiveS matches 4 run function cb:game/pre/player/objectives/items/hard
execute if score @s objectiveS matches 4 run function cb:game/pre/player/objectives/notify/hard
execute if score @s objectiveS matches 5 run scoreboard players operation number gameTE -= constant sLastOPT
execute if score @s objectiveS matches 5 run function cb:game/pre/player/objectives/notify/last