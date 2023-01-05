execute if score @s recall matches 1 run title @s actionbar ["",{"text":"Recall - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s recall matches ..0 run title @s actionbar ["",{"text":"Recall - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","color":"white"},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"recallCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]

execute if score @s recallCD matches 120.. if score @s recall matches ..0 run scoreboard players set @s recallV 120
execute if score @s recallCD matches 120.. if score @s recall matches ..0 run scoreboard players operation @s recallV -= @s recallCD
execute if score @s recallCD matches 120.. if score @s recall matches ..0 run scoreboard players operation @s recallV *= constant -1

execute if score @s recallCD matches 120.. if score @s recall matches ..0 run title @s actionbar ["",{"text":"Recall - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| ","color":"white"},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"recallV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
