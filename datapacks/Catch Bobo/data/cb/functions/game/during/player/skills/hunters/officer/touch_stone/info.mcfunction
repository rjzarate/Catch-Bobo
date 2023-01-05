

execute if score @s touchStone matches ..0 if score @s dogAlive matches 0 run title @s actionbar ["",{"text":"Touch Stone - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Dog - ","bold":true,"color":"dark_red"},{"text":"Dead ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"touchStoneCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]

execute if score @s touchStone matches 1 run title @s actionbar ["",{"text":"Touch Stone - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"},{"text":"| "},{"text":"Dog - ","bold":true,"color":"dark_red"},{"text":"Dead","bold":true,"color":"red"}]

execute if score @s dogAlive matches 1 run title @s actionbar ["",{"text":"Touch Stone - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Dog - ","bold":true,"color":"dark_red"},{"text":"Alive","bold":true,"color":"yellow"}]