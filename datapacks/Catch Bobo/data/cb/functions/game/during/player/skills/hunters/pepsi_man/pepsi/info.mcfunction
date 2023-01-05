execute if score @s pepsi matches 1 run title @s actionbar ["",{"text":"PEPSI - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s pepsi matches ..0 run title @s actionbar ["",{"text":"PEPSI - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"pepsiCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]



execute if score @s pepsiCD matches 150.. if score @s pepsi matches ..0 run scoreboard players set @s pepsiV 150
execute if score @s pepsiCD matches 150.. if score @s pepsi matches ..0 run scoreboard players operation @s pepsiV -= @s pepsiCD
execute if score @s pepsiCD matches 150.. if score @s pepsi matches ..0 run scoreboard players operation @s pepsiV *= constant -1

execute if score @s pepsiCD matches 150.. if score @s pepsi matches ..0 run title @s actionbar ["",{"text":"PEPSI - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"pepsiV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
