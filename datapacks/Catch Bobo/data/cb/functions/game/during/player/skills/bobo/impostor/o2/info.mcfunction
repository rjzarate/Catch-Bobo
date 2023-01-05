execute if score @s o2 matches 1 at @s run title @s actionbar ["",{"text":"Sabotage: O2 - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"}]


execute if score @s o2 matches ..0 run title @s actionbar ["",{"text":"Sabotage: O2 - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"o2CD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]

execute if score @s o2CD matches 180.. if score @s o2 matches ..0 run scoreboard players set @s o2V 180
execute if score @s o2CD matches 180.. if score @s o2 matches ..0 run scoreboard players operation @s o2V -= @s o2CD
execute if score @s o2CD matches 180.. if score @s o2 matches ..0 run scoreboard players operation @s o2V *= constant -1

execute if score @s o2CD matches 180.. if score @s o2 matches ..0 run title @s actionbar ["",{"text":"O2 - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"o2V"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
