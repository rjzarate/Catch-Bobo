execute if score @s eMeeting matches 1 at @s if entity @a[team=Hunters,gamemode=!spectator,tag=stun,distance=..5] unless entity @a[tag=emergencyMeeting] run title @s actionbar ["",{"text":"Report Body - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s eMeeting matches 1 at @s unless entity @a[team=Hunters,gamemode=!spectator,tag=stun,distance=..5] run title @s actionbar ["",{"text":"Report Body - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"yellow"}]

execute if score @s eMeeting matches 1 if entity @a[tag=emergencyMeeting] run title @s actionbar ["",{"text":"Report Body - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"yellow"}]



execute if score @s eMeeting matches ..0 run title @s actionbar ["",{"text":"Report Body - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"eMeetingCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]



execute if score @s eMeetingCD matches 300.. if score @s eMeeting matches ..0 run scoreboard players set @s eMeetingV 300
execute if score @s eMeetingCD matches 300.. if score @s eMeeting matches ..0 run scoreboard players operation @s eMeetingV -= @s eMeetingCD
execute if score @s eMeetingCD matches 300.. if score @s eMeeting matches ..0 run scoreboard players operation @s eMeetingV *= constant -1

execute if score @s eMeetingCD matches 300.. if score @s eMeeting matches ..0 run title @s actionbar ["",{"text":"Report Body - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"eMeetingV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
