execute if score @s vIdentifier matches 1 run title @s actionbar ["",{"text":"Vaccine Identifier - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s vIdentifier matches ..0 run title @s actionbar ["",{"text":"Vaccine Identifier - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"vIdentifierCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]
