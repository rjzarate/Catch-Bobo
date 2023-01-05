scoreboard players reset constant chooseCCount
scoreboard players reset constant chooseCSCount

execute positioned -102 58 -12 as @a[dx=16,dy=6,dz=12] run scoreboard players add constant chooseCCount 1
execute positioned -103 57 34 as @a[dx=21,dy=13,dz=21] run scoreboard players add constant chooseCCount 1

execute positioned -103 59 36 as @a[dx=3,dy=3,dz=3] unless score @s chooseC matches 1..100 run title @s times 0 60 20
execute positioned -103 59 36 as @a[dx=3,dy=3,dz=3] unless score @s chooseC matches 1..100 run title @s title {"text":"Choose your class!","bold":true,"color":"yellow"}
execute positioned -103 59 36 as @a[dx=3,dy=3,dz=3] unless score @s chooseC matches 1..100 run title @s subtitle ["",{"text":"Interact (","color":"gray"},{"keybind":"key.use","color":"gray"},{"text":") a sign to choose a class.","color":"gray"}]
execute positioned -103 59 36 as @a[dx=3,dy=3,dz=3] unless score @s chooseC matches 1..100 run tellraw @s ["",{"text":"\nChoose a class!","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Interact (","color":"gray"},{"keybind":"key.use","color":"gray"},{"text":") a sign to choose a class.","color":"gray"}]
execute positioned -103 59 36 as @a[dx=3,dy=3,dz=3] unless score @s chooseC matches 1..100 run playsound minecraft:block.note_block.pling record @s -91 59 36 1 0
execute positioned -103 59 36 as @a[dx=3,dy=3,dz=3] unless score @s chooseC matches 1..100 run tp @s -91 59 36 0 0
execute positioned -103 59 36 as @a[dx=3,dy=3,dz=3] if score @s chooseC matches 1..99 run scoreboard players add constant chooseCSCount 1


execute positioned -101 59 -6 as @a[dx=2,dy=3,dz=2] if score @s chooseC matches 101.. run tp @s -88 59 -5 90 0

execute positioned -101 59 -6 as @a[dx=2,dy=3,dz=2] if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] run title @s times 0 60 20
execute positioned -101 59 -6 as @a[dx=2,dy=3,dz=2] if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] run title @s title {"text":"Choose your class!","bold":true,"color":"yellow"}
execute positioned -101 59 -6 as @a[dx=2,dy=3,dz=2] if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] run title @s subtitle ["",{"text":"Interact (","color":"gray"},{"keybind":"key.use","color":"gray"},{"text":") a sign to choose a class.","color":"gray"}]
execute positioned -101 59 -6 as @a[dx=2,dy=3,dz=2] if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] run tellraw @s ["",{"text":"\nChoose a class!","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Interact (","color":"gray"},{"keybind":"key.use","color":"gray"},{"text":") a sign to choose a class.","color":"gray"}]
execute positioned -101 59 -6 as @a[dx=2,dy=3,dz=2] if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] run playsound minecraft:block.note_block.pling record @s -94 59 -3 1 0
execute positioned -101 59 -6 as @a[dx=2,dy=3,dz=2] if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] run tp @s -94 59 -3 -180 0

