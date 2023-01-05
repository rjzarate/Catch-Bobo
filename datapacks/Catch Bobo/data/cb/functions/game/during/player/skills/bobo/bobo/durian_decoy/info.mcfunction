execute if score @s dD matches 1 run title @s actionbar ["",{"text":"Durian Decoy - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s dD matches ..0 run title @s actionbar ["",{"text":"Durian Decoy - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"dDCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]


execute if score @s dDCD matches 150.. if score @s dD matches ..0 run scoreboard players set @s dDV 150
execute if score @s dDCD matches 150.. if score @s dD matches ..0 run scoreboard players operation @s dDV -= @s dDCD
execute if score @s dDCD matches 150.. if score @s dD matches ..0 run scoreboard players operation @s dDV *= constant -1

execute if score @s dDCD matches 150.. if score @s dD matches ..0 run title @s actionbar ["",{"text":"Durian Decoy - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"dDV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
