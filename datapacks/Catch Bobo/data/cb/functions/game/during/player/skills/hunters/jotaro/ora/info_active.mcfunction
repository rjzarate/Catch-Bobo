execute if score @s oraCD matches 90.. if score @s ora matches ..0 run scoreboard players set @s oraV 90
execute if score @s oraCD matches 90.. if score @s ora matches ..0 run scoreboard players operation @s oraV -= @s oraCD
execute if score @s oraCD matches 90.. if score @s ora matches ..0 run scoreboard players operation @s oraV *= constant -1

execute if score @s oraCD matches 90.. if score @s ora matches ..0 run title @s actionbar ["",{"text":"ORA ORA ORA - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"oraV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
