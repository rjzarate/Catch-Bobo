execute if score @s dash matches 1.. run title @s actionbar ["",{"text":"Dash - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"},{"text":"| "},{"text":"Charges: ","color":"yellow"},{"score":{"name":"@s","objective":"dash"},"bold":true,"color":"yellow"}]

execute if score @s dash matches ..0 run title @s actionbar ["",{"text":"Dash - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Charges: ","color":"yellow"},{"score":{"name":"@s","objective":"dash"},"bold":true,"color":"yellow"},{"text":" | ","color":"white"},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"dashCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]