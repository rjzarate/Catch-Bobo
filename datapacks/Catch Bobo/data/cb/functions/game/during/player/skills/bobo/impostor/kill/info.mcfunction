execute if score @s kill matches 1 at @s if entity @a[team=Hunters,gamemode=!spectator,tag=!stun,distance=..5] run title @s actionbar ["",{"text":"Kill - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"green"}]

execute if score @s kill matches 1 at @s unless entity @a[team=Hunters,gamemode=!spectator,tag=!stun,distance=..5] run title @s actionbar ["",{"text":"Kill - ","bold":true,"color":"gold"},{"text":"Ready ","bold":true,"color":"yellow"}]

execute if score @s kill matches ..0 run title @s actionbar ["",{"text":"Kill - ","bold":true,"color":"gold"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"killCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]