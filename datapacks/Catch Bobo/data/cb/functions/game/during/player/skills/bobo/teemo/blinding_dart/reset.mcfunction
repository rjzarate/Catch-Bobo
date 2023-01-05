scoreboard players set @s blindingDart 2
scoreboard players add @s blindingDartCD 10

tellraw @s ["",{"text":"Blinding Dart ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2