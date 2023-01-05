execute if score @s bB matches 1 run title @s actionbar ["",{"text":"Blinding Blueberry - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s bB matches ..0 run title @s actionbar ["",{"text":"Blinding Blueberry - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"bBCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]



execute if score @s bBCD matches 150.. if score @s bB matches ..0 run scoreboard players set @s bBV 150
execute if score @s bBCD matches 150.. if score @s bB matches ..0 run scoreboard players operation @s bBV -= @s bBCD
execute if score @s bBCD matches 150.. if score @s bB matches ..0 run scoreboard players operation @s bBV *= constant -1

execute if score @s bBCD matches 150.. if score @s bB matches ..0 run title @s actionbar ["",{"text":"Blinding Blueberry - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"bBV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
