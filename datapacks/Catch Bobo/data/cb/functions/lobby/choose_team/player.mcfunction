scoreboard players reset constant chooseTCount
scoreboard players reset constant chooseTSCount
scoreboard players reset constant chooseTBSCount

execute positioned -103 58 14 as @a[dx=18,dy=4,dz=18] run scoreboard players add constant chooseTCount 1

execute positioned -96 59 15 as @a[dx=4,dy=4,dz=4] run scoreboard players add constant chooseTSCount 1
execute positioned -96 59 15 as @a[dx=4,dy=4,dz=4] run scoreboard players add constant chooseTBSCount 1
execute positioned -90 59 22 as @a[dx=2,dy=4,dz=2] run scoreboard players add constant chooseTSCount 1
execute positioned -96 59 27 as @a[dx=4,dy=4,dz=4] run scoreboard players add constant chooseTSCount 1


execute if score constant chooseTSCount = constant chooseTCount positioned -96 59 27 if entity @a[dx=4,dy=4,dz=4] unless score constant chooseTBSCount = constant chooseTBCount positioned -103 58 14 run tellraw @a[dx=18,dy=4,dz=18] ["",{"text":"\nError; Could not start game.","bold":true,"color":"red"},{"text":"\n- Must be exactly ","color":"red"},{"score":{"name":"constant","objective":"chooseTBCount"},"bold":true,"color":"aqua"},{"text":" player(s) ","bold":true,"color":"aqua"},{"text":"in ","color":"red"},{"text":"Team Bobo","bold":true,"color":"gold"},{"text":".","color":"red"}]
execute if score constant chooseTSCount = constant chooseTCount positioned -96 59 27 unless entity @a[dx=4,dy=4,dz=4] if score constant chooseTBSCount = constant chooseTBCount positioned -103 58 14 run tellraw @a[dx=18,dy=4,dz=18] ["",{"text":"\nError; Could not start game.","bold":true,"color":"red"},{"text":"\n- Must be at least ","color":"red"},{"text":"1 player ","bold":true,"color":"aqua"},{"text":"in ","color":"red"},{"text":"Team Hunters","bold":true,"color":"dark_red"},{"text":".","color":"red"}]
execute if score constant chooseTSCount = constant chooseTCount positioned -96 59 27 unless entity @a[dx=4,dy=4,dz=4] unless score constant chooseTBSCount = constant chooseTBCount positioned -103 58 14 run tellraw @a[dx=18,dy=4,dz=18] ["",{"text":"\nError; Could not start game.","bold":true,"color":"red"},{"text":"\n- Must be at least ","color":"red"},{"text":"1 player ","bold":true,"color":"aqua"},{"text":"in ","color":"red"},{"text":"Team Hunters","bold":true,"color":"dark_red"},{"text":".\n- Must be exactly ","color":"red"},{"score":{"name":"constant","objective":"chooseTBCount"},"bold":true,"color":"aqua"},{"text":" player(s) ","bold":true,"color":"aqua"},{"text":" in ","color":"red"},{"text":"Team Bobo","bold":true,"color":"gold"},{"text":".","color":"red"}]


execute if score constant chooseTSCount = constant chooseTCount positioned -96 59 27 if entity @a[dx=4,dy=4,dz=4] unless score constant chooseTBSCount = constant chooseTBCount run playsound minecraft:block.note_block.pling record @a -101 58 23 1 0
execute if score constant chooseTSCount = constant chooseTCount positioned -96 59 27 unless entity @a[dx=4,dy=4,dz=4] if score constant chooseTBSCount = constant chooseTBCount run playsound minecraft:block.note_block.pling record @a -101 58 23 1 0
execute if score constant chooseTSCount = constant chooseTCount positioned -96 59 27 unless entity @a[dx=4,dy=4,dz=4] unless score constant chooseTBSCount = constant chooseTBCount run playsound minecraft:block.note_block.pling record @a -101 58 23 1 0


execute if score constant chooseTSCount = constant chooseTCount positioned -96 59 27 if entity @a[dx=4,dy=4,dz=4] unless score constant chooseTBSCount = constant chooseTBCount positioned -103 58 14 run tp @a[dx=18,dy=4,dz=18] -101 59 23 -90 0
execute if score constant chooseTSCount = constant chooseTCount positioned -96 59 27 unless entity @a[dx=4,dy=4,dz=4] if score constant chooseTBSCount = constant chooseTBCount positioned -103 58 14 run tp @a[dx=18,dy=4,dz=18] -101 59 23 -90 0
execute if score constant chooseTSCount = constant chooseTCount positioned -96 59 27 unless entity @a[dx=4,dy=4,dz=4] unless score constant chooseTBSCount = constant chooseTBCount positioned -103 58 14 run tp @a[dx=18,dy=4,dz=18] -101 59 23 -90 0

execute positioned -96 59 27 if entity @a[dx=4,dy=4,dz=4] if score constant chooseTSCount = constant chooseTCount if score constant chooseTBSCount = constant chooseTBCount run function cb:lobby/choose_class/info
execute positioned -96 59 27 if entity @a[dx=4,dy=4,dz=4] if score constant chooseTSCount = constant chooseTCount if score constant chooseTBSCount = constant chooseTBCount run scoreboard players set constant gamePickingC 1
execute positioned -96 59 27 if entity @a[dx=4,dy=4,dz=4] if score constant chooseTSCount = constant chooseTCount if score constant chooseTBSCount = constant chooseTBCount if score constant sRandomB matches 1 positioned -96 59 15 run tp @r[dx=4,dy=4,dz=4] -100 59 -5 -90 0
execute positioned -96 59 27 if entity @a[dx=4,dy=4,dz=4] if score constant chooseTSCount = constant chooseTCount if score constant chooseTBSCount = constant chooseTBCount positioned -96 59 15 run tp @a[dx=4,dy=4,dz=4] -94 59 -3 -180 0
execute positioned -96 59 27 if entity @a[dx=4,dy=4,dz=4] if score constant chooseTSCount = constant chooseTCount if score constant chooseTBSCount = constant chooseTBCount positioned -90 59 22 run tp @a[dx=2,dy=4,dz=2] -157 61 26 -90 0
execute positioned -96 59 27 if entity @a[dx=4,dy=4,dz=4] if score constant chooseTSCount = constant chooseTCount if score constant chooseTBSCount = constant chooseTBCount positioned -96 59 27 run tp @a[dx=4,dy=4,dz=4] -91 59 36 0 0