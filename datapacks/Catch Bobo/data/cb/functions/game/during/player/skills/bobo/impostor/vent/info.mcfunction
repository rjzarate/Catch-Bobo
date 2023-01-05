execute if score @s vent matches 1 if score @s blueVentNear matches 1.. if score @s blueVentCount matches 2 at @s run title @s actionbar ["",{"text":"Vent - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"| "},{"text":"2 Blue Vents: ","color":"yellow"},{"text":"True","bold":true,"color":"green"}]

execute if score @s vent matches 1 if score @s blueVentNear matches 1.. unless score @s blueVentCount matches 2 at @s run title @s actionbar ["",{"text":"Vent - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"yellow"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"| "},{"text":"2 Blue Vents: ","color":"yellow"},{"text":"False","bold":true,"color":"red"}]

execute if score @s vent matches 1 if score @s redVentNear matches 1.. if score @s redVentCount matches 2 at @s run title @s actionbar ["",{"text":"Vent - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"Red ","bold":true,"color":"red"},{"text":"| "},{"text":"2 Red Vents: ","color":"yellow"},{"text":"True","bold":true,"color":"green"}]

execute if score @s vent matches 1 if score @s redVentNear matches 1.. unless score @s redVentCount matches 2 at @s run title @s actionbar ["",{"text":"Vent - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"yellow"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"Red ","bold":true,"color":"red"},{"text":"| "},{"text":"2 Red Vents: ","color":"yellow"},{"text":"False","bold":true,"color":"red"}]

execute if score @s vent matches 1 unless score @s ventNear matches 1.. at @s run title @s actionbar ["",{"text":"Vent - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"yellow"}]


execute if score @s vent matches ..0 run title @s actionbar ["",{"text":"Vent - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"ventCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]