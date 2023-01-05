execute if score @s uConcoction matches 1 run title @s actionbar ["",{"text":"Unstable Concoction - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s uConcoction matches ..0 run title @s actionbar ["",{"text":"Unstable Concoction - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":" | ","color":"white"},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"uConcoctionCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]



execute if score @s uConcoctionCD matches 120.. if score @s uConcoction matches ..0 run scoreboard players set @s uConcoctionV 120
execute if score @s uConcoctionCD matches 120.. if score @s uConcoction matches ..0 run scoreboard players operation @s uConcoctionV -= @s uConcoctionCD
execute if score @s uConcoctionCD matches 120.. if score @s uConcoction matches ..0 run scoreboard players operation @s uConcoctionV *= constant -1

execute if score @s uConcoctionCD matches 120.. if score @s uConcoction matches ..0 run title @s actionbar ["",{"text":"Unstable Concoction - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"uConcoctionV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
