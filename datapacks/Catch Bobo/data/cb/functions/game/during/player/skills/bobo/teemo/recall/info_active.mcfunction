execute if score @s recallCD matches 120.. if score @s recall matches ..0 run scoreboard players set @s recallV 120
execute if score @s recallCD matches 120.. if score @s recall matches ..0 run scoreboard players operation @s recallV -= @s recallCD
execute if score @s recallCD matches 120.. if score @s recall matches ..0 run scoreboard players operation @s recallV *= constant -1

execute if score @s recallCD matches 120.. if score @s recall matches ..0 run title @s actionbar ["",{"text":"Recall - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| ","color":"white"},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"recallV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
