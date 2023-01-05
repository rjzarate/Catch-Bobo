scoreboard players set @s objectiveHW 0

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5

tellraw @s ["",{"text":"\n "},{"text":"Objective Complete:","bold":true,"color":"aqua"},{"text":"\n"},{"text":"- Eat the Enchanted Golden Apple","strikethrough":true,"color":"light_purple"}]





scoreboard players set @s objectiveS 1
execute if score @s objectiveEC matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 if score @s objectiveHW matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 if score @s objectiveHW matches ..0 if score @s objectiveHC matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 if score @s objectiveHW matches ..0 if score @s objectiveHC matches ..0 if score @s objectiveS matches ..0 run scoreboard players add @s objectiveS 1

execute if score constant sNotifyHO matches 1..3 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.5
execute if score constant sNotifyHO matches 1..3 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed the ","color":"aqua"},{"text":"Halfway Objective","bold":true,"color":"light_purple"},{"text":"!","color":"aqua"}]



function cb:game/pre/player/objectives/notify
function cb:game/pre/player/objectives/items/clear
execute if score @s objectiveS matches 4 run function cb:game/pre/player/objectives/items/hard
execute if score @s objectiveS matches 4 run function cb:game/pre/player/objectives/notify/hard
execute if score @s objectiveS matches 5 run scoreboard players operation number gameTE -= constant sLastOPT
execute if score @s objectiveS matches 5 run function cb:game/pre/player/objectives/notify/last