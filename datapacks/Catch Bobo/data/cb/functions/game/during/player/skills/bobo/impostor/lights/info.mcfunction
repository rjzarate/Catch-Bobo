execute if score @s lights matches 1 at @s run title @s actionbar ["",{"text":"Sabotage: Lights - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"}]


execute if score @s lights matches ..0 run title @s actionbar ["",{"text":"Sabotage: Lights - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"lightsCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]

execute if score @s lightsCD matches 180.. if score @s lights matches ..0 run scoreboard players set @s lightsV 180
execute if score @s lightsCD matches 180.. if score @s lights matches ..0 run scoreboard players operation @s lightsV -= @s lightsCD
execute if score @s lightsCD matches 180.. if score @s lights matches ..0 run scoreboard players operation @s lightsV *= constant -1

execute if score @s lightsCD matches 180.. if score @s lights matches ..0 run title @s actionbar ["",{"text":"Lights - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"lightsV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
