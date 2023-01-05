execute if score @s geundoowunCD matches 120.. if score @s geundoowun matches ..0 run scoreboard players set @s geundoowunV 120
execute if score @s geundoowunCD matches 120.. if score @s geundoowun matches ..0 run scoreboard players operation @s geundoowunV -= @s geundoowunCD
execute if score @s geundoowunCD matches 120.. if score @s geundoowun matches ..0 run scoreboard players operation @s geundoowunV *= constant -1


execute if score @s geundoowunCD matches 128.. if score @s geundoowun matches ..0 run scoreboard players remove @s geundoowunV 8

execute if score @s geundoowunCD matches 128.. if score @s geundoowun matches ..0 run title @s actionbar ["",{"text":"Geundoowun - ","bold":true,"color":"dark_red"},{"text":"Forming ","bold":true,"color":"yellow"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"geundoowunV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]

execute if score @s geundoowunCD matches 120..127 if score @s geundoowun matches ..0 run title @s actionbar ["",{"text":"Geundoowun - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"geundoowunV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
