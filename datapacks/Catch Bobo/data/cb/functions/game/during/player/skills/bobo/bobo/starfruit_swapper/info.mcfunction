execute if score @s sS matches 1 run title @s actionbar ["",{"text":"Starfruit Swapper - ","bold":true,"color":"gold"},{"text":"Ready","bold":true,"color":"green"}]

execute if score @s sS matches ..0 run title @s actionbar ["",{"text":"Starfruit Swapper - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":" | ","color":"white"},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"sSCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]

