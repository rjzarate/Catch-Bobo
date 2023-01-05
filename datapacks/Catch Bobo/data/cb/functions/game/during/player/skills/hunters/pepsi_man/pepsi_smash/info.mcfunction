execute if score @s pepsiSmash matches 1 run title @s actionbar ["",{"text":"Pepsi Smash - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s pepsiSmash matches ..0 run title @s actionbar ["",{"text":"Pepsi Smash - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"pepsiSmashCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]



execute if score @s pepsiSmashCD matches 60.. if score @s pepsiSmash matches ..0 run scoreboard players set @s pepsiSmashV 60
execute if score @s pepsiSmashCD matches 60.. if score @s pepsiSmash matches ..0 run scoreboard players operation @s pepsiSmashV -= @s pepsiSmashCD
execute if score @s pepsiSmashCD matches 60.. if score @s pepsiSmash matches ..0 run scoreboard players operation @s pepsiSmashV *= constant -1

execute if score @s pepsiSmashCD matches 60.. if score @s pepsiSmash matches ..0 run title @s actionbar ["",{"text":"Pepsi Smash - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"pepsiSmashV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