#execute as @a[scores={chooseC=100}] at @s run particle dust 1.000 0.500 0.000 1 ~ ~1 ~ 0.2 0.5 0.2 1 5 normal
execute positioned -101 59 -6 as @r[dx=2,dy=3,dz=2] unless entity @a[scores={chooseC=100}] run scoreboard players set @s chooseCB 1
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 run title @a times 0 60 20
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 at @s run title @a title ["",{"selector":"@p","bold":true,"color":"gold"},{"text":" is ","bold":true,"color":"yellow"},{"text":"Bobo","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"}]
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 run title @a subtitle {"text":"You can now choose a class.","color":"gray"}
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 at @s run tellraw @a ["",{"text":"\n"},{"selector":"@p","bold":true,"color":"gold"},{"text":" is ","bold":true,"color":"yellow"},{"text":"Bobo","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"\nYou can now choose a class.","color":"gray"}]
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 at @s run playsound minecraft:block.note_block.pling record @a ~ ~ ~ 2 2

execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 if score constant sEnableBBH matches 0 run scoreboard players set number chooseCBanned 0
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 if score constant sEnableBBH matches 1 run tp @s -91 59 36 0 0
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 if score constant sEnableBBH matches 1 at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 2 2
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 if score constant sEnableBBH matches 1 run title @s times 0 60 20
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 if score constant sEnableBBH matches 1 run title @s title {"text":"Ban a class!","bold":true,"color":"yellow"}
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 if score constant sEnableBBH matches 1 run title @s subtitle ["",{"text":"Interact (","color":"gray"},{"keybind":"key.use","color":"gray"},{"text":") a sign to ban a class.","color":"gray"}]
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 if score constant sEnableBBH matches 1 run tellraw @s ["",{"text":"\nBan a class!","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Interact (","color":"gray"},{"keybind":"key.use","color":"gray"},{"text":") a sign to ban a class.","color":"gray"}]
execute as @a if score @s chooseCB matches 1 unless score @s chooseC matches 100 run scoreboard players set @s chooseC 100
execute positioned -101 59 -6 as @a[dx=2,dy=3,dz=2] if score @s chooseC matches 100 run scoreboard players add constant chooseCSCount 1




execute positioned -89 59 -6 as @a[dx=2,dy=3,dz=2] unless score @s chooseC matches 101.. run title @s times 0 60 20
execute positioned -89 59 -6 as @a[dx=2,dy=3,dz=2] unless score @s chooseC matches 101.. run title @s title {"text":"Choose your class!","bold":true,"color":"yellow"}
execute positioned -89 59 -6 as @a[dx=2,dy=3,dz=2] unless score @s chooseC matches 101.. run playsound minecraft:block.note_block.pling record @s -94 59 -3 1 0
execute positioned -89 59 -6 as @a[dx=2,dy=3,dz=2] unless score @s chooseC matches 101.. run tp @s -94 59 -3 -180 0
execute positioned -89 59 -6 as @a[dx=2,dy=3,dz=2] unless score @s chooseC matches 101.. run scoreboard players add constant chooseCSCount 1

execute positioned -89 59 -6 as @a[dx=2,dy=3,dz=2] if score @s chooseC matches 101.. run scoreboard players add constant chooseCSCount 1

execute if score constant chooseCSCount = constant chooseCCount positioned -151 59 23 as @a[distance=..20] run gamemode spectator
execute if score constant chooseCSCount = constant chooseCCount positioned -151 59 23 as @a[distance=..20] run tp @s 96.0 70 -288.0 180 0
execute if score constant chooseCSCount = constant chooseCCount positioned -103 59 36 run tp @a[dx=3,dy=3,dz=3] -78 37 -115 -135 0
execute if score constant chooseCSCount = constant chooseCCount positioned -101 59 -6 run tp @a[dx=2,dy=3,dz=2] -62 37 -131 -135 0
execute if score constant chooseCSCount = constant chooseCCount positioned -89 59 -6 run spreadplayers -60 -133 2 3 true @a[dx=2,dy=3,dz=2]

execute if score constant chooseCSCount = constant chooseCCount run worldborder set 350
execute if score constant chooseCSCount = constant chooseCCount run playsound minecraft:item.chorus_fruit.teleport player @a -78 37 -115 10 1
execute if score constant chooseCSCount = constant chooseCCount run tellraw @a ["",{"score":{"name":"constant","objective":"sInitialT"},"bold":true,"color":"aqua"},{"text":" seconds","bold":true,"color":"aqua"},{"text":" until the ","color":"yellow"},{"text":"Hunters ","bold":true,"color":"dark_red"},{"text":"are released!","color":"yellow"}]
execute if score constant chooseCSCount = constant chooseCCount run function cb:game/pre/start
execute if score constant chooseCSCount = constant chooseCCount run scoreboard players set constant gameInProgress 1