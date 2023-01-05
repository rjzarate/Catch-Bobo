scoreboard players set @s hP 1
scoreboard players add @s hPCD 60

tellraw @s ["",{"text":"Hot Potato Planner ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2