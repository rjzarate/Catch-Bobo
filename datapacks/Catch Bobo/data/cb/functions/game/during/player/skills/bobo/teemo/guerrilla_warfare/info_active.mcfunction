execute if score @s gWarfare matches 1..2 run scoreboard players operation @s gWarfareV = @s gWarfare
execute if score @s gWarfare matches 1..2 run scoreboard players operation @s gWarfareV *= constant -1
execute if score @s gWarfare matches 1..2 run scoreboard players add @s gWarfareV 2

execute if score @s gWarfare matches 1..2 run title @s actionbar ["",{"text":"Move Quick - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| ","color":"white"},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"gWarfareV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]


execute unless score @s gWarfare matches 1.. run title @s actionbar ["",{"text":"Guerrilla Warfare - ","bold":true,"color":"gold"},{"text":"Not Active ","bold":true,"color":"red"}]

execute if score @s gWarfare matches 1..2 run title @s actionbar ["",{"text":"Guerrilla Warfare - ","bold":true,"color":"gold"},{"text":"Not Active ","bold":true,"color":"yellow"},{"text":"| ","color":"white"},{"text":"Activating: ","color":"yellow"},{"score":{"name":"@s","objective":"gWarfareV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]

execute if score @s gWarfare matches 3.. run title @s actionbar ["",{"text":"Guerrilla Warfare - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"}]
