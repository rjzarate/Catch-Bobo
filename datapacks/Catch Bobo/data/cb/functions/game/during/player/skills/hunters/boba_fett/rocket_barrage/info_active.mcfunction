execute if score @s rBarrageCD matches 150.. if score @s rBarrage matches ..0 run scoreboard players set @s rBarrageV 150
execute if score @s rBarrageCD matches 150.. if score @s rBarrage matches ..0 run scoreboard players operation @s rBarrageV -= @s rBarrageCD
execute if score @s rBarrageCD matches 150.. if score @s rBarrage matches ..0 run scoreboard players operation @s rBarrageV *= constant -1

execute if score @s rBarrageCD matches 150.. if score @s rBarrage matches ..0 run title @s actionbar ["",{"text":"Rocket Barrage - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"rBarrageV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
