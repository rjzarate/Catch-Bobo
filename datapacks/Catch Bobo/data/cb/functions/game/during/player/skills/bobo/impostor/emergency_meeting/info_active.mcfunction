execute if score @s eMeetingCD matches 300.. if score @s eMeeting matches ..0 run scoreboard players set @s eMeetingV 300
execute if score @s eMeetingCD matches 300.. if score @s eMeeting matches ..0 run scoreboard players operation @s eMeetingV -= @s eMeetingCD
execute if score @s eMeetingCD matches 300.. if score @s eMeeting matches ..0 run scoreboard players operation @s eMeetingV *= constant -1

execute if score @s eMeetingCD matches 300.. if score @s eMeeting matches ..0 run title @s actionbar ["",{"text":"Report Body - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"eMeetingV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
