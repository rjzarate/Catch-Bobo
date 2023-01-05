execute if score @s jeahbongchim matches 1 run title @s actionbar ["",{"text":"Jeahbongchim - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s jeahbongchim matches ..0 run title @s actionbar ["",{"text":"Jeahbongchim - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"jeahbongchimCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]



execute if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run scoreboard players set @s jeahbongchimV 60
execute if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run scoreboard players operation @s jeahbongchimV -= @s jeahbongchimCD
execute if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run scoreboard players operation @s jeahbongchimV *= constant -1

execute if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run title @s actionbar ["",{"text":"Jeahbongchim - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"jeahbongchimV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
