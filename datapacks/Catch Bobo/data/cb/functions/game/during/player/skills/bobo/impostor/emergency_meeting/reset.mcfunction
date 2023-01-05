scoreboard players add @s eMeeting 1
scoreboard players add @s eMeetingCD 310

tellraw @s ["",{"text":"Report Body ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2