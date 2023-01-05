execute if score @s berserkerArmorCD matches 90.. if score @s berserkerArmor matches ..0 run scoreboard players set @s berserkerArmorV 90
execute if score @s berserkerArmorCD matches 90.. if score @s berserkerArmor matches ..0 run scoreboard players operation @s berserkerArmorV -= @s berserkerArmorCD
execute if score @s berserkerArmorCD matches 90.. if score @s berserkerArmor matches ..0 run scoreboard players operation @s berserkerArmorV *= constant -1

execute if score @s berserkerArmorCD matches 90.. if score @s berserkerArmor matches ..0 run title @s actionbar ["",{"text":"Berserker Armor - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Duration: ","color":"yellow"},{"score":{"name":"@s","objective":"berserkerArmorV"},"bold":true,"color":"yellow"},{"text":" Seconds","bold":true,"color":"yellow"}]
