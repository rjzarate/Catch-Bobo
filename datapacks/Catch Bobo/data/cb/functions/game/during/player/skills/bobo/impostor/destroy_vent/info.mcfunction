execute if score @s destroyVent matches 1 if score @s ventNear matches 1.. if score @s blueVentNear matches 1.. at @s run title @s actionbar ["",{"text":"Destroy Vent - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"Blue","bold":true,"color":"blue"}]

execute if score @s destroyVent matches 1 if score @s ventNear matches 1.. if score @s redVentNear matches 1.. at @s run title @s actionbar ["",{"text":"Destroy Vent - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"Red","bold":true,"color":"red"}]

execute if score @s destroyVent matches 1 unless score @s ventNear matches 1.. at @s run title @s actionbar ["",{"text":"Destroy Vent - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"yellow"}]


execute if score @s destroyVent matches ..0 run title @s actionbar ["",{"text":"Destroy Vent - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"destroyVentCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]