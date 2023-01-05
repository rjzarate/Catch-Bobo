scoreboard players add @s moveQuick 1
scoreboard players add @s moveQuickCD 18

tellraw @s ["",{"text":"Move Quick ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2