execute if score @s noxiousTrap matches 6.. if entity @s[nbt={OnGround:1b}] run title @s actionbar ["",{"text":"Noxious Trap - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"noxiousTrap"},"bold":true,"color":"yellow"},{"text":"/6 ","bold":true,"color":"yellow"},{"text":"| "},{"text":"On Ground: ","color":"yellow"},{"text":"True ","bold":true,"color":"green"}]

execute if score @s noxiousTrap matches 6.. if entity @s[nbt={OnGround:0b}] run title @s actionbar ["",{"text":"Noxious Trap - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"noxiousTrap"},"bold":true,"color":"yellow"},{"text":"/6 ","bold":true,"color":"yellow"},{"text":"| "},{"text":"On Ground: ","color":"yellow"},{"text":"False ","bold":true,"color":"red"}]

execute if score @s noxiousTrap matches ..5 if entity @s[nbt={OnGround:1b}] run title @s actionbar ["",{"text":"Noxious Trap - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"noxiousTrap"},"bold":true,"color":"yellow"},{"text":"/6 ","bold":true,"color":"yellow"},{"text":"| "},{"text":"On Ground: ","color":"yellow"},{"text":"True ","bold":true,"color":"green"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"noxiousTrapCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]

execute if score @s noxiousTrap matches ..5 if entity @s[nbt={OnGround:0b}] run title @s actionbar ["",{"text":"Noxious Trap - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"noxiousTrap"},"bold":true,"color":"yellow"},{"text":"/6 ","bold":true,"color":"yellow"},{"text":"| "},{"text":"On Ground: ","color":"yellow"},{"text":"False ","bold":true,"color":"red"},{"text":"| "},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"noxiousTrapCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]
