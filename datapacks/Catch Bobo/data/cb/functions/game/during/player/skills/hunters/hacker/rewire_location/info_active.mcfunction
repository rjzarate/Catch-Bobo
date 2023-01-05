execute if score @s rewireLocationCD matches 0.. run scoreboard players set @s rewireLocationV 45
execute if score @s rewireLocationCD matches 0.. run scoreboard players operation @s rewireLocationV -= @s rewireLocationCD
execute if score @s rewireLocationCD matches 0.. run scoreboard players operation @s rewireLocationV *= constant -1

execute if score @s rewireLocationCD matches 0.. if score @s batterySpeed matches 1 run title @s actionbar ["",{"text":"Rewire Location - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"rewireLocationCD"},"bold":true,"color":"yellow"},{"text":" Seconds ","bold":true,"color":"yellow"},{"text":"| "},{"text":"Battery: ","color":"yellow"},{"score":{"name":"@s","objective":"battery"},"bold":true,"color":"yellow"},{"text":"% ","bold":true,"color":"yellow"},{"text":"| ","color":"white"},{"text":"Charging Speed: ","color":"aqua"},{"text":"Fast","bold":true,"color":"green"}]

execute if score @s rewireLocationCD matches 0.. if score @s batterySpeed matches 2 run title @s actionbar ["",{"text":"Rewire Location - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"rewireLocationCD"},"bold":true,"color":"yellow"},{"text":" Seconds ","bold":true,"color":"yellow"},{"text":"| "},{"text":"Battery: ","color":"yellow"},{"score":{"name":"@s","objective":"battery"},"bold":true,"color":"yellow"},{"text":"% ","bold":true,"color":"yellow"},{"text":"| ","color":"white"},{"text":"Charging Speed: ","color":"aqua"},{"text":"Moderate","bold":true,"color":"yellow"}]

execute if score @s rewireLocationCD matches 0.. if score @s batterySpeed matches 3 run title @s actionbar ["",{"text":"Rewire Location - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"rewireLocationCD"},"bold":true,"color":"yellow"},{"text":" Seconds ","bold":true,"color":"yellow"},{"text":"| "},{"text":"Battery: ","color":"yellow"},{"score":{"name":"@s","objective":"battery"},"bold":true,"color":"yellow"},{"text":"% ","bold":true,"color":"yellow"},{"text":"| ","color":"white"},{"text":"Charging Speed: ","color":"aqua"},{"text":"Slow","bold":true,"color":"red"}]