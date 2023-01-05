execute if score @s ora matches 1 run title @s actionbar ["",{"text":"ORA ORA ORA - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s ora matches ..0 run title @s actionbar ["",{"text":"ORA ORA ORA - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":" | ","color":"white"},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"oraCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]



execute if score @s oraCD matches 90.. if score @s ora matches ..0 run scoreboard players set @s oraV 90
execute if score @s oraCD matches 90.. if score @s ora matches ..0 run scoreboard players operation @s oraV -= @s oraCD
execute if score @s oraCD matches 90.. if score @s ora matches ..0 run scoreboard players operation @s oraV *= constant -1

execute if score @s oraCD matches 90.. if score @s ora matches ..0 run title @s actionbar ["",{"text":"ORA ORA ORA - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"oraV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
