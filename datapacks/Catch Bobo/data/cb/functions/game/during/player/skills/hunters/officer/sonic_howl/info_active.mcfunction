execute if score @s sonicHowlCD matches 120.. if score @s sonicHowl matches ..0 run scoreboard players set @s sonicHowlV 120
execute if score @s sonicHowlCD matches 120.. if score @s sonicHowl matches ..0 run scoreboard players operation @s sonicHowlV -= @s sonicHowlCD
execute if score @s sonicHowlCD matches 120.. if score @s sonicHowl matches ..0 run scoreboard players operation @s sonicHowlV *= constant -1

execute if score @s sonicHowlCD matches 120.. if score @s sonicHowl matches ..0 run title @s actionbar ["",{"text":"Sonic Howl - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"sonicHowlV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
