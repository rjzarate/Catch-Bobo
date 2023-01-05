execute if score @s timeStop matches 1 run title @s actionbar ["",{"text":"Time Stop - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s timeStop matches ..0 run title @s actionbar ["",{"text":"Time Stop - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"timeStopCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]



execute if score @s timeStopCD matches 120.. if score @s timeStop matches ..0 run scoreboard players set @s timeStopV 120
execute if score @s timeStopCD matches 120.. if score @s timeStop matches ..0 run scoreboard players operation @s timeStopV -= @s timeStopCD
execute if score @s timeStopCD matches 120.. if score @s timeStop matches ..0 run scoreboard players operation @s timeStopV *= constant -1

execute if score @s timeStopCD matches 120.. if score @s timeStop matches ..0 run title @s actionbar ["",{"text":"Time Stop - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"timeStopV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
