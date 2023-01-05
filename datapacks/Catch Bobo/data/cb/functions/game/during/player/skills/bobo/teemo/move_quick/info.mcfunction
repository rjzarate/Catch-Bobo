execute if score @s moveQuick matches 1 run title @s actionbar ["",{"text":"Move Quick - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s moveQuick matches ..0 run title @s actionbar ["",{"text":"Move Quick - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","color":"white"},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"moveQuickCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]

execute if score @s moveQuickCD matches 15.. if score @s moveQuick matches ..0 run scoreboard players set @s moveQuickV 15
execute if score @s moveQuickCD matches 15.. if score @s moveQuick matches ..0 run scoreboard players operation @s moveQuickV -= @s moveQuickCD
execute if score @s moveQuickCD matches 15.. if score @s moveQuick matches ..0 run scoreboard players operation @s moveQuickV *= constant -1

execute if score @s moveQuickCD matches 15.. if score @s moveQuick matches ..0 run title @s actionbar ["",{"text":"Move Quick - ","bold":true,"color":"gold"},{"text":"Active ","bold":true,"color":"green"},{"text":"| ","color":"white"},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"moveQuickV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
