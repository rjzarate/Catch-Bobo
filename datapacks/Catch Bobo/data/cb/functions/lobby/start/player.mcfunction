scoreboard players reset constant playerCount
scoreboard players reset constant playerStartCount
execute as @a run scoreboard players add constant playerCount 1

execute positioned -3 53 -17 as @a[dx=6,dy=4,dz=5] run scoreboard players add constant playerStartCount 1

execute if score constant playerStartCount = constant playerCount if score constant playerCount matches ..1 run tellraw @a ["",{"text":"\n"},{"text":"Requires 3 or more players to start a game.","bold":true,"color":"red"}]
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches ..1 run tp @a 0 55 0
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches ..1 run playsound minecraft:block.note_block.pling record @a 0 55 0 1 0

execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run scoreboard players operation number initialT = constant sInitialT
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run scoreboard players operation number gameT = constant sGameT
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run scoreboard players set number gameTE 0
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run fill -12 53 1 -12 55 -1 cobbled_deepslate
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run scoreboard players add id gameID 1
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. as @a run scoreboard players operation @s gameID = id gameID
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run tp @a -101 59 23 -90 0
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run function cb:lobby/choose_team/info
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run scoreboard players operation number hintT = constant sHintIT
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run scoreboard players reset constant gamePickingC
execute if score constant playerStartCount = constant playerCount if score constant playerCount matches 2.. run scoreboard players set constant gameStarted 1