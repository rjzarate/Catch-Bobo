execute if score @s pepsiSplash matches 1 run title @s actionbar ["",{"text":"Pepsi Splash - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s pepsiSplash matches ..0 run title @s actionbar ["",{"text":"Pepsi Splash - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"pepsiSplashCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]



execute if score @s pepsiSplashCD matches 90.. if score @s pepsiSplash matches ..0 run scoreboard players set @s pepsiSplashV 90
execute if score @s pepsiSplashCD matches 90.. if score @s pepsiSplash matches ..0 run scoreboard players operation @s pepsiSplashV -= @s pepsiSplashCD
execute if score @s pepsiSplashCD matches 90.. if score @s pepsiSplash matches ..0 run scoreboard players operation @s pepsiSplashV *= constant -1

execute if score @s pepsiSplashCD matches 90.. if score @s pepsiSplash matches ..0 run title @s actionbar ["",{"text":"Pepsi Splash - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"pepsiSplashV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
